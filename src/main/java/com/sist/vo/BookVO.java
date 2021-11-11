package com.sist.vo;
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
public class BookVO {
	private long isbn;
	private String category,subcategory,poster,title,subtitle,writer,publisher,publicationday,
					price,discount,etcinfo,infotext,imgs,contentstable,tags;
	private double score;
	
	public long getIsbn() {
		return isbn;
	}
	public void setIsbn(long isbn) {
		this.isbn = isbn;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getSubcategory() {
		return subcategory;
	}
	public void setSubcategory(String subcategory) {
		this.subcategory = subcategory;
	}
	public String getPoster() {
		return poster;
	}
	public void setPoster(String poster) {
		this.poster = poster;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getSubtitle() {
		return subtitle;
	}
	public void setSubtitle(String subtitle) {
		this.subtitle = subtitle;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	public String getPublicationday() {
		return publicationday;
	}
	public void setPublicationday(String publicationday) {
		this.publicationday = publicationday;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getDiscount() {
		return discount;
	}
	public void setDiscount(String discount) {
		this.discount = discount;
	}
	public String getEtcinfo() {
		return etcinfo;
	}
	public void setEtcinfo(String etcinfo) {
		this.etcinfo = etcinfo;
	}
	public String getInfotext() {
		return infotext;
	}
	public void setInfotext(String infotext) {
		this.infotext = infotext;
	}
	public String getImgs() {
		return imgs;
	}
	public void setImgs(String imgs) {
		this.imgs = imgs;
	}
	public String getContentstable() {
		return contentstable;
	}
	public void setContentstable(String contentstable) {
		this.contentstable = contentstable;
	}
	public String getTags() {
		return tags;
	}
	public void setTags(String tags) {
		this.tags = tags;
	}
	public double getScore() {
		return score;
	}
	public void setScore(double score) {
		this.score = score;
	}
	
}
