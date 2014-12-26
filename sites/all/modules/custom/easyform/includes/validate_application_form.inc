<?php

/**
 * Implements hook_form().
 */
function easyform_vform($form, &$form_state) {
  global $user;

  if ($user->uid > 0) {
    // скрыть данную форму для авторизованного пользователя
    drupal_not_found();
    exit();
  }

  $code_from_url = arg(1);

  if ($code_from_url) {
    if ($code_from_url === (string) intval($code_from_url)) {
      $nid = _easyform_get_user_by_code($code_from_url);
      if ($nid) {
        $node_wrapper = entity_metadata_wrapper('node', $nid);
        if ($node_wrapper->field_state->value() == 1) {
          $form['code'] = array(
            '#type' => 'hidden',
            '#default_value' => $code_from_url,
            '#size' => 4,
          );
        }
        else {
          drupal_goto('node/' . $nid);
        }
      }
      else {
        drupal_not_found();
        exit();
      }
    }
    else {
      drupal_not_found();
      exit();
    }
  }
  else {
    $m_s = @$_SESSION['mobile'] ? $_SESSION['mobile'] : '';
    $mobile_default_value = !(empty($form_state['values']) && empty($form_state['values']['mobile'])) ? $form_state['values']['mobile'] : $m_s;

    //$code = arg(1) ? arg(1) : '';
    $code_default_value = !(empty($form_state['values']) && empty($form_state['values']['code'])) ? $form_state['values']['code'] : '';

    if ($mobile_default_value) {
      $form['mobile'] = array(
        '#markup' => 'На указанный вами номер <strong> ' . $mobile_default_value . '</strong> выслана SMS.',
      );
    }

    $form['code'] = array(
      '#type' => 'textfield',
      '#title' => 'Введите код подтверждения:',
      '#default_value' => $code_default_value,
      '#size' => 4,
    );
  }
  $form['submit'] = array(
    '#type' => 'submit',
    '#value' => 'Подтвердить заявку'
  );

  return $form;

}

/**
 * Implements hook_validate().
 */
function easyform_vform_validate($form, &$form_state) {
  global $user;
  $uid = _easyform_get_entity_by_code($form_state['values']['code']);

  $app_nid = _easyform_get_entity_by_code($form_state['values']['code'], 'node');

  if ($uid || $app_nid) {

    if ($uid) {
      // сделать пользователя активным
      $user_wrapper = entity_metadata_wrapper('user', $uid);
      if ($user_wrapper->status->value() == 0) {
        $user_wrapper->status->set(1);
        $user_wrapper->save();
      }
    }

    if ($app_nid) {
      // опубликовать заявку
      //$nids = _easyform_get_node_by_uid($uid);
      //$nid = $nids[0];

      //$node_wrapper = entity_metadata_wrapper('node', $nid);
      $node_wrapper = entity_metadata_wrapper('node', $app_nid);

      $node_wrapper->status->set(1);
      $node_wrapper->promote->set(1);
      $node_wrapper->field_state->set(2);
      $node_wrapper->save();
      drupal_set_message('Спасибо, заявка активирована!');
      $form_state['redirect'] = 'node/' . $app_nid;

      $user = user_load($node_wrapper->author->uid->value());
      $login_array = array('name' => $user->name);
      user_login_finalize($login_array);
    }
  }
  else {
    form_set_error('code', 'Код не подходит!');
  }
  //dsm($entities);
}

function easyform_vform_submit($form, &$form_state) {

  /*$validation_code = create_application($form, $form_state);
  // todo send SMS with validation code to client
  $phone = $form_state['values']['mobile'];

  // Сохранить телефон для формы подтверждения заявки
  $_SESSION['mobile'] = $phone;

  $phone = preg_replace("/[^0-9]/", '', $phone);
  if (preg_match("/^[0-9]{11}/", $phone)) {
    // обрезать первую цифру (код страны или 8, если длина телефонного номера 11 символов
    $phone = substr($phone, 1);
  }
  send_validate_sms($phone, $validation_code);*/

  // todo show phone validation form
  //show_validation_form();
}
