package emp.dao;

import static fw.DBUtil.close;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import emp.dto.EmpDTO;

import static fw.EmpQuery.*;

public class EmpDAOImpl implements EmpDAO {

	@Override
	public int insert(EmpDTO emp, Connection con) throws SQLException {

		int result = 0;

		PreparedStatement ptmt = con.prepareStatement(INSERT_EMP);

		ptmt.setString(1, emp.getId());
		ptmt.setString(2, emp.getPass());
		ptmt.setString(3, emp.getName());
		ptmt.setString(4, emp.getAddr());
		ptmt.setString(5, emp.getGrade());
		ptmt.setInt(6, emp.getPoint());
		ptmt.setString(7, emp.getDetpno());

		result = ptmt.executeUpdate();
		close(ptmt);

		return result;

	}

	@Override
	public ArrayList<EmpDTO> getMemberList(Connection con) throws SQLException {

		//user ��ü ����� ���� �ڷᱸ��
		ArrayList<EmpDTO> empList = new ArrayList<EmpDTO>();
		//�ϳ��� user�� ���� ��ü�� ���� - ���ڵ尡 ��ȸ�Ǹ� ���ڵ� �ϳ��� ���� ������ ���̹Ƿ� while�� �ȿ��� �����ؾ� �Ѵ�.
		EmpDTO emp = null;
		
		//System.out.println("dao��û");

		PreparedStatement ptmt = con.prepareStatement(SELECT_EMP_LIST);
		ResultSet rs = ptmt.executeQuery();

		while (rs.next()) {
			//���ڵ� �ϳ��� ���� dto��ü�� ��ȯ�ϴ� �۾�
			emp = new EmpDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), 
														rs.getDate(5),rs.getString(6), rs.getInt(7), rs.getString(8));
			//��ȯ�� �Ϸ�Ǹ� ArrayList�� �߰�
			empList.add(emp);
		}
		
		//System.out.println("ArrayList�� ����: "+empList.size());
		close(rs);
		close(ptmt);
		return empList;
	}

	@Override
	public int delete(String id, Connection con) throws SQLException {

		int result = 0;
		PreparedStatement ptmt = con.prepareStatement(DELETE_EMP);

		ptmt.setString(1, id);

		result = ptmt.executeUpdate();
		close(ptmt);
		return result;
	}

	@Override
	public EmpDTO read(String id, Connection con) throws SQLException {
		
		EmpDTO emp = new EmpDTO();
		PreparedStatement ptmt = con.prepareStatement(SELECT_EMP);
		
		ptmt.setString(1, id);
		ResultSet rs = ptmt.executeQuery();

/*		while (rs.next()) {
			emp = new EmpDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), 
														rs.getDate(5),rs.getString(6), rs.getInt(7), rs.getString(8));
		}
		//���� �ϳ��ϱ� if���� ok
		*/
		
		if (rs.next()) {
			System.out.println("������ ����");
			emp = new EmpDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), 
														rs.getDate(5),rs.getString(6), rs.getInt(7), rs.getString(8));
		}
		close(rs);
		close(ptmt);
		
		return emp;
	}

	@Override
	public ArrayList<EmpDTO> search(String column, String search, Connection con) throws SQLException {
		System.out.println(column+","+search);
		
		ArrayList<EmpDTO> empList = new ArrayList<EmpDTO>();
		EmpDTO emp = null;
		
		//String sql = "select * from kitriemp where " + column + " like ?";
		//String sql = "select * from kitriemp where " + column + " =? and pass =?";
/*		String sql = "select * from kitriemp where "+column+"= '"+search+"' and pass='"+pass+"'"; //�α��� sql��
		Statement ptmt = con.createStatement();*/
		
		String sql ="";
		if(column.equals("name")){
			sql = SEARCH_EMP1;
		}else if(column.equals("id")){
			sql= SEARCH_EMP2;
		}else{
			sql= SEARCH_EMP3;
		}
		
		PreparedStatement ptmt = con.prepareStatement(sql);
		ptmt.setString(1, "%"+search+"%");
		
		ResultSet rs = ptmt.executeQuery();

		while (rs.next()) {
			emp = new EmpDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), 
														rs.getDate(5),rs.getString(6), rs.getInt(7), rs.getString(8));
			empList.add(emp);
		}
		
		close(rs);
		close(ptmt);
		return empList;
	}

	@Override
	public int update(EmpDTO emp, Connection con) throws SQLException {
		
		int result = 0;
		PreparedStatement ptmt = con.prepareStatement(UPDATE_EMP);

		ptmt.setString(1, emp.getAddr());
		ptmt.setInt(2, emp.getPoint());
		ptmt.setString(3, emp.getGrade());
		ptmt.setString(4, emp.getId());

		result = ptmt.executeUpdate();
		close(ptmt);

		return result;
	}

	@Override
	public EmpDTO login(String id, String pass, Connection con) throws SQLException {
		
		EmpDTO emp = null;
		PreparedStatement ptmt = con.prepareStatement(LOGIN);
		
		ptmt.setString(1, id);
		ptmt.setString(2, pass);
		ResultSet rs = ptmt.executeQuery();

		if (rs.next()) {
			emp = new EmpDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), 
														rs.getDate(5),rs.getString(6), rs.getInt(7), rs.getString(8));
		}
		close(rs);
		close(ptmt);
		
		return emp;
	
	}
				
		
}
