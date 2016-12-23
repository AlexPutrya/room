<?php
class AdminPanel{
	private $id_building;
	private $database;

	// При создании экземпляра класса конектимся к БД и получаем данные из POST
	public function __construct(){
		$this->id_building = empty($_POST['id_building']) ? 1 : $_POST['id_building'];
		$this->database = new DB();
	}
	// Масиив с данными строений
	public function getBuildings(){
		$sql = 'SELECT * FROM buildings';
		return $this->database->getBuild($sql);
	}
	// Масиив комнат в заданном здании
	public function getBuildingRooms(){
		$sql = 'SELECT room_name FROM rooms WHERE id_building = :building';
		$parametr = array("building" => "$this->id_building");
		return $this->database->getRooms($sql, $parametr);
	}
	// Получаем окончательный вариант страницы и выводим
	public function getPage(){
		$id_building = $this->id_building;
		$buildings = self::getBuildings();
		$rooms = self::getBuildingRooms();
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