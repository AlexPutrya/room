    	<div class="conatainer">
            <div class="header-table">
                <h1>Панель бронирования номеров</h1>
                <?php if(!empty($date)){var_dump($date);}?>
            </div>

            
            <form action="" method="post">
                Здание <br>
                <select name="building">
                <option value="1">Котедж</option>
                <option value="2">Хостел</option>
                <option value="3">Отель</option>
                <option value="4">Домик 2 этажа</option>
                <option value="5">Домик 1 этаж</option>
            </select><br>
                <input class="btn" type="submit"  value="Показать">
            </form>
            <?php if(!empty($_POST['building'])){echo $_POST['building'];}?>
            <!-- Тест  -->
            <?php
            $number = cal_days_in_month(CAL_GREGORIAN, 11, 2016);
            $entryDatelux = 7;
            $exitDatelux = 21;
            $entryDatesuperlux = 3;
            $exitDatesuperlux = 8;
            $entryDatenormal = 22;
            $exitDatenormal = 28;
            echo "<table class='table'>";
            echo "<tr>";
            echo "<th>Команаты </th>";
            for($i=1; $i<=$number; $i++){
                  echo "<th> $i </th>";
            }
            echo "</tr>";

            echo "<tr>";
            echo "<th colspan='" . ($number+1) . "'> Отель 5* </th>";
            echo "</tr>";

            echo "<tr>";
            echo "<th>Люкс </th>";
            for($i=1; $i<=$number; $i++){
                if($i>=$entryDatelux AND $i<=$exitDatelux){
                        echo "<td class='reserved'> </td>";
                    }else{
                        echo "<td> </td>";
                    }
            }
            echo "</tr>";

            echo "<tr>";
            echo "<th>Суперлюкс </th>";
            for($i=1; $i<=$number; $i++){
                if($i>=$entryDatesuperlux AND $i<=$exitDatesuperlux){
                        echo "<td class='reserved'> </td>";
                    }else{
                        echo "<td> </td>";
                    }
            }
            echo "</tr>";
            
            echo "<tr>";
            echo "<th>Обычный </th>";
            for($i=1; $i<=$number; $i++){
                if($i>=$entryDatenormal AND $i<=$exitDatenormal){
                        echo "<td class='reserved'> </td>";
                    }else{
                        echo "<td> </td>";
                    }
            }
            echo "</tr>";
            echo "</table>";
            ?>
        </div>
        
        