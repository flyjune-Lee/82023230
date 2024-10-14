package com.example.demo.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import java.util.HashMap;
import java.util.Map;

@RestController
public class UserController {

    // 입력 인자 없이 고정된 사번을 반환하는 API
    @GetMapping("/api/v1/user")
    public Map<String, String> getUserId() {
        // 사번을 JSON 형식으로 응답
        Map<String, String> response = new HashMap<>();
        response.put("user_id", "82023230");  // 고정된 사번
        return response;
    }
}
