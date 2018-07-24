package openapi;

import java.io.BufferedInputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.URL;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

public class OpenAPIPharmacyTest03 {
	public static void main(String[] args) throws IOException {

		try {
			String pharmurl = "http://apis.data.go.kr/B551182/pharmacyInfoService/getParmacyBasisList";
			String key = "awXAezeT7c3zw%2BPOuXQjQSfoYr%2F9a51vEId%2BOw03z7fw6t9%2FI42xr3raGyNCXcW1LR6Msdmtb7zZFS5jMqydWQ%3D%3D";
			String realUrl = pharmurl + "?ServiceKey=" + key;
			URL url = new URL(realUrl);

			XmlPullParserFactory factory = XmlPullParserFactory.newInstance();
			XmlPullParser pullparser = factory.newPullParser();

			BufferedInputStream bis = new BufferedInputStream(url.openStream());
			pullparser.setInput(bis, "utf-8");

			int eventType = pullparser.getEventType();
			String tagName = "";
			String addr = "";
			String clCd = "";
			String clCdNm = "";
			String estbDd = "";
			String postNo = "";
			String sgguCd = "";
			String sgguCdNm = "";
			String sidoCd = "";
			String sidoCdNm = "";
			String telno = "";
			String yadmNm = "";
			String ykiho = "";
			
			while (eventType != XmlPullParser.END_DOCUMENT) {
				if (eventType == XmlPullParser.START_TAG) {
					tagName = pullparser.getName(); // 태그명을 셋팅
				} else if (eventType == XmlPullParser.TEXT) {
					if (tagName.equals("addr") & !pullparser.getText().contains("\n")) {
						addr = pullparser.getText();
					} else if (tagName.equals("clCd") & !pullparser.getText().contains("\n")) {
						clCd = pullparser.getText();
					} else if (tagName.equals("clCdNm") & !pullparser.getText().contains("\n")) {
						clCdNm = pullparser.getText();
					} else if (tagName.equals("estbDd") & !pullparser.getText().contains("\n")) {
						estbDd = pullparser.getText();
					} else if (tagName.equals("postNo") & !pullparser.getText().contains("\n")) {
						postNo = pullparser.getText();
					} else if (tagName.equals("sgguCd") & !pullparser.getText().contains("\n")) {
						sgguCd = pullparser.getText();
					} else if (tagName.equals("sgguCdNm") & !pullparser.getText().contains("\n")) {
						sgguCdNm = pullparser.getText();
					} else if (tagName.equals("sidoCd") & !pullparser.getText().contains("\n")) {
						sidoCd = pullparser.getText();
					} else if (tagName.equals("sidoCdNm") & !pullparser.getText().contains("\n")) {
						sidoCdNm = pullparser.getText();
					} else if (tagName.equals("telno") & !pullparser.getText().contains("\n")) {
						telno = pullparser.getText();
					} else if (tagName.equals("yadmNm") & !pullparser.getText().contains("\n")) {
						yadmNm = pullparser.getText();
					} else if (tagName.equals("ykiho") & !pullparser.getText().contains("\n")) {
						ykiho = pullparser.getText();
					} 
				} else if (eventType == XmlPullParser.END_TAG) {
					tagName = pullparser.getName(); // 태그명을 다시 셋팅
					if (tagName.equals("item")) {
						System.out.println("addr: "+addr);
						System.out.println("clCd: "+clCd);
						System.out.println("clCdNm: "+clCdNm);
						System.out.println("estbDd: "+estbDd);
						System.out.println("postNo: "+postNo);
						System.out.println("sgguCd: "+sgguCd);
						System.out.println("sgguCdNm: "+sgguCdNm);
						System.out.println("sidoCd: "+sidoCd);
						System.out.println("sidoCdNm: "+sidoCdNm);
						System.out.println("telno: "+telno);
						System.out.println("yadmNm: "+yadmNm);
						System.out.println("ykiho: "+ykiho);
						System.out.println();
					}
				}
				// 다음 이벤트로 넘기기
				eventType = pullparser.next();

			}
		} catch (

		XmlPullParserException e) {
			e.printStackTrace();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

	}

}
