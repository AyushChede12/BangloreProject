package com.society.application.repository;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.society.application.dto.TranferDTO;

import java.util.List;

@Repository
public class CustomEntityRepositoryImpl implements CustomEntityRepository {

	private final JdbcTemplate jdbcTemplate;

	public CustomEntityRepositoryImpl(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	@Override
	public List<TranferDTO> findAll() {
		String sql = "SELECT gl_head_no_scheme_nmae AS Number, scheme_name AS Description " + "FROM new_scheme "
				+ "UNION ALL " + "SELECT gl_head_no_interest AS Number, interest AS Description " + "FROM new_scheme "
				+ "UNION ALL " + "SELECT gl_head_no_interest_payable AS Number, interest_payable AS Description "
				+ "FROM new_scheme " + "ORDER BY Number";

		return jdbcTemplate.query(sql, (rs, rowNum) -> {
			TranferDTO customEntity = new TranferDTO();
			customEntity.setNumber(rs.getString("Number"));
			customEntity.setDescription(rs.getString("Description"));
			return customEntity;
		});
	}

}
