<?php

/**
 * Implements hook_validate().
 */
function easyform_form_validate($form, &$form_state) {
  global $user;
  // todo определить адреса, если не определяются, попросить пользователя уточнить адрес

  if ($user->uid == 0) {
    $phone = $form_state['values']['mobile'] = _prepare_mobile_number($form_state['values']['mobile']);

    $phone_is_correct = preg_match("/^[0-9]{10}/", $phone);

    if (!$phone_is_correct) {
      form_set_error('time', 'Номер <strong>мобильного</strong> телефона должен содержать 9 цифр. Пожалуйста, проверьте номер телефона.');
    }
  }
}

/**
 * Implements form_submit().
 * @param $form
 * @param $form_state
 */
function easyform_form_submit($form, &$form_state) {
  global $user;

  if ($user->uid == 0) {
    $phone = $form_state['values']['mobile'] = _prepare_mobile_number($form_state['values']['mobile']);
  }

  $validation_code = _easyform_create_application($form, $form_state);
  if ($validation_code) {
    // todo send SMS with validation code to client
    //$phone = $form_state['values']['mobile'];

    // Сохранить телефон для отображения в форме подтверждения заявки
    $_SESSION['mobile'] = $phone;

    send_validate_sms($phone, $validation_code);
  }
}

/**
 * Implements hook_form().
 */
function easyform_form($form, &$form_state) {
  global $user;
  $form['how_it_works'] = array(
    '#markup' => '
<div class="intro">В нашей базе 508 эвакуаторов по всей России.</div>
<h3>Как это работает?</h3>
<div class="">1. Заполните и отправьте заявку</div>
<div>2. Получите ответы от исполнителей</div>
 <div>3. Выберите наиболее подходящего исполнителя</div>

<div>Результат будет отправлен Вам на СМС в течение 1 часа.
Пожалуйста, указывайте реальный телефон в заявке!</div>',
  );

  $form['red_mark'] = array(
    '#markup' => '<div class="red_cap">Поля, помеченные звёздочкой, обязательны для заполнения.</div>',
  );

  /** 1. Укажите адрес откуда эвакуировать и куда (опционально) */

  /** 2. Хорошая новость! В в радиусе 50 км есть 12 эвакуаторов.
   * Укажите больше данных о Вашем случае, чтобы получить
   * реалцьную стоимость услуг эвакуации */

  $form['where_fieldset'] = array(
    '#type' => 'fieldset',
    '#title' => '1. Укажите адрес',
    '#collapsible' => FALSE,
    '#collapsed' => FALSE,
  );

  $form['where_fieldset']['address_from'] = array(
    '#type' => 'textfield',
    '#title' => 'Откуда эвакуировать',
    '#attributes' => array('placeholder' => 'г. Москва, Ленинский проспект 1'),
    /*'#description' => 'На этот номер мы направим СМС с результатами торгов.<br/>
На этот номер телефона будет звонить победитель аукциона.',*/
    '#default_value' => !empty($form_state['values']['address_from']) ? $form_state['values']['address_from'] : '',
    '#required' => TRUE,
    '#size' => 40,
  );

  $form['where_fieldset']['address_to'] = array(
    '#type' => 'textfield',
    '#title' => 'Куда везти',
    '#attributes' => array('placeholder' => 'г. Москва, ул. Локомотивный проезд, д. 11/10'),
    /*'#description' => 'На этот номер мы направим СМС с результатами торгов.<br/>
На этот номер телефона будет звонить победитель аукциона.',*/
    '#default_value' => !empty($form_state['values']['address_to']) ? $form_state['values']['address_to'] : '',
    '#required' => FALSE,
    '#size' => 40,
  );


  $form['where_fieldset']['show_date'] = array(
    '#type' => 'button',
    '#value' => 'Указать дату подачи эвакуатора',
    '#ajax' => array(
      'callback' => 'easyform_date_link_callback',
      'wrapper' => 'show-date',
      'method' => 'replace',
      'effect' => 'fade',
    ),
    '#limit_validation_errors' => array(),
    '#name' => 'show_date',
    '#attributes' => array(
      'class' => array('btn btn-default'),
    ),
    '#prefix' => '<div id="date_link">',
    '#suffix' => '</div>',
  );

  $form['where_fieldset']['date'] = array(
    '#access' => FALSE,
    '#prefix' => '<div id="date_link">',
    '#type' => 'textfield',
    '#title' => 'Когда подать',
    '#attributes' => array('placeholder' => date('d.m.Y H:i', time() + 86400)),
    '#default_value' => !empty($form_state['values']['date']) ? $form_state['values']['date'] : date('d.m.Y H:i', time() + 86400),
    '#required' => FALSE,
    '#size' => 15,
  );

  $form['where_fieldset']['hide_date'] = array(
    '#access' => FALSE,
    '#type' => 'button',
    '#value' => 'Убрать точную дату подачи эвакуатора',
    '#ajax' => array(
      'callback' => 'easyform_date_link_callback',
      //'callback ' => array(),
      'wrapper' => 'hide-date',
      'method' => 'replace',
      'effect' => 'fade',
    ),
    '#limit_validation_errors' => array(),
    '#attributes' => array(
      'class' => array('btn btn-warning'),
    ),
    '#suffix' => '</div>',
  );

  /**  */

  $form['what_fieldset'] = array(
    '#type' => 'fieldset',
    '#title' => '2. Данные о машине',
    '#collapsible' => FALSE,
    '#collapsed' => FALSE,
  );

  $form['what_fieldset']['car'] = array(
    '#type' => 'textfield',
    '#title' => 'Модель автомобиля',
    '#attributes' => array('placeholder' => 'Opel Zafira'),
    '#default_value' => !empty($form_state['values']['car']) ? $form_state['values']['car'] : '',
    '#required' => TRUE,
    '#size' => 30,
  );

  $values = array(
    'Колёса повреждены, отсутствуют или заблокированы',
    'Колёса на месте, но заблокированы (автоматическая КПП, машина не заводится)',
    'Колёса на месте, но заблокированы (механическая КПП)',
    'Колёса на месте и вращаются',

  );

  $form['what_fieldset']['what_happened'] = array(
    '#type' => 'select',
    '#title' => 'Состояние автомобиля',
    // '#attributes' => array('placeholder' => 'Не заводится, '),
    '#options' => $values,
    // '#default_value' => !empty($form_state['values']['what_happened']) ? $form_state['values']['what_happened'] : '',
    // '#size' => 30,
    '#required' => TRUE,
  );


  $form['what_fieldset']['what_happened_more_info'] = array(
    '#type' => 'textarea',
    '#title' => 'Описание повреждений',
    // '#attributes' => array('placeholder' => 'Не заводится, '),
    '#value' => '',
    '#default_value' => !empty($form_state['values']['what_happened_more_info']) ? $form_state['values']['what_happened_more_info'] : '',
    // '#size' => 30,
  );

  /**  */

  if ($user->uid == 0) { // Показывать поля для контактных данных только анонимам

    $form['who_fieldset'] = array(
      '#type' => 'fieldset',
      '#title' => '3. Контактные данные',
      '#collapsible' => FALSE,
      '#collapsed' => FALSE,
    );


    $form['who_fieldset']['mobile'] = array(
      '#type' => 'textfield',
      '#title' => 'Ваш мобильный телефон',
      '#attributes' => array('placeholder' => '903 456 12 12'),
      /*    '#description' => 'На этот номер мы направим СМС с результатами торгов.<br/>
      На этот номер телефона будет звонить победитель аукциона.',*/
      '#default_value' => !empty($form_state['values']['mobile']) ? $form_state['values']['mobile'] : '',
      '#required' => TRUE,
      '#size' => 30,
    );

    $form['who_fieldset']['name'] = array(
      '#type' => 'textfield',
      '#title' => 'Имя, отчество',
      '#attributes' => array('placeholder' => 'Алексей Владимирович'),
      '#description' => 'Укажите ваши имя, отчество, чтобы мы знали, как к вам обращаться.',
      '#default_value' => !empty($form_state['values']['name']) ? $form_state['values']['name'] : '',
      '#size' => 30,
    );
    $form['rules_agree'] = array(
      '#type' => 'checkbox',
      '#title' => 'Я ознакомился и согласен с <a href="/auction-rules" target="_blank">правилами данного сайта</a>',
      '#default_value' => 0,
      '#required' => TRUE,
    );
  }

  $form['submit'] = array(
    '#type' => 'submit',
    '#value' => 'Отправить данные'
  );
  $node = node_load(1689);
  $node->title = '';
  $view = node_view($node);
  $rendered = drupal_render($view);

  $form['description'] = array(
    '#markup' => $rendered,
  );
  return $form;

}

function easyform_date_link_callback($form, &$form_state) {
  $commands = array();

  if ($form_state['input']['_triggering_element_name'] == 'show_date') {
    $form['where_fieldset']['date']['#access'] = TRUE;
    $form['where_fieldset']['hide_date']['#access'] = TRUE;
    $commands[] = ajax_command_replace('#date_link', render($form['where_fieldset']['date']) . render($form['where_fieldset']['hide_date']));
  }
  else {
    $form['where_fieldset']['date']['#access'] = FALSE;
    $form['where_fieldset']['hide_date']['#access'] = FALSE;
    $commands[] = ajax_command_replace('#date_link', render($form['where_fieldset']['show_date']));
  }

  return array(
    '#type' => 'ajax',
    '#commands' => $commands,
  );
}
