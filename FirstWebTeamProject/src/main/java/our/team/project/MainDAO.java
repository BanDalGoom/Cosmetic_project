package our.team.project;

import java.util.List;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Repository;

@Repository("mainDAO")
public class MainDAO {

	@Autowired
	SqlSession session;
	@Autowired
	MainVO vo;
	@Autowired
	MemberVO mevo;
	@Autowired
	MongoTemplate mongoTemplate;
	
	public MainVO getTestList(){
		vo = session.selectOne("main.getTestList");
		return vo;
	}
	
	public void insertMember(MemberVO vo){
		session.insert("member.insertMember", vo);
	}
	
	public MemberVO checkLogin(MemberVO vo){
		System.out.println(vo.getEmail() + " : " + vo.getPassword());
		String email = null;
		String password = null;
		email = session.selectOne("member.checkID", vo.getEmail());

		if(email == null){
			mevo.setEmail("-1");
			return mevo;
		}
		else{
			password = session.selectOne("member.checkPassword", vo.getPassword());
			if(password == null){
				mevo.setEmail("1");
				return mevo;
			}
			else{
				mevo = session.selectOne("member.getMembervo", vo.getEmail());
				return mevo;
			}
		}
	}
	
	public List<CosmeticDTO> getMongoList(){
		
		return mongoTemplate.findAll(CosmeticDTO.class, "cosmetics");
	}
}
