<?php
class AdminPanel{
	
	public function __construct(){
	}
	public function getPage(){
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