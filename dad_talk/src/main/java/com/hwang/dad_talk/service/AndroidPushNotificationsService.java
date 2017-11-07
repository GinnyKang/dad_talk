package com.hwang.dad_talk.service;

import java.util.ArrayList;
import java.util.concurrent.CompletableFuture;
import org.springframework.http.HttpEntity;
import org.springframework.http.client.ClientHttpRequestInterceptor;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

@Service
public class AndroidPushNotificationsService {
	private static final String FIREBASE_SERVER_KEY = "AAAAI_Klx-A:APA91bGNXQlTW2FFQ2zkOvV4YQxR6E62p2497d7EJVzFm1nDxlk2Jl-WOx5ffAXY5mSpd884FeVyGyTwGMAuR97UdzOMl-WGDVEij2fejXIEiWbXbDZ0IEKOzUjvp-BIX6PtvNfB_cOs";
	private static final String FIREBASE_API_URL = "https://fcm.googleapis.com/fcm/send";
	
	@Async
	public CompletableFuture<String> send(HttpEntity<String> entity){
		RestTemplate restTemplate = new RestTemplate();
		ArrayList<ClientHttpRequestInterceptor> interceptors = new ArrayList<>();
		interceptors.add(new HeaderRequestInterceptor("Authorization", "key=" + FIREBASE_SERVER_KEY));
		interceptors.add(new HeaderRequestInterceptor("Content-Type", "application/json"));
		restTemplate.setInterceptors(interceptors);
		
		String firebaseResponse = restTemplate.postForObject(FIREBASE_API_URL, entity, String.class);
		
		
		
		return CompletableFuture.completedFuture(firebaseResponse);
		
	}
}
