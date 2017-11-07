var sessionID;

$(document).ready(function() {
	checkSession();
});

// Check your browser session validity?
function checkSession() {
	$.getJSON("sessionCheck.do", function(data) {
		var result = data["result"];
		if (result == "false") {
			return false;
		} else {
			sessionID = data["sessionID"];
			// and get the memo data using Ajax
			var memo_url = "memo/getMemo.do?user_id=" + sessionID;
			$.ajax({
				type : "GET",
				url : memo_url,
				async : true,
				success : function(data, status, xhr) {
					// If success fetching the data
					// this logic get the memo data and append html page.
					var jsonData = JSON.stringify(data);
					var appendData = "";
					$.each(data, function(key, value) {

						$.each(value, function(key, value) {

							if (key == "num") {
								appendData = "<li style='font-size : 0.7rem'>";
								// Write HTML code using JavaScript.
								appendData += "<a data-toggle='modal' data-id='";
								appendData += value + "' title='메모를 보세요!' ";
								appendData += "class = 'open-MemoDialog btn' ";
								appendData += "href='#contentModal'"
								appendData +=  "> ";

							} else if (key == "title") {
								appendData += value;
								$("#memo_contents")
										.append(appendData + "</a></li>");

							}
						});

					})

				},
				error : function(jqXHR, textStatus, errorThrown) {
					alert(jqXHR.responseText);
				}
			});
			return true;
		}
	});
}

// Get the memo data in modal
$(document).on("click", ".open-MemoDialog", function () {
	var value = $(this).data('id');
	var memo_details_url ="memo/selectMemoDetails.do?num=" + value;
	
	// Handling json data using ajax.
	$.ajax({
		type : "GET",
		url : memo_details_url,
		async : true,
		success : function(data, status, xhr){
			$.each(data, function(key, value){
				$.each(value, function(key, value){
					if (key == "num"){
						$(".modal-body #num").val(value);
					}
					else if(key == "title"){
						$(".modal-body #title").val(value);
					}
					else if (key == "content"){
						$(".modal-body #content").val(value);

					}
				});
				
			});
		},
		error : function(jqXHR, textStatus, errorThrown){
			alert(jqXHR.responseText);
		}
	}
	
	);
	

});


$(function() {
	// If you click Update the memo, this method active.
	$("#updateMemo").click(function() {
		var update_url = "memo/updateMemo.do?num=";
		var num = $('#num').val();
		var title = $('#title').val();
		var content = $('#content').val();
		
		update_url += num + "&title=";
		update_url += title + "&content=";
		update_url += content;
		window.location = update_url;
	});
	
	$("#deleteMemo").click(function() {
		var num = $('#num').val();
		var delete_url = "memo/deleteMemo.do?num=";
		delete_url += num;
		window.location = delete_url;
	});
});