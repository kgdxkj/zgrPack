package org.zgr.pack.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import org.apache.commons.codec.binary.Base64;

public class HelpUtil {
	 public static String md5(String msg) throws NoSuchAlgorithmException{//谁调用md5()异常就抛给谁，
     	//利用md5对msg这个数据进行加密处理
     	MessageDigest md=MessageDigest.getInstance("MD5");
     	byte[] input=msg.getBytes();//把传入的密码字符串转换成字节数组。
     	byte[] output=md.digest(input);  //这儿的参数是一个byte[]数组，返回的类型还是一个byte[]数组
     	//将md5处理的output结果转换成字符串
     	String result=Base64.encodeBase64String(output);//引入commons-codec-1.9.jar里的方法。这个方法有可能会产生异常，所以需要抛出。
     	return result;
     }
}
