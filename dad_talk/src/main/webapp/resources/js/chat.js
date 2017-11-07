$(document).ready(function() {
	$("#sendBtn").click(function() {
		sendMessage();
	});
});
// If you using aws server, this URL use it.

var sock = new SockJS("http://localhost/dad_talk/echo");

sock.onmessage = onMessage;
sock.onclose = onClose;

function sendMessage(){
	sock.send($("#message").val());
}

function onMessage(evt) {
	var data = evt.data;
	$("#data").append(data + "<br/>");
}
function onClose(evt){
	$("#data").append("연결 끊김");
}