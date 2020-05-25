package co.kr.nolza;
import java.io.IOException;
import javax.naming.NamingException;
import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.beans.factory.annotation.Autowired;
import org.apache.ibatis.session.SqlSession;
import java.util.HashMap;
import model.dto.MemberDto;

@Controller
public class MemberController {
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping("/main.do")
	public String mainTest() {
		return "main";//
	}
	 
	//인서트 폼 
	@RequestMapping("/insertForm.do")
	public String insertForm() {
		return ".main.member.insertForm";//뷰리턴, insertForm.jsp 
	}
	 
	//id중복체크 
	@RequestMapping(value="/idCheck.do", method=RequestMethod.POST)
	public String idCheck(String mem_id,Model model) {
		int check=-1;//사용중
		MemberDto memberDto=sqlSession.selectOne("member.selectOne",mem_id);
		
		if(memberDto==null) {
			check=1;//사용가능한  id
		}
		System.out.println("check:"+check);
		model.addAttribute("check",check);
		//                  key,value
		//return ".main.member.idCheck";//뷰리턴, idCheck.jsp
		return "/member/idCheck";//뷰리턴, idCheck.jsp
	}//method end
	
	//회원가입
	@RequestMapping(value="/insertPro.do",method=RequestMethod.POST)
	public String memberInsert(@ModelAttribute("memberDto") MemberDto memberDto)
	throws NamingException,IOException{
		sqlSession.insert("member.insertMember",memberDto);
		return ".main.member.login";//뷰이름 login.jsp
		//return "main";//뷰이동  main.jsp 실행 
	}//method end
	
	
	//로그인 폼 으로 이동
	@RequestMapping(value="/login.do")
	public String loginform() {
		return ".main.member.login";
	}
	
	//로그인 
	@RequestMapping(value="/loginPro.do", method=RequestMethod.POST)
	public String userLogin(String mem_id, String mem_pw, Model model) 
			throws NamingException, IOException  {
		HashMap <String, String>map = new HashMap<String, String>();
		map.put("mem_id", mem_id);
		map.put("mem_pw", mem_pw);
		
		MemberDto memberDto=sqlSession.selectOne("member.selectLogin",map);
		if(memberDto==null) {//로그인 실패시
			model.addAttribute("msg","로그인 실패");
			return ".main.member.login";
		}
		model.addAttribute("memberDto",memberDto);
		return ".main.member.loginSuccess"; // 성공시 이동 뷰이름 
	}//userLogin()
	
	//로그아웃
	@RequestMapping("logOut.do")
	public String userOut() {
		return ".main.member.logOut";
	}
	
	//회원 정보 수정 폼 
	@RequestMapping(value="/editForm.do", method=RequestMethod.POST)
	public String editForm(String mem_id, Model model) throws NamingException, IOException{
		
		MemberDto memberDto=sqlSession.selectOne("member.selectOne", mem_id);
		model.addAttribute("memberDto", memberDto);
		return ".main.member.editFrom";
	}
	
	//회원정보 수정
	@RequestMapping(value="/editPro.do", method=RequestMethod.POST)
	public String editPro(@ModelAttribute("memberDto") MemberDto memberDto)
	throws NamingException, IOException{
		sqlSession.update("member.memberUpdate", memberDto);
		return ".main.member.login";
	}
	
	//회원 탈퇴
	@RequestMapping(value="/memberDelete.do", method=RequestMethod.POST)
	public String userDelete(String mem_id) throws NamingException, IOException{		
		sqlSession.delete("member.memberDelete", mem_id);
		return ".main.member.insertForm";
	}
		
}//class end 
