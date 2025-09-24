package com.apex.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.LocaleResolver;
import org.springframework.beans.factory.annotation.Autowired;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.Locale;
import java.util.HashMap;
import java.util.Map;

@Controller
@Slf4j
public class HomeController {
    
    @Autowired
    private LocaleResolver localeResolver;

    @GetMapping("/")
    public String home(HttpServletRequest request, HttpServletResponse response) {
        return "home";
    }

    @PostMapping("/api/change-language")
    @ResponseBody
    public Map<String, Object> changeLanguage(@RequestParam("lang") String lang,
                                              HttpServletRequest request, 
                                              HttpServletResponse response) {
        Map<String, Object> result = new HashMap<>();
        try {
            Locale locale = parseLocale(lang);
            localeResolver.setLocale(request, response, locale);
            result.put("success", true);
            result.put("message", "Language changed to " + lang);
        } catch (Exception e) {
            result.put("success", false);
            result.put("message", "Failed to change language");
        }
        return result;
    }

    @GetMapping("/about-us")
    public String aboutUs() {
        return "about_us";
    }
    
    @GetMapping("/our-business")
    public String ourBusiness() {
        return "our_business";
    }
    
    @GetMapping("/portfolio")
    public String portfolio() {
        return "portfolio";
    }
    
    @GetMapping("/news")
    public String news() {
        return "news";
    }
    
    @GetMapping("/contact")
    public String contact() {
        return "contact";
    }

    // SPA용 JSP 프래그먼트 엔드포인트
    @GetMapping("/fragments/{page}")
    public String fragment(@PathVariable String page) {
        return "fragments/" + page;
    }

    // 언어 코드 파싱 헬퍼 메서드
    private Locale parseLocale(String langCode) {
        switch (langCode) {
            case "ko-KR": return new Locale("ko", "KR");
            case "en-US": return new Locale("en", "US");
            case "zh-CN": return new Locale("zh", "CN");
            case "ja-JP": return new Locale("ja", "JP");
            case "th-TH": return new Locale("th", "TH");
            case "fil-PH": return new Locale("fil", "PH");
            case "ms-MY": return new Locale("ms", "MY");
            default: return new Locale("ko", "KR");
        }
    }
}