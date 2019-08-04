package com.gear.hotpoom.dao;

import java.util.List;

import com.gear.hotpoom.vo.Booking;
import com.gear.hotpoom.vo.PageVO;

public interface BookingsDAO {

	public List<Booking> selectList(PageVO pageVO);
	public int selectTotal(int userNo);
	public int updateType(Booking booking);
}