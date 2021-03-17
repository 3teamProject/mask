package mask.main;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


//class controller annotation 선언
@Controller
public class HomeController {
	
	//@RequestMapping 값 넣고 .do로 보내줌
	@RequestMapping(value = "/admin/home.mk", method = RequestMethod.GET)
	public String home(Model model) { //home 메서드 이용
		
		
		//리턴할 jsp 지정
		return "/admin/adminBoardInsert";
	}
	
}
