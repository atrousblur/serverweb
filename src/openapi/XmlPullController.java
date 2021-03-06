package openapi;

import java.util.ArrayList;

public class XmlPullController {

	public static void main(String[] args) {
		// 1. 비즈니스 메소드 호출
		DeptLogic deptlogic = new DeptLogic();
		ArrayList<XMLDeptDTO> deptlist = deptlogic.getDeptListPull();

		for (int i = 0; i < deptlist.size(); i++) {
			XMLDeptDTO dept = deptlist.get(i);
			System.out.print(dept.getCode() + "\t");
			System.out.print(dept.getName() + "\t");
			System.out.print(dept.getLoc() + "\t");
			System.out.println(dept.getTel());

		}
	}
}
