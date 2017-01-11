<?php
class AdminPanel{
	private $id_building;
	private $primary_date;
	private $database;

	// При создании экземпляра класса конектимся к БД и получаем данные из POST
	public function __construct(){
		$this->id_building = empty($_POST['id_building']) ? 1 : $_POST['id_building'];
		$this->primary_date = empty($_POST['primary_date']) ? strftime("%d.%m.%Y", time()) : $_POST['primary_date'];//если дата не задана то используем текущую
		$this->database = new DB();
	}
	// Масcив с данными строений
	public function getBuildings(){
		$sql = 'SELECT * FROM buildings';
		return $this->database->getBuild($sql);
	}
	// Масcив комнат в заданном здании
	public function getBuildingRooms(){
		$sql = 'SELECT room_name FROM rooms WHERE id_building = :building';
		$parametr = array("building" => "$this->id_building");
		return $this->database->getRooms($sql, $parametr);
	}
	// 
	public function getFormDate(){
		return explode(".", $this->primary_date);
	}
	// Получаем окончательный вариант страницы и выводим
	public function getPage(){
		$id_building = $this->id_building;
		$primary_date = $this->primary_date;
		$date = self::getFormDate();
		$buildings = self::getBuildings();
		$rooms = self::getBuildingRooms();
		$test = self::test();
		include 'templates/header.tpl';
		include 'templates/admin_panel.tpl';
		include 'templates/footer.tpl';
	}
	// public function getDate(){
	// 	$date = $this->entryDate;
	// 	include 'templates/header.tpl';
	// 	include 'templates/admin_panel.tpl';
	// 	include 'templates/footer.tpl';
	// }
}
?>