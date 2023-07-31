
import com.itextpdf.kernel.pdf.*;
import com.itextpdf.layout.Document;
import com.itextpdf.layout.element.Paragraph;
import com.itextpdf.layout.element.Text;
import com.itextpdf.io.font.FontConstants;
import com.itextpdf.kernel.font.PdfFont;
import com.itextpdf.kernel.font.PdfFontFactory;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class PaymentReceiptDownload {
	public static void main(String[] args) {
		try {
			// Payment details
			String receiptNumber = "20230729001"; // Receipt number
			String customerName = "John Doe"; // Customer name
			double amount = 100.0; // Payment amount
			Date paymentDate = new Date(); // Payment date (use your preferred date)

			// Create a new PDF file
			String outputPath = "payment_receipt.pdf";
			PdfWriter writer = new PdfWriter(new File(outputPath));
			PdfDocument pdf = new PdfDocument(writer);
			Document document = new Document(pdf);

			// Set up fonts
			PdfFont boldFont = PdfFontFactory.createFont(FontConstants.HELVETICA_BOLD);
			PdfFont normalFont = PdfFontFactory.createFont(FontConstants.HELVETICA);

			// Add content to the PDF
			document.add(new Paragraph("Payment Receipt").setFont(boldFont).setFontSize(18));
			document.add(new Paragraph("-----------------------------------------"));

			// Receipt number and date
			Paragraph receiptInfo = new Paragraph().add(new Text("Receipt Number: ").setFont(boldFont))
					.add(new Text(receiptNumber).setFont(normalFont));
			document.add(receiptInfo);

			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			Paragraph dateInfo = new Paragraph().add(new Text("Date: ").setFont(boldFont))
					.add(new Text(dateFormat.format(paymentDate)).setFont(normalFont));
			document.add(dateInfo);

			document.add(new Paragraph("-----------------------------------------"));

			// Customer details and payment amount
			Paragraph customerDetails = new Paragraph().add(new Text("Customer Name: ").setFont(boldFont))
					.add(new Text(customerName).setFont(normalFont));
			document.add(customerDetails);

			Paragraph amountDetails = new Paragraph().add(new Text("Payment Amount: $").setFont(boldFont))
					.add(new Text(String.format("%.2f", amount)).setFont(normalFont));
			document.add(amountDetails);

			// Close the document
			document.close();

			System.out.println("Payment receipt created successfully!");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
