package com.society.application.controler;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.society.application.dto.ApiResponse;
import com.society.application.model.FinancialYear;
import com.society.application.service.CustomizationService;

@RestController
@RequestMapping("/api/customization")
public class CustomizationController {
	
	@Autowired
	CustomizationService customizationService;
	
	
//	Financial Year
	
	@PostMapping("/saveAndUpdateAllFinancialYear") // Ayush (without DTO)
	public ResponseEntity<ApiResponse<FinancialYear>> saveFinancialYear(@RequestBody FinancialYear financialYear) {
		boolean isCreate = (financialYear.getId() == null); // Check BEFORE saving
		FinancialYear savedEntity = customizationService.saveFinancialYear(financialYear);
		ApiResponse<FinancialYear> response;
		if (isCreate) {
			response = new ApiResponse<>(HttpStatus.CREATED, "Financial Year created successfully", savedEntity);
			return new ResponseEntity<>(response, HttpStatus.CREATED);
		} else {
			response = new ApiResponse<>(HttpStatus.OK, "Financial Year updated successfully", savedEntity);
			return new ResponseEntity<>(response, HttpStatus.OK);
		}
	}
	
	
	@GetMapping("/getAllFinancialYearDetails")
		public ResponseEntity<ApiResponse<List<FinancialYear>>> getAllFinancialYearDetails(){
		List<FinancialYear> list = customizationService.getAllFinancialYearDetails();
		
		ApiResponse<List<FinancialYear>> response = new ApiResponse<>(HttpStatus.OK, "FinancialYear Fetched Successfully",list);
		return ResponseEntity.ok(response);
	}
	
	
	@GetMapping("/getFinancialYearById") // Ayush
	public ResponseEntity<ApiResponse<FinancialYear>> findFinancialYearById(@RequestParam("id") Long id) {
		Optional<FinancialYear> fyear = customizationService.findFinancialYearById(id);
		if (fyear.isPresent()) {
			ApiResponse<FinancialYear> response = new ApiResponse<>(HttpStatus.FOUND, "Financial Year fetched successfully",
					fyear.get());
			return ResponseEntity.ok(response);
		} else {
			ApiResponse<FinancialYear> response = new ApiResponse<>(HttpStatus.NOT_FOUND,
					"Financial Year not found for ID: " + id, null);
			return ResponseEntity.status(404).body(response);
		}
	}
	

}
