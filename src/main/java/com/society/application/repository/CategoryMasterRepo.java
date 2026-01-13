package com.society.application.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.society.application.model.CategoryMaster;

@Repository
public interface CategoryMasterRepo extends JpaRepository<CategoryMaster, Long> {

}
