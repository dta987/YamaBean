package com.member.mvc;

import java.util.List;

import javax.servlet.http.HttpSession;

import oracle.jdbc.util.Login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.member.dto.Member;

@Controller
public class MemberContorller implements MContorllerInterface {

	@Autowired
	private MemberService memberService;

	@RequestMapping(value = "/move", method = RequestMethod.GET)
	public String moveMenu() {
		System.out.println("==Member이동==");
		return "member";

	}

	@RequestMapping(value = "/move", method = RequestMethod.POST)
	@Override
	public String createMember(@ModelAttribute Member member) {
		int count = memberService.addMember(member);
		if (count > 0) {
			System.out.println("회원가입 성공");
		} else {
			System.out.println("회원가입 실패");
		}

		return "redirect:/";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	@Override
	public String login(String id, String password, Model model,
			HttpSession httpSession) {
		System.out.println("login 컨트롤러 접근");

		System.out.println("Id: " + id);
		System.out.println("Password" + password);

		boolean loginCondition = memberService.findByMember(id, password);
		String msg = "";
		model.addAttribute("msg", msg);
		if (loginCondition) {
			httpSession.setAttribute("loginInfo", id);
			msg = "로그인 성공";
			model.addAttribute("msg", msg);
			return "result";
		} else {
			msg = "아이디나 비밀번호가 잘못 되었습니다";
			model.addAttribute("msg", msg);
			return "index";
		}
	}

	@Override
	public String forgottenID(String name, String email, Model model) {
		System.out.println("forgottenID 컨트롤러 접근");

		return null;
	}

	@Override
	public String forgottenPW(String name, String email, String id, Model model) {

		return null;
	}

	@Override
	public String overLapCheck(String mode, String keyword) {

		return null;
	}

	@RequestMapping(value = "/memberlist", method = RequestMethod.GET)
	@Override
	public String memberList(String mode, String keyword, Model model) {
		System.out.println("멤버리스트 컨트롤러 접근 ");

		List<Member> members = memberService.findByList(mode, keyword);
		System.out.println(members.size());

		model.addAttribute("members", members);
		return "list";
	}

	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	@Override
	public String deleteMember(@RequestParam String id) {
		System.out.println("deleteMember 컨트롤러 접근");
		int count = memberService.removeMember(id);

		return "redirect:/member/list";
	}

	@RequestMapping(value="/update", method=RequestMethod.GET)
	public String updateMember(@RequestParam String id) {
		Member member = memberService.updateMember(id);
		return "list";
			}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	@Override
	public String alertMember(Member member, Model model) {
		System.out.println("회원수정 컨트롤러 접근");
		memberService.modifyMember(member);

		return "list";
	}

}
