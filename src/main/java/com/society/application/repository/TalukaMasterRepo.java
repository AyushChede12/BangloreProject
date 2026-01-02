package com.society.application.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.stereotype.Repository;

import com.society.application.model.TalukaModel;

@Repository
public interface TalukaMasterRepo extends JpaRepository<TalukaModel, Long> {

	List<TalukaModel> findAllByDistrictId(int districtId);

	@Modifying
	@Transactional
	@Query(value = "DELETE FROM TalukaModel f where f.id = ?1")
	int deleteById(Integer id);
}
