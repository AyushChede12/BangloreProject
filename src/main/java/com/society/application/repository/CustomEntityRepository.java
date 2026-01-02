package com.society.application.repository;

import java.util.List;

import com.society.application.dto.TranferDTO;

public interface CustomEntityRepository {

	List<TranferDTO> findAll();

}
