package org.zgr.pack.service.cache;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.zgr.pack.util.cache.ICacheDAO;


@Service
public class CacheServiceImpl implements ICacheService{


	@Resource
	ICacheDAO redisCacheDAO;

	public boolean add(String key, Object value)
	{
		return redisCacheDAO.add(key, value);
	}

	@Override
	public boolean add(String key, Object value, long expireInMilliSeconds)
	{
		return redisCacheDAO.add(key, value, expireInMilliSeconds);
	}

	@Override
	public boolean addHm(String key, Map value)
	{
		return redisCacheDAO.addHm(key, value);
	}

	@Override
	public boolean addHmEntry(String key, String enkey, Object value)
	{
		return redisCacheDAO.addHmEntry(key, enkey, value);
	}

	@Override
	public boolean delete(String key)
	{
		return redisCacheDAO.delete(key);
	}

	@Override
	public void destory()
	{
		redisCacheDAO.destory();
	}

	@Override
	public boolean flushAll()
	{
		return redisCacheDAO.flushAll();
	}

	@Override
	public boolean exists(String key)
	{
		return redisCacheDAO.exists(key);
	}

	@Override
	public Object get(String key)
	{
		return redisCacheDAO.get(key);
	}

	@Override
	public Object getHmEntry(String key, String enkey)
	{
		return redisCacheDAO.getHmEntry(key, enkey);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Object> getHmEntrys(String key, String... enkey)
	{
		return (List<Object>) redisCacheDAO.getHmEntrys(key, enkey);
	}

	@Override
	public boolean hDel(String key, String enkey)
	{
		return redisCacheDAO.hDel(key, enkey);
	}

	@Override
	public boolean replace(String key, Object value)
	{
		return redisCacheDAO.replace(key, value);
	}

	@Override
	public boolean replace(String key, Object value, long expireInMilliSeconds)
	{
		return redisCacheDAO.replace(key, value, expireInMilliSeconds);
	}

	@SuppressWarnings("unchecked")
	@Override
	public Map<Object, Object> getHm(String key)
	{
		return (Map<Object, Object>) redisCacheDAO.getHm(key);
	}

	@Override
	public boolean expire(String key, long expireInMilliSeconds)
	{
		return redisCacheDAO.expire(key, expireInMilliSeconds);
	}

	@Override
	public void hIncrby(String key, String enkey, long increment)
	{
		redisCacheDAO.hIncrby(key, enkey, increment);
	}

	@Override
	public boolean addHmEntry(String key, String enkey, String value)
	{
		return redisCacheDAO.addHmEntry(key, enkey, value);
	}

	@Override
	public boolean addHmForString(String key, Map<String, String> value)
	{
		return redisCacheDAO.addHmForString(key, value);
	}

	@Override
	public Object getHmForString(String key)
	{
		return redisCacheDAO.getHmForString(key);
	}

	
}
