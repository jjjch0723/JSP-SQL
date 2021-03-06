<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <style>
        
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: "Noto Sans KR", sans-serif;
    }

    a {
        text-decoration: none;
        color: black;
    }

    li {
        list-style: none;
    }

    .wrap {
        width: 100%;
        height: 100vh;
        display: flex;
        align-items: center;
        justify-content: center;
        background: rgba(0, 0, 0, 0.1);
    }

    .login {
        width: 35%;
        height: 700px;
        background: white;
        border-radius: 20px;
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
    }

    h2 {
        color: #95F62C;
        font-size: 2em;
    }
    .login_sns {
        padding: 10px;
        display: flex;
    }

    .login_sns li {
        padding: 0px 15px;
    }

    .login_sns a {
        width: 50px;
        height: 50px;
        display: flex;
        align-items: center;
        justify-content: center;
        padding: 10px;
        border-radius: 50px;
        background: white;
        font-size: 20px;
        box-shadow: 3px 3px 3px rgba(0, 0, 0, 0.4), -3px -3px 5px rgba(0, 0, 0, 0.1);
    }

    .login_id {
        margin-top: 20px;
        width: 80%;
    }

    .login_id input {
        width: 140%;
        height: 50px;
        border-radius: 30px;
        margin-top: 10px;
        padding: 0px 20px;
        border: 3px solid lightgray;
        outline: none;
    }

    .login_pw {
        margin-top: 20px;
        width: 80%;
    }

    .login_pw input {
        width: 140%;
        height: 50px;
        border-radius: 30px;
        margin-top: 10px;
        padding: 0px 20px;
        border: 3px solid lightgray;
        outline: none;
    }
    
    .login_etc {
        padding: 10px;
        width: 80%;
        font-size: 14px;
        display: flex;
        justify-content: space-between;
        align-items: center;
        font-weight: bold;
    }

    .submit {
        margin-top: 50px;
        width: 80%;
    }
    .submit input {
        width: 150%;
        height: 50px;
        border: 0;
        outline: none;
        border-radius: 40px;
        background: linear-gradient(to left, rgb(149, 246, 44), rgb(123, 206, 35));
        color: white;
        font-size: 1.2em;
        letter-spacing: 2px;
    }
    </style>
<html>
<head>
	<meta charset="UTF-8">
	<title>?????????</title>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/53a8c415f1.js" crossorigin="anonymous"></script>
</head>
<body>
	<div class = "wrap">
		<div class = "login">
			<h2>Log-in</h2>
			<div class = "login_sns">
				<li><a href="https://www.instagram.com/"><i class="fab fa-instagram"></i></a></li>
				<li><a href="https://ko-kr.facebook.com/"><i class="fab fa-facebook-f"></i></a></li>
			</div>
			<form name="login" action="LoginPro.jsp" method="post">
			<div class = "login_id">
				<h4>ID</h4>
				<input type = "text" name = "id" id="" placeholder="ID">
			</div>
				<div class = "login_pw">
					<h4>Password</h4>
					<input type = "password" name = "pwd" id="" placeholder="Password">
				</div>
				<div class="login_etc">
				</div>
				<div class = "submit">
					<input type="submit" name = "?????????" value="?????????">
				</div>			
			</form>
		</div>
	</div>
	<!-- <form name="login" action="LoginPro.jsp" method="post">
			????????? : <input type="text" name="id"><br>
			?????? : <input type="password" name ="pwd"><br>
			<input type="submit" name="?????????">
	</form> -->
</body>
</html>