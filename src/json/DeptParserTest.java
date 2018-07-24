package json;

import java.io.FileReader;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

public class DeptParserTest {
	public static void main(String[] args) throws Exception {
		JSONParser parser = new JSONParser();
		JSONObject root = (JSONObject) parser.parse(new FileReader("src/json/dept.json"));
		


		JSONArray deptlist = (JSONArray) root.get("dept");

		for (int i = 0; i < deptlist.size(); i++) {
			JSONObject dept1 = (JSONObject) deptlist.get(i);

			System.out.println("code: " + dept1.get("code"));
			System.out.println("name: " + dept1.get("name"));
			System.out.println("loc: " + dept1.get("loc"));


		}
	}
}
