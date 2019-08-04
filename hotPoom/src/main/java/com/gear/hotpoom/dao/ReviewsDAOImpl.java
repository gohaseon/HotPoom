package com.gear.hotpoom.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ReviewsDAOImpl implements ReviewsDAO{
	@Autowired
	private SqlSession session;
	
	//동호, 리뷰가 있는지 확인
	@Override
	public int isReview(String bookingNo) {
		return session.selectOne("selectIsReview",bookingNo);
	}
	
}
