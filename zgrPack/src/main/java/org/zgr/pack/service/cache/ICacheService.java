package org.zgr.pack.service.cache;

import java.util.Map;

public interface ICacheService {
	//获取缓存对象
	Object get(String key);

	//缓存对象
	boolean add(String key, Object value);

	//缓存对象, 并设置失效时�?
	boolean add(String key, Object value, long expireInMilliSeconds);

	//更新缓存
	boolean replace(String key, Object value);

	//更新缓存, 并更新失效时�?  .   expireInMilliSeconds 单位为秒
	boolean replace(String key, Object value, long expireInMilliSeconds);

	// 删除缓存
	boolean delete(String key);

	
	//缓存时间     expireInMilliSeconds：单位为�?                        key：缓存key
	boolean expire(String key, long expireInMilliSeconds);

	void destory();

	//清空缓存
	boolean flushAll();

	//缓存key 是否存在
	boolean exists(final String key);

	//缓存Map对象(如果不针对Map进行索引与增�?, 请使用add()方法缓存)
	boolean addHm(final String key, final Map value);
	boolean addHmForString(String key, Map<String, String> value);
	
	//获取Map缓存对象
	Object getHm(final String key);
	Object getHmForString(final String key);

	
    //向Map 缓存中添�?       key:缓存key  enkey:对象key   value:对象  
	boolean addHmEntry(String key, String enkey, Object value);
	
	boolean addHmEntry(String key, String enkey, String value);

	//从Map 中获取多个缓存对�?        key:缓存key      enkey：map中keys
	Object getHmEntrys(String key, String... enkey);

	//获取Map中的缓存对象        key:缓存key     enkey：map中keys     Object：返回缓存对�?
	Object getHmEntry(String key, String enkey);

	
	//根据enkey 删除Map 中的 对象
	boolean hDel(String key, String enkey);
	
	void hIncrby(String key, String enkey,long increment);
}
