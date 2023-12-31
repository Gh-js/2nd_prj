package ra.admin.MembershipManagement;

import java.sql.Date;

public class MembershipManagementVO {
	private String userId, uPw, uName, uNic, uEmail, uTel;
	private Date uJoin, uQuit;
	public String getUserId() {
		return userId;
	}
	public MembershipManagementVO() {
	}
	public MembershipManagementVO(String userId, String uPw, String uName, String uNic, String uEmail, String uTel,
			Date uJoin, Date uQuit) {
		this.userId = userId;
		this.uPw = uPw;
		this.uName = uName;
		this.uNic = uNic;
		this.uEmail = uEmail;
		this.uTel = uTel;
		this.uJoin = uJoin;
		this.uQuit = uQuit;
	}
	@Override
	public String toString() {
		return "MembershipManagementVO [userId=" + userId + ", uPw=" + uPw + ", uName=" + uName + ", uNic=" + uNic
				+ ", uEmail=" + uEmail + ", uTel=" + uTel + ", uJoin=" + uJoin + ", uQuit=" + uQuit + "]";
	}


	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getuPw() {
		return uPw;
	}
	public void setuPw(String uPw) {
		this.uPw = uPw;
	}
	public String getuName() {
		return uName;
	}
	public void setuName(String uName) {
		this.uName = uName;
	}
	public String getuNic() {
		return uNic;
	}
	public void setuNic(String uNic) {
		this.uNic = uNic;
	}
	public String getuEmail() {
		return uEmail;
	}
	public void setuEmail(String uEmail) {
		this.uEmail = uEmail;
	}
	public String getuTel() {
		return uTel;
	}
	public void setuTel(String uTel) {
		this.uTel = uTel;
	}
	public Date getuJoin() {
		return uJoin;
	}
	public void setuJoin(Date uJoin) {
		this.uJoin = uJoin;
	}
	public Date getuQuit() {
		return uQuit;
	}
	public void setuQuit(Date uQuit) {
		this.uQuit = uQuit;
	}

	
	
	
}