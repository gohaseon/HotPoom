package com.gear.hotpoom.dao;

import java.util.List;

import com.gear.hotpoom.vo.ChatUser;

public interface ChatRoomsDAO {

	 public List<ChatUser> selectChatRoom(int no);

}
