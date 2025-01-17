<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% int qNo = (Integer)request.getAttribute("qNo");
    	String ctgr = (String)request.getAttribute("ctgr");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>***Answer***</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="/se2/js/service/HuskyEZCreator.js" charset="utf-8"></script> 
<link rel="stylesheet" href="/css/board_css/qna.css">
<link rel="styleSheet" href="/css/common_css/layout.css">
</head>
<body id="body1">
	<div class="wrapper">
		<header>
			<div class="header">
				<%@include file="/WEB-INF/views/common/header.jsp"%>
			</div>
		</header>
		<section>
			<div class="mainContainer">
				<div class="side-nav">
					<%@include file="/WEB-INF/views/common/nav.html"%>
				</div>
				<div class="mainContent" style="width: 943px;">
					<!-- 만드신 콘텐츠 넣으세요!!!!!!!!!!!!!!!!width 반드시 943!!!!!!!!!!!!!!!!!!!!!!!!!! -->
					
<!-- @@@@@@@@@@@@@@@@@@@@@ 답변 쓰기 관리자만 @@@@@@@@@@@@@@@@@@@-->
<!-- @@@@@@@@@@@@@@@@@@@@@ 답변 쓰기 관리자만 @@@@@@@@@@@@@@@@@@@-->
<!-- @@@@@@@@@@@@@@@@@@@@@ 답변 쓰기 관리자만 @@@@@@@@@@@@@@@@@@@-->
<!-- @@@@@@@@@@@@@@@@@@@@@ 답변 쓰기 관리자만 @@@@@@@@@@@@@@@@@@@-->
<!-- @@@@@@@@@@@@@@@@@@@@@ 답변 쓰기 관리자만 @@@@@@@@@@@@@@@@@@@-->
	
	
			<div class="qnaContainer">
			
				<ul id="qna">
					<li>Q&A</li>
				</ul>
				<form action="/aInsert" method="post" id="frm">
					<div class="table-wrapper">
					<table class="table qna-view-table">
						<thead>
							<tr>
								<th>subject</th>
								<td>
									<img src="/img/board_img/realRe.png">
									<input type="text" name="aTitle" class="inputText" id="title">
									<input type="hidden" name="qNoRef" value="<%=qNo%>">
									<input type="hidden" name="ctgr" value="<%=ctgr%>">
								</td>
							</tr>
							<tr>
								<th>Writer</th>
								<td><img src="/img/common_img/footerlogo2.png" height="27">
								<input type="hidden" name="aWriter" class="inputText"
								value="admin"></td>
							</tr>
						
						</thead>
						<tbody>
							<tr>
							
							<td colspan="2" style="padding-left:100px;">
									<textarea id="ir1" name="aContent" cols="100" rows="10"></textarea>
										<script type="text/javascript">
											$(document).ready(function(){
											var oEditors = [];
											nhn.husky.EZCreator.createInIFrame({
											 oAppRef: oEditors,
											 elPlaceHolder: "ir1",
											 sSkinURI: "/se2/SmartEditor2Skin.html",
											 fCreator: "createSEditor2"
											});

											$("#insertBtn").click(function(){
												 oEditors.getById["ir1"].exec("UPDATE_CONTENTS_FIELD", []);
												  if($("#title").val()==""){
														alert("제목을 입력하세요");
														return false;
													}else if($("#ir1").val()=="<p><br></p>"){
														alert("내용을 입력하세요");
														return false;
													} 
												 // 에디터의 내용에 대한 값 검증은 이곳에서
												 // document.getElementById("ir1").value를 이용해서 처리한다.
												 try {
												     $("#frm").submit();
												     
												 } catch(e) {}
											});											
											

										});
											 </script>
								</td>
							</tr>
					</table>
				</div>
				<div class="qna-btn">
					<br>
					
					<a href="/qnaList" class="btn btn-default btn-md" >List</a>
					<button type="button" id="insertBtn" class="btn btn-default btn-md insertBtn" >등록</button>
				
				</div>
				</form>
			</div>
	
				</div>
			</div>
		</section>
		<footer>
			<div class="footer">
				<%@include file="/WEB-INF/views/common/footer.jsp"%>
			</div>
		</footer>
	</div>
	
</body>
</html>