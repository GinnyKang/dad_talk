$(document).ready(function() {
	$('.send_message').click(function (e) {
		return sendMessage(getMessageText());
	});
	$('.message_input').keyup(function (e) {
		if( e.which === 13){
			return sendMessage(getMessageText());
		}
	});
});

var sock = new SockJS("http://localhost/dad_talk/echo");

sock.onmessage = onMessage;
sock.onclose = onClose;

function getMessageText() {
	var $message_input;
	$message_input = $('.message_input');
	return $message_input.val();
}

function sendMessage(text){
	if(text.trim() === ''){
		return;
	}
	sock.send(text);
}

function onMessage(evt){
	var data = evt.data;
	var side_setting = data.substr(0,3);
	var data_length = data.length;
	var message_data = data.substr(3, data_length);
	
	var message_side = "right";
	if (side_setting == "lf_"){
		message_side = "left";
	} else {
		message_side = "right";
	}
	var $message;
	var $messages = $('.messages');
	$message = $($('.message_template').clone().html());
	$message.addClass(message_side).find('.text').html(message_data);
	$('.messages').append($message);
	$message.addClass('appeared');
	
	$messages.animate({ scrollTop: $messages.prop('scrollHeight') }, 300);
}

function onClose(evt){
	$("$message").append("연결 끊김");
}