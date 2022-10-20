package com.itwill.member.exception;

public class MemberNotFoundException extends Exception{
	public final String status = "NotFound";
	public MemberNotFoundException() {
	
	}
	public MemberNotFoundException(String msg) {
		super(msg);
	}
}
