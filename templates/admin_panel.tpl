    	<div class="admin">
    		<h1>Это админ панель</h1>
    		<?php if(!empty($date)){var_dump($date);}?>
    	</div>
    	<form action="getDate" method="post">
    		Дата заселения<br>
    		<input type='text' name="entryDate" class='datepicker-here' /><br>
			Дата выселения<br>
			<input type='text' name="exitDate" class='datepicker-here' /><br>
			<button type="submit">Забронировать</button>
    	</form>
        <!-- Тест  -->
        <?php
        $number = cal_days_in_month(CAL_GREGORIAN, 11, 2016);
        echo "В этом месяце $number дней";
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