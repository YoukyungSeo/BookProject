package com.sist.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import java.util.*;
import com.sist.vo.*;
import com.sist.mapper.*;
@Repository
public class BookDAO {
	@Autowired
	private BookMapper mapper;
	
	public List<String> bookCategory()
	{
		return mapper.bookCategory();
	}
	public List<BookVO> bookListData(Map map)
	{
		return mapper.bookListData(map);
	}
	public int bookTotalPage() 
	{
		return mapper.bookTotalPage();
	}
	public List<BookVO> bookPubListData()
	{
		return mapper.bookPubListData();
	}
	public List<BookVO> bookScoListData()
	{
		return mapper.bookScoListData();
	}
}
