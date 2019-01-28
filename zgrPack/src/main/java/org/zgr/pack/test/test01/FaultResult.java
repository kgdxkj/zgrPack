package org.zgr.pack.test.test01;

public class FaultResult {
	private String year;      //��  
    private String month;     //��  
    private String count;     //����  
    public String getMonth() {  
        return month;  
    }  
    public void setMonth(String month) {  
        this.month = month;  
    }  
    public String getYear() {  
        return year;  
    }  
    public void setYear(String year) {  
        this.year = year;  
    }  
    public String getCount() {  
        return count;  
    }  
    public void setCount(String count) {  
        this.count = count;  
    }  
      
    //���췽��  
    public FaultResult(String year, String month, String count) {    
        this.year = year;    
        this.month = month;    
        this.count = count;    
    }    
    //Ĭ�Ϲ��췽��  
    public FaultResult() {    
        
    }    
}
