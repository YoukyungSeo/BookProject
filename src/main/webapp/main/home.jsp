<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BookPedia Home</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.min.js"></script>
<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
</head>
<body>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- Top Background Image Wrapper -->
<div class="bgded overlay" style="background-image:url('../images/demo/backgrounds/02.png');"> 
  <!-- ################################################################################################ -->
  <!-- ################################################################################################ -->
  <!-- ################################################################################################ -->
  <!-- ################################################################################################ -->
  <div id="pageintro" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <article>
      <h3 class="heading">Bookpedia</h3>
      <p>당신의 순간을 공유하세요.</p>
      <footer>
        <form class="group" method="post" action="#">
          <fieldset>
            <input type="text" value="" placeholder="책이름,저자,출판사명으로 검색하세요.">
            <button class="fas fa-search" type="submit" title="Submit"><em>Submit</em></button>
          </fieldset>
        </form>
      </footer>
    </article>
    <!-- ################################################################################################ -->
  </div>
  <!-- ################################################################################################ -->
</div>
<!-- End Top Background Image Wrapper -->

<!-- 카테고리 -->
<div class="wrapper row3">
  <main class="hoc container clear"> 
    <!-- main body -->
    <!-- ################################################################################################ -->
    <section id="introblocks">
      <div class="sectiontitle">
        <h5 class="heading">Category</h5>
        <p>취향에 맞는 작품만 골라보세요.</p>
      </div>
      <ul class="nospace group">
        <li class="one_quarter first">
          <article><a href="#"><img src="../images/category/1.jpg" alt="소설/시" ></a>
            <p>소설/시</p>
            <!-- <footer><a class="btn" href="#">More Details</a></footer> -->
          </article>
        </li>
        <li class="one_quarter">
          <article><a href="#"><img src="../images/category/2.jpg" alt="에세이"></a>
            <p>에세이</p>
          </article>
        </li>
        <li class="one_quarter">
          <article><a href="#"><img src="../images/category/3.jpg" alt="자기계발"></a>
            <p>자기계발</p>
          </article>
        </li>
        <li class="one_quarter">
          <article><a href="#"><img src="../images/category/4.jpg" alt="사회과학"></a>
            <p>사회과학</p>
          </article>
        </li>
      </ul>
    </section>
    <!-- ################################################################################################ -->
    <!-- / main body -->
    <div class="clear"></div>
  </main>
</div>

<!-- 목록 -->
<div class="wrapper row2">
  <section id="references" class="hoc container clear"> 
    <!-- ################################################################################################ -->
    <div class="sectiontitle">
      <h6 class="heading">List</h6>
      <p>최근에 나온 작품을 먼저 확인해보세요.<br>가장 인기있는 작품은 무엇일까요?</p>
    </div>
    <nav class="ref-sort">
      <ul>
        <li class="current"><a href="#">최신</a></li>
        <li><a href="#">인기</a></li>
      </ul>
    </nav>
    <ul class="nospace group ref-img" style="margin-left:50px;">
    <c:forEach var="vo" items="${plist }">
    <c:if test="${s.index%3==0 }">
      <li class="one_third"><a class="imgover" href="#"><img src="${vo.poster }" style="width:280px;height:400px" alt=""></a></li>
    </c:if>
    </c:forEach>
    </ul>
    <footer class="block center"><a class="btn" href="#">View more here</a></footer>
    <!-- ################################################################################################ -->
  </section>
</div>

<!-- 리뷰 -->
<div class="wrapper row3">
  <section class="hoc container clear"> 
    <!-- ################################################################################################ -->
    <div class="sectiontitle">
      <h6 class="heading">Review</h6>
      <p>다른 누군가의 순간을 들여다보세요.</p>
    </div>
    <div id="latest" class="group">
      <article class="one_third first"><a class="imgover" href="#"><img src="../images/demo/348x261.png" alt=""></a>
        <div class="excerpt">
          <time datetime="2045-04-03T08:15+00:00"><i class="far fa-calendar-alt"></i> 03<sup>rd</sup> April 2045 @ 15:00pm</time>
          <h6 class="heading">Aliquam volutpat donec posuere</h6>
          <ul class="meta">
            <li><i class="fas fa-user rgtspace-5"></i> <a href="#">Admin</a></li>
            <li><i class="fas fa-tags rgtspace-5"></i> <a href="#">Tag 1</a>, <a href="#">Tag 2</a></li>
          </ul>
          <p>Ornare dolor phasellus ornare dui vel euismod ultrices orci libero pulvinar justo quis condimentum quam.</p>
          <footer><a class="btn" href="#">Full Story</a></footer>
        </div>
      </article>
      <article class="one_third"><a class="imgover" href="#"><img src="../images/demo/348x261.png" alt=""></a>
        <div class="excerpt">
          <time datetime="2045-04-02T08:15+00:00"><i class="far fa-calendar-alt"></i> 02<sup>nd</sup> April 2045 @ 15:00pm</time>
          <h6 class="heading">Nisl id ligula pellentesque</h6>
          <ul class="meta">
            <li><i class="fas fa-user rgtspace-5"></i> <a href="#">Admin</a></li>
            <li><i class="fas fa-tags rgtspace-5"></i> <a href="#">Tag 1</a>, <a href="#">Tag 2</a></li>
          </ul>
          <p>Felis nunc interdum vitae pretium ac bibendum vel velit phasellus commodo nullam vitae quam cras auctor.</p>
          <footer><a class="btn" href="#">Full Story</a></footer>
        </div>
      </article>
      <article class="one_third"><a class="imgover" href="#"><img src="../images/demo/348x261.png" alt=""></a>
        <div class="excerpt">
          <time datetime="2045-04-01T08:15+00:00"><i class="far fa-calendar-alt"></i> 01<sup>st</sup> April 2045 @ 15:00pm</time>
          <h6 class="heading">Commodo metus proin blandit</h6>
          <ul class="meta">
            <li><i class="fas fa-user rgtspace-5"></i> <a href="#">Admin</a></li>
            <li><i class="fas fa-tags rgtspace-5"></i> <a href="#">Tag 1</a>, <a href="#">Tag 2</a></li>
          </ul>
          <p>Quam molestie luctus vehicula orci massa interdum justo nec rutrum risus augue ut nisl suspendisse elit.</p>
          <footer><a class="btn" href="#">Full Story</a></footer>
        </div>
      </article>
    </div>
    <!-- ################################################################################################ -->
  </section>
</div>

<!-- 실시간 뉴스 -->
<div class="wrapper row2">
  <section id="references" class="hoc container clear"> 
    <div class="news">
    <div class="sectiontitle">
      <h6 class="heading">News</h6>
      <p>작품과 관련된 최신 소식을 확인해보세요.</p>
    </div>
     <div class="row inline">
      <input type=text size=30 class="input-sm" v-model="ss">
      <button v-on:click="newsFind()">검색</button>
     </div>
     <div style="height: 50px"></div>
     <div class="row">
       <table class="table" v-for="vo in news_data">
        <tr>
         <th colspan="2">{{vo.title}}</th>
        </tr>
        <tr>
         <td colspan="2"><a :href="vo.link">{{vo.desc}}</a></td>
        </tr>
        <tr>
         <td class="text-left">{{vo.date}}</td>
         <td class="text-right">{{vo.author}}</td>
        </tr>
       </table>
     </div>
    </div>
  </section>
</div>
</body>
<script>
   new Vue({
	   el:'.news',
	   data:{
			ss:'달러구트 꿈 백화점',
			cnt:3,
			news_data:[]
	   },
   	   mounted:function(){
	   			axios.get("http://localhost:8080/web/news/news_find.do",{
				params:{
					cnt:this.cnt,
					ss:this.ss
				}
			}).then(res=>{
				this.news_data=res.data
			})
	   },
   	   methods:{
	   		newsFind:function(){
				axios.get("http://localhost:8080/web/news/news_find.do",{
	   			params:{
	   				cnt:this.cnt,
	   				ss:this.ss
	   			}
	   		}).then(res=>{
	   			this.news_data=res.data
	   		})
	  }
   }
   })
</script>
</html>