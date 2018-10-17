package com.myke.docker.web;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author： zhangjianbin <br/>
 * ===============================
 * Created with IDEA.
 * Date： 2018/10/17 12:23
 * ================================
 */
@RestController
public class HomeController {

    @GetMapping("/")
    public String homeView() {
        return "docker-java";
    }
}
