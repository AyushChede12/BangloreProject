package com.society.application.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.society.application.model.NewScheme;

@Repository
public interface NewSchemeRepo extends JpaRepository<NewScheme, Long> {

	List<NewScheme> findBystatus(String status);

	List<NewScheme> findByglHeadNoSchemeNmae(String glHeadNoSchemeNmae);

	NewScheme getDataByGlHeadNoSchemeNmae(String glHeadNoSchemeNmae);

	@Transactional
	@Modifying
	@Query("UPDATE NewScheme n SET n.flag = 0 WHERE n.id = :id")
	void softDeleteById(@Param("id") Long iD);

	List<NewScheme> findBystatusAndFlag(String status, int i);

}
