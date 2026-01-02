package com.society.application.service;

import com.society.application.model.BranchMaster;
import com.society.application.model.Cashier;
import com.society.application.model.Contra;
import com.society.application.model.NewGLHeadMaster;
import com.society.application.model.Receipt;
import com.society.application.repository.BranchMasterRepo;
import com.society.application.repository.CashierRepo;
import com.society.application.repository.ContraRepo;
import com.society.application.repository.NewGLGroupMasterRepo;
import com.society.application.repository.NewGLHeadMasterRepo;
import com.society.application.repository.ReceiptRepo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestBody;

import java.time.LocalDate;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

@Service
public class EntryService {

	@Autowired
	private CashierRepo cashierRepo;

	@Autowired
	private ReceiptRepo receiptRepo;

	@Autowired
	BranchMasterRepo branchMasterRepo;

	@Autowired
	NewGLHeadMasterRepo glHeadMasterRepo;

	@Autowired
	ContraRepo contraRepo;

	@Autowired
	NewGLHeadMasterRepo newGLHeadMasterRepo;

	// Cashier
	public Long generateEntryNumber() {
		LocalDate today = LocalDate.now();
		List<Cashier> entries = cashierRepo.findByEntryDate(today);
		long entryNumber = entries.size() + 1;
		return entryNumber;
	}

	public Cashier saveEntry() {
		LocalDate today = LocalDate.now();
		Long entryNumber = generateEntryNumber();
		Cashier entry = new Cashier();
		entry.setEntryDate(today);
		entry.setScroll(entryNumber);
		return entry;
	}

	// Contra
	public Long generateContraNumber() {
		LocalDate today = LocalDate.now();
		List<Contra> contra = contraRepo.findByEntryDate(today);
		long entryNo = (contra.size() / 2) + 1;

		return entryNo;
	}

	public Contra saveEntryNo() {
		LocalDate today = LocalDate.now();
		Long entryNo = generateContraNumber();
		Contra entry = new Contra();
		entry.setEntryDate(today);
		entry.setVoucherNo(entryNo);
		return entry;
	}

	// Receipt
	public Long generateEntryNumberForReceipt() {
		LocalDate today = LocalDate.now();
		List<Receipt> entries = receiptRepo.findByEntryDate(today);
		long entryNumber = (entries.size() / 2) + 1;
		return entryNumber;
	}

	public Receipt saveEntryForReceipt() {
		LocalDate today = LocalDate.now();
		Long entryNumber = generateEntryNumberForReceipt();
		Receipt entry = new Receipt();
		entry.setEntryDate(today);
		entry.setVoucherNo(entryNumber);
		return entry;
	}

	public double processDebitTransaction(Cashier cashier) {
		List<Cashier> cashiers = cashierRepo.findByGlHeadNoAndPayment(cashier.getGlHeadNo(), "debit");
		double sum = cashiers.stream().mapToDouble(c -> Double.parseDouble(c.getAmount())).sum();
		for (Cashier c : cashiers) {
			c.setBalance(sum);
		}
		return sum;
	}

	public double processCreditTransaction(Cashier cashier) {
		List<Cashier> cashiers = cashierRepo.findByGlHeadNoAndPayment(cashier.getGlHeadNo(), "credit");
		double sum = cashiers.stream().mapToDouble(c -> Double.parseDouble(c.getAmount())).sum();
		for (Cashier c : cashiers) {
			c.setBalance(sum);
		}
		return sum;
	}

	// In this method, GL Head No is Follow sequence in frontend
	// In this method, GL Head No is Follow sequence in frontend
	public void branchMasterSave(@RequestBody Map<String, String> requestBody, HttpSession session) {

		String createdBy = session.getAttribute("ID").toString();
		BranchMaster branchMaster = new BranchMaster();
		NewGLHeadMaster newGLHeadMaster = new NewGLHeadMaster();
		branchMaster.setCreatedBy(createdBy);
		branchMaster.setBranchCode(requestBody.get("branchCode"));
		branchMaster.setName(requestBody.get("name"));
		branchMaster.setBankID(requestBody.get("name") + "001");
		branchMaster.setOpening_date(requestBody.get("openingDate"));
		branchMaster.setAddress(requestBody.get("address"));
		branchMaster.setPin(requestBody.get("pin"));
		branchMaster.setState(requestBody.get("state"));
		branchMaster.setContactPerson(requestBody.get("contactPerson"));
		branchMaster.setContactNo(requestBody.get("contactNo"));
		branchMaster.setBankAccoununtNo(requestBody.get("bankAccoununtNo"));
		branchMaster.setBranch(requestBody.get("branch"));
		branchMaster.setAccountType(requestBody.get("accountType"));
		branchMaster.setStatus(requestBody.get("status"));
		branchMaster.setIfscCode(requestBody.get("ifscCode"));
		branchMaster.setSelectTransactionCheckbox(requestBody.get("selectTransactionCheckbox"));
		branchMaster.setModule("Branch Master");
		branchMaster.setFlag("1");
		branchMaster.setBalance(0.00);

		String glHeadNoString = requestBody.get("glHeadNo");
		if (glHeadNoString != null && !glHeadNoString.isEmpty()) {
			long glHeadNo = Long.parseLong(glHeadNoString);
			if (glHeadNo > 0) {
				branchMaster.setGlHeadNo(glHeadNo);
				newGLHeadMaster.setGlHeadNo(glHeadNo);
			} else {
				branchMaster.setGlHeadNo(null); // Set as null when the value is not valid
				newGLHeadMaster.setGlHeadNo(null); // Set as null in NewGLHeadMaster as well
			}
		} else {
			branchMaster.setGlHeadNo(null); // Set as null when the value is empty or null
			newGLHeadMaster.setGlHeadNo(null); // Set as null in NewGLHeadMaster as well
		}

		newGLHeadMaster.setModule("Branch Master");
		newGLHeadMaster.setFlag("1");
		newGLHeadMaster.setStatus(requestBody.get("status"));
		newGLHeadMaster.setAccountType(requestBody.get("accountType"));
		newGLHeadMaster.setBranch(requestBody.get("name"));
		newGLHeadMaster.setBankID(requestBody.get("name") + "001");
		newGLHeadMaster.setUniqueId(requestBody.get("name") + "001");
		newGLHeadMaster.setGlHeadName(requestBody.get("name"));
		newGLHeadMaster.setBalance(0.0);

		branchMasterRepo.save(branchMaster);
		newGLHeadMasterRepo.save(newGLHeadMaster);
	}

	// In this method, GL Head No saves with (Bank Name interest)
	public void branchMasterSave2(@RequestBody Map<String, String> requestBody, HttpSession session) {

		String createdBy = session.getAttribute("ID").toString();

		BranchMaster branchobj = new BranchMaster();
		NewGLHeadMaster newGLObj = new NewGLHeadMaster();

		String glHeadNoString = requestBody.get("glHeadNo");
		if (glHeadNoString != null && !glHeadNoString.isEmpty()) {
			long glHeadNo = Long.parseLong(glHeadNoString);
			if (glHeadNo > 0) { // Ensure glHeadNo is valid
				long nextGLHeadNo = glHeadNo + 1;
				branchobj.setGlHeadNo(nextGLHeadNo);
				newGLObj.setGlHeadNo(nextGLHeadNo);
			}
		}

		// branchobj.setBankInterest(requestBody.get("name") + " Interest");
		branchobj.setOpening_date(requestBody.get("openingDate"));
		branchobj.setAddress(requestBody.get("address"));
		branchobj.setPin(requestBody.get("pin"));
		branchobj.setState(requestBody.get("state"));
		branchobj.setContactPerson(requestBody.get("contactPerson"));
		branchobj.setContactNo(requestBody.get("contactNo"));
		branchobj.setBankAccoununtNo(requestBody.get("bankAccoununtNo"));
		branchobj.setBranch(requestBody.get("branch"));
		branchobj.setAccountType(requestBody.get("accountType"));
		branchobj.setStatus(requestBody.get("status"));
		branchobj.setIfscCode(requestBody.get("ifscCode"));
		branchobj.setSelectTransactionCheckbox(requestBody.get("selectTransactionCheckbox"));
		branchobj.setModule("Branch Master");
		branchobj.setFlag("1");
		branchobj.setName(requestBody.get("name") + " Interest");
		branchobj.setBranchCode(requestBody.get("branchCode"));
		branchobj.setCreatedBy(createdBy);

		newGLObj.setModule("Branch Master");
		newGLObj.setFlag("1");
		newGLObj.setStatus(requestBody.get("status"));
		newGLObj.setAccountType(requestBody.get("accountType"));
		newGLObj.setBranch(requestBody.get("name"));
		newGLObj.setGlHeadName(requestBody.get("name") + " Interest");

		branchMasterRepo.save(branchobj);
		glHeadMasterRepo.save(newGLObj);
	}

	private static final String[] units = { "", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight",
			"Nine" };
	private static final String[] teens = { "Ten", "Eleven", "Twelve", "Thirteen", "Fourteen", "Fifteen", "Sixteen",
			"Seventeen", "Eighteen", "Nineteen" };
	private static final String[] tens = { "", "", "Twenty", "Thirty", "Forty", "Fifty", "Sixty", "Seventy", "Eighty",
			"Ninety" };
	private static final String[] thousands = { "", "Thousand", "Million", "Billion" };

	public String convertAmountToWords(String amount) {
		double numericAmount = Double.parseDouble(amount);
		if (numericAmount == 0) {
			return "Zero";
		}

		int index = 0;
		String words = "";

		while (numericAmount > 0) {
			int part = (int) (numericAmount % 1000);
			if (part > 0) {
				words = convertThreeDigit(part) + thousands[index] + " " + words;
			}
			numericAmount /= 1000;
			index++;
		}

		return words.trim();
	}

	private String convertThreeDigit(int num) {
		String result = "";

		int hundreds = num / 100;
		int remainder = num % 100;

		if (hundreds > 0) {
			result += units[hundreds] + " Hundred";
			if (remainder > 0) {
				result += " and ";
			}
		}

		if (remainder >= 10 && remainder <= 19) {
			result += teens[remainder - 10];
		} else {
			int tensDigit = remainder / 10;
			int onesDigit = remainder % 10;
			result += tens[tensDigit];
			if (onesDigit > 0) {
				result += "-" + units[onesDigit];
			}
		}

		return result;
	}
}
