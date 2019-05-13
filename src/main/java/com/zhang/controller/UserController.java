package com.zhang.controller;

import com.zhang.pojo.UserEntity;
import com.zhang.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.json.MappingJackson2JsonView;

import java.util.List;

@Controller
@RequestMapping("/UserController")
public class UserController {

    @Autowired
    private UserService userService = null;

    @RequestMapping("/registered")
    @ResponseBody
    public int registered(@RequestBody List<UserEntity> userList){
        System.out.println(userList.get(0).getAccount());
        if (userList.get(0).getAccount() != null)
            return 1;
        else
            return 0;
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
