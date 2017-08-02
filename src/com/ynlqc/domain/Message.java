package com.ynlqc.domain;

import java.io.Serializable;
import java.util.Date;

import com.ynlqc.utils.UUIDUtils;
/**
 * 用户实体
 * @author Administrator
 *
 */
public class Message implements Serializable{
private String result;


/**
 * 
 */
public Message() {

}

public Message(String result) {
	this.result=result;
}

public String getResult() {
	return result;
}

public void setResult(String result) {
	this.result = result;
}
	
	
	
	
	
}
