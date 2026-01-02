package com.society.application.repository;

import com.society.application.model.NewGLGroupMaster;
import com.society.application.model.NewGLHeadMaster;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface NewGLHeadMasterRepo extends JpaRepository<NewGLHeadMaster, Long> {

	@Query("SELECT m.glHeadNo, m.glHeadName, c.balance FROM NewGLHeadMaster m INNER JOIN Cashier c ON m.glHeadNo = c.glHeadNo")
	List<Object[]> innerJoinTables();

	@Query("SELECT COALESCE(MAX(glHeadNo), 0) FROM NewGLHeadMaster")
	Integer findMaxGLHeadNo();

	List<NewGLHeadMaster> findByglHeadNo(Long glHeadNoLong);

	NewGLHeadMaster findByGlHeadNo(Long creditGLHeadNo);

	List<NewGLHeadMaster> findByUniqueId(Long glHeadNo);

	List<NewGLHeadMaster> findByglHeadName(String glHeadName);

	List<NewGLHeadMaster> findByUniqueId(String uniqueIds);

	@Transactional
	void deleteByuniqueId(String bankID);

	List<NewGLHeadMaster> findByuniqueId(String bankId);
}
