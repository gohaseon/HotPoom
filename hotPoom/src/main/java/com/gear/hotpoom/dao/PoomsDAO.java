package com.gear.hotpoom.dao;

import java.util.List;

<<<<<<< HEAD
=======
import com.gear.hotpoom.vo.PageVO;
>>>>>>> master
import com.gear.hotpoom.vo.Poom;

public interface PoomsDAO {

<<<<<<< HEAD
	//hot poom
	public List<Poom> selectListHP();
	//new poom
	public List<Poom> selectListNP();
=======
	public List<Poom> selectPoomList(PageVO pageVO);
	public int selectPoomListTotal(PageVO pageVO);
	
>>>>>>> master
}
