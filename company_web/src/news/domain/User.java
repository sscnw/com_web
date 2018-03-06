package news.domain;

public class User {
	private Integer user_id;
	private String user_password;
	private String user_name;
	private String user_sex;
	private String user_address;

	public User(){
		
	}
	public User(String user_name,String user_password) {
		this.user_password = user_password;
		this.user_name = user_name;
		
	}
	public User(String user_name,String user_password, String user_sex, String user_address) {
		super();
		this.user_password = user_password;
		this.user_name = user_name;
		this.user_sex = user_sex;
		this.user_address = user_address;
		
	}
	public Integer getUser_id() {
		return user_id;
	}
	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}
	public String getUser_password() {
		return user_password;
	}
	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_sex() {
		return user_sex;
	}
	public void setUser_sex(String user_sex) {
		this.user_sex = user_sex;
	}
	public String getUser_address() {
		return user_address;
	}
	public void setUser_address(String user_address) {
		this.user_address = user_address;
	}
	
}
