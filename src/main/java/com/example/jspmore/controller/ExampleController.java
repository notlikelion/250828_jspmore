package com.example.jspmore.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/example")
public class ExampleController {
    @GetMapping
    public String example(Model model) {
        List<String> members = List.of("김철수", "이영희", "박민준");
        model.addAttribute("memberList", members);
        model.addAttribute("memberList2", List.of());
        model.addAttribute("isManager", true);
        model.addAttribute("totalCount", members.size());
        return "example"; // WEB-INF~.
    }
}
