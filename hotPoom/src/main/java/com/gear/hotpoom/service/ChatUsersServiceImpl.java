package com.gear.hotpoom.service;

import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gear.hotpoom.dao.ChatRoomsDAO;
import com.gear.hotpoom.dao.MessagesDAO;
import com.gear.hotpoom.vo.ChatUser;
import com.gear.hotpoom.vo.Message;

@Service
public class ChatUsersServiceImpl implements ChatUsersService {

	@Autowired
	private ChatRoomsDAO chatRoomsDAO;
	
	@Autowired
	private MessagesDAO messagesDAO;

	@Override
	public List<ChatUser> getChatRoomList(int no) {

		List<ChatUser> chatUsers = chatRoomsDAO.selectChatRoom(no);

		for (ChatUser user : chatUsers) {

			Message message = messagesDAO.selectTitle(user.getRoomNo());

			user.setTitle(message.getContent());
			user.setLastTime(message.getRegdate());

		}
		return chatUsers;
	}
}
