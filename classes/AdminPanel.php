<?php
class AdminPanel{
	public $entryDate;
	public $exitDate;
	
	public function __construct(){
		$this->entryDate = trim(htmlspecialchars($_POST['entryDate']));
		$this->exitDate = trim(htmlspecialchars($_POST['exitDate']));
	}
	public function getPage(){
		include 'templates/header.tpl';
		include 'templates/admin_panel.tpl';
		include 'templates/footer.tpl';
	}

	public function getDate(){
		$date = $this->entryDate;
		include 'templates/header.tpl';
		include 'templates/admin_panel.tpl';
		include 'templates/footer.tpl';
	}
}
?>