package org.zgr.pack.util;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;


import org.apache.commons.lang.StringUtils;
import org.zgr.pack.entity.test.TestJsonToList;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;


public class Util {
	    //json字符串转换为MAP
		public static Map jsonStrToMap(String s) {
			Map map = new HashMap();
			//注意这里JSONObject引入的是net.sf.json
			net.sf.json.JSONObject json = net.sf.json.JSONObject.fromObject(s);
			Iterator keys = json.keys();
			while (keys.hasNext()) {
				String key = (String) keys.next();
				String value = json.get(key).toString();
				if (value.startsWith("{") && value.endsWith("}")) {
					map.put(key, jsonStrToMap(value));
				} else {
					map.put(key, value);
				}

			}
			return map;
		}
		
		// 将jsonArray字符串转换成List集合
		public static List jsonToList(String json, Class beanClass) {
			if (!StringUtils.isBlank(json)) {
				//这里的JSONObject引入的是 com.alibaba.fastjson.JSONObject;
				return JSONObject.parseArray(json, beanClass);
			} else {
				return null;
			}
		}
		
		//List集合转换为json
		public static JSON listToJson(List list) {
			JSON json=(JSON) JSON.toJSON(list);
			return json;
		}
		
		
		public static void main(String[] args) {
			
			System.out.println("---------------------json字符串转换为MAP---------------------");
			JSONObject jsonObject=new JSONObject();
			jsonObject.put("abc", 123);
			jsonObject.put("def", 456);
			System.out.println("A==========json====="+jsonObject);
			Map map=Util.jsonStrToMap(jsonObject.toString());
			System.out.println("B==========def======"+map.get("def"));
			
			
			System.out.println("---------------------将jsonArray字符串转换成List集合---------------------");
			String str="[{\"year\":\"2015\",\"month\":10,\"count\":47},{\"year\":2017,\"month\":12,\"count\":4}]";
			//这里需要指定泛型，我们建立一个实体类TestJsonToList
			List<TestJsonToList> list=Util.jsonToList(str, TestJsonToList.class);
			System.out.println("C==========取list第二个元素的year====="+list.get(1).getYear());
			
			
			System.out.println("---------------------将list集合转换成json---------------------");
			//这里的JSONObject引入的是 com.alibaba.fastjson.JSONObject;
			JSON json=Util.listToJson(list);
			System.out.println("D==========json====="+json);
		}
}
