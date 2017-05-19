package our.team.project;

import org.springframework.stereotype.Repository;

@Repository("memberVO")
public class MemberVO {
	
	private int num;
	private String email;
	private String password;
	private String name;
	private String phone;
	private int admin;
	private String signup_date;
	
	public String getSignup_date() {
		return signup_date;
	}
	public void setSignup_date(String signup_date) {
		this.signup_date = signup_date;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public int getAdmin() {
		return admin;
	}
	public void setAdmin(int admin) {
		this.admin = admin;
	}
	@Override
	public String toString() {
		return "MemberVO [num=" + num + ", email=" + email + ", password=" + password + ", name=" + name + ", phone="
				+ phone + ", admin=" + admin + ", signup_date=" + signup_date + "]";
	}
	
	

}
