<?php
class DateHelper{

	//в strftime используем параметр %w
	public $daysWeek = array(
	 	'Воскресенье',
	 	'Понедельник',
	 	'Вторник',
	 	'Среда',
	 	'Четверг',
	 	'Пятница',
	 	'Суббота'
		);

	public $shortDaysWeek = array('Вс','Пн','Вт','Ср','Чт','Пт','Сб');

	public $months = array(
		'1' => 'Январь',
		'2' => 'Февраль',
		'3' => 'Март',
		'4' => 'Апрель',
		'5' => 'Май',
		'6' => 'Июнь',
		'7' => 'Июль',
		'8' => 'Август',
		'9' => 'Сеньтябрь',
		'10' => 'Октябрь',
		'11' => 'Ноябрь',
		'12' => 'Декабрь',
		);

	public $shortMonths = array(
		'1' => 'Янв.',
		'2' => 'Фев.',
		'3' => 'Мар.',
		'4' => 'Апр.',
		'5' => 'Май',
		'6' => 'Июн.',
		'7' => 'Июл.',
		'8' => 'Авг.',
		'9' => 'Сен.',
		'10' => 'Окт.',
		'11' => 'Ноя.',
		'12' => 'Дек.',
		);
	// Получаем данные в формате '%d/ %w/ %m'
	 public function getDate($dateW, $dateM){
	 	$format['month'] = $this->months["$dateM"];
	 	$format['day'] = $this->shortDaysWeek["$dateW"];
	 	return $format;
	 	// echo $this->daysWeek["$dateW"] . "/" . $this->months["$dateM"] . "<br>";
	 }
}
?>