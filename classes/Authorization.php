<?php
class Authorization{
	private $user_name;
	private $user_password;
	private $params;
	private $database;

	public function __construct($params = ""){
		if(!empty($_POST['user_name'])){
			$this->user_name = trim(htmlspecialchars($_POST['user_name']));
			$this->user_password = trim(htmlspecialchars($_POST['user_password']));
			$this->database = new DB();
			self::isRegistr();
		}else{
			include 'templates/authorization.tpl';
		}
		
	}

	public function isRegistr(){
		$sql = 'SELECT user_pass FROM users WHERE user_login = :name';
		$parametr = array("name" => "$this->user_name");
		$result = $this->database->getData($sql, $parametr);
		if(!$result){
			$message = "Не правильный логин";
			include 'templates/authorization.tpl';
		}
	}

	public function authorizated(){
		header('Location: AdminPanel/getPage');
	}
}
?>