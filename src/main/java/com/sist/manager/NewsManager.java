package com.sist.manager;


import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;
import org.springframework.stereotype.Component;

import java.util.*;
import java.net.*;
import java.text.SimpleDateFormat;

@Component
public class NewsManager {
	public static void main(String[] args) {
		NewsManager m=new NewsManager();
		m.newsFindData(3,"밀리의 서재");
	}
	
	public List<NewsVO> newsFindData(int cnt, String ss)
	{
		List<NewsVO> list=new ArrayList<NewsVO>();
		{
			try
			{
				String url="http://newssearch.naver.com/search.naver?where=rss&query="
						+URLEncoder.encode(ss, "UTF-8");
				Document doc=Jsoup.connect(url).get();
				Elements title=doc.select("rss > channel > item > title");
				Elements desc=doc.select("rss > channel > item > description");
				Elements link=doc.select("rss > channel > item > link");
				Elements pubDate=doc.select("rss > channel > item > pubDate");
				Elements author=doc.select("rss > channel > item > author");
				for(int i=0;i<cnt;i++)
				{
					/* System.out.println(title.get(i).text());
					System.out.println(desc.get(i).text());
					System.out.println(link.get(i).text());
					System.out.println(new SimpleDateFormat("yyyy-MM-dd").format(new Date(pubDate.get(i).text())));
					System.out.println(author.get(i).text()); */
					NewsVO vo=new NewsVO();
					vo.setTitle(title.get(i).text());
					vo.setDescription(desc.get(i).text());
					vo.setLink(link.get(i).text());
					vo.setPubDate(new SimpleDateFormat("yyyy-MM-dd").format(new Date(pubDate.get(i).text())));
					vo.setAuthor(author.get(i).text());
					list.add(vo);
				}
			}catch(Exception ex)
			{
				ex.printStackTrace();
				
			}
			return list;
		}
	}
}
