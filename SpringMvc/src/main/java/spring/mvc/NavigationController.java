package spring.mvc;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.mvc.dao.TrainerDao;
import spring.mvc.entities.Trainer;

@Controller
public class NavigationController {

	@Autowired
	TrainerDao trainerdao;
	
	@RequestMapping(value = {"/viewTrainer", "/openTrainerDashboardPage"})
	public String openTrainerDashboardPage (Model model) {
		List<Trainer> listOfTrainer= trainerdao.getListOfTrainer();
		model.addAttribute("listOfTrainer",listOfTrainer);
		return "trainer_dashboard";
	}
	
	@RequestMapping("/openAddTrainerPage")
	public String openAddTrainerPage() {
		return "form";
	}

	@RequestMapping("/openUpdateTrainerPage/{trainerId}")
	public String openUpdateTrainerPage(
			@PathVariable("traineId") int trainerId;
			Model model
			) {
		
		
		
		Trainer trainerToUpdate = trainerdao.getTrainer(trainerId);
		model.addAllAttributes("trainerToUpdate", trainerToUpdate);
		return "trainer_update";
	}
