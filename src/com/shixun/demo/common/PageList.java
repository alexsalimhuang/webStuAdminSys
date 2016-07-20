package com.shixun.demo.common;

import java.util.List;

public class PageList {

	// 分页的数据，当前页数，每页显示的条数，
	// 每页显示的具体数据，是否有上一页。是否有下一页
	// 数据的总条数，页面显示的总页数
	private Integer index;
	private Integer size;
	private Boolean prev;
	private Boolean next;
	private Integer total;// 总页数
	private Integer count;// 总条数
	private List<?> data;

	public PageList(int index, int size, List<?> data, int count) {
		this.index = index;
		this.size = size;
		this.count = count;
		this.data = data;

		// 总页数
		this.total = (int) Math.ceil((double) this.count / this.size);

		// 是否有上一页
		this.prev = index > 1;
		// 是否有下一页
		this.next = index < this.total;

	}

	public Integer getIndex() {
		return index;
	}

	public void setIndex(Integer index) {
		this.index = index;
	}

	public Integer getSize() {
		return size;
	}

	public void setSize(Integer size) {
		this.size = size;
	}

	public Boolean getPrev() {
		return prev;
	}

	public void setPrev(Boolean prev) {
		this.prev = prev;
	}

	public Boolean getNext() {
		return next;
	}

	public void setNext(Boolean next) {
		this.next = next;
	}

	public Integer getTotal() {
		return total;
	}

	public void setTotal(Integer total) {
		this.total = total;
	}

	public Integer getCount() {
		return count;
	}

	public void setCount(Integer count) {
		this.count = count;
	}

	public List<?> getData() {
		return data;
	}

	public void setData(List<?> data) {
		this.data = data;
	}

}
