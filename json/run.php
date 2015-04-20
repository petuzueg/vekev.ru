<?php
  /**
   * Generates JSON data.
   * Example: 'q':2, 'nid': 234, 'page':page, 'tag_id':'sao'
   * @param q: what to show:
   * 1 - source for map;
   * 2 - source for table block;
   * 3 - source for
   * @param nid: entity id;
   * @param page:
   * @param tag_id: for which tag <div class="results" id="tag_id"></div> apply data.
   * @param limit: how many items to show.
   */

//  header('Content-type: text/html; charset=utf8');
header('Content-Type: application/json; charset=utf-8');
//header('Content-Type: application/json; charset=utf-8');
  include_once('../sites/default/settings.php');

  $db = $databases['default']['default']['database'];
  $host = $databases['default']['default']['host'];
  $login = $databases['default']['default']['username'];
  $pass = $databases['default']['default']['password'];

  $q = @$_GET["q"];
  $db = connectDB();
  getData($q);

  mysql_close($db);

  function getData($q) {
    global $_GET, $db;
    $loc = '';
    $limit = (int) @$_GET['limit'];

    switch ($q) {
      case 1: // Выбрать все ноды для показа маркеров на карте
        //ToDo: Ограничить область по координатам видимой области!
//            $sql = "SELECT node.nid AS nid, url_alias.alias, node.title, field_data_field_price.field_price_value as price,
//field_data_field_discount.field_discount_value as discount, location.latitude, location.longitude, location.street,
//field_data_field_phone.field_phone_value as phone, field_data_field_volume.field_volume_value as volume
// FROM node
// LEFT JOIN location ON node.nid                 = location.nid
// LEFT JOIN field_data_field_phone ON node.nid   = field_data_field_phone.entity_id
// LEFT JOIN field_data_field_volume ON node.nid  = field_data_field_volume.entity_id
// LEFT JOIN field_data_field_price ON node.nid    = field_data_field_price.entity_id
// LEFT JOIN field_data_field_discount ON node.nid = field_data_field_discount.entity_id
// LEFT JOIN  url_alias ON CONCAT('node/', node.nid) = url_alias.source
//
// WHERE (node.status = 1) AND (node.type in ('evacuator'))";


      $sql = "
SELECT nid, title, alias, field_driver_phone_value as phone, field_capacity_value as volume, field_static_address_lat as latitude, field_static_address_lng as longitude,
field_static_address_text_value as street

FROM node
LEFT JOIN  url_alias ON CONCAT('node/', nid) = url_alias.source
LEFT JOIN field_data_field_driver_phone on field_data_field_driver_phone.entity_id = node.nid and field_data_field_driver_phone.delta = 0
LEFT JOIN field_data_field_capacity on field_data_field_capacity.entity_id = nid
LEFT JOIN field_data_field_static_address ON field_data_field_static_address.entity_id = nid
LEFT JOIN field_data_field_static_address_text ON field_data_field_static_address_text.entity_id = nid
WHERE status=1 and type='evacuator'
        ";



/*        $sql = "
SELECT node.nid AS nid, url_alias.alias, node.title, field_evacuator_price1 as price,
field_evacuator_discount as discount, field_evacuator_latitude as latitude, field_evacuator_longitude as longitude,
field_evacuator_street as street,
field_evacuator_phone1 as phone, field_evacuator_volume as volume

FROM field_data_field_evacuator

LEFT JOIN node on node.nid = entity_id
LEFT JOIN  url_alias ON CONCAT('node/', entity_id) = url_alias.source
where node.status = 1
";*/
        $result = mysql_query($sql, $db);
        //          where node.status = 0
        break;
      /*        case 2: // Выбрать координаты и адрес маркета по nid
                  $nid = (int)$_GET['nid'];
                  if ($nid) {
                      $sql = "SELECT latitude, longitude, street, FROM location WHERE nid = " . $nid;
                  } else
                      return 0;
                  break;*/

      case 2: // Данные для таблицы с эвакуаторами
        //$limit = '';
        $nid = (int) $_GET['nid'];
        if ($nid) { // Если пришел номер ноды административного округа
          //Загрузить координаты региона округа в $polygon
          $sql = 'SELECT field_polygon_value FROM field_data_field_polygon WHERE entity_id=' . $nid;
          $result = mysql_query($sql, $db);
          $row = mysql_fetch_array($result);
          $polygon = $row[0];
          // $nids содержит номера нод, которые нужно выбрать и показать
          $nids = get_nids($polygon);
          $add_limit = ' node.nid in (' . $nids . ')';
          //and
        }
/*        if ($limit) {
          $add_limit .= ' limit ' . $limit;
        }
        else {
          $page = (int) $_GET['page'];
          $per_page = 30;
          $add_limit .= ' limit ' . $page * $per_page . ', ' . $per_page;
        }*/
//            if(!$page){
//                $sql = "SELECT count(nid) as count
//                            FROM field_data_field_evacuator
//                            LEFT JOIN node on field_data_field_evacuator.entity_id = node.nid
//                            WHERE node.status = 1 ";
//                $result = mysql_query($sql, $db);
//                $row = mysql_fetch_array($result);
//                $total_rows = $row[0];
//                $pages = floor($total_rows / $per_page);
//                if($total_rows % $per_page > 0) $pages++;
//
//            }
        $sql = "SELECT
                            title,
                            node.nid,
                            CONCAT( 'node/', nid ) AS alias,
                            field_evacuator_volume as volume,
                            field_evacuator_price1 as price1,
                            field_evacuator_discount as discount,
                            field_evacuator_phone1 as phone1,
                            field_evacuator_street as street

                            FROM field_data_field_evacuator

                            LEFT JOIN node on field_data_field_evacuator.entity_id = node.nid

                            WHERE  node.status=1 and " . $add_limit;
        //node.status = 1
        //echo $sql;
        //LEFT JOIN url_alias ON CONCAT('node/', entity_id) = url_alias.source
        //echo $sql;
        $result = mysql_query($sql, $db);

        while ($row = mysql_fetch_array($result)) {
          $loc[] = array(
            'title' => $row['title'],
            'alias' => $row['alias'],
            'nid' => $row['nid'],
            'volume' => $row['volume'],
            'price1' => $row['price1'],
            'discount' => $row['discount'],
            'street' => $row['street'],
            'phone1' => format_phone($row['phone1']),
          );
        }



        break;
      case 3: // Вывод таблицы с эвакуаторами для на странице компании
        $uid = (int) $_GET['uid'];
        if ($uid) {
          $sql = "
SELECT
                            title,
                            node.nid,
                            CONCAT( 'node/', nid ) AS alias,
                            field_evacuator_volume as volume,
                            field_evacuator_price1 as price1,
                            field_evacuator_discount as discount,
                            field_evacuator_phone1 as phone1,
                            field_evacuator_street as street,
                            status

FROM field_data_field_evacuator

LEFT JOIN node on field_data_field_evacuator.entity_id = node.nid
WHERE node.uid =" . $uid;

          $result = mysql_query($sql, $db);

          while ($row = mysql_fetch_array($result)) {
            if ($row['status'] == 0) {
              $title = '(не активно) ' . $row['title'];
            }
            else {
              $title = $row['title'];
            }
            $loc[] = array(
              'title' => $title,
              'alias' => $row['alias'],
              'nid' => $row['nid'],
              'volume' => $row['volume'],
              'price1' => $row['price1'],
              'discount' => $row['discount'],
              'street' => $row['street'],
              'phone1' => format_phone($row['phone1']),
            );
          }
        }
        break;
      case 4:
        $sql = "
            SELECT
                            title,
                            node.nid,
                            CONCAT( 'node/', nid ) AS alias,
                            field_evacuator_volume as volume,
                            field_evacuator_price1 as price1,
                            field_evacuator_discount as discount,
                            field_evacuator_phone1 as phone1,
                            field_evacuator_street as street

                            FROM field_data_field_evacuator

                            LEFT JOIN node on field_data_field_evacuator.entity_id = node.nid ";

        $result = mysql_query($sql, $db);

        while ($row = mysql_fetch_array($result)) {
          $loc[] = array(
            'title' => $row['title'],
            'alias' => $row['alias'],
            'nid' => $row['nid'],
            'volume' => $row['volume'],
            'price1' => $row['price1'],
            'discount' => $row['discount'],
            'street' => $row['street'],
            'phone1' => format_phone($row['phone1']),
          );
        }
        break;
      default :
        return 0;
    }


    while ($row = mysql_fetch_array($result)) {
      $array = array(
        'nid' => $row['nid'],
        'alias' => isset($row['alias']) ? "/" . $row['alias'] : '/node/' . $row['nid'],
        'price' => $row['price'],
        'title' => $row['title'],
        'discount' => $row['discount'],
       // 'street' => $row['street'],
        'lat' => $row['latitude'],
        'lng' => $row['longitude'],
        'volume' => $row['volume'],
        'phone' => $row['phone'],
      );

      $loc[] = $array;
    }

//echo $sql;
    $final_loc;
    $res1 = get_random(count($loc), $limit);
 /*   print "<pre>";
    print_r($result);
    print "</pre>";*/
    for($i = 0; $i < count($res1); $i++){
      $final_loc[] = @$loc[$res1[$i]];
    }
    if (!@$loc[0]) {
      $final_loc[] = '';
    }
    if(isset($pages)) $final_loc[0]['pages'] = $pages;
    $final_loc[0]['tag_id'] = @$_GET['tag_id'];
    echo json_encode($final_loc);
  }

  function connectDB() {
    global $host, $login, $pass, $db;
    $conn = mysql_connect($host, $login, $pass);
    mysql_set_charset('utf8', $conn);
    mysql_select_db($db, $conn);
    return $conn;
  }

  function format_phone($phone) {
    $phone = preg_replace("/[^0-9]/", "", $phone);
    if (strlen($phone) == 7) {
      return preg_replace("/([0-9]{3})([0-9]{2})([0-9]{2})/", "+7 (495) $1-$2-$3", $phone);
    }
    elseif (strlen($phone) > 7) {
      return preg_replace("/([0-9]{1})([0-9]{3})([0-9]{3})([0-9]{2})([0-9]{2})/", "+$1 ($2) $3-$4-$5", $phone);
    }
    else {
      return $phone;
    }
  }

  function get_nids($polygon) {
    $result = '';
    $points = get_data();

    //  $region = unserialize($polygon);
    $region = json_decode($polygon);
    $region = split_x_y($region);

    $points_count = count($region[0]);
    for ($i = 0; $i < count($points); $i++) {
      if (is_in_polygon($points_count, $region[0], $region[1], $points[$i]->longitude, $points[$i]->latitude)) {
        $result .= $points[$i]->nid . ",";
      }
    }
    //print_r($result);
    return $result . "0";
  }

  function is_in_polygon($points_polygon, $vertices_x, $vertices_y, $longitude_x, $latitude_y) {
    $i = $j = $c = 0;
    for ($i = 0, $j = $points_polygon - 1; $i < $points_polygon; $j = $i++) {
      if ((($vertices_y[$i] > $latitude_y != ($vertices_y[$j] > $latitude_y)) &&
        ($longitude_x < ($vertices_x[$j] - $vertices_x[$i]) * ($latitude_y - $vertices_y[$i]) / ($vertices_y[$j] - $vertices_y[$i]) + $vertices_x[$i]))
      ) {
        $c = !$c;
      }
    }
    return $c;
  }

  function get_data() {
    global $db;
    $sql = 'select entity_id as nid, field_evacuator_latitude as latitude, field_evacuator_longitude as longitude from field_data_field_evacuator';
    $res = array();
    $result = mysql_query($sql, $db);

    while ($row = mysql_fetch_array($result)) {
      $r->nid = $row['nid'];
      $r->latitude = $row['latitude'];
      $r->longitude = $row['longitude'];
      $res[] = $r;
      unset($r);
    }
    return $res;
  }

  function split_x_y($region) {
//print_r($region);
    for ($i = 0; $i < count($region); $i++) {
      $result[0][] = $region[$i][0];
      $result[1][] = $region[$i][1];
    }
//  print_r($result);
    return $result;
  }

  /**Возвращает массив случайных чисел из $limit элементов из промежутка $item_count
   * @param $items_count - количество элементов в массиве
   * @param $limit - сколько значений выдать
   */
  function get_random($items_count, $limit) {
    $array = array();
    if(!$limit) {
      $limit = $items_count;
    }
    $limit = ($items_count < $limit)? $items_count : $limit;
    while(count($array) < $limit){
      $rnd = rand(0, $items_count-1);
      if(!in_array($rnd, $array)){
        $array[] = $rnd;
      }
    }
    return $array;
  }
