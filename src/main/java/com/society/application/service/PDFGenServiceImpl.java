package com.society.application.service;

import org.apache.pdfbox.pdmodel.PDDocument;
import org.apache.pdfbox.pdmodel.PDPage;
import org.apache.pdfbox.pdmodel.PDPageContentStream;
import org.apache.pdfbox.pdmodel.font.PDType1Font;
import org.apache.pdfbox.pdmodel.graphics.image.PDImageXObject;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.stereotype.Service;

import java.awt.*;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.List;

@Service
public class PDFGenServiceImpl implements PDFGenService {

	@Autowired
	private EntryService entryService;

	@Override
	public ByteArrayOutputStream generateCustomPdf(List<Object> obj) throws IOException {
		ByteArrayOutputStream outputStream = new ByteArrayOutputStream();

		PDDocument document = new PDDocument();

		JSONArray jsonArray = new JSONArray(obj);
		String[] columnNames = { "Account", "Account Holder", "Amount" };

		String[] columnNames1 = { "glName", "gLNo", "amount" };

		for (int i = 0; i < jsonArray.length(); i++) {
			JSONObject jsonObject = jsonArray.getJSONObject(i);
			PDPage page = new PDPage();
			document.addPage(page);

			// Define the table properties
			int numRows = jsonArray.length();
			int numCols = columnNames.length;
			float margin = 50; // Margin from the left side
			float yStart = 580; // Y position for the start of the table
			float tableWidth = page.getMediaBox().getWidth() - 2 * margin;
			float yPosition = yStart;
			float tableHeight = 15f * numRows; // Adjust the row height as needed
			float rowHeight = 15f;
			float tableYBottom = yStart - tableHeight;

			try (PDPageContentStream contentStream = new PDPageContentStream(document, page)) {
				float pageWidth = page.getMediaBox().getWidth();

				// Set the font and font size for heading
				contentStream.setFont(PDType1Font.HELVETICA_BOLD, 16);
				String headingText = "Nirbhaya Nidhi LTD";
				float textWidth = PDType1Font.HELVETICA_BOLD.getStringWidth(headingText) / 1000 * 16;
				float centerX = (pageWidth - textWidth) / 2;
				contentStream.beginText();
				contentStream.newLineAtOffset(centerX, 700); // Centered horizontally
				contentStream.showText(headingText);
				contentStream.endText();

				// Add address and additional information
				String addressText = "No: 185 Alkya Residency 4th Phase, Yelahanka New Town, Bangalore - 560064";
				String additionalInfo = "Date: " + jsonObject.getString("issueDate") + "            "
						+ jsonObject.getString("paymentType") + "                Voucher No :"
						+ jsonObject.getString("type");
				float addressWidth = PDType1Font.HELVETICA_BOLD.getStringWidth(addressText) / 1000 * 12;
				float addressCenterX = (pageWidth - addressWidth) / 2;
				float infoWidth = PDType1Font.HELVETICA_BOLD.getStringWidth(additionalInfo) / 1000 * 12;
				float infoCenterX = (pageWidth - infoWidth) / 2;

				contentStream.setFont(PDType1Font.HELVETICA_BOLD, 12);
				contentStream.beginText();
				contentStream.newLineAtOffset(addressCenterX, 660); // Adjust the Y position as needed
				contentStream.showText(addressText);
				contentStream.endText();

				contentStream.setFont(PDType1Font.HELVETICA, 12);
				contentStream.beginText();
				contentStream.newLineAtOffset(infoCenterX, 630); // Adjust the Y position as needed
				contentStream.showText(additionalInfo);
				contentStream.endText();

				// Add narration
				contentStream.setFont(PDType1Font.HELVETICA_BOLD, 12);
				contentStream.beginText();
				contentStream.newLineAtOffset(50, 600); // Adjust the Y position as needed
				// "Amount in words:" in bold
				contentStream.setFont(PDType1Font.HELVETICA_BOLD, 12);
				contentStream.showText("Narration: ");
				// Convert the Amount to words in regular
				contentStream.setFont(PDType1Font.HELVETICA, 12);
				contentStream.showText((jsonObject.getString("deatils")));
				contentStream.endText();

				// Add a border around the narration with a dotted line
//				contentStream.setLineWidth(1);
//				contentStream.setLineDashPattern(new float[]{3, 3}, 0);
//				contentStream.moveTo(50, 600);
//				contentStream.lineTo(50, 620);
//				contentStream.lineTo(350, 620);
//				contentStream.lineTo(350, 600);
//				contentStream.closePath();
//				contentStream.stroke();
//

				// Draw the table headers
				float nextX = margin;
				float tableYPosition = yStart;

				// Set the font and font size for table headers
				contentStream.setFont(PDType1Font.HELVETICA_BOLD, 12);

				for (String columnName : columnNames) {
					contentStream.beginText();
					contentStream.newLineAtOffset(nextX, tableYPosition);
					contentStream.showText(columnName);
					contentStream.endText();
					nextX += (tableWidth / numCols);
				}

				// Draw table rows and populate with static data (only one row)
				tableYPosition -= rowHeight;
				nextX = margin;

				for (int j = 0; j < numCols; j++) {
					contentStream.setFont(PDType1Font.HELVETICA, 12);
					contentStream.setLineWidth(0.5f); // Set line width for cell borders
					contentStream.addRect(nextX, tableYPosition, tableWidth / numCols, rowHeight);
					contentStream.stroke();

					contentStream.beginText();
					contentStream.newLineAtOffset(nextX + 2, tableYPosition + 2);
					contentStream.showText(jsonObject.getString(columnNames1[j])); // Replace with your static data
					contentStream.endText();

					nextX += (tableWidth / numCols);
				}

				// Add Total
				contentStream.setFont(PDType1Font.HELVETICA_BOLD, 12);
				contentStream.beginText();
				contentStream.newLineAtOffset(50, 540); // Adjust the Y position as needed
				// "Amount in words:" in bold
				contentStream.setFont(PDType1Font.HELVETICA_BOLD, 12);
				contentStream.showText(
						"Total : " + jsonObject.getString("amount") + "                            Amount in words : "
								+ entryService.convertAmountToWords(jsonObject.getString("amount")) + " Rupees Only");
				// Convert the Amount to words in regular
				contentStream.setFont(PDType1Font.HELVETICA, 12);
				// contentStream.showText((jsonObject.getString("amount")));
				contentStream.endText();

				// Add Amount in words
//				contentStream.setFont(PDType1Font.HELVETICA_BOLD, 12);
//				contentStream.beginText();
//				contentStream.newLineAtOffset(50, 500); // Adjust the Y position as needed
//				// "Amount in words:" in bold
//				contentStream.setFont(PDType1Font.HELVETICA_BOLD, 12);
//				contentStream.showText("Amount in words: ");
//				// Convert the Amount to words in regular
//				contentStream.setFont(PDType1Font.HELVETICA, 12);
//				contentStream.showText(entryService.convertAmountToWords(jsonObject.getString("amount"))+" Rupees Only");
//				contentStream.endText();

				// Add Balance
				contentStream.setFont(PDType1Font.HELVETICA_BOLD, 12);
				contentStream.beginText();
				contentStream.newLineAtOffset(50, 480); // Adjust the Y position as needed
				// "Amount in words:" in bold
				contentStream.setFont(PDType1Font.HELVETICA_BOLD, 12);
				contentStream.showText("Balance: ");
				// Convert the Amount to words in regular
				contentStream.setFont(PDType1Font.HELVETICA, 12);
				// contentStream.showText(jsonObject.getString("balance"));
				contentStream.endText();

				// Add Cheque No
				contentStream.setFont(PDType1Font.HELVETICA_BOLD, 12);
				contentStream.beginText();
				contentStream.newLineAtOffset(50, 460); // Adjust the Y position as needed
				// "Amount in words:" in bold
				contentStream.setFont(PDType1Font.HELVETICA_BOLD, 12);
				contentStream.showText("Cheque No: " + jsonObject.getString("intrumentNo")
						+ "                       Issue Date : " + jsonObject.getString("issueDate"));
				// Convert the Amount to words in regular
				contentStream.setFont(PDType1Font.HELVETICA, 12);
				// contentStream.showText(jsonObject.getString("chequeNo"));
				contentStream.endText();

				// Issue Date
//				contentStream.setFont(PDType1Font.HELVETICA_BOLD, 12);
//				contentStream.beginText();
//				contentStream.newLineAtOffset(50, 440); // Adjust the Y position as needed
//				// "Amount in words:" in bold
//				contentStream.setFont(PDType1Font.HELVETICA_BOLD, 12);
//				contentStream.showText("Issue Date: ");
//				// Convert the Amount to words in regular
//				contentStream.setFont(PDType1Font.HELVETICA, 12);
//				contentStream.showText(jsonObject.getString("issueDate"));
//				contentStream.endText();

				// Drawn On Bank
				contentStream.setFont(PDType1Font.HELVETICA_BOLD, 12);
				contentStream.beginText();
				contentStream.newLineAtOffset(50, 420); // Adjust the Y position as needed
				// "Amount in words:" in bold
				contentStream.setFont(PDType1Font.HELVETICA_BOLD, 12);
				contentStream.showText("Drawn On Bank: " + jsonObject.getString("drawnOnBank")
						+ "                       Branch : " + jsonObject.getString("branch"));
				// Convert the Amount to words in regular
				contentStream.setFont(PDType1Font.HELVETICA, 12);
				//
				// contentStream.showText(jsonObject.getString("DrawnonBank"));
				contentStream.endText();

				// Branch
//				contentStream.setFont(PDType1Font.HELVETICA_BOLD, 12);
//				contentStream.beginText();
//				contentStream.newLineAtOffset(50, 400); // Adjust the Y position as needed
//				// "Amount in words:" in bold
//				contentStream.setFont(PDType1Font.HELVETICA_BOLD, 12);
//				contentStream.showText("Branch : ");
//				// Convert the Amount to words in regular
//				contentStream.setFont(PDType1Font.HELVETICA, 12);
//				contentStream.showText(jsonObject.getString("Branch"));
//				contentStream.endText();

				// Officer
				contentStream.setFont(PDType1Font.HELVETICA_BOLD, 12);
				contentStream.beginText();
				contentStream.newLineAtOffset(50, 380); // Adjust the Y position as needed
				// "Amount in words:" in bold
				contentStream.setFont(PDType1Font.HELVETICA_BOLD, 12);
				contentStream.showText("Officer : ");
				// Convert the Amount to words in regular
				contentStream.setFont(PDType1Font.HELVETICA, 12);
				// contentStream.showText(jsonObject.getString("officer"));
				contentStream.endText();

				// Company Name
				contentStream.setFont(PDType1Font.HELVETICA_BOLD, 12);
				contentStream.beginText();
				contentStream.newLineAtOffset(50, 340); // Adjust the Y position as needed
				// "Amount in words:" in bold
				contentStream.setFont(PDType1Font.HELVETICA_BOLD, 12);
				contentStream.showText("InfoSai Software ");

				contentStream.endText();

				// Load the image and add it to the upper left corner
				PDImageXObject image = PDImageXObject.createFromFile(
						"C:\\Users\\Lenovo\\Desktop\\Internship\\Infosai Society Banglore\\SocietyBangalore\\src\\main\\resources\\images\\socirtyLogo.png",
						document);
				float imageWidth = 50; // Adjust the image width as needed
				float imageHeight = 50; // Adjust the image height as needed
				float xImage = 50; // X position of the image
				float yImage = page.getMediaBox().getHeight() - imageHeight - 50; // Y position of the image
				contentStream.drawImage(image, xImage, yImage, imageWidth, imageHeight);
			}
		}

		document.save(outputStream);
		document.close();
		return outputStream;
	}

	@Override
	public ByteArrayOutputStream generateCustomPdfCashier(List<Object> obj) throws IOException {

		JSONArray jsonArray = new JSONArray(obj);

		JSONObject jsonObject = jsonArray.getJSONObject(0);

		ByteArrayOutputStream outputStream = new ByteArrayOutputStream();

		PDDocument document = new PDDocument();
		PDPage page = new PDPage();
		document.addPage(page);

		try (PDPageContentStream contentStream = new PDPageContentStream(document, page)) {

			// Load the image and add it to the upper left corner
			PDImageXObject image = PDImageXObject.createFromFile(
					"C:\\Users\\Lenovo\\Desktop\\Internship\\Infosai Society Banglore\\SocietyBangalore\\src\\main\\resources\\images\\socirtyLogo.png",
					document);
			float imageWidth = 50; // Adjust the image width as needed
			float imageHeight = 50; // Adjust the image height as needed
			float xImage = 50; // X position of the image
			float yImage = page.getMediaBox().getHeight() - imageHeight - 50; // Y position of the image
			contentStream.drawImage(image, xImage, yImage, imageWidth, imageHeight);

			// Add heading text
			String headingText = "Nirbhaya Nidhi LTD";
			contentStream.setFont(PDType1Font.HELVETICA_BOLD, 12);
			contentStream.beginText();
			contentStream.newLineAtOffset(250, 750);
			contentStream.showText(headingText);
			contentStream.endText();

			// Add address text
			String addressText = "No: 185 Alkya Residency 4th Phase, Yelahanka New Town, Bangalore - 560064";
			contentStream.setFont(PDType1Font.HELVETICA, 10);
			contentStream.beginText();
			contentStream.newLineAtOffset(150, 730);
			contentStream.showText(addressText);
			contentStream.endText();

			String name = null;

			if (checkFirstTwoCharacters(jsonObject.getString("type"), "Cr")) {
				name = "RECEIPT";
			} else if (checkFirstTwoCharacters(jsonObject.getString("type"), "Dr")) {
				name = "PAYMENT";
			}

			// Add the date
			String dateText = "Date: " + jsonObject.getString("issueDate") + "             " + name
					+ "                                Voucher NO : " + jsonObject.getString("type");
			contentStream.setFont(PDType1Font.HELVETICA_BOLD, 10);
			contentStream.beginText();
			contentStream.newLineAtOffset(150, 700);
			contentStream.showText(dateText);
			contentStream.endText();

			// Add the Other Text
			String otherText = "                             " + jsonObject.getString("accountHolder")
					+ "                                " + jsonObject.getString("amount");
			contentStream.setFont(PDType1Font.HELVETICA_BOLD, 10);
			contentStream.beginText();
			contentStream.newLineAtOffset(150, 670);
			contentStream.showText(otherText);
			contentStream.endText();

			// Draw table headers
			drawTableHeader(contentStream, 150, 640, "Account", "Amount");

			// Draw table rows (example)
			drawTableRow(contentStream, 150, 610,
					jsonObject.getString("accountHolder") + "  (" + jsonObject.getString("glName") + ")",
					jsonObject.getString("amount"));
			// drawTableRow(contentStream, 150, 580, "Account 2", "200");

			// Calculate and draw total
			drawTotal(contentStream, 150, 590, "Total", jsonObject.getString("amount"));

			// Add the Other Text
			String amountInWords = "Amount in Words : "
					+ entryService.convertAmountToWords(jsonObject.getString("amount"));
			contentStream.setFont(PDType1Font.HELVETICA_BOLD, 10);
			contentStream.beginText();
			contentStream.newLineAtOffset(150, 530);
			contentStream.showText(amountInWords);
			contentStream.endText();

			// Add the Other Text
			String text123 = "Cheque NO  :                             Issue Date :"
					+ jsonObject.getString("issueDate");
			contentStream.setFont(PDType1Font.HELVETICA_BOLD, 10);
			contentStream.beginText();
			contentStream.newLineAtOffset(150, 510);
			contentStream.showText(text123);
			contentStream.endText();

			// Add the Other Text
			String denomination = "Particulars in Denomination  : ";
			contentStream.setFont(PDType1Font.HELVETICA_BOLD, 13);
			contentStream.beginText();
			contentStream.newLineAtOffset(180, 480);
			contentStream.showText(denomination);
			contentStream.endText();

			String jsonData = jsonObject.getString("denominationCash");

			JSONArray jsonArray1 = new JSONArray(jsonData);
			JSONObject jsonObject1 = jsonArray1.getJSONObject(0);

			String cashierType = jsonObject1.getString("cashierType");

			String denominationType = "Denomination Type   : " + cashierType;
			contentStream.setFont(PDType1Font.HELVETICA_BOLD, 10);
			contentStream.beginText();
			contentStream.newLineAtOffset(180, 460);
			contentStream.showText(denominationType);
			contentStream.endText();

			drawTableHeaderDenomination(contentStream, 150, 430, "Amount", "Denomination Num", "Value");
//            drawTableRowDenomination(contentStream, 150, 410, 2000, 1,2000);
//            drawTableRowDenomination(contentStream, 150, 400, 1000, 1,1000);

			// Extract the "denomination" array
			JSONArray denominations = jsonObject1.getJSONArray("denomination");

			// Starting Y-coordinate
			int yCoordinate = 410;

			// Iterate over the "denomination" array and print each denomination
			for (int i = 0; i < denominations.length(); i++) {
				JSONObject denominationCash = denominations.getJSONObject(i);
				int amount = denominationCash.getInt("amount");
				int denominationNum = denominationCash.getInt("denominationNum");
				int value = denominationCash.getInt("value");

				// Print or use the denomination data
				drawTableRowDenomination(contentStream, 150, yCoordinate, amount, denominationNum, value);

				// Decrement Y-coordinate by 10
				yCoordinate -= 10;
			}

		} catch (IOException e) {
			throw new RuntimeException(e);
		}

		document.save(outputStream);
		document.close();
		return outputStream;
	}

	private void drawTableRowDenomination(PDPageContentStream contentStream, float x, float y, Integer number,
			Integer number1, Integer number2) throws IOException {

		contentStream.setFont(PDType1Font.HELVETICA_BOLD, 10);
		contentStream.beginText();
		contentStream.newLineAtOffset(x, y);
		contentStream.showText(number.toString());

		// Adjust the distance between elements
		contentStream.newLineAtOffset(70, 0); // Adjust the distance between `amount` and `denominationNum`
		contentStream.showText(number1.toString());

		// Adjust the distance between elements
		contentStream.newLineAtOffset(150, 0); // Adjust the distance between `denominationNum` and `value`
		contentStream.showText(number2.toString());
		contentStream.endText();
	}

	private void drawTableHeaderDenomination(PDPageContentStream contentStream, float x, float y, String amount,
			String denominationNum, String value) throws IOException {

		contentStream.setFont(PDType1Font.HELVETICA_BOLD, 10);
		contentStream.beginText();
		contentStream.newLineAtOffset(x, y);
		contentStream.showText(amount);

		// Adjust the distance between elements
		contentStream.newLineAtOffset(70, 0); // Adjust the distance between `amount` and `denominationNum`
		contentStream.showText(denominationNum);

		// Adjust the distance between elements
		contentStream.newLineAtOffset(150, 0); // Adjust the distance between `denominationNum` and `value`
		contentStream.showText(value);
		contentStream.endText();

	}

	private void drawTableHeader(PDPageContentStream contentStream, float x, float y, String header1, String header2)
			throws IOException {

		contentStream.setFont(PDType1Font.HELVETICA_BOLD, 10);
		contentStream.beginText();
		contentStream.newLineAtOffset(x, y);
		contentStream.showText(header1);
		contentStream.newLineAtOffset(200, 0); // Adjust the distance between headers
		contentStream.showText(header2);
		contentStream.endText();
	}

	private void drawTableRow(PDPageContentStream contentStream, float x, float y, String account, String amount)
			throws IOException {

		contentStream.setFont(PDType1Font.HELVETICA, 10);
		contentStream.beginText();
		contentStream.newLineAtOffset(x, y);
		contentStream.showText(account);
		contentStream.newLineAtOffset(200, 0); // Adjust the distance between columns
		contentStream.showText(amount);
		contentStream.endText();
	}

	private void drawTotal(PDPageContentStream contentStream, float x, float y, String label, String total)
			throws IOException {

		contentStream.setFont(PDType1Font.HELVETICA_BOLD, 12);
		contentStream.beginText();
		contentStream.newLineAtOffset(x, y);
		contentStream.showText(label + ": " + total);
		contentStream.endText();
	}

	private static boolean checkFirstTwoCharacters(String string, String substring) {
		if (string.length() < 2 || substring.length() < 2) {
			return false; // Return false if either string or substring is less than 2 characters
		}
		return string.substring(0, 2).equals(substring);
	}

}
