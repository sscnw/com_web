package news.dao;
import java.lang.reflect.ParameterizedType;
import java.sql.Connection;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import com.sun.glass.ui.CommonDialogs.Type;
import com.sun.org.apache.bcel.internal.generic.NEW;

import news.utils.JdbcUtils;

	public class DAO<T>{
		private QueryRunner queryRunner= new QueryRunner(); 
		private Class<T> clazz;
		
	
		public DAO(){
		//ȷ��clazz��ʲô 
		//ͨ������
			java.lang.reflect.Type superClass=getClass().getGenericSuperclass();
			if(superClass instanceof ParameterizedType ){
				ParameterizedType parameterizedType=(ParameterizedType) superClass;
				java.lang.reflect.Type[] typeArgs=parameterizedType.getActualTypeArguments();
				if(typeArgs[0] !=null&&typeArgs.length>0){
					if (typeArgs[0] instanceof Class) {
						clazz=(Class<T>) typeArgs[0];
					}
				}
			}
		}

		@SuppressWarnings("unchecked")
		public <E> E getForValue(String sql,Object ...args){
			Connection connection=null;
			try {
				connection =JdbcUtils.getConnection();
				//ScalarHandler ����ResultSet��һ����¼������ĳһ�е����ݴ��Object
				return (E) queryRunner.query(connection, sql,new ScalarHandler(),args);
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				JdbcUtils.releaseConnection(connection);
			}
			return null;
		} 

		public List<T> getForList(String sql,Object ...args){
			
			Connection connection=null;
			try {
				connection =JdbcUtils.getConnection();
				System.out.println("Connection       "+connection);
				//BeanListHandler ����ResultSet�����е�����ת����List��List�д�ŵ��������
				return queryRunner.query(connection,sql,new BeanListHandler<>(clazz),args);
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				JdbcUtils.releaseConnection(connection);
			}
			return null;
		}

		public T get(String sql,Object ...args){
			Connection connection =null;
			try {
				connection=JdbcUtils.getConnection();
				//BeanHandler ����ResultSet�е�һ�е�����ת���������
				return queryRunner.query(connection,sql,new BeanHandler<>(clazz),args);
				
				
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				JdbcUtils.releaseConnection(connection);
			}
			return null;
		}

		public void update(String sql,Object ...args){
			Connection connection=null;
			try {
				connection=JdbcUtils.getConnection();
				queryRunner.update(connection,sql,args);
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				JdbcUtils.releaseConnection(connection);
			}
		}
	}
