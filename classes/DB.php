<?php
class DB{
	private $db_user = 'alex.putrya';
	private $db_pass = 'starwars';
	private $dsn = "mysql:host=localhost;dbname=room";
	private $opt = array(
		PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
		PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
		);
	private $pdo;

	public function __construct(){
		$this->pdo = new PDO($this->dsn, $this->db_user, $this->db_pass, $this->opt);
	}
	// Добавить пользователя в БД после всех условий
	public function setUser($sql, $parametr){
		$smtm = $this->pdo->prepare($sql);
		$smtm->execute($parametr);
	}
	// Получить пользователя из БД
	public function getUser($sql, $parametr = NULL){
		$smtm = $this->pdo->prepare($sql);
		if(!empty($parametr)){
			$smtm->execute($parametr);
		}else{
			$smtm->execute();
		}
		return $smtm->fetch();
	}
	// Получаем в массив id здания и его имя
	public function getBuild($sql){
		$smtm = $this->pdo->prepare($sql);
		$smtm->execute();
		while($row = $smtm->fetch()){
			$buildings[$row['id_building']] = $row['building_name'];
		};
		return $buildings;
	}
	// Получаем массив комнат
	public function getRooms($sql, $parametr){
		$smtm = $this->pdo->prepare($sql);
		$smtm->execute($parametr);
		while($row = $smtm->fetch()){
			$rooms[] = $row['room_name'];
		}
		return $rooms;
	}
}
?>