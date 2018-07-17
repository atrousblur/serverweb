package fw;

public class EmpQuery {

	public static final String INSERT_EMP 
	= "insert into kitriemp values (?,?,?,?,sysdate,?,?,?)";
	
	public static final String SELECT_EMP_LIST
	= "select * from kitriemp";
	
	public static final String DELETE_EMP
	="delete kitriemp where id=?";

	public static final String SELECT_EMP
	="select * from kitriemp where id=?";
	
	public static final String SEARCH_EMP1
	="select * from kitriemp where name like ?";
	
	public static final String SEARCH_EMP2
	="select * from kitriemp where id like ?";
	
	public static final String SEARCH_EMP3
	="select * from kitriemp where addr like ?";
	
	public static final String UPDATE_EMP
	="update kitriemp set addr=?, point=?, grade=? where id=?";
	
	public static final String LOGIN
	="select * from kitriemp where id=? and pass=?";
}
