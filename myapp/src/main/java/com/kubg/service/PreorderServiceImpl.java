package com.kubg.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.kubg.dao.PreorderDAO;
import com.kubg.vo.BookVO;

@Service
public class PreorderServiceImpl implements PreorderService, PreorderDAO {
	
	@Inject
	private PreorderDAO dao;
	
	@Override
	public void insertGoods(BookVO vo) {
		dao.insertGoods(vo);
	}

}
