package news.utils;

import java.sql.Connection;
import java.sql.SQLException;

import javax.sql.DataSource;

import com.mchange.v2.c3p0.ComboPooledDataSource;
import com.sun.xml.internal.bind.v2.util.DataSourceSource;
/*
 * JDBC操作的工具类
 * 使用C3P0
 */
public class JdbcUtils {
	/*e
	 * 释放connection
	 */
	public static void releaseConnection(Connection connection){
		try {
			if (connection!=null) {
				connection.close();
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	public static DataSource dataSource=null;//只需要有一份数据源
	static {
		dataSource=new ComboPooledDataSource("news");
	}
	/*获取链接
	 * 返回数据源的CONNECTION对象
	 */
	public static Connection getConnection() throws SQLException{
		return dataSource.getConnection();
	}
}

