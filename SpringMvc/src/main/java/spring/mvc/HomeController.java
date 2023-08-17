package spring.mvc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import spring.mvc.dao.TrainerDao;
import spring.mvc.entities.Trainer;

@Controller
public class HomeController {
	
	@Autowired
	TrainerDao trainerDao;
	
	@GetMapping(value = "/home")
	public String home(){
		System.out.println("index done!");
		return "index";
	}
	@GetMapping(value = "/about")
	public String about(){
		System.out.println(" about done!");
		return "about";
	}
	@GetMapping(value = "/")
	public String form(){
		System.out.println(" form done!");
		return "form";
	}
	@PostMapping("/register")
	public String addTrainer(
			@RequestParam("trainer_name") String trainerName,
			@RequestParam("qualification") String qualification,
			@RequestParam("trainerDescription") String trainerDescription,
			@RequestParam("year_of_exp") int yearOfExp,Model model
			){
		Trainer test = new Trainer();
		test.setTrainerName(trainerName);
		test.setTrainerDescription(trainerDescription);
		test.setYear_of_exp(yearOfExp);
		test.setQualification(qualification);
		int result = trainerDao.insertTrainer(test);
		if(result > 0)
		{
			System.out.println("suCCesS");
		}
		
		System.out.println(" form done!");
		return "form";
	}
}
