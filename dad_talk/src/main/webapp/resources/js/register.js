$(function() {
	$('input[name="birthday"]').daterangepicker(
			{
				singleDatePicker : true,
				showDropdowns : true,
				locale : {
					format : 'YYYY-MM-DD',
					daysOfWeek : [ "일", "월", "화", "수", "목", "금", "토" ],
					monthNames : [ "1월", "2월", "3월", "4월", "5월", "6월", "7월",
							"8월", "9월", "10월", "11월", "12월" ],
					firstDay : 1
				}
			});
	
	$('input[name="baby_birthday"]').daterangepicker(
			{
				singleDatePicker : true,
				showDropdowns : true,
				locale : {
					format : 'YYYY-MM-DD',
					daysOfWeek : [ "일", "월", "화", "수",
							"목", "금", "토" ],
					monthNames : [ "1월", "2월", "3월",
							"4월", "5월", "6월", "7월",
							"8월", "9월", "10월", "11월",
							"12월" ],
					firstDay : 1
				}
			});
});
function checkValue(){
	var user_id = document.userInfo.user_id.value;
	var name = document.userInfo.name.value;
	var password = document.userInfo.password.value;
	var passwordCheck = document.userInfo.passwordCheck.value;
	var birthday = document.userInfo.birthday.value;
	var baby_name = document.userInfo.baby_name.value;
	var baby_birthday = document.userInfo.baby_birthday.value;
	var baby_gender = document.userInfo.baby_gender.value;
	
	if(!user_id){
		alert("이메일 주소를 다시 입력해주세요.");
		return false;
	} 

	if(!name){
		alert("이름을 입력해주세요.");
		return false;
	}
	
	if(!password){
		alert("비밀번호를 입력해주세요.");
		return false;
	}
	
	if(!passwordCheck){
		alert("비밀번호 확인을 입력해주세요.");
		return false;
	} else if(password != passwordCheck){
		alert("비밀번호와 비밀번호 확인의 값이 다릅니다. 다시 작성해주세요.");
		return false;
	}
	
	if(!birthday){
		alert("생년월일을 선택해주세요.");
		return false;
	}
	if(!baby_name){
		alert("아이 이름을 입력해주세요.");
		return false;
	}
	
	return true;
}



		