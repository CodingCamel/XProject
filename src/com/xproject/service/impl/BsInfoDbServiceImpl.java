package com.xproject.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.xproject.mapper.BsInfoMapper;
import com.xproject.util.SessionUtil;
import com.xproject.pojo.BsInfo;
import com.xproject.service.BsInfoDbService;

public class BsInfoDbServiceImpl implements BsInfoDbService{
	
	public List<BsInfo> ListAll()
	{
		SqlSession sqlSession = SessionUtil.getSqlSessionFactory().openSession();
		try {
			BsInfoMapper areaInfoMapper = sqlSession.getMapper(BsInfoMapper.class);
			return areaInfoMapper.ListAll();
		} finally {
			sqlSession.close();
		}
	}

}