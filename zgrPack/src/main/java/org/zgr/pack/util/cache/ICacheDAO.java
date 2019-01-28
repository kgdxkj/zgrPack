package org.zgr.pack.util.cache;

import java.util.Map;

public interface ICacheDAO {


	/**
	 * @param key 缓存key
	 * @return Object
	 * @throws
	 * @Title: get
	 * @author unique
	 * @Description: 获取缓存对象
	 */
	Object get(String key);

	/**
	 * @param key
	 * @param value
	 * @return boolean
	 * @throws
	 * @Title: add
	 * @author unique
	 * @Description: 缓存对象
	 */
	boolean add(String key, Object value);

	/**
	 * @param key
	 * @param value
	 * @param expireInMilliSeconds 单位为秒
	 * @return boolean
	 * @throws
	 * @Title: add
	 * @author unique
	 * @Description: 缓存对象, 并设置失效时间
	 */
	boolean add(String key, Object value, long expireInMilliSeconds);

	/**
	 * @param key
	 * @param value
	 * @return boolean
	 * @throws
	 * @Title: replace
	 * @author unique
	 * @Description: 更新缓存
	 */
	boolean replace(String key, Object value);

	/**
	 * @param key
	 * @param value
	 * @param expireInMilliSeconds 单位为秒
	 * @return boolean
	 * @throws
	 * @Title: replace
	 * @author unique
	 * @Description: 更新缓存, 并更新失效时间
	 */
	boolean replace(String key, Object value, long expireInMilliSeconds);

	/**
	 * @param key
	 * @return boolean
	 * @throws
	 * @Title: delete
	 * @author unique
	 * @Description: 删除缓存
	 */
	boolean delete(String key);

	/**
	 * @param key                  缓存key
	 * @param expireInMilliSeconds 单位为秒
	 * @return boolean
	 * @throws
	 * @Title: expire
	 * @author unique
	 * @Description: 缓存时间
	 */
	boolean expire(String key, long expireInMilliSeconds);

	void destory();

	/**
	 * @return boolean
	 * @throws
	 * @Title: flushAll
	 * @author unique
	 * @Description: 清空缓存
	 */
	boolean flushAll();

	/**
	 * @return boolean
	 * @throws
	 * @Title: exists
	 * @author unique
	 * @Description: 缓存key是否存在
	 */
	boolean exists(final String key);

	/**
	 * @param key
	 * @param value
	 * @return boolean
	 * @throws
	 * @Title: addHm
	 * @author unique
	 * @Description: 缓存Map对象(如果不针对Map进行索引与增减, 请使用add()方法缓存)
	 */
	boolean addHm(final String key, final Map<String, Object> value);
	boolean addHmForString(String key, Map<String, String> value);

	/**
	 * @param key
	 * @return Object
	 * @throws
	 * @Title: getHm
	 * @author unique
	 * @Description: 获取Map缓存对象
	 */
	Object getHm(final String key);
	Object getHmForString(final String key);

	/**
	 * @param key   缓存key
	 * @param enkey 对象key
	 * @param value 对象
	 * @return boolean
	 * @throws
	 * @Title: addHmEntry
	 * @author unique
	 * @Description: 向Map 缓存中添加
	 */

	boolean addHmEntry(String key, String enkey, Object value);
	boolean addHmEntry(String key, String enkey, String value);

	/**
	 * @param key   缓存key
	 * @param enkey map 中keys
	 * @return Object
	 * @throws
	 * @Title: getHmEntrys
	 * @author unique
	 * @Description: 从Map 中获取多个缓存对象
	 */
	Object getHmEntrys(String key, String... enkey);

	/**
	 * @param key   缓存key
	 * @param enkey map 中的key
	 * @return Object 返回缓存对象
	 * @throws
	 * @Title: getHmEntry
	 * @author unique
	 * @Description: 获取Map中的缓存对象
	 */
	Object getHmEntry(String key, String enkey);

	/**
	 * @param key
	 * @param enkey
	 * @return boolean
	 * @throws
	 * @Title: hDel
	 * @author unique
	 * @Description: 根据enkey 删除Map 中的 对象
	 */
	boolean hDel(final String key, final String enkey);
	
	void hIncrby(final String key, final String enkey,final long increment);
}
