package news.domain;

public class Admin {
	private int admin_id;
	private String admin_name;
	private String admin_password;
	private int admin_isOnline;
	public Admin(){
		
	}
	public int getAdmin_isOnline() {
		return admin_isOnline;
	}
	public void setAdmin_isOnline(int admin_isOnline) {
		this.admin_isOnline = admin_isOnline;
	}
	public int getAdmin_id() {
		return admin_id;
	}
	public void setAdmin_id(int admin_id) {
		this.admin_id = admin_id;
	}
	public String getAdmin_name() {
		return admin_name;
	}
	public void setAdmin_name(String admin_name) {
		this.admin_name = admin_name;
	}
	public String getAdmin_password() {
		return admin_password;
	}
	public void setAdmin_password(String admin_password) {
		this.admin_password = admin_password;
	}
	public Admin(String admin_name, String admin_password) {
		super();
		this.admin_name = admin_name;
		this.admin_password = admin_password;
	}
	
}
