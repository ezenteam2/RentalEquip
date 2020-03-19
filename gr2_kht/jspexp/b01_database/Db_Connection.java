package jspexp.b01_database;

import java.sql.*;
import java.util.ArrayList;
import jspexp.z01_vo.P4MEMBER;

public class A0_P4MEMBER {
	
	private Connection con;
	private Statement stmt;
	private ResultSet rs;
	
public void setCon() throws SQLException{
	

	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}

	String info = "jdbc:oracle:thin:@192.168.4.90:1521:xe";
	con = DriverManager.getConnection(info, "scott", "tiger");


}


public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
