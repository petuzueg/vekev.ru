<?php

header("Cache-Control: no-cache, must-revalidate"); // HTTP/1.1
header("Expires: Sat, 26 Jul 1997 05:00:00 GMT"); // Date in the past
//header('Content-Type: application/vnd.google-earth.kml+xml kml');
//header('Content-Disposition: attachment; filename="test.kml"');

$uid = intval($_GET['uid']);
if(!$uid) $uid = 977;

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

include_once('../../sites/default/settings.php');

$db = $databases['default']['default']['database'];
$host = $databases['default']['default']['host'];
$login = $databases['default']['default']['username'];
$pass = $databases['default']['default']['password'];

$db = connectDB();
readVote();
mysql_close($db);

function readVote() {
  global $db, $uid;
  $out = '<?xml version="1.0" encoding="UTF-8"?>
<kml xmlns="http://www.opengis.net/kml/2.2" xmlns:gx="http://www.google.com/kml/ext/2.2" xmlns:kml="http://www.opengis.net/kml/2.2" xmlns:atom="http://www.w3.org/2005/Atom">
  <Document>';
  //$sql = "select * from and_history where uid=1413 order by created";
  $sql = "select * from and_history where uid=" . $uid . " order by created limit 1000";
  //$sql = "select * from and_history where uid=1413 and hid > 15570 order by created";
  $result = mysql_query($sql, $db);
  while ($row = mysql_fetch_array($result)) {
    //  $created = date('d.m.Y H:i:s', $row['created']);
    //    if($row['created']-60 > $last) $created = "<strong>" . $created . "</strong>";
    //$out .= "". $row['lon'] . "," . $row['lat'];
    $out .= "
  <Placemark>
     <name>test</name>
     <description>Description</description>
     <Point>
       <coordinates>" . $row['lon'] . " , " . $row['lat'] . "</coordinates>
     </Point>
  </Placemark>";

    //echo "<tr><td>" . $row['hid'] ."</td><td>" . $row['uid'] . "</td><td>" . $row['ip'] . "</td><td>" . $created . "</td><td>" . $row['lat'] . "</td><td>" . $row['lon'] . "</td></tr>";
    //$last = $row['created'];
  }
  $out .= "
  </Document>
</kml>";
  print $out;
}

function connectDB() {
  global $host, $login, $pass, $db;
  $conn = mysql_connect($host, $login, $pass);
  mysql_set_charset('utf8', $conn);
  mysql_select_db($db, $conn);
  return $conn;
}
