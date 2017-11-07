package com.hwang.dad_talk.handler;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;



public class EchoHandler extends TextWebSocketHandler {
	private static Logger logger = LoggerFactory.getLogger(EchoHandler.class);
	private List<WebSocketSession> connectedUsers;

	public EchoHandler() {
		connectedUsers = new ArrayList<WebSocketSession>();
	}
	
	// If client connected server, this method executed first.
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		
		logger.info("Connected : " + session.getId());
		connectedUsers.add(session);
	}
	
	// If client send the message to server , this method executed.
	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception{
		logger.info("From {0}, recieved Message : {1} ", session.getId(), message.getPayload());
		for(WebSocketSession webSocketSession : connectedUsers) {
			String message_side;
			if(webSocketSession.getId() != session.getId()) {
				message_side = "lf_";
			} else {
				message_side = "rt_";
			}
			webSocketSession.sendMessage(new TextMessage(message_side + message.getPayload()));
		}
	}
	
	// If client send the disconnected message, this method executed.
	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		logger.info(" {0} Connected Closed : " + session.getId());
		connectedUsers.remove(session);
	}
}
