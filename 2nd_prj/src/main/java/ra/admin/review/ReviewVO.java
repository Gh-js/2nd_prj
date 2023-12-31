package ra.admin.review;

import java.sql.Date;

/**
 * @author user
 *
 */
public class ReviewVO {

	private int rvNo,rvScore,rvReport;
	private String raNo,raName,rvText,userId,uNic;
	private Date rvDate;
	private String rvdType,rvdDetail;
	private Date rvdDate;
	
	public ReviewVO() {
	}
	
	@Override
	public String toString() {
		return "ReviewVO [rvNo=" + rvNo + ", rvScore=" + rvScore + ", rvReport=" + rvReport + ", raNo=" + raNo
				+ ", raName=" + raName + ", rvText=" + rvText + ", userId=" + userId + ", uNic=" + uNic + ", rvDate="
				+ rvDate + ", rvdType=" + rvdType + ", rvdDetail=" + rvdDetail + ", rvdDate=" + rvdDate + "]";
	}

	public ReviewVO(int rvNo, String raNo, String raName, Date rvDate, String rvText,  int rvScore, String userId, String uNic, int rvReport,String rvdType, String rvdDetail, Date rvdDate ) {
		this.rvNo = rvNo;
		this.rvScore = rvScore;
		this.rvReport = rvReport;
		this.raNo = raNo;
		this.raName = raName;
		this.rvText = rvText;
		this.userId = userId;
		this.uNic = uNic;
		this.rvDate = rvDate;
		this.rvdType=rvdType;
		this.rvdDetail=rvdDetail;
		this.rvdDate=rvdDate;
	}

	public int getRvNo() {
		return rvNo;
	}

	public void setRvNo(int rvNo) {
		this.rvNo = rvNo;
	}

	public int getRvScore() {
		return rvScore;
	}

	public void setRvScore(int rvScore) {
		this.rvScore = rvScore;
	}

	public int getRvReport() {
		return rvReport;
	}

	public void setRvReport(int rvReport) {
		this.rvReport = rvReport;
	}

	public String getRaNo() {
		return raNo;
	}

	public void setRaNo(String raNo) {
		this.raNo = raNo;
	}

	public String getRaName() {
		return raName;
	}

	public void setRaName(String raName) {
		this.raName = raName;
	}

	public String getRvText() {
		return rvText;
	}

	public void setRvText(String rvText) {
		this.rvText = rvText;
	}

	public Date getRvDate() {
		return rvDate;
	}

	public void setRvDate(Date rvDate) {
		this.rvDate = rvDate;
	}

	public String getRvdType() {
		return rvdType;
	}

	public void setRvdType(String rvdType) {
		this.rvdType = rvdType;
	}

	public String getRvdDetail() {
		return rvdDetail;
	}

	public void setRvdDetail(String rvdDetail) {
		this.rvdDetail = rvdDetail;
	}

	public Date getRvdDate() {
		return rvdDate;
	}

	public void setRvdDate(Date rvdDate) {
		this.rvdDate = rvdDate;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getuNic() {
		return uNic;
	}

	public void setuNic(String uNic) {
		this.uNic = uNic;
	}
	
	
}