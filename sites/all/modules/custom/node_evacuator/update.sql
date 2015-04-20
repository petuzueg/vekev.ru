/* Убарать анонс из описаний эвакуатора */
UPDATE `field_data_body`
SET body_summary = null
WHERE bundle = 'evacuator' AND body_summary IS NOT null

/* Везде форма ввода один и тот же */
UPDATE `field_data_body`
SET body_format = 'usertext'
WHERE bundle = 'evacuator';

/*Перенос данных о грузоподъемности*/
INSERT INTO field_data_field_capacity

SELECT
  'node'                 AS entity_type,
  'evacuator'            AS bundle,
  '0'                    AS deleted,
  entity_id,
  revision_id,
  language,
  0                      AS delta,
  field_evacuator_volume AS field_capacity_value
FROM field_data_field_evacuator;

/*Ревизии*/
INSERT INTO field_revision_field_capacity

  SELECT
    'node'                 AS entity_type,
    'evacuator'            AS bundle,
    '0'                    AS deleted,
    entity_id,
    revision_id,
    language,
    0                      AS delta,
    field_evacuator_volume AS field_capacity_value
  FROM field_data_field_evacuator;


/*Перенос телефонов*/
INSERT INTO field_data_field_driver_phone

  SELECT
    'node'                 AS entity_type,
    'evacuator'            AS bundle,
    '0'                    AS deleted,
    entity_id,
    revision_id,
    language,
    0                      AS delta,
    field_evacuator_phone1 AS field_driver_phone_value,
    null                   AS field_driver_phone_format
  FROM field_data_field_evacuator;

/*Ревизии*/
INSERT INTO field_revision_field_driver_phone

  SELECT
    'node'                 AS entity_type,
    'evacuator'            AS bundle,
    '0'                    AS deleted,
    entity_id,
    revision_id,
    language,
    0                      AS delta,
    field_evacuator_phone1 AS field_driver_phone_value,
    null                   AS field_driver_phone_format
  FROM field_data_field_evacuator;

/*Второй телефон, если заполнен*/
INSERT INTO field_data_field_driver_phone

  SELECT
    'node'                 AS entity_type,
    'evacuator'            AS bundle,
    '0'                    AS deleted,
    entity_id,
    revision_id,
    language,
    1                      AS delta,
    field_evacuator_phone2 AS field_driver_phone_value,
    null                   AS field_driver_phone_format
  FROM field_data_field_evacuator
  WHERE field_evacuator_phone2 != '';

/*Ревизии*/
INSERT INTO field_revision_field_driver_phone

  SELECT
    'node'                 AS entity_type,
    'evacuator'            AS bundle,
    '0'                    AS deleted,
    entity_id,
    revision_id,
    language,
    1                      AS delta,
    field_evacuator_phone2 AS field_driver_phone_value,
    null                   AS field_driver_phone_format
  FROM field_data_field_evacuator
  WHERE field_evacuator_phone2 != '';

/*Третий телефон, если заполнен*/
INSERT INTO field_data_field_driver_phone

  SELECT
    'node'                 AS entity_type,
    'evacuator'            AS bundle,
    '0'                    AS deleted,
    entity_id,
    revision_id,
    language,
    2                      AS delta,
    field_evacuator_phone3 AS field_driver_phone_value,
    null                   AS field_driver_phone_format
  FROM field_data_field_evacuator
  WHERE field_evacuator_phone3 != '';

/*Ревизии*/
INSERT INTO field_revision_field_driver_phone

  SELECT
    'node'                 AS entity_type,
    'evacuator'            AS bundle,
    '0'                    AS deleted,
    entity_id,
    revision_id,
    language,
    2                      AS delta,
    field_evacuator_phone3 AS field_driver_phone_value,
    null                   AS field_driver_phone_format
  FROM field_data_field_evacuator
  WHERE field_evacuator_phone3 != '';

/*Адрес ночной стоянки*/
INSERT INTO field_data_field_static_address

  SELECT
    'node'                                 AS entity_type,
    'evacuator'                            AS bundle,
    '0'                                    AS deleted,
    entity_id,
    revision_id,
    language,
    0                                      AS delta,
    field_evacuator_latitude               AS field_static_address_lat,
    field_evacuator_longitude              AS field_static_address_lng,
    sin(RADIANS(field_evacuator_latitude)) AS field_static_address_lat_sin,
    cos(RADIANS(field_evacuator_latitude)) AS field_static_address_lat_cos,
    radians(field_evacuator_longitude)     AS field_static_address_lng_rad
  FROM field_data_field_evacuator;

/*Ревизии*/
INSERT INTO field_revision_field_static_address

  SELECT
    'node'                                 AS entity_type,
    'evacuator'                            AS bundle,
    '0'                                    AS deleted,
    entity_id,
    revision_id,
    language,
    0                                      AS delta,
    field_evacuator_latitude               AS field_static_address_lat,
    field_evacuator_longitude              AS field_static_address_lng,
    sin(RADIANS(field_evacuator_latitude)) AS field_static_address_lat_sin,
    cos(RADIANS(field_evacuator_latitude)) AS field_static_address_lat_cos,
    radians(field_evacuator_longitude)     AS field_static_address_lng_rad
  FROM field_data_field_evacuator;

/*Адрес ночной стоянки - текстовый */
INSERT INTO field_data_field_static_address_text

  SELECT
    'node'                 AS entity_type,
    'evacuator'            AS bundle,
    '0'                    AS deleted,
    entity_id,
    revision_id,
    language,
    0                      AS delta,
    field_evacuator_street AS field_static_address_text_value,
    null                   AS field_static_address_text_format
  FROM field_data_field_evacuator
  WHERE field_evacuator_street != '';

/*Ревизии*/
INSERT INTO field_revision_field_static_address_text
  SELECT
    'node'                 AS entity_type,
    'evacuator'            AS bundle,
    '0'                    AS deleted,
    entity_id,
    revision_id,
    language,
    0                      AS delta,
    field_evacuator_street AS field_static_address_text_value,
    null                   AS field_static_address_text_format
  FROM field_data_field_evacuator
  WHERE field_evacuator_street != '';


/*Адрес ночной стоянки - текстовый */
INSERT INTO field_data_field_company

  SELECT
    'node'                  AS entity_type,
    'evacuator'             AS bundle,
    '0'                     AS deleted,
    entity_id,
    revision_id,
    language,
    0                       AS delta,
    field_evacuator_company AS field_company_target_id
  FROM field_data_field_evacuator
  WHERE field_evacuator_company != 0;

/*Ревизии*/
INSERT INTO field_revision_field_company
  SELECT
    'node'                  AS entity_type,
    'evacuator'             AS bundle,
    '0'                     AS deleted,
    entity_id,
    revision_id,
    language,
    0                       AS delta,
    field_evacuator_company AS field_company_target_id
  FROM field_data_field_evacuator
  WHERE field_evacuator_company != 0;
