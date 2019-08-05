package com.gear.hotpoom.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gear.hotpoom.vo.Poom;

@Repository
public class PoomsDAOImpl implements PoomsDAO{
	@Autowired
	private SqlSession session;
	
	@Override //동호, 품 기본정보 가져오기(사진, 리뷰 제외)
	public Poom selectPoomDetail(int no) {
		return session.selectOne("pooms.selectPoomDetail", no);
	}
	
}
