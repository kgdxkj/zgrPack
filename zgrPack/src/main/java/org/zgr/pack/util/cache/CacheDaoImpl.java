package org.zgr.pack.util.cache;

import java.util.HashMap;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.data.redis.connection.RedisConnection;
import org.springframework.data.redis.connection.jedis.JedisConnectionFactory;
import org.springframework.data.redis.core.RedisCallback;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.serializer.SerializationUtils;
import org.springframework.stereotype.Repository;


@Repository("cacheDaoImpl")
public class CacheDaoImpl implements ICacheDAO{
	private static final Logger logger = Logger.getLogger(ICacheDAO.class);

	@Autowired
	RedisTemplate redisTemplate;
	@Autowired
	JedisConnectionFactory jedisConnectionFactory;
	
	//添加缓存,未设置时间
	public boolean add(final String key, final Object value)
	{
		try
		{
			return (Boolean) redisTemplate.execute(new RedisCallback<Boolean>()
			{

				public Boolean doInRedis(RedisConnection connection) throws DataAccessException
				{
					connection.set(redisTemplate.getStringSerializer().serialize(key), redisTemplate.getValueSerializer()
							.serialize(value));
					return true;
				}
			});
		}
		catch (Exception e)
		{
			logger.error(e);
		}
		return false;
	}
     
	//添加缓存,并设置时间，单位是秒
	public boolean add(final String key, final Object value, final long expireInMilliSeconds)
	{
		try
		{
			return (Boolean) redisTemplate.execute(new RedisCallback<Boolean>()
			{

				public Boolean doInRedis(RedisConnection connection) throws DataAccessException
				{
					//System.out.println("add====="+key);
					connection.setEx(redisTemplate.getStringSerializer().serialize(key), expireInMilliSeconds, redisTemplate
							.getValueSerializer().serialize(value));
					return true;
				}
			});
		}
		catch (Exception e)
		{
			logger.error(e);
		}
		return false;
	}

	public boolean replace(final String key, final Object value)
	{
		return add(key, value); // redis没有replace的概念，add即为替换
	}

	public boolean replace(final String key, final Object value, final long expireInMilliSeconds)
	{
		return add(key, value, expireInMilliSeconds); // redis没有replace的概念，add即为替换
	}

	public Object get(final String key)
	{
		try
		{
			return redisTemplate.execute(new RedisCallback<Object>()
			{

				public Object doInRedis(RedisConnection connection) throws DataAccessException
				{
					byte[] key_bytes = redisTemplate.getStringSerializer().serialize(key);
					//System.out.println("==="+key_bytes.toString());
					if (connection.exists(key_bytes))
					{
						byte[] value = connection.get(key_bytes);
						Object object = redisTemplate.getValueSerializer().deserialize(value);
						return object;
					}
					return null;
				}
			});
		}
		catch (Exception e)
		{
			logger.error(e);
		}
		return null;
	}

	public boolean delete(final String key)
	{
		try
		{
			return (Boolean) redisTemplate.execute(new RedisCallback<Boolean>()
			{
				public Boolean doInRedis(RedisConnection connection)
				{
					connection.del(redisTemplate.getStringSerializer().serialize(key));
					return true;
				}
			});
		}
		catch (Exception e)
		{
			logger.error(e);
		}
		return false;
	}

	public boolean expire(final String key, final long expireInMilliSeconds)
	{
		try
		{
			return (Boolean) redisTemplate.execute(new RedisCallback<Boolean>()
			{

				public Boolean doInRedis(RedisConnection connection) throws DataAccessException
				{
					connection.expire(redisTemplate.getStringSerializer().serialize(key), expireInMilliSeconds);
					return true;
				}
			});
		}
		catch (Exception e)
		{
			logger.error(e);
		}
		return false;
	}

	public void destory()
	{
		try
		{
			jedisConnectionFactory.destroy();
		}
		catch (Exception e)
		{
			logger.error(e);
		}
	}

	public boolean flushAll()
	{
		RedisConnection connection = null;
		try
		{
			connection = redisTemplate.getConnectionFactory().getConnection();
			connection.flushAll();
			return true;
		}
		catch (Exception e)
		{
			logger.error(e);
			return false;
		}
		finally
		{
			if (null != connection)
			{
				connection.close();
			}
		}
	}

	public boolean exists(final String key)
	{

		try
		{
			return (Boolean) redisTemplate.execute(new RedisCallback<Boolean>()
			{
				@Override
				public Boolean doInRedis(RedisConnection connection) throws DataAccessException
				{
					byte[] key_bytes = redisTemplate.getStringSerializer().serialize(key);
					return connection.exists(key_bytes);
				}
			});
		}
		catch (Exception e)
		{
			logger.error(e);
		}
		return false;
	}

	/**
	 * 缓存Map
	 * 如果不对Map进行增减操作,请使用add()方法
	 */
	public boolean addHm(final String key, final Map<String, Object> value)
	{
		try
		{
			return (Boolean) redisTemplate.execute(new RedisCallback<Boolean>()
			{
				public Boolean doInRedis(RedisConnection connection) throws DataAccessException
				{
					byte[] key_bytes = redisTemplate.getStringSerializer().serialize(key);
					Map<byte[], byte[]> map = new HashMap<byte[], byte[]>();
					for (Map.Entry<String, Object> entry : value.entrySet())
					{
						map.put(redisTemplate.getStringSerializer().serialize(entry.getKey()), redisTemplate.getValueSerializer()
								.serialize(entry.getValue()));
					}
					connection.hMSet(key_bytes, map);
					return true;
				}
			});
		}
		catch (Exception e)
		{
			logger.error(e);
		}
		return false;
	}
	
	public boolean addHmForString(final String key, final Map<String, String> value)
	{
		try
		{
			return (Boolean) redisTemplate.execute(new RedisCallback<Boolean>()
			{
				public Boolean doInRedis(RedisConnection connection) throws DataAccessException
				{
					byte[] key_bytes = redisTemplate.getStringSerializer().serialize(key);
					Map<byte[], byte[]> map = new HashMap<byte[], byte[]>();
					for (Map.Entry<String, String> entry : value.entrySet())
					{
						map.put(redisTemplate.getStringSerializer().serialize(entry.getKey()), redisTemplate.getStringSerializer()
								.serialize(entry.getValue()));
					}
					connection.hMSet(key_bytes, map);
					return true;
				}
			});
		}
		catch (Exception e)
		{
			logger.error(e);
		}
		return false;
	}

	public Object getHm(final String key)
	{
		try
		{
			return redisTemplate.execute(new RedisCallback<Object>()
			{

				public Object doInRedis(RedisConnection connection) throws DataAccessException
				{
					byte[] key_bytes = redisTemplate.getStringSerializer().serialize(key);
					if (connection.exists(key_bytes))
					{
						Map<byte[], byte[]> map = connection.hGetAll(key_bytes);
						Map<Object, Object> res = new HashMap<Object, Object>();
						for (Map.Entry<byte[], byte[]> entry : map.entrySet())
						{
							res.put(redisTemplate.getStringSerializer().deserialize(entry.getKey()), redisTemplate
									.getValueSerializer().deserialize(entry.getValue()));
						}
						return res;
					}
					return null;
				}
			});
		}
		catch (Exception e)
		{
			logger.error(e);
		}
		return null;
	}

	public Object getHmForString(final String key)
	{
		try
		{
			return redisTemplate.execute(new RedisCallback<Object>()
			{

				public Object doInRedis(RedisConnection connection) throws DataAccessException
				{
					byte[] key_bytes = redisTemplate.getStringSerializer().serialize(key);
					if (connection.exists(key_bytes))
					{
						Map<byte[], byte[]> map = connection.hGetAll(key_bytes);
						Map<Object, Object> res = new HashMap<Object, Object>();
						for (Map.Entry<byte[], byte[]> entry : map.entrySet())
						{
							res.put(redisTemplate.getStringSerializer().deserialize(entry.getKey()), redisTemplate
									.getStringSerializer().deserialize(entry.getValue()));
						}
						return res;
					}
					return null;
				}
			});
		}
		catch (Exception e)
		{
			logger.error(e);
		}
		return null;
	}
	
	/**
	 * 向Map缓存中新增或更新key-value
	 */
	public boolean addHmEntry(final String key, final String enkey, final Object value)
	{
		try
		{
			return (Boolean) redisTemplate.execute(new RedisCallback<Boolean>()
			{

				public Boolean doInRedis(RedisConnection connection) throws DataAccessException
				{
					byte[] key_bytes = redisTemplate.getStringSerializer().serialize(key);
					connection.hSet(key_bytes, redisTemplate.getStringSerializer().serialize(enkey), redisTemplate
							.getValueSerializer().serialize(value));
					return true;
				}
			});
		}
		catch (Exception e)
		{
			logger.error(e);
		}
		return false;
	}
	
	public boolean addHmEntry(final String key, final String enkey, final String value)
	{
		try
		{
			return (Boolean) redisTemplate.execute(new RedisCallback<Boolean>()
			{

				public Boolean doInRedis(RedisConnection connection) throws DataAccessException
				{
					byte[] key_bytes = redisTemplate.getStringSerializer().serialize(key);
					connection.hSet(key_bytes, redisTemplate.getStringSerializer().serialize(enkey), redisTemplate
							.getStringSerializer().serialize(value));
					return true;
				}
			});
		}
		catch (Exception e)
		{
			logger.error(e);
		}
		return false;
	}

	/**
	 * 通过key 获取Map中的多个值对象
	 * 返回List<Object>
	 */
	public Object getHmEntrys(final String key, final String... enkey)
	{
		try
		{
			return redisTemplate.execute(new RedisCallback<Object>()
			{

				public Object doInRedis(RedisConnection connection) throws DataAccessException
				{
					if (null == enkey || enkey.length == 0)
					{
						return null;
					}
					byte[] key_bytes = redisTemplate.getStringSerializer().serialize(key);
					if (connection.exists(key_bytes))
					{
						byte[][] bfields = new byte[enkey.length][];
						for (int i = 0; i < bfields.length; i++)
						{
							bfields[i] = redisTemplate.getStringSerializer().serialize(enkey[i]);
						}
						return SerializationUtils.deserialize(connection.hMGet(key_bytes, bfields),
								redisTemplate.getValueSerializer());
					}
					return null;
				}
			});
		}
		catch (Exception e)
		{
			logger.error(e);
		}
		return null;
	}

	/**
	 * 通过key 获取Map中的值对象
	 */
	public Object getHmEntry(final String key, final String enkey)
	{
		try
		{
			return redisTemplate.execute(new RedisCallback<Object>()
			{

				public Object doInRedis(RedisConnection connection) throws DataAccessException
				{
					byte[] key_bytes = redisTemplate.getStringSerializer().serialize(key);
					if (connection.exists(key_bytes))
					{
						byte[] result = connection.hGet(key_bytes, redisTemplate.getStringSerializer().serialize(enkey));
						return redisTemplate.getValueSerializer().deserialize(result);
					}
					return null;
				}
			});
		}
		catch (Exception e)
		{
			logger.error(e);
		}
		return null;
	}

	/**
	 * 删除Map 缓存中一条
	 */
	public boolean hDel(final String key, final String enkey)
	{
		try
		{
			return (Boolean) redisTemplate.execute(new RedisCallback<Boolean>()
			{

				public Boolean doInRedis(RedisConnection connection) throws DataAccessException
				{
					byte[] key_bytes = redisTemplate.getStringSerializer().serialize(key);
					if (connection.exists(key_bytes))
					{
						//return connection.hDel(key_bytes, redisTemplate.getStringSerializer().serialize(enkey));
						long l = connection.hDel(key_bytes, redisTemplate.getStringSerializer().serialize(enkey));
						if(l > 0){
							return true;
						}
					}
					return false;
				}
			});
		}
		catch (Exception e)
		{
			logger.error(e);
		}
		return false;
	}
	
	public void hIncrby(final String key, final String enkey,final long increment)
	{
		try
		{
			redisTemplate.execute(new RedisCallback<Long>()
			{

				public Long doInRedis(RedisConnection connection) throws DataAccessException
				{
					byte[] key_bytes = redisTemplate.getStringSerializer().serialize(key);
					if (connection.exists(key_bytes))
					{
						
						return connection.hIncrBy(key_bytes, redisTemplate.getStringSerializer().serialize(enkey), increment);
					}
					return null;
				}
			});
		}
		catch (Exception e)
		{
			logger.error(e);
		}
	}
}
