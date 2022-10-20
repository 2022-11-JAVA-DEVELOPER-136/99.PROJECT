package com.itwill.dto;

public class Customer {
	/*
	===============================
	이름        널?       유형           
	--------- -------- ------------ 
	CEMAIL    NOT NULL VARCHAR2(50) 
	CPASSWORD NOT NULL VARCHAR2(50) 
	CBIRTH             VARCHAR2(12) 
	CTEL               VARCHAR2(20) 
	CSEX               VARCHAR2(1)  
	===============================
	*/
	private String cEmail;
	private String cPassword;
	private String cBirth;
	private String cTel;
	private String cSex;

	public Customer() {
		// TODO Auto-generated constructor stub
	}

	public Customer(String cEmail, String cPassword, String cBirth, String cTel, String cSex) {
		super();
		this.cEmail = cEmail;
		this.cPassword = cPassword;
		this.cBirth = cBirth;
		this.cTel = cTel;
		this.cSex = cSex;
	}

	public String getcEmail() {
		return cEmail;
	}

	public void setcEmail(String cEmail) {
		this.cEmail = cEmail;
	}

	public String getcPassword() {
		return cPassword;
	}

	public void setcPassword(String cPassword) {
		this.cPassword = cPassword;
	}

	public String getcBirth() {
		return cBirth;
	}

	public void setcBirth(String cBirth) {
		this.cBirth = cBirth;
	}

	public String getcTel() {
		return cTel;
	}

	public void setcTel(String cTel) {
		this.cTel = cTel;
	}

	public String getcSex() {
		return cSex;
	}

	public void setcSex(String cSex) {
		this.cSex = cSex;
	}
	
	/*
	 *패쓰워드 일치여부 검사 
	 */
	public boolean isMatchPassword(String cPassword) {
		boolean isMatch = false;
		if(this.cPassword.equals(cPassword)) {
			isMatch = true;
		}
		return isMatch;
	}

}
