package mask.main;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


//class controller annotation ����
@Controller
public class HomeController {
	
	//@RequestMapping �� �ְ� .do�� ������
	@RequestMapping(value = "/admin/home.mk", method = RequestMethod.GET)
	public String home(Model model) { //home �޼��� �̿�
		
		
		//������ jsp ����
		return "/admin/adminBoardInsert";
	}
	
}
