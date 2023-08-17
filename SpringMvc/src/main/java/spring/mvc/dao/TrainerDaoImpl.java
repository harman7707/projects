package spring.mvc.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import spring.mvc.entities.Trainer;

public class TrainerDaoImpl implements TrainerDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}
	
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	@Override
	public int insertTrainer(Trainer trainer) {
		String insertQuery = "INSERT INTO trainer "
				+ "(trainerName, qualification,"
				+ " trainerDescription, year_of_exp) "
				+ "vaLuEs(?,?,?,?)";
		return this.jdbcTemplate.update(insertQuery,
				trainer.getTrainerName(), 
				trainer.getQualification(), 
				trainer.getTrainerDescription(),
				trainer.getYear_of_exp());
	}

	@Override
	public int updateTrainer(Trainer trainer) {
		String updateQuery = "UPDATE trainer"
				+ " SET trainerName= ?, qualification = ?,"
				+ " trainerDescription =?, year_of_exp = ? "
				+ "WHERE trainerId = ?";
		return this.jdbcTemplate.update(updateQuery,
				trainer.getTrainerName(),
				trainer.getQualification(), 
				trainer.getTrainerDescription(),
				trainer.getYear_of_exp(), 
				trainer.getTrainerId());
	}

	@Override
	public int deleteTrainer(int trainerId) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Trainer getTrainer(int trainerId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Trainer> getListOfTrainer() {
		// TODO Auto-generated method stub
		return null;
	}

}
