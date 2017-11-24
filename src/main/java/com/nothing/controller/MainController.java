package com.nothing.controller;

import com.nothing.Model.Equipment;
import com.nothing.Model.User;
import com.nothing.Service.IUserService;
import com.nothing.Service.UserServiceImpl;
import javafx.scene.input.DataFormat;
import org.slf4j.LoggerFactory;
import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/user")
public class MainController {
    Logger logger = LoggerFactory.getLogger(MainController.class);
    private IUserService service = new UserServiceImpl();

    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String home(User user) {
        return "index";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(@RequestParam String login_name, @RequestParam String password, HttpServletRequest request){
        User u = service.selectByName(login_name);
        if (u != null){
            if (password.equals(u.getPassword())){
                if (u.getType() == 1){
                    List<Equipment> equipments = service.selectEqumtById(u.getId());
                    request.setAttribute("equipments", equipments);
                    request.getSession().setAttribute("user", u);
                    return "userHome";
                }
                else {
                    List<Equipment> equipments = service.selectAllEquipment();
                    request.setAttribute("equipments", equipments);
                    request.getSession().setAttribute("user", u);
                    return "userHome";
                }
            }
            else {
                request.setAttribute("error","密码填写错误！");
                return "index";
            }
        }
        else {
            request.setAttribute("error", "此用户不存在！");
            return "index";
        }
    }

    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String register(User user){
        return "register";
    }

    @RequestMapping(value = "/doRegister", method = RequestMethod.POST)
    public String doRegister(User user, HttpServletRequest request){
        service.addUser(user);
        request.setAttribute("user", user);
        return "registerSuccess";
    }

    @RequestMapping(value = "addEquipment", method = RequestMethod.GET)
    public String addEquipment(Equipment equipment){
        return "addEquipment";
    }

    @RequestMapping(value = "doAddEquipment", method = RequestMethod.POST)
    public String doAddEquipment(Equipment equipment, HttpServletRequest request){
        Date date = new Date();
//        DateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        equipment.setAdd_time(date);
        logger.info(date.toString());
        service.addEquipment(equipment);
        List<Equipment> equipments = service.selectAllEquipment();
        request.setAttribute("equipments",equipments);
        return "userHome";
    }
    @RequestMapping(value = "/toJson", method = RequestMethod.POST)
    @ResponseBody
    public User toJson(User user) {
        IUserService service = new UserServiceImpl();
        service.addUser(user); //一起测试了
        return service.findUserById(2);
    }

}