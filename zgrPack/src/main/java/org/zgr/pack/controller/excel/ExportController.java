package org.zgr.pack.controller.excel;


import java.io.OutputStream;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.zgr.pack.entity.test.ExcelUser;
import org.zgr.pack.util.ExcelUtil;

//http://localhost:8080/zgrPack/report/export

@Controller
@RequestMapping(value = "/report")
public class ExportController {

	// 导出报表
	@RequestMapping(value = "/export")
	@ResponseBody
	public void export(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// 获取数据
		List<ExcelUser> list = new ArrayList<ExcelUser>();
		ExcelUser user = new ExcelUser();
		user.setAge("27");
		user.setGender("男");
		user.setKlass("1");
		user.setName("张三");
		user.setSchool("第一中学");
		user.setAddress("01中国江苏省南京市哈哈哈哈哈哈哈哈哈哈哈人民街道爱情海公寓4栋一单元1105室");
		list.add(user);
		ExcelUser user2 = new ExcelUser();
		user2.setAge("37");
		user2.setGender("女");
		user2.setKlass("5");
		user2.setName("李四");
		user2.setSchool("实验中学");
		user2.setAddress("02中国江苏省南京市哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈人民街道爱情海公寓4栋一单元1106室");
		list.add(user2);

		// excel标题
		String[] title = { "姓名", "性别", "年龄", "学校", "班级", "地址" };

		// excel文件名
		String fileName = "学生信息表" + System.currentTimeMillis() + ".xls";
		// sheet名
		String sheetName = "学生信息表";
		String[][] content = new String[list.size()][title.length];
		for (int i = 0; i < list.size(); i++) {
			ExcelUser userEntity = list.get(i);
			content[i][0] = userEntity.getName();
			content[i][1] = userEntity.getGender();
			content[i][2] = userEntity.getAge();
			content[i][3] = userEntity.getSchool();
			content[i][4] = userEntity.getKlass();
			content[i][5] = userEntity.getAddress();
		}

		// 创建HSSFWorkbook
		HSSFWorkbook wb = ExcelUtil.getHSSFWorkbook(sheetName, title, content);

		// 响应到客户端
		try {
			fileName = new String(fileName.getBytes(), "ISO8859-1");
			response.setContentType("application/octet-stream;charset=ISO8859-1");
			response.setHeader("Content-Disposition", "attachment;filename=" + fileName);
			response.addHeader("Pargam", "no-cache");
			response.addHeader("Cache-Control", "no-cache");
			OutputStream os = response.getOutputStream();
			wb.write(os);
			os.flush();
			os.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	
	public static void main(String[] args) {
		double d1 =2.0115;
       
		
		 BigDecimal b = new BigDecimal(d1);
	        double df = b.setScale(2, BigDecimal.ROUND_HALF_UP).doubleValue();
		
        System.out.println( df);
	
    }

}
