package com.demo;

import java.util.ArrayList;
import java.util.List;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;

public class Jedisway {
	public void add(String name,String book) {
		JedisPool jedisPool=JedisPoolUtil.getJedisPoolInstance();
		Jedis jedis=null;
		try {
			jedis=jedisPool.getResource();
			boolean s=jedis.exists(name);
			if(s==false) {
				jedis.lpush(name,book);
			}
			else {
				jedis.rpush(name,book);
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			JedisPoolUtil.release(jedisPool, jedis);
		}
	}
	public int setset(String s) {
		JedisPool jedisPool=JedisPoolUtil.getJedisPoolInstance();
		Jedis jedis=null;
		boolean v=false;
		int b=8;
		try {
			jedis=jedisPool.getResource();
			v=jedis.sismember("tel", s);
			if(v==true)
				b=0;
			if(v==false) {
				jedis.sadd("tel",s);
				b=1;
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			JedisPoolUtil.release(jedisPool, jedis);
		}
		return b;
	}
	public ArrayList<String> show(String name) {
		JedisPool jedisPool=JedisPoolUtil.getJedisPoolInstance();
		Jedis jedis=null;
		ArrayList <String>list=new ArrayList<String>();
		try {
			jedis=jedisPool.getResource();
			
			list=(ArrayList<String>)jedis.lrange(name,0,-1);
		}catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			JedisPoolUtil.release(jedisPool, jedis);
		}
		return list;
	}
	public void del(String name,int number,String book) {
		JedisPool jedisPool=JedisPoolUtil.getJedisPoolInstance();
		Jedis jedis=null;
		try {
			jedis=jedisPool.getResource();
			jedis.lrem(name, number, book);
		}catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			JedisPoolUtil.release(jedisPool, jedis);
		}
	}
	public void dell(String name) {
		JedisPool jedisPool=JedisPoolUtil.getJedisPoolInstance();
		Jedis jedis=null;
		try {
			jedis=jedisPool.getResource();
			jedis.del(name);
		}catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			JedisPoolUtil.release(jedisPool, jedis);
		}
	}
	public void sets(String name,String book) {
		JedisPool jedisPool=JedisPoolUtil.getJedisPoolInstance();
		Jedis jedis=null;
		try {
			jedis=jedisPool.getResource();
			jedis.set(name,book);
			jedis.expire(name,300);
		}catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			JedisPoolUtil.release(jedisPool, jedis);
		}
	}
	public String gets(String name) {
		JedisPool jedisPool=JedisPoolUtil.getJedisPoolInstance();
		Jedis jedis=null;
		String s="";
		try {
			jedis=jedisPool.getResource();
			s=jedis.get(name);
		}catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			JedisPoolUtil.release(jedisPool, jedis);
		}
		return s;
	}
}
