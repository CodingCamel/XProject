package com.xproject.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.xproject.mapper.AreaInfoMapper;
import com.xproject.util.SessionUtil;
import com.xproject.pojo.AreaInfo;
import com.xproject.service.AreaInfoDbService;

public class AreaInfoDbServiceImpl implements AreaInfoDbService{
	
	public List<AreaInfo> ListAll()
	{
		SqlSession sqlSession = SessionUtil.getSqlSessionFactory().openSession();
		try {
			AreaInfoMapper areaInfoMapper = sqlSession.getMapper(AreaInfoMapper.class);
			return areaInfoMapper.ListAll();
		} finally {
			sqlSession.close();
		}
	}

}
