package spring.mvc.dao;

import java.util.List;

import spring.mvc.entities.Trainer;



public interface TrainerDao {

	int insertTrainer(Trainer trainer);

	int updateTrainer(Trainer trainer);

	int deleteTrainer(int trainerId);

	Trainer getTrainer(int trainerId);

	List<Trainer> getListOfTrainer();
}
