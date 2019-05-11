package com.zhang.controller;

import com.zhang.pojo.UserEntity;
import com.zhang.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.json.MappingJackson2JsonView;

@Controller
@RequestMapping("/UserController")
public class UserController {

    @Autowired
    private UserService userService = null;

    @RequestMapping("/registered")
    public ModelAndView registered(){

        UserEntity user = new UserEntity();
        user.setAccount("Test1");
        user.setAge(15);
        user.setAccBalance(0);
        user.setPassword("good983470409");
        user.setEduExp("本科");
        user.setSex("男");
        user.setLabel("Test");
        user.setStatus("0");

        ModelAndView mv = new ModelAndView();

        if(userService.registered(user) != -1)
            mv.setViewName("success");
        else
            mv.setViewName("error");

        return mv;

    }

    @RequestMapping("/testJson")
    public ModelAndView test(){

        ModelAndView mv = new ModelAndView();
        String account = "张a";

        UserEntity user = userService.getUserByAcc(account);

        mv.addObject("user",user);
        mv.setView(new MappingJackson2JsonView());


        return mv;
    }


}
