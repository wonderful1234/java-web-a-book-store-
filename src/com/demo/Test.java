package com.demo;

import com.aliyuncs.exceptions.ClientException;

public class Test {
	public static void main(String[] args) throws ClientException {
		SendInformation r=new SendInformation();
		String y=SendInformation.sendSms("17318702983");
		System.out.println(y);
	}

}
