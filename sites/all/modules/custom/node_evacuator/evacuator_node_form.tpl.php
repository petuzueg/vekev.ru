<div class='div-inline'>
<?php print $other_elements;
if(!$user->uid){
?>

<p>Здравствуйте! Спасибо, что проявили интерес к нашему каталогу эвакуаторов! После заполнения данной анкеты, информация о Ваших услугах эвакуации поступит в наш <a href="/" target="_blank" title="Каталог эвакуаторов VEKEV.RU">каталог</a>.
    Просим Вас внимательно заполнить анкету и указать актуальные данные. Наша анкета состоит <strong>всего из двух шагов</strong>.</p>
<p>Спасибо за Ваше внимание!</p>
<br/>

<h2>Шаг 1. Введите данные о Вашем эвакуаторе</h2>
<?php } ?>
<div  style="display: inline;" class="description">
Пожалуйста, ознакомьтесь с <a href="/moj-evakuator/pravila" target="_blank">правилами</a>, прежде чем добавлять Ваше предложение в каталог.<br/>
<strong>Внимание:</strong> поля, отмеченные символом</div> "<span title="Обязательное поле" class="form-required">*</span>", <div class="description" style="display: inline;">обязательны для заполнения!</div><br/><br/>
<div style="float: left; width:50%;">
    <?php if($user->uid == 1){echo $company; }?>
    <?php echo $title, ', ', $volume; ?> т.<br/>
    <div class="description">Например: <strong>Hyundai HD72</strong></div>

        <?php echo $field_options; ?>

    <strong>1.3 Укажите типичные расценки на основные виды работ: </strong> <br>
    <div class="description">Для услуг, которые Вы не оказываете, оставьте поля пустыми</div>
    <table>
        <tr><td>Автомобили до 1 300 кг.:</td><td><?php echo $price1; ?> р. </td></tr>
        <tr><td>Иномарки до 1 500 кг.: </td><td><?php echo $price2; ?> р. </td></tr>
        <tr><td>Иномарки более 1 500 кг.:</td><td><?php echo $price3; ?> р. </td></tr>
        <tr><td>Джипы и микроавтобусы: </td><td><?php echo $price4; ?> р. </td></tr>
        <tr><td>Простой за 1 час: </td><td><?php echo $price5; ?> р. </td></tr>
        <tr><td>Переадресация эвакуации: </td><td><?php echo $price6; ?> р. </td></tr>
        <tr><td>Вызов без эвакуации: </td><td><?php echo $price7; ?> р. </td></tr>
        <tr><td><strong>1.4 Скидка:</strong> </td><td><?php echo $discount; ?>% </td></tr>
        <tr><td colspan="2"><div class="description">Укажите размер скидки, которую Вы готовы дать <br/>посетителям каталога <strong>vekev.ru</strong></div></td></tr>

    </table>
        <strong>1.5 Укажите, модель навигационного оборудования, которое Вы используете: </strong> <br>
        <?php echo $gps_eq; ?>
        <div class="description">При подключении Вашего оборудования, появится возможность<br/>
            показывать текущее положение эвакуатора на карте для потенциальных клиентов.
        </div>
</div>

<div>
      <table>
          <tr>
            <td><nobr><strong>1.6 Телефоны водителя эвакуатора: <span class="form-required" title="Обязательное поле">*</span></strong></nobr><br/>
                <div class="description">
                    Пример: <strong>74993435278</strong><br/>
                    Вводите <strong>один телефон в одно поле</strong>, пожалуйста.<br/>
                    <strong>Телефон в первом поле показывается чаще остальных</strong>.
                </div>
            </td>
            <td>+<?php echo $phone1 , '<br/><nobr> +' , $phone2 , '</nobr><br/>+' , $phone3; ?> </td>
        </tr>

    </table>
    <?php echo $street; ?>
    <strong>1.8 Местоположение (место ночной стоянки машины): <span class="form-required" title="Обязательное поле">*</span></strong>
    <div class="description">Укажите на карте точку, где находится место ночной стоянки Вашего эвакуатора.</div>
    <div style="width: 50%; height: 400px;" id="map_canvas">Для просмотра этой карты необходим Javascript</div>
    <?php echo $latitude, $longitude; ?>
</div>
<div style="clear: both;"><!-- --></div>


    <?php if(!$user->uid){
        //Скрыть форму регистрации для зарегистрированного пользователя!
        ?>
<br/><br/>
<h2>Шаг 2. Введите данные пользователя</h2>
<div>
    <?php echo $surname , $mail , $pass, $pass2; ?>

    <br/><br/>
    <!--h2>Шаг 3. Введите данные о компании</h2>
    <?php //echo $company_name; ?>
    <?php //echo $site; ?><br/>
    <strong>3.3 Телефоны Вашей компании: </strong><br/>
    <div class="description">Пример: <strong>74993435278</strong></div>
    +<?php //echo $phone_1; ?><br />
    +<?php //echo $phone_2; ?><br />
    +<?php //echo $phone_3; ?>
    <div class="description">Вводите <strong>один телефон в одно поле</strong>, пожалуйста.<br/>
        Укажите телефон администрации. Телефон водителя эвакуатора здесь указывать не нужно.</div>
    <?php //echo $description; ?>
    <div class="description">
        <p>Коротко опишите Вашу компанию. Опишите Ваши конкурентные преимущества. Что отличает Вас от ближайших конкурентов?
            Почему клиенты должны обращаться именно к Вам?.</p> <p>Данная информация будет размещена на персональной странице Вашей компании.
            <br/>Ссылки на другие сайты будут удалены. Используйте поле "3.2 Адрес сайта Вашей компании".</p>
    </div-->
</div>
<?php }else{ echo $field_photos, $body;}?>
<?php echo $submit; ?>
