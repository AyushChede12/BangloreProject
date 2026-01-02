package com.society.application.service;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.List;

public interface PDFGenService {

	public ByteArrayOutputStream generateCustomPdf(List<Object> obj) throws IOException;

	public ByteArrayOutputStream generateCustomPdfCashier(List<Object> obj) throws IOException;
}
