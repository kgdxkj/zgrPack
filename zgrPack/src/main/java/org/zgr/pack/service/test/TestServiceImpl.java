package org.zgr.pack.service.test;

import javax.annotation.Resource;

import org.json.JSONObject;
import org.springframework.stereotype.Service;
import org.zgr.pack.dao.test.ITestDao;
import org.zgr.pack.entity.test.TestEntity;

@Service
public class TestServiceImpl implements ITestService{
    @Resource
    private ITestDao testDao;
    
	public String selectById(String id) {
		JSONObject jsonObject = new JSONObject();
		TestEntity testEntity=testDao.selectTestById(id);
		jsonObject.put("data", testEntity);
		
		return jsonObject.toString();
	}

}
