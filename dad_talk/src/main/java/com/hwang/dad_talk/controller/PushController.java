package com.hwang.dad_talk.controller;

import java.util.concurrent.CompletableFuture;
import java.util.concurrent.ExecutionException;

import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.hwang.dad_talk.service.AndroidPushNotificationsService;

@RestController
public class PushController {
	private final String adapt_info = "adapt_info";
	
	@Autowired
	AndroidPushNotificationsService androidPushNotificationsService;
	
	@RequestMapping(value = "/send", method = RequestMethod.GET, produces = "application/json")
	public ResponseEntity<String> send() throws JSONException {
		JSONObject body = new JSONObject();
		body.put("to", "/push/" + adapt_info);
		body.put("priority", "high");
		
		JSONObject notification = new JSONObject();
		notification.put("title", "�˸�");
		notification.put("body", "�˸� �׽�Ʈ �Դϴ�.");
		
		JSONObject data = new JSONObject();
		data.put("Key-1", "Data 1");
		data.put("Key-2", "Data 2");
		
		body.put("notification", notification);
		body.put("data", data);
		
		HttpEntity<String> request = new HttpEntity<>(body.toString());
		
		CompletableFuture<String> pushNotification = androidPushNotificationsService.send(request);
		CompletableFuture.allOf(pushNotification).join();
		
		try {
			String firebaseResponse = pushNotification.get();
			return new ResponseEntity<>(firebaseResponse, HttpStatus.OK);
		} catch(InterruptedException e) {
			e.printStackTrace();
		} catch(ExecutionException e) {
			e.printStackTrace();
		}
				
		return new ResponseEntity<>("Push !", HttpStatus.BAD_REQUEST);
		
	}
}
