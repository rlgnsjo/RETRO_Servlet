package com.retro.mybatis;

import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SqlMapConfig {
	
	private static SqlSessionFactory sqlSessionFactory;
	
	static {
		String resource = "com/retro/mybatis/Configuration.xml";
		
		try {
			Reader reader = Resources.getResourceAsReader(resource); //파일 I/O기능 담당 
			
			if(sqlSessionFactory == null) {
				//sqlSessionFactory가 비어있으면 new SqlSessionFactoryBuilder().build(reader);를 만들어줘라
				// 이후sqlSessionFactory 에서 sqlSession을 만들어준다. 
				sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	public static SqlSessionFactory getSqlSession() {
		return sqlSessionFactory;
	}
	
	
	
	
}
