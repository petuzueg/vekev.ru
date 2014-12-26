<?php
/**
 * @param $uid
 * @param $path
 * @return int
 * @throws \Exception
 */
function _authlink_set_code($uid, $path) {
  // Todo generate more complex code.
  $code = rand(100, 999);
  $result = db_insert('code', 'c')
    ->fields(array(
      'code' => $code,
      'uid' => $uid,
      'path' => $path,
    ))
    ->execute();
  // dsm($result);
  return $code;
}

/**
 * Gets uid, path to redirect by code.
 *
 * @return mixed
 *   $user object.
 */
function _authlink_get_code() {
  $code = arg(1);
  // Get uid, redirect path by code.
  $result = db_select('authlink', 'a', array())
    ->condition('code', $code, '=')
    ->condition('activated', NULL, 'is')
    ->fields('a')
    ->execute()
    ->fetchAssoc();

  if (count($result)) {
    return $result;
  }

  return NULL;
}
