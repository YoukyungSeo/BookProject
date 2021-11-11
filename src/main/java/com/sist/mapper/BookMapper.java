package com.sist.mapper;
import java.util.*;
import org.apache.ibatis.annotations.Select;
import com.sist.vo.*;
/*
 * ISBN           NOT NULL NUMBER         
	CATEGORY                VARCHAR2(100)  
	SUBCATEGORY             VARCHAR2(100)  
	POSTER                  VARCHAR2(500)  
	TITLE                   VARCHAR2(500)  
	SUBTITLE                VARCHAR2(500)  
	WRITER                  VARCHAR2(200)  
	PUBLISHER               VARCHAR2(100)  
	PUBLICATIONDAY          VARCHAR2(20)   
	PRICE                   VARCHAR2(50)   
	DISCOUNT                VARCHAR2(50)   
	ETCINFO                 VARCHAR2(200)  
	INFOTEXT                CLOB           
	IMGS                    VARCHAR2(1000) 
	CONTENTSTABLE           CLOB           
	TAGS                    VARCHAR2(1000) 
	SCORE                   NUMBER(3,1)    
 */
public interface BookMapper {
	
	// 카테고리 목록
	@Select("SELECT DISTINCT subcategory FROM book ORDER BY subcategory")
	public List<String> bookCategory();
	
	// 목록
	@Select("SELECT isbn, title,subtitle,writer,publisher,poster,score,num "
			+ "FROM (SELECT isbn,title,subtitle,writer,publisher,poster,score,rownum as num "
			+ "FROM (SELECT isbn,title,subtitle,writer,publisher,poster,score "
			+ "FROM book ORDER BY subtitle ASC)) "
			+ "WHERE num BETWEEN #{start} AND #{end}")
	public List<BookVO> bookListData(Map map);
	
	// 총 페이지
	@Select("SELECT CEIL(COUNT(*)/12.0) FROM book_info")
	public int bookTotalPage();
	
	
	// 메인페이지 목록 출력(최신순)
	@Select("SELECT isbn,title,poster,num "
			+"FROM (SELECT isbn,title,poster,rownum as num "
			+"FROM (SELECT isbn,title,poster "
			+"FROM book WHERE publicationday LIKE '2021%' "
			+"ORDER BY publicationday DESC)) "
			+"WHERE num BETWEEN 1 AND 6")
	public List<BookVO> bookPubListData();
	
	
	// 메인페이지 목록 출력(인기순)
	@Select("SELECT isbn,title,poster,num "
			+"FROM (SELECT isbn,title,poster,rownum as num "
			+"FROM (SELECT isbn,title,poster "
			+"FROM book WHERE score IS NOT NULL AND publicationday LIKE '2021%' "
			+"ORDER BY score DESC)) "
			+"WHERE num BETWEEN 1 AND 6")
	public List<BookVO> bookScoListData();
}
