package org.zgr.pack.entity;

import java.io.Serializable;

public class Result implements Serializable{
      private boolean status; //状态      true：正确       false：错误
      private String msg;     //消息
      private Object data;    //数据
	
    //重写toString()方便测试  
     public String toString() {  
          return "Result [status=" + status + ", msg=" + msg + ", data=" + data +  "]";  
     }  
      
	public boolean isStatus() {
		return status;
	}
	public void setStatus(boolean status) {
		this.status = status;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public Object getData() {
		return data;
	}
	public void setData(Object data) {
		this.data = data;
	}
      
}
