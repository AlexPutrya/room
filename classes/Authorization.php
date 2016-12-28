<?php
class Authorization{
	private $user_name;
	private $user_password;
	private $params;
	private $database;
	// Получаем данные формы авторизации если их нет выводим форму авторизации
	public function __construct($params = ""){
		if(!empty($_POST['user_name'])){
			$this->user_name = trim(htmlspecialchars($_POST['user_name']));
			$this->user_password = trim(htmlspecialchars($_POST['user_password']));
			$this->database = new DB();
			self::authorizated();
		}else{
			include 'templates/authorization.tpl';
		}
		
	}
	// Проверям форму авторизации на правильность и соответствие паролю
	public function isRegistr(){
		$sql = 'SELECT user_pass FROM users WHERE user_login = :name';
		$parametr = array("name" => "$this->user_name");
		$result = $this->database->getUser($sql, $parametr);
		if(!$result){
			$message = "Такого пользователя нет";
			include 'templates/authorization.tpl';
		}elseif($result['user_pass'] != $this->user_password){
			$message = "Вы ввели неправильный пароль";
			include 'templates/authorization.tpl';
		}else{
			return true;
		}
	}
	// Перенаправляем на панель управления
	public function authorizated(){
		if(self::isRegistr()){
			header('Location: AdminPanel/getPage');
		}
	}
}
?>