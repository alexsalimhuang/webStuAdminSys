package com.shixun.demo.dao;

import java.io.Serializable;
import java.util.List;

public interface IBaseDao<T> {

	boolean save(T record);

	boolean delete(Serializable id);

	boolean update(T record);

	List<T> find();

}
