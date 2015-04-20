<?php

/**
 * Gets uid by activation code
 * @param $code
 * @return int
 */
/*function _easyform_get_user_by_code($code) {
  $nodeQuery = new EntityFieldQuery();
  $entities = $nodeQuery->entityCondition('entity_type', 'user')
    //->entityCondition('bundle', 'application')
    ->fieldCondition('field_validation_code', 'value', $code, '=')
    ->propertyCondition('status', 0)
    ->pager(10)
    ->execute();
  if (isset($entities['user'])) {
    $uids = array_keys($entities['user']);
    $uid = $uids[0];
    return $uid;
  }
  return 0;
}*/

/**
 * Gets application nid by activation code.
 *
 * @param $code text
 * @param $entity_type = 'user'
 * @return int
 */
function _easyform_get_entity_by_code($code, $entity_type = 'user') {
  $node_query = new EntityFieldQuery();
  $entities = $node_query->entityCondition('entity_type', $entity_type)
    ->fieldCondition('field_validation_code', 'value', $code, '=')
    ->propertyCondition('status', 0)
  //  ->pager(10)
    ->addTag('efq_debug')
    ->execute();
  if (isset($entities[$entity_type])) {
    $ids = array_keys($entities[$entity_type]);
    $id = $ids[0];
    return $id;
  }
  return 0;
}

/**
 * @param $uid
 * @return array of $nids
 */
/*function _easyform_get_node_by_uid($uid) {
  $query = new EntityFieldQuery;
  $result = $query
    ->entityCondition('entity_type', 'node')
    ->entityCondition('bundle', 'application')
    ->propertyCondition('status', 0)
    ->propertyCondition('uid', $uid);
  $result = $query->execute();

  $nids = array_keys($result['node']);

  return $nids;
}*/

/**
 * @return int 0 if user exists or for registered users
 * @var object form
 * @var object form_state
 */
function _easyform_create_application($form, &$form_state) {
  global $user;
  $data = $form_state['values'];
  $validation_code = 0;
  $account = new stdClass();

  if ($user->uid == 0) {
    // todo uncomment random code generation
    $validation_code = rand(100, 999);
    $validation_code = 123;

    // если существует, пользователя не создавать, после валидации телефона прикрепить заявку к пользователю
    $account->uid = db_query("SELECT uid FROM {users} WHERE name = :name;", array(':name' => $data['mobile']))->fetchField();
    if (!$account->uid) {
      // User doesn't exist
      $password = user_password(5);
      $validation_code_field[LANGUAGE_NONE][] = array('value' => $validation_code);
      $surname[LANGUAGE_NONE][] = array('value' => $data['name']);
      //set up the user fields
      $fields = array(
        'name' => $data['mobile'],
        'mail' => '',
        'pass' => $password,
        'status' => 0,
        'init' => 'email address',
        'field_surname' => $surname,
        'field_validation_code' => $validation_code_field,
        'roles' => array(
          DRUPAL_AUTHENTICATED_RID => 'authenticated user',
          8 => 'Клиенты'
        ),
      );

      //the first parameter is left blank so a new user is created
      $account = user_save('', $fields);
      // redirect to validation form
    }
    $form_state['redirect'] = 'v';
  }
  else {
    $account->uid = $user->uid;
  }

  /* Создание заявки */
  $node = new stdClass();
  // Марка машины, дата
  $node->title = $data['date'] . " - " . $data['car'];
  $node->type = "order";
//  $node->type = "application";
  node_object_prepare($node); // Sets some defaults. Invokes hook_prepare() and hook_node_prepare().
  $node->language = LANGUAGE_NONE; // Or e.g. 'en' if locale is enabled
  $node->uid = $account->uid;
  if ($user->uid == 0) {
    $node->status = 0; //(1 or 0): published or not
    $node->field_state[$node->language][] = array(
      'value' => 1 // Статус "Создано"
    );
    $node->field_validation_code[$node->language][] = array(
      'value' => $validation_code,
    );
  }
  else { // для авторизованных
    $node->status = 1; //(1 or 0): published or not
    $node->field_state[$node->language][] = array(
      'value' => 2 // Статус "Подтверждено"
    );
  }
  $node->promote = 1; //(1 or 0): promoted to front page
  // $node->comment = 2; // 0 = comments disabled, 1 = read only, 2 = read/write
  $node->field_address_from[$node->language][] = array(
    'value' => $data['address_from']
  );
  $node->field_address_to[$node->language][] = array(
    'value' => $data['address_to']
  );
  $node->field_date[$node->language][] = array(
    'value' => date('Y-m-d H:i:s', strtotime($data['date']))
  );
  $node->field_about_car[$node->language][] = array(
    'value' => $data['car']
  );
  $node->field_what_broken[$node->language][] = array(
    'value' => $data['what_happened']
  );

  $node = node_submit($node); // Prepare node for saving
  node_save($node);

  if ($user->uid > 0) {
    // перенаправление на страницу созданной заявки
    $form_state['redirect'] = 'node/' . $node->nid;
  }
  drupal_set_message("Ваша заявка " . $node->nid . " создана!\n");

  return $validation_code;
}


/**
 * @param $phone
 * @param $validation_code
 * @return int
 */
function send_validate_sms($phone, $validation_code) {

  drupal_set_message("SMS сообщение с кодом подтверждения отправлено. Дождитесь получения SMS.");
  return 1;
  /*
   <login value="generalshop" />
       <password value="sge085vc" />
   * */
  global $base_url;
// todo добавить "Введите код или перейдите по ссылке"
  $src = '<?xml version="1.0" encoding="utf-8"?><request>
   <security>
     <login value="petuzueg" />
     <password value="petuzueg" />
   </security>
   <message type="sms">
     <sender>PeTu.ru</sender>
     <text>Код: ' . $validation_code . ' . Для активации заявки введите код на странице подтверждения или перейдите по ссылке ' . $base_url . '/v/' . $validation_code . '</text>
     <abonent phone="' . $phone . '" number_sms="1"/>
   </message>
</request>';
  $res = '';

  $src = str_replace("
", '', $src);

  $ch = curl_init();
  curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-type: text/xml; charset=utf-8'));
  curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
  curl_setopt($ch, CURLOPT_CRLF, TRUE);
  curl_setopt($ch, CURLOPT_POST, TRUE);
  curl_setopt($ch, CURLOPT_POSTFIELDS, $src);
  curl_setopt($ch, CURLOPT_URL, 'https://srv.smssys.ru:8443/xml');

  $result = curl_exec($ch);

  $res = new SimpleXMLElement($result);
  foreach ($res->information[0]->attributes() as $a => $b) {
    $r[$a] = (string) $b;
  }
  /*<?xml version = "1.0" encoding = "UTF-8" standalone = "yes"?>
  <response>
    <information number_sms="1" id_sms="112545769" parts="1">send</information>
  </response>*/
  curl_close($ch);

  if ('send' == (string) $res->information) {
    watchdog('reg_prod', 'Сообщение №' . $r['id_sms'] .
      ' отправлено на номер ' . $phone);
    // сохранить отправленный код и вставить его в качестве пароля
    $_SESSION['code'] = $validation_code;
    drupal_set_message("SMS сообщение с кодом подтверждения отправлено.<br/>Пожалуйста, дождитесь получения SMS.");
    // todo добавить обратный отсчёт в секундах (15). По исчезновению таймера, показать кнопку "смс не пришла"
    return 1; // СМС отправлено
  }
  else {
    // Записать в лог ответ
    watchdog('easyform', 'Не удалось отправить сообщение на номер '
      . $phone . '. ' . htmlentities($result), array(), WATCHDOG_ERROR);
    // todo отправить почту админу
    drupal_set_message("Не удалось отправить SMS.\n Пожалуйста, свяжитесь с администрацией сайта!", 'error');

    return 0; // СМС не отправлено
  }
}

/**
 * Sanitize mobile phone number
 * @param $phone
 * @return mixed|string - phone number sanitized
 */
function _prepare_mobile_number($phone) {
  // убрать все нечисловые символы
  $phone = preg_replace("/[^0-9]/", '', $phone);
  if (preg_match("/^[0-9]{11}/", $phone)) {
    // обрезать первую цифру (код страны или 8, если длина телефонного номера 11 символов
    $phone = substr($phone, 1);
  }
  // TODO проверить номер, убрать код страны. Оставить десятизначный номер
  return $phone;
}


function easyform_query_alter($query) {
  if ($query->hasTag('efq_debug')) {
    dpm((string)$query);
  }
}
