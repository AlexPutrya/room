    	<div class="conatainer">
            <div class="header-table">
                <h1>Панель бронирования номеров</h1>
            </div>

            <!-- Выводим форму выбора здания -->
            <form action="" method="post">
                Здание <br>
                <select name="id_building">
                <?php
                foreach($buildings as $key => $value){
                    echo "<option value='" . $key . "'> $value </option>";
                }
                ?>
                </select><br>
                <input class="btn btn-primary" type="submit"  value="Показать">
            </form>
            <!-- Заголовок таблицы -->
            <?php echo "<h2>" . $buildings["$id_building"] . "</h2>";?>

            <!-- Тест  -->
            <?php
            // Получаем количество дней в жтом месяце
            $number = cal_days_in_month(CAL_GREGORIAN, 11, 2016);
            // Ввыводим кадендарь(таблицу) с комнатами здания
            echo "<table class='table'>";
            echo "<tr>";
            echo "<th>Команаты </th>";
            for($i=1; $i<=$number; $i++){
                  echo "<th> $i </th>";
            }
            echo "</tr>";

            foreach ($rooms as $key => $value) {
                echo "<tr>";
                echo "<th>$value</th>";
                for ($i=1; $i<$number ; $i++) { 
                    echo "<td></td>";
                }
                echo "</tr>";
            }
            echo "</table>";
            ?>
        </div>

<?php
            // echo "<tr>";
            // echo "<th>Люкс </th>";
            // for($i=1; $i<=$number; $i++){
            //     if($i>=$entryDatelux AND $i<=$exitDatelux){
            //             echo "<td class='reserved'> </td>";
            //         }else{
            //             echo "<td> </td>";
            //         }
            // }
            // echo "</tr>";

            // echo "<tr>";
            // echo "<th>Суперлюкс </th>";
            // for($i=1; $i<=$number; $i++){
            //     if($i>=$entryDatesuperlux AND $i<=$exitDatesuperlux){
            //             echo "<td class='reserved'> </td>";
            //         }else{
            //             echo "<td> </td>";
            //         }
            // }
            // echo "</tr>";
            
            // echo "<tr>";
            // echo "<th>Обычный </th>";
            // for($i=1; $i<=$number; $i++){
            //     if($i>=$entryDatenormal AND $i<=$exitDatenormal){
            //             echo "<td class='reserved'> </td>";
            //         }else{
            //             echo "<td> </td>";
            //         }
            // }
            // echo "</tr>";
?>
        
        