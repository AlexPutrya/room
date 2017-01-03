<!doctype html>
<html lang="ru">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="../css/style.css" rel="stylesheet">
</head>
<body>
		<script src="http://code.jquery.com/jquery-latest.js"></script>
    	<script src="js/bootstrap.min.js"></script>
    	<div class="test">
    		<form action="" class="form-signin" method="post">
				<h2 class="form-signin-heading">Авторизация</h2>
				<?php if(!empty($message)){echo $message;} ?>
				<div class="input-prepend">
	  				<span class="add-on"><i class="icon-user"></i></span><input class="span3" id="prependedInput"  size="16" type="text" name="user_name" placeholder="Логин">
				</div>
				<div class="input-prepend">
	  				<span class="add-on"><i class="icon-lock"></i></span><input class="span3" id="prependedInput" size="16" type="password" name="user_password" placeholder="Пароль">
				</div>
				<label class="checkbox">
				<input value="remember-me" type="checkbox">
				Запомнить меня
				</label>
				<button class="btn btn-large btn-primary" type="submit">Войти</button>
			</form>
    	</div>
</body>
</html>