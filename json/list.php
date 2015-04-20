<html>
<head>
<style>
td {border: 1px solid; width: 150px;}
</style>
</head>
<body>
<table>
<tr><td>Телефон</td><td>IP</td><td>Время</td><td>nid</td><td>Vote</td></tr>
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
        $sql = "select * from tmp_phones";
      $result = mysql_query($sql, $db);
      while ($row = mysql_fetch_array($result)) {
        echo "<tr><td>" . $row['number'] . "</td><td>" . $row['ip'] . "</td><td>" . $row['time'] . "</td><td>" . $row['nid'] . "</td><td>" . $row['vote'] . "</td></tr>";
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