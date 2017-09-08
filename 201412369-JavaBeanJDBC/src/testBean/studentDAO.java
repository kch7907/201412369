package testBean;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
public class studentDAO {
 public void insert(studentVO item) throws Exception {
  String number = item.getNumber();
  String name = item.getName();
  Class.forName("com.mysql.jdbc.Driver");
  Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/201412369","201412369","201412369");
  PreparedStatement sql = conn.prepareStatement("insert into student values(?,?)");
  sql.setString(1,number);
  sql.setString(2,name);
  sql.executeUpdate();
 }
 public List<studentVO> select() throws Exception {
		List<studentVO> rsList = new ArrayList<studentVO>();
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/201412369","201412369","201412369");
		PreparedStatement sql = conn.prepareStatement("select * from student");
		ResultSet rs = sql.executeQuery();
		while(rs.next()) {
			studentVO item = new studentVO();
			item.setNumber(rs.getString("number"));
			item.setName(rs.getString("name"));
			rsList.add(item);
			
		}
		return rsList;
	}
}


//DAO == Data Access Object