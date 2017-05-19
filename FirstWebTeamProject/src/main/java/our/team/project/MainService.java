package our.team.project;

import java.util.List;

public interface MainService {

	MainVO getTestList();
	void insertMember(MemberVO vo);
	MemberVO checkLogin(MemberVO vo);
	List<CosmeticDTO> getMongoList();
}
