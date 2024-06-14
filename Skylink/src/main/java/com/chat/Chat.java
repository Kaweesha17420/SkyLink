package com.chat;

public class Chat {

	private int chatId;
	private String description;
	
	public Chat(int chatId, String description) {
		
		this.chatId = chatId;
		this.description = description;
	}

	public int getChatId() {
		return chatId;
	}

	public String getDescription() {
		return description;
	}

}
