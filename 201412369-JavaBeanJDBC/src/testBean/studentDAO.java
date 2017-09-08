package testBean;
import java.sql.*;
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
 
}

//DAO == Data Access Object