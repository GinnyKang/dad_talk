$(document).ready(function() {
	// If you clicked login button this event affect you.

	$("#loginButton").click(function(){
		// This variable is define user id and password.
		// and put the typing data.
		
		var user_id = document.loginForm.user_id.value;
		var password = document.loginForm.password.value;

		var getString = "";
		getString += "user_id=" + user_id;
		getString += "&password=" + password;

		var url = "user/login.do?" + getString;
		// This logic checked is form vaild.

		if(user_id == ""){
			alert("아이디를 입력해주세요.");
			$("user_id").focus();
			return ;
		} else if(password = ""){
			alert("비밀번호를 입력해주세요.");
			$("password").focus();
			return ;
		} else {
			// and logic checked is validity and send the document data to URL
			document.loginForm.action += url;
			document.loginForm.submit();
		}



	});
});