$(document).ready(function() {
	var blog_url = "blog/getBlog.do";
	$.ajax({
		type : "GET",
		url : blog_url,
		async : true,
		
		success : function(data, status, xhr){
			var appendData_preview = "";
			var appendData_details = "";
			$.each(data, function(key, value){
				
				$.each(value, function(key, value){
					if(key == "title"){
							appendData_details = "<h4>" + value;
							appendData_details += "</h4>";
					}
					else if(key == "content"){
						appendData_details += "<p>" + value + " ";
					}else if(key == "url"){
						appendData_preview = "<a href='";
						appendData_preview += value + "'>";
						appendData_details += "<a href='";
						appendData_details += value + "'>";
						appendData_details += "자세히 보기 -> " + "</a></p>";
					}else if(key == "img"){
						appendData_preview += "<img src='";
						appendData_preview += value + "'></a>";
					} 
				});
				$("#blog_preview").append(appendData_preview);
				$("#blog_details").append(appendData_details);
			});
		},
		
		error : function(jqXHR, textStatus, errorThrown){
			alert(jqXHR.responseText);
		}
		
	});
	
});