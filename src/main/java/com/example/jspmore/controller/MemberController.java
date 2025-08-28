package com.example.jspmore.controller;

import com.example.jspmore.model.dto.Member;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

@Controller
@RequestMapping("/members") // 이 주소에 대해서 get, post...
public class MemberController {
    // 임시 회원 저장소
private static final List<Member> memberRepository = new CopyOnWriteArrayList<>();
// ArrayList로 할 시 동시성 이슈가 있을 수 있어서...
    // static 메모리에 탑재가 될 때 실행되는...
    static {
        memberRepository.add(new Member("user1", "홍길동"));
        memberRepository.add(new Member("user2", "김유신"));
    }

    @GetMapping // ("/")
    public String list(Model model) {
        model.addAttribute("members", memberRepository);
        return "member/list";
    }
}
