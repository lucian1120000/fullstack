<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
        form {width: 60%; margin:0 auto; padding: 10px; text-align: center;}
        </style>
        
</head>
<body>
<form name="loginForm" action="12_01_validation_process.jsp" method="post">
        <fieldset>
            <legend>로그인</legend>
            <label for="uid">아 이 디&nbsp;&nbsp;:</label>
            <input type="text" name="id" id="uid" required><br>

            <label for="upw">비밀번호&nbsp;:</label>
            <input type="password" name="passwd" id="upw" required><br><br>

            <input type="button" value="전송" onclick="chekLogin()">
        </fieldset>
    </form>

    <script>
        function checkLogin(){
            var form = document.loginForm;
            if (form.id.value == ""){
                alert("아이디를 입력해 주세요.");
                form.id.focus();
                return false;
            } else if (form.passwd.value == ""){
                alert("비밀번호를 입력해 주세요");
                form.passwd.focus();
                return false;
            }
            console.log("값 가져오기: ");
            console.log("아이디 : ", document.loginForm.id.value, "\n", "비밀번호 : ", document.loginForm.passwd.value);
            form.submit();
        }
   </script>
</body>
</html>