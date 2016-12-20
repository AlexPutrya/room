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

	public function setData($sql, $parametr){
		$smtm = $this->pdo->prepare($sql);
		$smtm->execute($parametr);
	}

	public function getData($sql, $parametr){
		$smtm = $this->pdo->prepare($sql);
		$smtm->execute($parametr);
		return $smtm->fetch();
	}
}
?>