<?php
  /*
  create table tmp_phones (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    number text,
    ip text,
    time timestamp,
    nid int,
    vote int
  );
    */
  error_reporting(E_ALL);
  ini_set('error_reporting', E_ALL);

  include_once('../sites/default/settings.php');

  $db = $databases['default']['default']['database'];
  $host = $databases['default']['default']['host'];
  $login = $databases['default']['default']['username'];
  $pass = $databases['default']['default']['password'];

  $db = connectDB();
  writeVote();
  mysql_close($db);

  function writeVote()
  {
    global $db;
    $id = (int)$_GET['id'];
    $vote = (int)$_GET['vote'];
    $number = mysql_real_escape_string($_GET['number']);
    $ip = get_user_ip();
    if ($id && '93.123.226.250' != $ip) {
      $date = date('Y-m-d H:i:s', time()+32400);
      if ($vote) {
        //пользователь проголосовал Да или Нет
        $sql = "insert into tmp_phones
      (ip, time, nid, vote, number)
      values ('" . $ip . "', '" . $date . "', '" . $id . "', " . $vote . ", '" . $number . "')";
      } else {
        //пользователь кликнул "показать телеофн"
        $sql = "insert into tmp_phones
      (ip, time, nid, vote, number)
      values ('" . $ip . "', '" . $date . "', '" . $id . "', null, '" . $number . "')";
      }
      print $sql;
      $result = mysql_query($sql, $db);
    }
  }

  function connectDB()
  {
    global $host, $login, $pass, $db;
    $conn = mysql_connect($host, $login, $pass);
    mysql_set_charset('utf8', $conn);
    mysql_select_db($db, $conn);
    return $conn;
  }

  function get_user_ip()
  {
    if (getenv('REMOTE_ADDR')) $user_ip = getenv('REMOTE_ADDR');
    elseif (getenv('HTTP_FORWARDED_FOR')) $user_ip = getenv('HTTP_FORWARDED_FOR'); elseif (getenv('HTTP_X_FORWARDED_FOR')) $user_ip = getenv('HTTP_X_FORWARDED_FOR'); elseif (getenv('HTTP_X_COMING_FROM')) $user_ip = getenv('HTTP_X_COMING_FROM'); elseif (getenv('HTTP_VIA')) $user_ip = getenv('HTTP_VIA'); elseif (getenv('HTTP_XROXY_CONNECTION')) $user_ip = getenv('HTTP_XROXY_CONNECTION'); elseif (getenv('HTTP_CLIENT_IP')) $user_ip = getenv('HTTP_CLIENT_IP');
    $user_ip = trim($user_ip);
    if (empty($user_ip)) return false;
    if (!preg_match("/^([1-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])(\.([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])){3}$/", $user_ip)) return false;
    return $user_ip;
  }

