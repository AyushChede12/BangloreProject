package com.society.application.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.society.application.model.ShareCounts;

@Repository
public interface ShareCountsRepo extends JpaRepository<ShareCounts, Integer> {

	List<ShareCounts> findByShare(String shareSerialNo);

	List<ShareCounts> findByStatusNotOrStatusIsNull(String status);
}
