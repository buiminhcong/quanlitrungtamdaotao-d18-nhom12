package dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class DAO {

	public static Connection con;

	public DAO() {
		if (con == null) {
		//		String url = "jdbc:mysql://remotemysql.com:3306/VNafdfDqgY";
			String url = "jdbc:mysql://localhost:3308/quan_li_dao_tao";
			String dbClass = "com.mysql.cj.jdbc.Driver";
			try {
				Class.forName(dbClass);
				//con = DriverManager.getConnection(url, "VNafdfDqgY", "2xSyLx1cZL");
			con = DriverManager.getConnection(url, "root", "26092111");
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
	
	public static void main(String[] args) {
		DAO d = new DAO();
		if(d.con != null) {
			System.out.println("Ok");
		} else {
			System.out.println("not ok");
		}
	}
}
