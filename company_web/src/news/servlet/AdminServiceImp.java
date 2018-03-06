package news.servlet;

import news.domain.Admin;

public interface AdminServiceImp {
	public Admin login(String name,String password);
}
