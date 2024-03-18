package control.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ConnectDB {

	private Connection conn=null;
	private String dbUrl="jdbc:mysql://localhost:3306/sharephotos";
	private String dbClass="com.mysql.jdbc.Driver";
	private String user="root";
	private String pass="123456";
	
	public Connection getConnect() throws ClassNotFoundException {
		// TODO Auto-generated constructor stub
		try {
			Class.forName(dbClass);
			conn=DriverManager.getConnection(dbUrl, user, pass);
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return conn;
	}

}
