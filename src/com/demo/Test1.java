package com.demo;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;

public class Test1 {
	public static void main(String[] args) {
		JedisPool jedisPool=JedisPoolUtil.getJedisPoolInstance();
		Jedis jedis=null;
		try {
			jedis=jedisPool.getResource();
			System.out.println(jedis.sismember("tel","xxxxxxxxxxx"));
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			JedisPoolUtil.release(jedisPool, jedis);
		}
	}

}
