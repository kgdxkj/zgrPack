package org.zgr.pack.test;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;

import org.apache.commons.codec.digest.DigestUtils;
import org.apache.log4j.Logger;

public class TestLogger {
	 public static String genMD5Checksum3(File file) throws FileNotFoundException, IOException {
	        /**
	         * 使用org.apache.commons.codec.digest.DigestUtils
	         */
	        String md5Checksum = DigestUtils.md5Hex(new FileInputStream(file));
	        return md5Checksum;
	    }
	 
	 
public static void main(String[] args) {
	try {
		System.out.println(String.format("genMD5Checksum3() --> %s",
		        genMD5Checksum3(new File("G:\\examResource\\audios\\8d85a6e5-01b2-4a3e-bde9-7a68bad48989.mp3"))));
	} catch (FileNotFoundException e) {
		e.printStackTrace();
	} catch (IOException e) {
		e.printStackTrace();
	}
}
	 
	 
	 
}
