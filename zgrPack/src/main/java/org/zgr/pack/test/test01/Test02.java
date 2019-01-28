package org.zgr.pack.test.test01;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

public class Test02 {
	
	public static void main(String[] args) {
		String sourcePath = "G:\\456";
        String targetPath = "C:\\Users\\Administrator\\Desktop\\456.zip";
       
		zipDIR(sourcePath,targetPath);
	}
	
	    // 压缩文件（sourceDIR:准备压缩文件的地址 targetZipFile:压缩完成文件存放地址）
    	public static void zipDIR(String sourceDIR, String targetZipFile) {
    	  try {
    	    FileOutputStream target = new FileOutputStream(targetZipFile);
    	    ZipOutputStream out = new ZipOutputStream(new BufferedOutputStream(target));
    	    int BUFFER_SIZE = 1024;
    	    byte buff[] = new byte[BUFFER_SIZE];
    	    File dir = new File(sourceDIR);
    	    if (!dir.isDirectory()) {
    	      throw new IllegalArgumentException(sourceDIR+" is not a directory!");
    	    }
    	    File files[] = dir.listFiles();
    	    for (int i = 0; i < files.length; i++) {
    	      FileInputStream fi = new FileInputStream(files[i]);
    	      BufferedInputStream origin = new BufferedInputStream(fi);
    	      ZipEntry entry = new ZipEntry(files[i].getName());
    	      out.putNextEntry(entry);
    	      int count;
    	      while ((count = origin.read(buff)) != -1) {
    	        out.write(buff, 0, count);
    	      }
    	      origin.close();
    	    }
    	    out.close();
    	  } catch (IOException e) {
    	   e.printStackTrace();
    	  }
    	}

   
    	
    	
    	
       
    	
}
