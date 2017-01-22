package com.xproject.util;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SessionUtil {
	public static SqlSessionFactory getSqlSessionFactory(){
		
		SqlSessionFactory sf = null;
		try{
			InputStream ins = Resources.getResourceAsStream("mybatis.xml");
			
			sf = new SqlSessionFactoryBuilder().build(ins);
		} catch (IOException e){
			e.printStackTrace();
		}
		return sf;
	}
}
