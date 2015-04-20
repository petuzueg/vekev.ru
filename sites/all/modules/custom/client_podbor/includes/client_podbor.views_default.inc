<?php

/**
 * Implementation of hook_views_default_views().
 */
function client_podbor_views_default_views() {
  $view = new view();
  $view->name = 'client_podbor';
  $view->description = '';
  $view->tag = 'default';
  $view->base_table = 'node';
  $view->human_name = 'Простая форма подбора на главной странице';
  $view->core = 7;
  $view->api_version = '3.0';
  $view->disabled = FALSE; /* Edit this to true to make a default view disabled initially */

  /* Display: Master */
  $handler = $view->new_display('default', 'Master', 'default');
  $handler->display->display_options['title'] = 'Подбор на главной странице';
  $handler->display->display_options['use_ajax'] = TRUE;
  $handler->display->display_options['use_more_always'] = FALSE;
  $handler->display->display_options['use_more_text'] = 'еще';
  $handler->display->display_options['access']['type'] = 'perm';
  $handler->display->display_options['cache']['type'] = 'none';
  $handler->display->display_options['query']['type'] = 'views_query';
  $handler->display->display_options['query']['options']['pure_distinct'] = TRUE;
  $handler->display->display_options['exposed_form']['type'] = 'basic';
  $handler->display->display_options['exposed_form']['options']['submit_button'] = 'Применить';
  $handler->display->display_options['exposed_form']['options']['reset_button'] = TRUE;
  $handler->display->display_options['exposed_form']['options']['reset_button_label'] = 'Сбросить';
  $handler->display->display_options['exposed_form']['options']['exposed_sorts_label'] = 'Сортировать по';
  $handler->display->display_options['exposed_form']['options']['sort_asc_label'] = 'По возрастанию';
  $handler->display->display_options['exposed_form']['options']['sort_desc_label'] = 'По убыванию';
  $handler->display->display_options['exposed_form']['options']['autosubmit_hide'] = FALSE;
  $handler->display->display_options['pager']['type'] = 'full';
  $handler->display->display_options['pager']['options']['items_per_page'] = '12';
  $handler->display->display_options['pager']['options']['offset'] = '0';
  $handler->display->display_options['pager']['options']['id'] = '0';
  $handler->display->display_options['pager']['options']['quantity'] = '9';
  $handler->display->display_options['pager']['options']['expose']['items_per_page_label'] = 'Элементов на страницу';
  $handler->display->display_options['pager']['options']['expose']['items_per_page_options_all_label'] = '- Все -';
  $handler->display->display_options['pager']['options']['expose']['offset_label'] = 'Пропустить';
  $handler->display->display_options['pager']['options']['tags']['first'] = '« первая';
  $handler->display->display_options['pager']['options']['tags']['previous'] = '‹ предыдущая';
  $handler->display->display_options['pager']['options']['tags']['next'] = 'следующая ›';
  $handler->display->display_options['pager']['options']['tags']['last'] = 'последняя »';
  $handler->display->display_options['style_plugin'] = 'list';
  $handler->display->display_options['style_options']['default_row_class'] = FALSE;
  $handler->display->display_options['style_options']['row_class_special'] = FALSE;
  $handler->display->display_options['style_options']['wrapper_class'] = 'results evak-list';
  $handler->display->display_options['row_plugin'] = 'fields';
  $handler->display->display_options['row_options']['default_field_elements'] = FALSE;
  /* Заголовок: Глобальный: Сводка результатов */
  $handler->display->display_options['header']['result']['id'] = 'result';
  $handler->display->display_options['header']['result']['table'] = 'views';
  $handler->display->display_options['header']['result']['field'] = 'result';
  $handler->display->display_options['header']['result']['label'] = 'Всего найдено';
  $handler->display->display_options['header']['result']['content'] = 'Ближайшие эвакуаторы показаны первыми.<br/>
Всего найдено эвакуаторов: <strong>@total</strong>';
  /* Поле: Содержимое: Заголовок */
  $handler->display->display_options['fields']['title']['id'] = 'title';
  $handler->display->display_options['fields']['title']['table'] = 'node';
  $handler->display->display_options['fields']['title']['field'] = 'title';
  $handler->display->display_options['fields']['title']['label'] = '';
  $handler->display->display_options['fields']['title']['exclude'] = TRUE;
  $handler->display->display_options['fields']['title']['alter']['word_boundary'] = FALSE;
  $handler->display->display_options['fields']['title']['alter']['ellipsis'] = FALSE;
  $handler->display->display_options['fields']['title']['element_label_colon'] = FALSE;
  $handler->display->display_options['fields']['title']['element_default_classes'] = FALSE;
  $handler->display->display_options['fields']['title']['link_to_node'] = FALSE;
  /* Поле: Содержимое: Телефон водителя эвакуатора */
  $handler->display->display_options['fields']['field_driver_phone']['id'] = 'field_driver_phone';
  $handler->display->display_options['fields']['field_driver_phone']['table'] = 'field_data_field_driver_phone';
  $handler->display->display_options['fields']['field_driver_phone']['field'] = 'field_driver_phone';
  $handler->display->display_options['fields']['field_driver_phone']['label'] = '';
  $handler->display->display_options['fields']['field_driver_phone']['exclude'] = TRUE;
  $handler->display->display_options['fields']['field_driver_phone']['element_label_colon'] = FALSE;
  $handler->display->display_options['fields']['field_driver_phone']['element_default_classes'] = FALSE;
  $handler->display->display_options['fields']['field_driver_phone']['delta_limit'] = '1';
  $handler->display->display_options['fields']['field_driver_phone']['delta_offset'] = '0';
  /* Поле: Содержимое: Грузоподъемность */
  $handler->display->display_options['fields']['field_capacity']['id'] = 'field_capacity';
  $handler->display->display_options['fields']['field_capacity']['table'] = 'field_data_field_capacity';
  $handler->display->display_options['fields']['field_capacity']['field'] = 'field_capacity';
  $handler->display->display_options['fields']['field_capacity']['label'] = '';
  $handler->display->display_options['fields']['field_capacity']['exclude'] = TRUE;
  $handler->display->display_options['fields']['field_capacity']['element_label_colon'] = FALSE;
  $handler->display->display_options['fields']['field_capacity']['element_default_classes'] = FALSE;
  /* Поле: Содержимое: Адрес ночной стоянки */
  $handler->display->display_options['fields']['field_static_address_text']['id'] = 'field_static_address_text';
  $handler->display->display_options['fields']['field_static_address_text']['table'] = 'field_data_field_static_address_text';
  $handler->display->display_options['fields']['field_static_address_text']['field'] = 'field_static_address_text';
  $handler->display->display_options['fields']['field_static_address_text']['label'] = '';
  $handler->display->display_options['fields']['field_static_address_text']['exclude'] = TRUE;
  $handler->display->display_options['fields']['field_static_address_text']['alter']['max_length'] = '40';
  $handler->display->display_options['fields']['field_static_address_text']['alter']['word_boundary'] = FALSE;
  $handler->display->display_options['fields']['field_static_address_text']['alter']['trim'] = TRUE;
  $handler->display->display_options['fields']['field_static_address_text']['element_label_colon'] = FALSE;
  $handler->display->display_options['fields']['field_static_address_text']['element_default_classes'] = FALSE;
  /* Поле: Содержимое: Возможности эвакуатора */
  $handler->display->display_options['fields']['field_options']['id'] = 'field_options';
  $handler->display->display_options['fields']['field_options']['table'] = 'field_data_field_options';
  $handler->display->display_options['fields']['field_options']['field'] = 'field_options';
  $handler->display->display_options['fields']['field_options']['label'] = '';
  $handler->display->display_options['fields']['field_options']['exclude'] = TRUE;
  $handler->display->display_options['fields']['field_options']['alter']['text'] = '([field_options])';
  $handler->display->display_options['fields']['field_options']['element_label_colon'] = FALSE;
  $handler->display->display_options['fields']['field_options']['element_default_classes'] = FALSE;
  $handler->display->display_options['fields']['field_options']['delta_limit'] = '4';
  $handler->display->display_options['fields']['field_options']['delta_offset'] = '0';
  /* Поле: Содержимое: Регион */
  $handler->display->display_options['fields']['field_region']['id'] = 'field_region';
  $handler->display->display_options['fields']['field_region']['table'] = 'field_data_field_region';
  $handler->display->display_options['fields']['field_region']['field'] = 'field_region';
  $handler->display->display_options['fields']['field_region']['label'] = '';
  $handler->display->display_options['fields']['field_region']['exclude'] = TRUE;
  $handler->display->display_options['fields']['field_region']['element_label_colon'] = FALSE;
  $handler->display->display_options['fields']['field_region']['element_default_classes'] = FALSE;
  $handler->display->display_options['fields']['field_region']['delta_limit'] = '4';
  $handler->display->display_options['fields']['field_region']['delta_offset'] = '0';
  /* Поле: Содержимое: Адрес */
  $handler->display->display_options['fields']['path']['id'] = 'path';
  $handler->display->display_options['fields']['path']['table'] = 'node';
  $handler->display->display_options['fields']['path']['field'] = 'path';
  $handler->display->display_options['fields']['path']['label'] = '';
  $handler->display->display_options['fields']['path']['exclude'] = TRUE;
  $handler->display->display_options['fields']['path']['element_label_colon'] = FALSE;
  $handler->display->display_options['fields']['path']['element_default_classes'] = FALSE;
  /* Поле: Глобальный: Пользовательский текст */
  $handler->display->display_options['fields']['nothing']['id'] = 'nothing';
  $handler->display->display_options['fields']['nothing']['table'] = 'views';
  $handler->display->display_options['fields']['nothing']['field'] = 'nothing';
  $handler->display->display_options['fields']['nothing']['label'] = '';
  $handler->display->display_options['fields']['nothing']['alter']['text'] = '<div class="iSide">
  <div class="iTonn ton-2">[field_capacity]</div>
  <div class="iVis"><span class="png png-1"></span></div>
</div>
<div class="iPhone"><a href="tel:[field_driver_phone]">[field_driver_phone]</a></div>
<div class="evak"><a href="[path]" target="_blank">[title]</a> [field_options]</div>
<div class="address">[field_static_address_text]</div>
<div class="regions active">[field_region]</div>';
  $handler->display->display_options['fields']['nothing']['element_label_colon'] = FALSE;
  $handler->display->display_options['fields']['nothing']['element_default_classes'] = FALSE;
  /* Критерий фильтра: Содержимое: Опубликовано */
  $handler->display->display_options['filters']['status']['id'] = 'status';
  $handler->display->display_options['filters']['status']['table'] = 'node';
  $handler->display->display_options['filters']['status']['field'] = 'status';
  $handler->display->display_options['filters']['status']['value'] = 1;
  $handler->display->display_options['filters']['status']['group'] = 1;
  $handler->display->display_options['filters']['status']['expose']['operator'] = FALSE;
  /* Критерий фильтра: Содержимое: Тип */
  $handler->display->display_options['filters']['type']['id'] = 'type';
  $handler->display->display_options['filters']['type']['table'] = 'node';
  $handler->display->display_options['filters']['type']['field'] = 'type';
  $handler->display->display_options['filters']['type']['value'] = array(
    'evacuator' => 'evacuator',
  );
  /* Критерий фильтра: Содержимое: Грузоподъемность (field_capacity) */
  $handler->display->display_options['filters']['field_capacity_value']['id'] = 'field_capacity_value';
  $handler->display->display_options['filters']['field_capacity_value']['table'] = 'field_data_field_capacity';
  $handler->display->display_options['filters']['field_capacity_value']['field'] = 'field_capacity_value';
  $handler->display->display_options['filters']['field_capacity_value']['exposed'] = TRUE;
  $handler->display->display_options['filters']['field_capacity_value']['expose']['operator_id'] = 'field_capacity_value_op';
  $handler->display->display_options['filters']['field_capacity_value']['expose']['label'] = 'Грузоподъемность';
  $handler->display->display_options['filters']['field_capacity_value']['expose']['operator'] = 'field_capacity_value_op';
  $handler->display->display_options['filters']['field_capacity_value']['expose']['identifier'] = 'field_capacity_value';
  $handler->display->display_options['filters']['field_capacity_value']['expose']['multiple'] = TRUE;
  $handler->display->display_options['filters']['field_capacity_value']['expose']['remember_roles'] = array(
    2 => '2',
    1 => '1',
    4 => 0,
    3 => 0,
    6 => 0,
  );
  $handler->display->display_options['filters']['field_capacity_value']['group_info']['label'] = 'Грузоподъемность (field_capacity)';
  $handler->display->display_options['filters']['field_capacity_value']['group_info']['identifier'] = 'field_capacity_value';
  $handler->display->display_options['filters']['field_capacity_value']['group_info']['remember'] = FALSE;
  $handler->display->display_options['filters']['field_capacity_value']['group_info']['group_items'] = array(
    1 => array(),
    2 => array(),
    3 => array(),
    4 => array(),
  );
  /* Критерий фильтра: Содержимое: Возможности эвакуатора (field_options) */
  $handler->display->display_options['filters']['field_options_value']['id'] = 'field_options_value';
  $handler->display->display_options['filters']['field_options_value']['table'] = 'field_data_field_options';
  $handler->display->display_options['filters']['field_options_value']['field'] = 'field_options_value';
  $handler->display->display_options['filters']['field_options_value']['exposed'] = TRUE;
  $handler->display->display_options['filters']['field_options_value']['expose']['operator_id'] = 'field_options_value_op';
  $handler->display->display_options['filters']['field_options_value']['expose']['label'] = 'Возможности эвакуатора';
  $handler->display->display_options['filters']['field_options_value']['expose']['operator'] = 'field_options_value_op';
  $handler->display->display_options['filters']['field_options_value']['expose']['identifier'] = 'field_options_value';
  $handler->display->display_options['filters']['field_options_value']['expose']['multiple'] = TRUE;
  $handler->display->display_options['filters']['field_options_value']['expose']['remember_roles'] = array(
    2 => '2',
    1 => 0,
    4 => 0,
    3 => 0,
    6 => 0,
  );
  /* Критерий фильтра: Содержимое: Регион (field_region) */
  $handler->display->display_options['filters']['field_region_tid']['id'] = 'field_region_tid';
  $handler->display->display_options['filters']['field_region_tid']['table'] = 'field_data_field_region';
  $handler->display->display_options['filters']['field_region_tid']['field'] = 'field_region_tid';
  $handler->display->display_options['filters']['field_region_tid']['exposed'] = TRUE;
  $handler->display->display_options['filters']['field_region_tid']['expose']['operator_id'] = 'field_region_tid_op';
  $handler->display->display_options['filters']['field_region_tid']['expose']['label'] = 'Регион';
  $handler->display->display_options['filters']['field_region_tid']['expose']['operator'] = 'field_region_tid_op';
  $handler->display->display_options['filters']['field_region_tid']['expose']['identifier'] = 'field_region_tid';
  $handler->display->display_options['filters']['field_region_tid']['expose']['multiple'] = TRUE;
  $handler->display->display_options['filters']['field_region_tid']['expose']['remember_roles'] = array(
    2 => '2',
    1 => 0,
    4 => 0,
    3 => 0,
    6 => 0,
  );
  $handler->display->display_options['filters']['field_region_tid']['type'] = 'select';
  $handler->display->display_options['filters']['field_region_tid']['vocabulary'] = 'vocabulary_5';
  $handler->display->display_options['filters']['field_region_tid']['hierarchy'] = 1;
  $handler->display->display_options['filters']['field_region_tid']['error_message'] = FALSE;

  /* Display: Встроенный подбор эвакуатора */
  $handler = $view->new_display('page', 'Встроенный подбор эвакуатора', 'client_podbor_results');
  $handler->display->display_options['defaults']['title'] = FALSE;
  $handler->display->display_options['title'] = 'Профессиональный подбор';
  $handler->display->display_options['defaults']['pager'] = FALSE;
  $handler->display->display_options['pager']['type'] = 'full';
  $handler->display->display_options['pager']['options']['items_per_page'] = '12';
  $handler->display->display_options['pager']['options']['offset'] = '0';
  $handler->display->display_options['pager']['options']['id'] = '0';
  $handler->display->display_options['pager']['options']['quantity'] = '9';
  $handler->display->display_options['pager']['options']['expose']['items_per_page_label'] = 'Элементов на страницу';
  $handler->display->display_options['pager']['options']['expose']['items_per_page_options_all_label'] = '- Все -';
  $handler->display->display_options['pager']['options']['expose']['offset_label'] = 'Пропустить';
  $handler->display->display_options['pager']['options']['tags']['first'] = '« первая';
  $handler->display->display_options['pager']['options']['tags']['previous'] = '‹ предыдущая';
  $handler->display->display_options['pager']['options']['tags']['next'] = 'следующая ›';
  $handler->display->display_options['pager']['options']['tags']['last'] = 'последняя »';
  $handler->display->display_options['defaults']['fields'] = FALSE;
  /* Поле: Содержимое: Заголовок */
  $handler->display->display_options['fields']['title']['id'] = 'title';
  $handler->display->display_options['fields']['title']['table'] = 'node';
  $handler->display->display_options['fields']['title']['field'] = 'title';
  $handler->display->display_options['fields']['title']['label'] = '';
  $handler->display->display_options['fields']['title']['exclude'] = TRUE;
  $handler->display->display_options['fields']['title']['alter']['word_boundary'] = FALSE;
  $handler->display->display_options['fields']['title']['alter']['ellipsis'] = FALSE;
  $handler->display->display_options['fields']['title']['element_label_colon'] = FALSE;
  $handler->display->display_options['fields']['title']['element_default_classes'] = FALSE;
  $handler->display->display_options['fields']['title']['link_to_node'] = FALSE;
  /* Поле: Содержимое: Телефон водителя эвакуатора */
  $handler->display->display_options['fields']['field_driver_phone']['id'] = 'field_driver_phone';
  $handler->display->display_options['fields']['field_driver_phone']['table'] = 'field_data_field_driver_phone';
  $handler->display->display_options['fields']['field_driver_phone']['field'] = 'field_driver_phone';
  $handler->display->display_options['fields']['field_driver_phone']['label'] = '';
  $handler->display->display_options['fields']['field_driver_phone']['exclude'] = TRUE;
  $handler->display->display_options['fields']['field_driver_phone']['element_label_colon'] = FALSE;
  $handler->display->display_options['fields']['field_driver_phone']['element_default_classes'] = FALSE;
  $handler->display->display_options['fields']['field_driver_phone']['delta_limit'] = '1';
  $handler->display->display_options['fields']['field_driver_phone']['delta_offset'] = '0';
  /* Поле: Содержимое: Грузоподъемность */
  $handler->display->display_options['fields']['field_capacity']['id'] = 'field_capacity';
  $handler->display->display_options['fields']['field_capacity']['table'] = 'field_data_field_capacity';
  $handler->display->display_options['fields']['field_capacity']['field'] = 'field_capacity';
  $handler->display->display_options['fields']['field_capacity']['label'] = '';
  $handler->display->display_options['fields']['field_capacity']['exclude'] = TRUE;
  $handler->display->display_options['fields']['field_capacity']['element_label_colon'] = FALSE;
  $handler->display->display_options['fields']['field_capacity']['element_default_classes'] = FALSE;
  /* Поле: Содержимое: Адрес ночной стоянки */
  $handler->display->display_options['fields']['field_static_address_text']['id'] = 'field_static_address_text';
  $handler->display->display_options['fields']['field_static_address_text']['table'] = 'field_data_field_static_address_text';
  $handler->display->display_options['fields']['field_static_address_text']['field'] = 'field_static_address_text';
  $handler->display->display_options['fields']['field_static_address_text']['label'] = '';
  $handler->display->display_options['fields']['field_static_address_text']['exclude'] = TRUE;
  $handler->display->display_options['fields']['field_static_address_text']['alter']['max_length'] = '40';
  $handler->display->display_options['fields']['field_static_address_text']['alter']['word_boundary'] = FALSE;
  $handler->display->display_options['fields']['field_static_address_text']['alter']['trim'] = TRUE;
  $handler->display->display_options['fields']['field_static_address_text']['element_label_colon'] = FALSE;
  $handler->display->display_options['fields']['field_static_address_text']['element_default_classes'] = FALSE;
  /* Поле: Содержимое: Возможности эвакуатора */
  $handler->display->display_options['fields']['field_options']['id'] = 'field_options';
  $handler->display->display_options['fields']['field_options']['table'] = 'field_data_field_options';
  $handler->display->display_options['fields']['field_options']['field'] = 'field_options';
  $handler->display->display_options['fields']['field_options']['label'] = '';
  $handler->display->display_options['fields']['field_options']['exclude'] = TRUE;
  $handler->display->display_options['fields']['field_options']['alter']['text'] = '([field_options])';
  $handler->display->display_options['fields']['field_options']['element_label_colon'] = FALSE;
  $handler->display->display_options['fields']['field_options']['element_default_classes'] = FALSE;
  $handler->display->display_options['fields']['field_options']['delta_limit'] = '4';
  $handler->display->display_options['fields']['field_options']['delta_offset'] = '0';
  /* Поле: Содержимое: Регион */
  $handler->display->display_options['fields']['field_region']['id'] = 'field_region';
  $handler->display->display_options['fields']['field_region']['table'] = 'field_data_field_region';
  $handler->display->display_options['fields']['field_region']['field'] = 'field_region';
  $handler->display->display_options['fields']['field_region']['label'] = '';
  $handler->display->display_options['fields']['field_region']['exclude'] = TRUE;
  $handler->display->display_options['fields']['field_region']['element_label_colon'] = FALSE;
  $handler->display->display_options['fields']['field_region']['element_default_classes'] = FALSE;
  $handler->display->display_options['fields']['field_region']['delta_limit'] = '4';
  $handler->display->display_options['fields']['field_region']['delta_offset'] = '0';
  /* Поле: Содержимое: Адрес */
  $handler->display->display_options['fields']['path']['id'] = 'path';
  $handler->display->display_options['fields']['path']['table'] = 'node';
  $handler->display->display_options['fields']['path']['field'] = 'path';
  $handler->display->display_options['fields']['path']['label'] = '';
  $handler->display->display_options['fields']['path']['exclude'] = TRUE;
  $handler->display->display_options['fields']['path']['element_label_colon'] = FALSE;
  $handler->display->display_options['fields']['path']['element_default_classes'] = FALSE;
  /* Поле: Глобальный: Пользовательский текст */
  $handler->display->display_options['fields']['nothing']['id'] = 'nothing';
  $handler->display->display_options['fields']['nothing']['table'] = 'views';
  $handler->display->display_options['fields']['nothing']['field'] = 'nothing';
  $handler->display->display_options['fields']['nothing']['label'] = '';
  $handler->display->display_options['fields']['nothing']['alter']['text'] = '<div class="iSide">
  <div class="iTonn ton-2">[field_capacity]</div>
  <div class="iVis"><span class="png png-1"></span></div>
</div>
<div class="iPhone"><a href="tel:[field_driver_phone]">[field_driver_phone]</a></div>
<div class="evak"><a href="[path]" target="_blank">[title]</a> [field_options]</div>
<div class="address">[field_static_address_text]</div>
<div class="regions active">[field_region]</div>';
  $handler->display->display_options['fields']['nothing']['element_label_colon'] = FALSE;
  $handler->display->display_options['fields']['nothing']['element_default_classes'] = FALSE;
  $handler->display->display_options['defaults']['sorts'] = FALSE;
  /* Критерий сортировки: Аргументы: Multi-item Argument Order */
  $handler->display->display_options['sorts']['weight']['id'] = 'weight';
  $handler->display->display_options['sorts']['weight']['table'] = 'views_sort_by_arg_order';
  $handler->display->display_options['sorts']['weight']['field'] = 'weight';
  $handler->display->display_options['sorts']['weight']['order'] = 'DESC';
  $handler->display->display_options['sorts']['weight']['argument_number'] = '0';
  $handler->display->display_options['defaults']['arguments'] = FALSE;
  /* Контекстный фильтр: Содержимое: Nid */
  $handler->display->display_options['arguments']['nid']['id'] = 'nid';
  $handler->display->display_options['arguments']['nid']['table'] = 'node';
  $handler->display->display_options['arguments']['nid']['field'] = 'nid';
  $handler->display->display_options['arguments']['nid']['exception']['title'] = 'Все';
  $handler->display->display_options['arguments']['nid']['default_argument_type'] = 'php';
  $handler->display->display_options['arguments']['nid']['default_argument_options']['code'] = 'return arg(0);';
  $handler->display->display_options['arguments']['nid']['summary']['number_of_records'] = '0';
  $handler->display->display_options['arguments']['nid']['summary']['format'] = 'default_summary';
  $handler->display->display_options['arguments']['nid']['summary_options']['items_per_page'] = '25';
  $handler->display->display_options['arguments']['nid']['break_phrase'] = TRUE;
  /* Контекстный фильтр: Содержимое: Грузоподъемность (field_capacity) */
  $handler->display->display_options['arguments']['field_capacity_value']['id'] = 'field_capacity_value';
  $handler->display->display_options['arguments']['field_capacity_value']['table'] = 'field_data_field_capacity';
  $handler->display->display_options['arguments']['field_capacity_value']['field'] = 'field_capacity_value';
  $handler->display->display_options['arguments']['field_capacity_value']['exception']['title'] = 'Все';
  $handler->display->display_options['arguments']['field_capacity_value']['default_argument_type'] = 'fixed';
  $handler->display->display_options['arguments']['field_capacity_value']['summary']['number_of_records'] = '0';
  $handler->display->display_options['arguments']['field_capacity_value']['summary']['format'] = 'default_summary';
  $handler->display->display_options['arguments']['field_capacity_value']['summary_options']['items_per_page'] = '25';
  $handler->display->display_options['arguments']['field_capacity_value']['break_phrase'] = TRUE;
  $handler->display->display_options['defaults']['filter_groups'] = FALSE;
  $handler->display->display_options['defaults']['filters'] = FALSE;
  /* Критерий фильтра: Содержимое: Тип */
  $handler->display->display_options['filters']['type']['id'] = 'type';
  $handler->display->display_options['filters']['type']['table'] = 'node';
  $handler->display->display_options['filters']['type']['field'] = 'type';
  $handler->display->display_options['filters']['type']['value'] = array(
    'evacuator' => 'evacuator',
  );
  /* Критерий фильтра: Содержимое: Опубликовано */
  $handler->display->display_options['filters']['status']['id'] = 'status';
  $handler->display->display_options['filters']['status']['table'] = 'node';
  $handler->display->display_options['filters']['status']['field'] = 'status';
  $handler->display->display_options['filters']['status']['value'] = '1';
  $handler->display->display_options['path'] = 'podbor_inner';
  $translatables['client_podbor'] = array(
    t('Master'),
    t('Подбор на главной странице'),
    t('еще'),
    t('Применить'),
    t('Сбросить'),
    t('Сортировать по'),
    t('По возрастанию'),
    t('По убыванию'),
    t('Элементов на страницу'),
    t('- Все -'),
    t('Пропустить'),
    t('« первая'),
    t('‹ предыдущая'),
    t('следующая ›'),
    t('последняя »'),
    t('Всего найдено'),
    t('Ближайшие эвакуаторы показаны первыми.<br/>
Всего найдено эвакуаторов: <strong>@total</strong>'),
    t('([field_options])'),
    t('<div class="iSide">
  <div class="iTonn ton-2">[field_capacity]</div>
  <div class="iVis"><span class="png png-1"></span></div>
</div>
<div class="iPhone"><a href="tel:[field_driver_phone]">[field_driver_phone]</a></div>
<div class="evak"><a href="[path]" target="_blank">[title]</a> [field_options]</div>
<div class="address">[field_static_address_text]</div>
<div class="regions active">[field_region]</div>'),
    t('Грузоподъемность'),
    t('Грузоподъемность (field_capacity)'),
    t('Возможности эвакуатора'),
    t('Регион'),
    t('Встроенный подбор эвакуатора'),
    t('Профессиональный подбор'),
    t('Все'),
  );

  $views[$view->name] = $view;
  return $views;
}
