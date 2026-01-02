package com.society.application.controler;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.*;
import java.util.stream.Collectors;

import javax.transaction.Transactional;

import com.society.application.model.*;
import com.society.application.repository.*;
import com.society.application.service.PDFGenServiceImpl;
import org.apache.pdfbox.pdmodel.PDDocument;
import org.apache.pdfbox.pdmodel.PDPage;
import org.apache.pdfbox.pdmodel.PDPageContentStream;
import org.apache.pdfbox.pdmodel.font.PDType1Font;
import org.apache.pdfbox.pdmodel.graphics.image.PDImageXObject;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.society.application.dto.NewGlHeadCashierDTO;
import com.society.application.dto.TranferDTO;
import com.society.application.service.EntryService;

@Controller
public class AccountingController {

	@Autowired
	CashierRepo cashierRepo;

	@Autowired
	BranchMasterRepo branchMasterRepo;

	@Autowired
	CustomEntityRepositoryImpl customEntityRepository;

	@Autowired
	private EntryService entryService;

	@Autowired
	private PDFGenServiceImpl pdfGenService;

	@Autowired
	private NewGLHeadMasterRepo newGLHeadMasterRepo;

	@Autowired
	ReceiptRepo receiptRepo;

	@Autowired
	ContraRepo contraRepo;

	@Autowired
	NewSavingAccountRepo newSavingAccountRepo;

	@Autowired
	PaymentAccRepo paymentAccRepo;

	// Cashier
	@GetMapping("/cashier")
	public String cashier(Model model) {
		model.addAttribute("EntryDate", entryService.saveEntry().getEntryDate());
		model.addAttribute("ScrollNumber", entryService.saveEntry().getScroll());
		return "accounting/Cashier";
	}

	// Contra
	@GetMapping("/contra")
	public String contra(Model model) {
		model.addAttribute("EntryDate", entryService.saveEntryNo().getEntryDate());
		model.addAttribute("VoucherNo", entryService.saveEntryNo().getVoucherNo());
		return "accounting/Contra";
	}

	// Payment
	@GetMapping("/payment")
	public String payment(Model model) {
		model.addAttribute("EntryDate", entryService.saveEntry().getEntryDate());
		model.addAttribute("VoucherNo", entryService.saveEntryForReceipt().getVoucherNo());
		return "accounting/Payment";
	}

	// Transaction List
	@GetMapping("/transactionList")
	public String transactionList() {
		return "accounting/TransactionList";
	}

	// Fetching Select G L Head By G.L.Head No
	@GetMapping("/entities")
	@ResponseBody
	public List<TranferDTO> getAllEntities() {
		return customEntityRepository.findAll();
	}

	// Fetching Branch Code By Branch Name
	@GetMapping("/fetchBranchCodeByBranchName")
	@ResponseBody
	public List<BranchMaster> fetchBranchCodeByBranchName(@RequestParam("name") String branchName) {
		List<BranchMaster> list = new ArrayList<>();
		BranchMaster branch = branchMasterRepo.findByname(branchName);
		if (branch != null) {
			list.add(branch);
		}
		return list;
	}

	// Receipt
	@GetMapping("/receipt")
	public String receipt(Model model) {
		model.addAttribute("EntryDate", entryService.saveEntry().getEntryDate());
		model.addAttribute("VoucherNo", entryService.saveEntryForReceipt().getVoucherNo());
		return "accounting/Receipt";
	}

	// Transfer
	@GetMapping("/transfer")
	public String transfer() {
		return "accounting/Transfer";
	}

	// Denomination Exchange
	@GetMapping("/denominationExchange")
	public String denominationExchange() {
		return "accounting/DenominationExchange";
	}

	@PostMapping("/addScroll")
	@ResponseBody
	public ResponseEntity<Cashier> addEntry() {
		Cashier cashier = entryService.saveEntry();
		return new ResponseEntity<>(cashier, HttpStatus.CREATED);
	}

	@PostMapping("/fetchAllNewGlHead")
	@ResponseBody
	public List<NewGLHeadMaster> fetchAllNewGlHead() {
		return newGLHeadMasterRepo.findAll();
	}

	@GetMapping("/innerJoinNewHeadCashier")
	public ResponseEntity<List<NewGlHeadCashierDTO>> innerJoinTables() {
		List<Object[]> result = newGLHeadMasterRepo.innerJoinTables();
		List<NewGlHeadCashierDTO> dtos = result.stream().map(objects -> {
			NewGlHeadCashierDTO dto = new NewGlHeadCashierDTO();
			dto.setGlHeadNo(String.valueOf(objects[0]));
			dto.setHeadName((String) objects[1]);
			dto.setBalance((Double) objects[2]);
			return dto;
		}).collect(Collectors.toList());
		return ResponseEntity.ok(dtos);
	}

	@PostMapping("/savetheCashier")
	@ResponseBody
	public ResponseEntity<String> savetheCashier(@RequestBody Cashier cashier) {
		try {

			System.out.println(cashier.getPendingTransaction());

			PaymentAcc paymentAcc = paymentAccRepo.findBytransactionId(cashier.getPendingTransaction());
			if (paymentAcc != null) { // Check if paymentAcc is not null
				paymentAcc.setFlag(1);
				paymentAccRepo.save(paymentAcc);
			}

			String transactionID = UUID.randomUUID().toString();
			// Save the cashier object
			cashier.setTransactionID(transactionID);
			cashier.setFlag("0");
			cashier.setModule("Accounting-Cashier");
			cashierRepo.save(cashier);
			return ResponseEntity.ok("Saved Successfully Cashier Id : " + cashier.getId());
		} catch (Exception e) {
			// Handle exceptions here
			return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Error: " + e);
		}
	}

	@PostMapping("/fetchAllCashier")
	@ResponseBody
	public List<Cashier> fetchAllCashier() {
		return cashierRepo.findAll();
	}

	@PostMapping("/deleteByID")
	@ResponseBody
	public ResponseEntity<String> deleteByID(@RequestBody Cashier cash) {
		cashierRepo.deleteByid(cash.getId());
		return ResponseEntity.ok("Deleted Successfully Cashier Id : " + cash.getId());
	}

	@PostMapping("/fetchByScroll")
	@ResponseBody
	public List<Cashier> fetchByScroll(@RequestBody Cashier receipt) {
		List<Cashier> list = cashierRepo.findByScrollAndGlHeadNoAndAccountNoAndAmountAndSelectAccountHolder(
				receipt.getScroll(), receipt.getGlHeadNo(), receipt.getAccountNo(), receipt.getAmount(),
				receipt.getSelectAccountHolder());
		return list;
	}

	@PostMapping("/saveReceiptModule")
	@ResponseBody
	public ResponseEntity<String> saveReceiptModule(@ModelAttribute("receiptModule") Receipt receipt, Model model,
			@RequestParam("entryDate") String entryDateString,
			@RequestParam("instrumentDate") String instrumentDateString) {
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		LocalDate parsedDate = LocalDate.parse(entryDateString, formatter);
		LocalDate parsedDate1 = LocalDate.parse(instrumentDateString, formatter);

		receipt.setEntryDate(parsedDate);
		receipt.setInstrumentDate(parsedDate1);
		receipt.setFlag("1");
		receiptRepo.save(receipt);
		return ResponseEntity.ok("Transaction Successfully For Voucher No. " + receipt.getVoucherNo());
	}

	/*
	 * @GetMapping("/fetchAllReceipts")
	 * 
	 * @ResponseBody public ResponseEntity<List<Receipt>> findAllReceipts() {
	 * List<Receipt> allReceipts = receiptRepo.findAll(); return
	 * ResponseEntity.ok(allReceipts); }
	 */

	@GetMapping("/fetchAllReceipts")
	@ResponseBody
	public ResponseEntity<List<Receipt>> findAllReceipts() {
		List<Receipt> allReceipts = receiptRepo.findAll();

		// Fetch the last balance for each glHeadNo from the Cashier model
		Map<String, Double> glHeadNoToBalanceMap = new HashMap<>();

		List<Cashier> cashiers = cashierRepo.findAll();

		for (Cashier cashier : cashiers) {
			String glHeadNo = cashier.getGlHeadNo();
			double balance = cashier.getBalance();

			// Update the balance for each glHeadNo
			glHeadNoToBalanceMap.put(glHeadNo, balance);
		}

		// Assign the balances to Receipts
		for (Receipt receipt : allReceipts) {
			String glHeadNo = receipt.getGlHeadNo();
			double balance = glHeadNoToBalanceMap.getOrDefault(glHeadNo, 0.0);

			receipt.setBalance(String.valueOf(balance)); // Assuming balance is a string in Receipt model
		}

		return ResponseEntity.ok(allReceipts);
	}

	/*
	 * @PostMapping("/deleteByIdsReceipt")
	 * 
	 * @ResponseBody public ResponseEntity<String> deleteByIdsReceipt(@RequestBody
	 * Receipt receipt) { receiptRepo.deleteById(receipt.getId()); return
	 * ResponseEntity.ok("Deleted Successfully Receipt Id : " + receipt.getId()); }
	 */

	@PostMapping("/deleteByIdsReceipt")
	@ResponseBody
	public ResponseEntity<String> deleteByIdsReceipt(@RequestBody Map<String, Long> request) {
		Long receiptId = request.get("id");
		receiptRepo.deleteById(receiptId);
		return ResponseEntity.ok("Deleted Successfully Receipt Id: " + receiptId);
	}

	@PostMapping("/FetchAllReceipt")
	@ResponseBody
	public List<Receipt> FetchAllReceipt() {
		return receiptRepo.findAll();
	}

	/*
	 * @PostMapping("/deleteByIDReceipt")
	 * 
	 * @ResponseBody public ResponseEntity<String> deleteByID(@RequestBody Receipt
	 * receipt) { receiptRepo.deleteByid(receipt.getId()); return
	 * ResponseEntity.ok("Deleted Successfully Cashier Id : " + receipt.getId()); }
	 */

//	@PostMapping("/saveReceipt")
//	@ResponseBody
//	public ResponseEntity<String> saveReceipt(@RequestBody List<Receipt> receipt) {
//		receiptRepo.saveAll(receipt);
//
//		List<Object[]> results = receiptRepo.calculateNewAmounts();
//		for (Object[] result : results) {
//			String bankId = (String) result[0];
//			String newAmount = (String) result[1];
//
//			// Find all BranchMaster entities with the given bankId
//			List<BranchMaster> branchMasters = branchMasterRepo.findBybankid(bankId);
//
//			for (BranchMaster obj : branchMasters) {
//				obj.setBalance(Double.parseDouble(newAmount));
//				branchMasterRepo.save(obj);
//			}
//		}
//		return ResponseEntity.ok("Data Save Successfully !!!! ");
//	}
//
	// Fetch balance by selecting branch in CONTRA module
	@GetMapping("/fetchBalanceByBranchName")
	@ResponseBody
	public List<BranchMaster> fetchBalanceByBranchName(@RequestParam String name) {
		return branchMasterRepo.fetchBalanceByBranchName(name);
	}

	@PostMapping("/findByGLHeadNoInContra")
	@ResponseBody
	public List<NewGLHeadMaster> getFindByGLHeadNoInContra(@RequestBody NewGLHeadMaster glHeadMaster) {
		return newGLHeadMasterRepo.findByglHeadNo(glHeadMaster.getGlHeadNo());
	}

	// Fetch balance by selecting Cash radio button in CONTRA
	@GetMapping("/fetchBalanceByselectingCash")
	@ResponseBody
	public List<NewGLHeadMaster> fetchBalanceByselectingCash(@RequestParam("glHeadName") String glHeadName) {
		List<NewGLHeadMaster> data = newGLHeadMasterRepo.findByglHeadName(glHeadName);
		return data;
	}

	// Method to generate a unique ID (you can customize this based on your
	// requirements)
	private String generateUniqueId() {
		// Implement your logic to generate a unique ID (e.g., timestamp, UUID, etc.)
		return "UNIQUE_ID_" + System.currentTimeMillis();
	}

	/*
	 * @PostMapping("/saveContraModule")
	 * 
	 * @ResponseBody
	 * 
	 * @Transactional public ResponseEntity<String> saveContraModule(@RequestBody
	 * Contra contra) { try { String uniqueId = generateUniqueId();
	 * 
	 * // Assuming that contra.getGlHeadNo() is the GL Head No from which you are
	 * debiting money Long debitGLHeadNo = contra.getGlHeadNo();
	 * 
	 * NewGLHeadMaster newGLHeadMaster = new NewGLHeadMaster(); // Assuming that
	 * newGLHeadMaster.getGlHeadNo() is the GL Head No to which you are crediting
	 * money Long creditGLHeadNo = newGLHeadMaster.getGlHeadNo();
	 * 
	 * // Assuming that transactionAmount is the amount you are debiting double
	 * debitAmount = contra.getTransactionAmount();
	 * 
	 * // Get the GL Head records for debit and credit Contra debitGLHead =
	 * contraRepo.findByGlHeadNo(debitGLHeadNo); NewGLHeadMaster creditGLHead =
	 * newGLHeadMasterRepo.findByGlHeadNo(creditGLHeadNo);
	 * 
	 * // Check if GL Head records are found if (debitGLHead == null || creditGLHead
	 * == null) { return
	 * ResponseEntity.badRequest().body("Invalid GL Head No provided."); }
	 * 
	 * // Check if there is sufficient balance for debit if
	 * (debitGLHead.getBalance() < debitAmount) { return
	 * ResponseEntity.badRequest().body("Insufficient balance for debit."); }
	 * 
	 * // Update the balances debitGLHead.setBalance(debitGLHead.getBalance() -
	 * debitAmount); creditGLHead.setBalance(creditGLHead.getBalance() +
	 * debitAmount);
	 * 
	 * // Save the updates to GL Head records contraRepo.save(debitGLHead);
	 * newGLHeadMasterRepo.save(creditGLHead);
	 * 
	 * newGLHeadMaster.setUniqueId(uniqueId);
	 * newGLHeadMasterRepo.save(newGLHeadMaster);
	 * 
	 * contra.setUniqueId(uniqueId); contra.setFlag("1"); contraRepo.save(contra);
	 * 
	 * return ResponseEntity.ok("Transaction Successful. Voucher No : " +
	 * contra.getVoucherNo()); } catch (Exception e) { e.printStackTrace(); //
	 * Handle exceptions appropriately return
	 * ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).
	 * body("Error processing the request."); } }
	 */

	// Save Contra
	@PostMapping("/saveContraModule")
	@ResponseBody
	public ResponseEntity<String> saveContraModule(@RequestBody List<Contra> contraList) {
		try {
			for (Contra contra : contraList) {
				contra.setFlag("1");
			}
			contraRepo.saveAll(contraList);

			List<Object[]> list = contraRepo.calculateNewAmount();

			for (Object[] result : list) {
				String uniqueIds = (String) result[0];
				double amount = (double) result[1];
				// System.out.println(uniqueIds);
				// System.out.println(amount);

				List<NewGLHeadMaster> glHeadMasters = newGLHeadMasterRepo.findByUniqueId(uniqueIds);

				for (NewGLHeadMaster headMaster : glHeadMasters) {
					headMaster.setBalance(amount);
					newGLHeadMasterRepo.save(headMaster);
				}
			}

			return ResponseEntity.ok("Transaction Successful. Voucher No : " + contraList.get(0).getVoucherNo());
		} catch (Exception e) {
			e.printStackTrace();
			return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Error processing the request.");
		}
	}

	@PostMapping("/saveReceipt")
	@ResponseBody
	public ResponseEntity<String> saveReceipt(@RequestBody List<Receipt> receipt) {
		receiptRepo.saveAll(receipt);

		for (Receipt obj : receipt) {
			List<Object[]> results = receiptRepo.calculateNewAmounts(obj.getBankId());
			List<Cashier> cashiers = cashierRepo.findBytransactionID(obj.getCashierID());

			for (Cashier cashier : cashiers) {
				cashier.setFlag("1");
				cashierRepo.save(cashier);
			}

			for (Object[] result : results) {
				String bankId = (String) result[0];
				String newAmount = String.valueOf(result[1]); // Assuming newAmount is a numeric type

				// Find all BranchMaster entities with the given bankId
				List<BranchMaster> branchMasters = branchMasterRepo.findBybankID(bankId);
				List<NewGLHeadMaster> newGLHeadMasters = newGLHeadMasterRepo.findByuniqueId(bankId);
				List<NewSavingAccount> newSavingAccounts = newSavingAccountRepo.findByuniqueId(bankId);

				for (BranchMaster objB : branchMasters) {
					objB.setBalance(Double.parseDouble(newAmount));
					branchMasterRepo.save(objB);
				}
				for (NewGLHeadMaster objNewGl : newGLHeadMasters) {
					objNewGl.setBalance(Double.parseDouble(newAmount));
					newGLHeadMasterRepo.save(objNewGl);
				}

				for (NewSavingAccount newSaving : newSavingAccounts) {
					newSaving.setMainBalance(Double.parseDouble(newAmount));
					newSavingAccountRepo.save(newSaving);
				}

			}
		}
		return ResponseEntity.ok("Data Save Successfully !!!! ");
	}

	@PostMapping("/FetchAllNewSavingAccount")
	@ResponseBody
	public List<NewSavingAccount> FetchAllNewSavingAccount() {
		return newSavingAccountRepo.findAll();
	}

	@PostMapping("/generate-pdf")
	public ResponseEntity<byte[]> generatePdf(@RequestBody List<Object> obj) throws IOException {

		// Create the PDF and add images and tables
		ByteArrayOutputStream pdfStream = pdfGenService.generateCustomPdf(obj);
		byte[] pdfBytes = pdfStream.toByteArray();

//		return ResponseEntity.ok()
//				.contentType(MediaType.APPLICATION_PDF)
//				.body(pdfBytes);

		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_PDF);
		headers.setContentDispositionFormData("filename", "transactionList.pdf");

		return new ResponseEntity<>(pdfBytes, headers, HttpStatus.OK);
	}

	@PostMapping("/generate-pdf-Cashier")
	public ResponseEntity<byte[]> generatePdfCashier(@RequestBody List<Object> obj) throws IOException {

		// @RequestBody List<Object> obj
		// Create the PDF and add images and tables
		ByteArrayOutputStream pdfStream = pdfGenService.generateCustomPdfCashier(obj);
		byte[] pdfBytes = pdfStream.toByteArray();

		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_PDF);
		headers.setContentDispositionFormData("filename", "transactionList.pdf");

		return new ResponseEntity<>(pdfBytes, headers, HttpStatus.OK);
	}

	@PostMapping("/savePayment")
	@ResponseBody
	public ResponseEntity<String> savePayment(@RequestBody PaymentAcc paymentAcc) {
		paymentAcc.setFlag(0);
		paymentAccRepo.save(paymentAcc);
		return new ResponseEntity<>("Data Saved........", HttpStatus.OK);
	}

	@GetMapping("/fetchAllPayment")
	@ResponseBody
	public ResponseEntity<List<PaymentAcc>> fetchAllPayment() {
		return new ResponseEntity<>(paymentAccRepo.findAll(), HttpStatus.OK);
	}
}
