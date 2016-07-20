package com.shixun.demo.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


/**
 * 用来封装数据库的操作,简化数据库操作的代码
 * 
 * @author lenovo
 *
 */
public class BaseDao1 {

	private static String driver = "com.mysql.jdbc.Driver";
	private static String url = "jdbc:mysql://localhost/demo";
	private static String user = "root";
	private static String password = "43958487";

	/**
	 * 获取Connection连接对象
	 * 
	 * @return 成功返回一个对象，失败返回null
	 */
	public static Connection getConnection() {
		try {
			Class.forName(driver);
			return DriverManager.getConnection(url, user, password);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	/**
	 * 关闭数据库连接，并释放资源
	 * 
	 * @param rs
	 *            需要关闭的ResultSet对象，如果不存在值为null
	 * @param stmt
	 *            需要关闭的Statement对象，如果不存在值为null
	 * @param conn
	 *            需要关闭的Connection对象，如果不存在值为null
	 */
	public static void closeAll(ResultSet rs, Statement stmt, Connection conn) {
		try {
			if (rs != null) {
				rs.close();
			}
			if (stmt != null) {
				stmt.close();
			}
			if (conn != null) {
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	/**
	 * 执行SQL语句的增加、删除、修改操作
	 * 
	 * @param sql
	 *            需要执行的SQL语句
	 * @param params
	 *            SQL语句预编译需要的参数,多个参数使用逗号隔开
	 * @return 返回受影响的行数，如果出现异常返回-1
	 */
	public static int executeUpdate(String sql, Object... params) {
		int rows;
		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = BaseDao1.getConnection();
			pstmt = conn.prepareStatement(sql);
			if (params != null) {
				for (int i = 0; i < params.length; i++) {
					pstmt.setObject(i + 1, params[i]);
				}
			}
			rows = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			rows = -1;
		} finally {
			BaseDao1.closeAll(null, pstmt, conn);
		}

		return rows;

	}
}
