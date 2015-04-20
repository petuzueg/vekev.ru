<html>
<head>
<style>
td {border: 1px solid; width: 150px;}
</style>
</head>
<body>
<table>
<tr><td>№</td><td>UID</td><td>IP</td><td>Время</td><td>lat</td><td>lon</td></tr>
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
  readVote();
  mysql_close($db);

  function readVote()
  {
    global $db;
        $sql = "select * from and_history order by uid, created";
      $result = mysql_query($sql, $db);
      while ($row = mysql_fetch_array($result)) {
        $created = date('d.m.Y H:i:s', $row['created']);
        if($row['created']-60 > $last) $created = "<strong>" . $created . "</strong>";
        
        echo "<tr><td>" . $row['hid'] ."</td><td>" . $row['uid'] . "</td><td>" . $row['ip'] . "</td><td>" . $created . "</td><td>" . $row['lat'] . "</td><td>" . $row['lon'] . "</td></tr>";
	$last = $row['created'];
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
  ?>
</table>
  </body>
  </html>