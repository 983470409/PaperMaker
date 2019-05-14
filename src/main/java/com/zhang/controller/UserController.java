package com.zhang.controller;

import com.zhang.pojo.UserEntity;
import com.zhang.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;


@Controller
@RequestMapping("/UserController")
public class UserController {

    @Autowired
    private UserService userService = null;

    /**
     * 用户注册
     * @param user
     * @return
     */
    @RequestMapping("/registered")
    @ResponseBody
    public int registered(@RequestBody UserEntity user){

        return userService.registered(user);
    }

    /**
     * 用户登录
     * @param account
     * @param password
     * @param session
     * @return
     *
     */
    @RequestMapping("/login")
    @ResponseBody
    public int login(String account, String password, HttpSession session){


        UserEntity user = userService.login(account);
        System.out.println(user.getPassword() + " 是否等于" + password);
        System.out.println(user.getPassword() != password);
        if(user == null || user.getStatus() == "0"){
            return 0; //账号不存在
        }else if(!(user.getPassword().equals(password))) {
            return 1;//密码错误
        }else{
            session.setAttribute("user",user);
            session.setAttribute("account",account);
            return 2;//登录成功
        }

    }

    /**
     * 注销登录
     * @param session
     * @return
     */
    @RequestMapping("/logout")
    public ModelAndView logout(HttpSession session){
        ModelAndView mv = new ModelAndView();
        session.invalidate();
        System.out.println("注销！");
        mv.setViewName("index");
        return mv;
    }




}
