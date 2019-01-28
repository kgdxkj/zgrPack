package org.zgr.pack.entity.test;

public class TestEntity {
    private String id;
    private String name;
    private String sal;
    private String birthday;
    
  //重写toString()方便测试  
    public String toString() {  
        return "TestEntity [id="+id+" |  name="+name +" |  sal="+sal +" |  birthday="+birthday + "]";  
    }
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSal() {
		return sal;
	}
	public void setSal(String sal) {
		this.sal = sal;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
      
      
      
}
