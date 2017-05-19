package our.team.project;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

@Service("service")
public class MainServiceImpl implements MainService{
	
	@Autowired
	MainDAO dao;
	
	public MainVO getTestList(){
		return dao.getTestList();
	}
	
	public void insertMember(MemberVO vo){
		dao.insertMember(vo);
	}
	
	public MemberVO checkLogin(MemberVO vo){
		return dao.checkLogin(vo);
	}
	
	public List<CosmeticDTO> getMongoList(){
		return dao.getMongoList();
	}

}
