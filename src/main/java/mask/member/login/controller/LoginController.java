package mask.member.login.controller;

import javax.annotation.Resource;

import mask.member.login.service.LoginServiceImpl;

public class LoginController {

	@Resource(name="loginService")
	LoginServiceImpl loginServiceImpl;
	
}
