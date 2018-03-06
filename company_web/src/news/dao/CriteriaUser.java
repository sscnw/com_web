package news.dao;

import com.sun.accessibility.internal.resources.accessibility;

public class CriteriaUser {
	public CriteriaUser(){
		
	}
	private String user_name;
	private String user_password;
	private String user_sex;
	private String user_address;
	
	public String getUser_address() {
		if(user_address==null){
			user_address="%%";
		}
		else {
			user_address="%"+user_address+"%";
		}
		return user_address;
	}
	public void setUser_address(String user_address) {
		this.user_address = user_address;
	}
	public CriteriaUser(String user_name, String user_password, String user_sex, String user_address) {
		super();
		this.user_name = user_name;
		this.user_password = user_password;
		this.user_sex = user_sex;
		this.user_address = user_address;
		
	}
	
	
	public String getUser_password() {
		if(user_password==null){
			user_password="%%";
		}
		else {
			user_password="%"+user_password+"%";
		}
		return user_password;
	}
	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}
	public String getUser_name() {
		if(user_name==null){
			user_name="%%";
		}
		else {
			user_name="%"+user_name+"%";
		}
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_sex() {
		if(user_sex==null){
			user_sex="%%";
		}
		else {
			user_sex="%"+user_sex+"%";
		}
		return user_sex;
	}
	public void setUser_sex(String user_sex) {
		this.user_sex = user_sex;
	}
	
}
