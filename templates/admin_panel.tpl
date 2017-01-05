<div class="conatainer">
    <div class="header-table">
        <h1>Панель бронирования номеров</h1>
    </div>

    <!-- Выводим форму выбора здания значение это id здания -->
    <form action="" method="post">
        <strong>Здание</strong><br>
        <select name="id_building">
        <?php
        foreach($buildings as $key => $value){
            echo "<option value='" . $key . "'> $value </option>";
        }
        ?>
        </select><br>

        <strong>Дата</strong><br>
        <input type='text' class='datepicker-here' name="primary_date" /><br>
        <input class="btn btn-primary" type="submit"  value="Показать">
    </form>
    <!-- Заголовок таблицы -->
    <?php echo "<h2>" . $buildings["$id_building"] . "</h2>";
    print_r($date);
    ?>
    
    <!-- календарь -->
    <?php
    // $date 0=>день, 1=>месяц, 2=>год
    $dateHelper = new DateHelper();
    $dayWeek = strftime('%w', mktime(0, 0, 0, $date[1], $date[0], $date[2]));//День недели
    $month = strftime('%m', mktime(0, 0, 0, $date[1], $date[0], $date[2]));//Текущий месяц
    $number = cal_days_in_month(CAL_GREGORIAN, $date[1], $date[2])-$date[0]+1;//Количество дней заданного месяца в году
    $first_month = $dateHelper->getDate((int) $dayWeek, (int) $month)['month'];//Название первого месяца в таблице
    $second_month = $dateHelper->getDate((int) $dayWeek, (int) $month+1)['month'];//Название второго месяца в таблице
    
    echo "<table class ='table'>";
    // Выыводим название месяцев
    echo "<tr>";
    echo "<th rowspan='3'> Комнаты </th>";
    echo "<th colspan ='" . $number . "'> $first_month </th> ";
    // Выводим второй месяц если он должен быть
    if($date[0] > 2){
        echo "<th colspan ='" . "30-$number" . "'> $second_month </th> ";
    }
    echo "</tr>";

    // Вводим названия дней недели
    echo "<tr>";
    for($i = 0; $i<30; $i++){
        $dateW = strftime('%w', mktime(0, 0, 0, $date[1], $date[0]+$i, $date[2]));
        $dateM = strftime('%m', mktime(0, 0, 0, $date[1], $date[0]+$i, $date[2]));
        $format = $dateHelper->getDate((int) $dateW, (int) $dateM);
        if($dateW == 6 or $dateW == 0){
            echo "<th class='weekend'>" . $format['day'] . "</th>";    
        }else{
            echo "<th>" . $format['day'] . "</th>";
        }
    }
    echo "</tr>";

    // Вводим дни мецяца
    echo "<tr>";
    for($i = 0; $i<30; $i++){
        $day = strftime('%d', mktime(0, 0, 0, $date[1], $date[0]+$i, $date[2]));
        echo "<th>" . $day . "</th>";
    }
    echo "</tr>";
    // Выводим комнаты
    foreach ($rooms as $key => $value) {
        echo "<tr>";
        echo "<th>$value</th>";
        for ($i=1; $i<30 ; $i++) { 
            echo "<td></td>";
        }
        echo "</tr>";
    }
    echo "</table>";
    ?>
   <!-- /календарь -->
</div>