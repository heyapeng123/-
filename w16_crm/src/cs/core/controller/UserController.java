package cs.core.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cs.core.db.po.UserInfo;
import cs.core.service.UserService;

/*
contrl类的作用：
1、接收jsp传过来的数据
2、调用service处理数据
3、根据处理结果，进行跳转
*/

@Controller
public class UserController {
//	依赖注入 UserServiceImpl
	@Autowired
//	private UserService  userService = new UserServiceImpl();
	private UserService userService;
	
//	1、 接收数据:利用 login方法列表中的  同名变量  接收 jsp传过来的数据
//	设值本方法 的访问路径
	@RequestMapping(value="/login.action")
	public String login(String usercode, String password,			//从jsp接收2个 参数
			Model model, HttpSession httpsession){
		
//	2\处理数据
		UserInfo u = userService.findUserS(usercode, password);
		//登录正确，则 在session里做标记、并跳转
		if( u!=null){  
			httpsession.setAttribute("USER_SESSION", u);
			return "customer";
		}
		
//		登录错误，向jsp 返回错误信息、并 跳转
		httpsession.removeAttribute("USER_SESSION");
		model.addAttribute("msg", "用户名or密码错误，请重试！");
		return "login";
		
	}
	
	/**
	 * 向用户登陆页面跳转
	 */
	@RequestMapping(value = "/loginto.action", method = RequestMethod.GET)
	public String toLogin() {
	    return "login";
	}
	
	/**
	 * 退出登录
	 */
	@RequestMapping(value = "/logout.action")
	public String logout(HttpSession session) {
	    // 清除Session
	    session.invalidate();
	    // 重定向到登录页面的跳转方法
	    return "redirect:loginto.action";
	}
}
