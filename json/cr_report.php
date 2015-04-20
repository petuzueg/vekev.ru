<?php
    // Автоматическая отправка сообщений об ошибках из Андроид-приложения. 
    // Логи складываются в папку logs
    // Логин и пароль для доступа к логам: old
    // См. http://habrahabr.ru/post/123542/ для информации
    // https://github.com/ACRA/acra/wiki/Notice-on-Google-Form-Spreadsheet-usage
    
    // Outputs all POST parameters to a text file. The file name is the date_time of the report reception
    
    $fileName = "./logs/" . date('Y-m-d_H-i-s').'.txt';
	$file = fopen($fileName,'w') or die('Could not create report file: ' . $fileName);
    foreach($_POST as $key => $value) {
      $reportLine = $key." = ".$value."\n";
	  fwrite($file, $reportLine) or die ('Could not write to report file ' . $reportLine);
    }
	fclose($file);
?>

