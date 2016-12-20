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