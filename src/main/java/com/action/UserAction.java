package com.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.po.Admin;
import com.po.User;
import com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

@Controller
public class UserAction extends ActionSupport {
    @Autowired
    @Resource
    private UserService userService;
    private Admin admin;

    public Admin getAdmin() {
        return admin;
    }
    public void setAdmin(Admin adminEntity) {
        this.admin = adminEntity;
    }

    public String adminLogin(){
        List list = userService.adminLogin(admin.getaName(),admin.getaPassword());
        ActionContext actionContext = ActionContext.getContext();
        Map<String,Object> request = (Map)actionContext.get("request");
        if(list.size() > 0){
            System.out.println("登陆成功");
            request.put("msg","登录成功:)");
            return SUCCESS;
        }
        System.out.println("登陆失败");
        request.put("msg","登陆失败:(，请检查账号或密码");

        return ERROR;
    }

    private User user;
    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
    public String userLogin(){
        ActionContext actionContext = ActionContext.getContext();
        Map<String,Object> request = (Map)actionContext.get("request");
        List list = userService.userLogin(user.getuName(),user.getuPassword());
        if(list.size() > 0){
            request.put("msg","登陆成功:)");
            return SUCCESS;
        }
        request.put("msg","登陆失败:(，请检查账号或密码");
        return ERROR;
    }



    public String userRegister(){
        return null;
    }
}
