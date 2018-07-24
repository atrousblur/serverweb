package openapi;

import java.io.IOException;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

public class DomParserTest02 {
	public static void main(String[] args) {

		DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
		try {
			DocumentBuilder domparser = factory.newDocumentBuilder();
			Document document = domparser.parse("src/openapi/dept.xml");
			// root엘리먼트 구하기
			Element root = document.getDocumentElement();

			// 특정 엘리먼트명을 지정해서 노드를 추출
			NodeList deptlist = root.getElementsByTagName("dept");
			System.out.println("deptnode의 갯수: " + deptlist.getLength());

			for (int i = 0; i < deptlist.getLength(); i++) {
				// NodeList에서 하나의 Node를 추출
				Node deptnode = deptlist.item(i);
				System.out.println("노드명: " + deptnode.getNodeName());

				// deptnode의 하위노드를 추출
				NodeList deptChildeNodeList = deptnode.getChildNodes();
				/*
				 * System.out.println("dept노드의 하위 노드 갯수: "
				 * +deptChildeNodeList.getLength());
				 */

				for (int j = 0; j < deptChildeNodeList.getLength(); j++) {
					Node deptChildeNode = deptChildeNodeList.item(j);
					System.out.println("dept 하위 노드명: " + deptChildeNode.getNodeName());
					System.out.println("dept 하위 텍스트 노드: " + deptChildeNode.getTextContent());
				}
			}

		} catch (ParserConfigurationException e) {
			e.printStackTrace();
		} catch (SAXException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
