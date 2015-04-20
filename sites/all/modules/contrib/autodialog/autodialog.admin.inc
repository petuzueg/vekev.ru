<?php

/**
 * Settings form.
 */
function autodialog_settings_form($form, &$form_state) {
  $form['autodialog_paths'] = array(
    '#type' => 'textarea',
    '#title' => t('Paths'),
    '#description' => t('Paths which will work autodialog'),
    '#default_value' => variable_get('autodialog_paths'),
  );

  $form['autodialog_default_options'] = array(
    '#type' => 'textarea',
    '#title' => t('Default options'),
    '#description' => t('jQUery UI Dialog default options in JSON format. Example: <code>{"width":"auto"}</code>'),
    '#default_value' => variable_get('autodialog_default_options'),
  );

  return system_settings_form($form);
}
