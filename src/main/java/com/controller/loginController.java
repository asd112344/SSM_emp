package com.controller;

import com.entity.User;
import com.entity.Visitor;
import com.service.IUserService;
import com.service.IVisitorService;
import com.utils.MD5Utils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @ClassName loginController
 * @Description TODO
 * @Author YHT
 * @Date 2021/5/28 8:02
 */
@Controller
public class loginController {
    @Autowired
    private IUserService userService;
    @Autowired
    private IVisitorService visitorService;

    /**
     * 跳转至主页
     * @param username  用户名
     * @param password  密码
     * @param request
     * @return
     */
    @RequestMapping("/main")
    @ResponseBody
    public ModelAndView toMain(String username, String password, HttpServletRequest request){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("main");
        //使用session存储数据
        HttpSession session = request.getSession();
        mv.addObject("status", "ok");
        //根据用户名和密码查找用户
        User user = userService.findByNameAndPwd(username, MD5Utils.stringToMD5(password));
        //访客信息
        Visitor visitor = new Visitor();
        //用户不为空，则表示登录成功
        if(user != null){
            if(user.getName().equals(username) && user.getPassword().equals(MD5Utils.stringToMD5(password))){
                //跳转至首页
                mv.setViewName("main");
                // mv.addObject("userName", user.getName());
                // mv.addObject("status", "ok");
                //存储数据
                mv.addObject("userId", user.getId());
                session.setAttribute("userName", user.getName());
                session.setAttribute("userId", user.getId());
                //添加访客信息
                visitor.setName(user.getName());
                visitor.setEmail(user.getEmail());
                visitor.setIdentity(user.getIdentity());
                visitor.setTelPhone(user.getTelNumber());
                Date date = new Date(System.currentTimeMillis());
                visitor.setVisitTime(date);
                //存储方可信息
                visitorService.addVisitor(visitor);
            }else {
                //查询失败，返回登录页
                mv.setViewName("redirect:/index.jsp");
                mv.addObject("status", "userNameOrPwdError");
            }
        }else{
            //返回首页
            mv.setViewName("redirect:/index.jsp");
            mv.addObject("status", "userNameOrPwdError");
        }
        return mv;
    }

    /**
     * 跳转至注册页面
     * @param user  用户
     * @return  返回登录页面
     */
    @RequestMapping("/register")
    public String toRegister(User user){
        //对用户密码进行加密
        user.setPassword(MD5Utils.stringToMD5(user.getPassword()));
        //将用户信息插入数据库
        userService.insertUser(user);
        //重定向到首页
        return "redirect:/index.jsp";
    }

    /**
     * 跳转至用户信息页
     * @param id
     * @return
     */
    @RequestMapping("/toUserMsg")
    public ModelAndView toUserMsg(Integer id){
        ModelAndView mv = new ModelAndView();
        //根据id找到用户
        User user = userService.findById(id);
        mv.setViewName("userMsg");
        System.out.println(id);
        System.out.println(user);
        //将用户信息返回用户信息页
        mv.addObject("loginUser", user);
        return mv;
    }

    /**
     * 修改用户信息
     * @param user
     * @return
     */
    @RequestMapping("/modifyUserMsg")
    public ModelAndView modifyUserMsg(User user){
        ModelAndView mv = new ModelAndView();
        //修改用户信息
        userService.modifyUser(user);
        mv.addObject("loginUser", user);
        //修改完成后，跳转至用户信息页
        mv.setViewName("userMsg");
        return mv;
    }

    /**
     * 修改用户密码
     * @param id
     * @return
     */
    @RequestMapping("/toModifyPwd")
    public ModelAndView toModifyPwd(int id){
        ModelAndView mv = new ModelAndView();
        //找到用户
        User user = userService.findById(id);
        mv.setViewName("modifyPwd");
        mv.addObject("loginUser", user);
        return mv;
    }

    /**
     * 修改密码
     * @param id
     * @param password
     * @param rePassword
     * @return
     */
    @RequestMapping("/modifyPwd")
    public ModelAndView modifyPwd(Integer id, String password, String rePassword){
        ModelAndView mv = new ModelAndView();
        //判断两次输入的密码是否一致
        if(password.equals(rePassword)){
            //一致。则更改数据库，重定向到登录页
            userService.modifyPwd(password, id);
            mv.setViewName("redirect:/index.jsp");
        }else{
            //跳转到修改密码页面
            mv.setViewName("modifyPwd");
        }
        return mv;
    }

    /**
     * 跳转至关于页面
     * @return
     */
    @RequestMapping("/about")
    public String about(){
        return "about";
    }
}