package our.team.project;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.MongoClient;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;

@SessionAttributes("session_login")
@Controller
public class MainController {
	
	@Autowired
	MainService service;
	@Autowired
	ModelAndView mav;
	@Autowired
	MainVO mavo;
	@Autowired
	MemberVO mevo;
	
	@RequestMapping("main.test")
	public ModelAndView getTestList(){
		mavo = service.getTestList();
		
		mav.addObject("testvo", mavo);
		mav.setViewName("cocommain");
		return mav;
	}
	
	@RequestMapping("login.test")
	public String goLogin(){
		return "cocomlogin";
	}
	
	@RequestMapping(value="login.test", method=RequestMethod.POST)
	public ModelAndView successLogin(@ModelAttribute("memberVO") MemberVO vo, Model model){
		mevo = service.checkLogin(vo);
		
		if(mevo.getEmail().equals("-1")){
			mav.setViewName("cocomlogin");
			mav.addObject("message", "아이디가 존재하지 않습니다.");
		}
		else if(mevo.getEmail().equals("1")){
			mav.setViewName("cocomlogin");
			mevo.setEmail(vo.getEmail());
			mav.addObject("message", "비밀번호가 맞지 않습니다.");
		}
		else if(mevo.getEmail().equals(vo.getEmail())){
			model.addAttribute("session_login", mevo);
			mav.setViewName("cocommain");
		}

		return mav;
	}
	
	@RequestMapping("signup.test")
	public String goSignUp(){
		return "cocom_signup";
	}
	
	@RequestMapping(value="signup.test", method=RequestMethod.POST)
	public String getTestList(@ModelAttribute("memberVO") MemberVO vo, @ModelAttribute("memberphoneVO") MemberPhoneVO phvo){
		String phone_num = phvo.getFirstnum() + phvo.getMiddlenum() + phvo.getLastnum();
		
		vo.setAdmin(0);
		vo.setPhone(phone_num);
		
		service.insertMember(vo);
		return "cocommain";
	}
	
	@RequestMapping("logout.test")
	public String logoutSuccess(SessionStatus st){
		st.setComplete();
		return "redirect:/main.test";
	}
	
	@RequestMapping("mypage.test")
	public String goMyPage(){
		return "cocommypage";
	}
	
	@RequestMapping("search.test")
	public ModelAndView goSearch(){
		List<CosmeticDTO> cosmeticList = service.getMongoList();
		
		mav.addObject("cos_list", cosmeticList);
		mav.setViewName("cocomsearch");
		
		return mav;
	}

}
