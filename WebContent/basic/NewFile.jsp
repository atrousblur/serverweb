<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div id="kboard-thumbnail-list">
	
	<!-- 게시판 정보 시작 -->
	<div class="kboard-list-header">
					<div class="kboard-total-count">
				전체 1,312			</div>
				
		<div class="kboard-sort">
			<form id="kboard-sort-form-1" method="get" action="/demo/">
				<input type="hidden" name="mod" value="list"><input type="hidden" name="pageid" value="1"><input type="hidden" name="kboard_list_sort_remember" value="1">				
				<select name="kboard_list_sort" onchange="jQuery('#kboard-sort-form-1').submit();">
					<option value="newest" selected="">최신순</option>
					<option value="best">추천순</option>
					<option value="viewed">조회순</option>
					<option value="updated">업데이트순</option>
				</select>
			</form>
		</div>
	</div>
	<!-- 게시판 정보 끝 -->
	
	<!-- 카테고리 시작 -->
	<div class="kboard-category category-mobile">
	<form id="kboard-category-form-1" method="get" action="/demo/?pageid=1">
		<input type="hidden" name="mod" value="list"><input type="hidden" name="pageid" value="1">		
					<select name="category1" onchange="jQuery('#kboard-category-form-1').submit();">
				<option value="">전체</option>
								<option value="잡담">잡담</option>
								<option value="질문">질문</option>
								<option value="좋은소식">좋은소식</option>
								<option value="기타">기타</option>
							</select>
				
			</form>
</div>

<div class="kboard-category category-pc">
			<ul class="kboard-category-list">
			<li class="kboard-category-selected"><a href="/demo/?mod=list&amp;pageid=1">전체</a></li>
						<li>
				<a href="/demo/?category1=%EC%9E%A1%EB%8B%B4&amp;mod=list&amp;pageid=1">잡담</a>
			</li>
						<li>
				<a href="/demo/?category1=%EC%A7%88%EB%AC%B8&amp;mod=list&amp;pageid=1">질문</a>
			</li>
						<li>
				<a href="/demo/?category1=%EC%A2%8B%EC%9D%80%EC%86%8C%EC%8B%9D&amp;mod=list&amp;pageid=1">좋은소식</a>
			</li>
						<li>
				<a href="/demo/?category1=%EA%B8%B0%ED%83%80&amp;mod=list&amp;pageid=1">기타</a>
			</li>
					</ul>
		
	</div>	<!-- 카테고리 끝 -->
	
	<!-- 리스트 시작 -->
	<div class="kboard-list">
		<table>
			<thead>
				<tr>
					<td class="kboard-list-uid">번호</td>
					<td class="kboard-list-title">제목</td>
					<td class="kboard-list-user">작성자</td>
					<td class="kboard-list-date">작성일</td>
					<td class="kboard-list-vote">추천</td>
					<td class="kboard-list-view">조회</td>
				</tr>
			</thead>
			<tbody>
								<tr class="kboard-list-notice">
					<td class="kboard-list-uid">공지사항</td>
					<td class="kboard-list-thumbnail">
						<a href="/demo/?uid=1851&amp;mod=document&amp;pageid=1">
						<i class="icon-picture"></i>						</a>
					</td>
					<td class="kboard-list-title">
						<a href="/demo/?uid=1851&amp;mod=document&amp;pageid=1">
							<div class="kboard-thumbnail-cut-strings">
																																유튜브 동영상 코드는 텍스트 모드에서 삽입해주세요.								<span class="kboard-comments-count">(21)</span>
							</div>
						</a>
						<div class="kboard-mobile-contents">
							<span class="contents-item kboard-user">admin</span>
							<span class="contents-separator kboard-date">|</span>
							<span class="contents-item kboard-date">2016.06.06</span>
							<span class="contents-separator kboard-vote">|</span>
							<span class="contents-item kboard-vote">추천 7</span>
							<span class="contents-separator kboard-view">|</span>
							<span class="contents-item kboard-view">조회 11849</span>
						</div>
					</td>
					<td class="kboard-list-user">admin</td>
					<td class="kboard-list-date">2016.06.06</td>
					<td class="kboard-list-vote">7</td>
					<td class="kboard-list-view">11849</td>
				</tr>
												<tr class="">
					<td class="kboard-list-uid">1196</td>
					<td class="kboard-list-thumbnail">
						<a href="/demo/?uid=3261&amp;mod=document&amp;pageid=1">
						<i class="icon-picture"></i>						</a>
					</td>
					<td class="kboard-list-title">
						<a href="/demo/?uid=3261&amp;mod=document&amp;pageid=1">
							<div class="kboard-thumbnail-cut-strings">
																																PHP 코드 삽입 테스트								<span class="kboard-comments-count"></span>
							</div>
						</a>
						<div class="kboard-mobile-contents">
							<span class="contents-item kboard-user">코스모스팜</span>
							<span class="contents-separator kboard-date">|</span>
							<span class="contents-item kboard-date">2018.07.13</span>
							<span class="contents-separator kboard-vote">|</span>
							<span class="contents-item kboard-vote">추천 0</span>
							<span class="contents-separator kboard-view">|</span>
							<span class="contents-item kboard-view">조회 20</span>
						</div>
					</td>
					<td class="kboard-list-user">코스모스팜</td>
					<td class="kboard-list-date">2018.07.13</td>
					<td class="kboard-list-vote">0</td>
					<td class="kboard-list-view">20</td>
				</tr>
												<tr class="">
					<td class="kboard-list-uid">1195</td>
					<td class="kboard-list-thumbnail">
						<a href="/demo/?uid=3243&amp;mod=document&amp;pageid=1">
						<i class="icon-picture"></i>						</a>
					</td>
					<td class="kboard-list-title">
						<a href="/demo/?uid=3243&amp;mod=document&amp;pageid=1">
							<div class="kboard-thumbnail-cut-strings">
																								<img src="https://www.cosmosfarm.com/demo/wp-content/plugins/kboard/skin/thumbnail/images/icon-lock.png" alt="비밀글">								asdf								<span class="kboard-comments-count"></span>
							</div>
						</a>
						<div class="kboard-mobile-contents">
							<span class="contents-item kboard-user">adf</span>
							<span class="contents-separator kboard-date">|</span>
							<span class="contents-item kboard-date">2018.07.08</span>
							<span class="contents-separator kboard-vote">|</span>
							<span class="contents-item kboard-vote">추천 0</span>
							<span class="contents-separator kboard-view">|</span>
							<span class="contents-item kboard-view">조회 1</span>
						</div>
					</td>
					<td class="kboard-list-user">adf</td>
					<td class="kboard-list-date">2018.07.08</td>
					<td class="kboard-list-vote">0</td>
					<td class="kboard-list-view">1</td>
				</tr>
												<tr class="">
					<td class="kboard-list-uid">1194</td>
					<td class="kboard-list-thumbnail">
						<a href="/demo/?uid=3239&amp;mod=document&amp;pageid=1">
						<img src="https://www.cosmosfarm.com/demo/wp-content/uploads/kboard_attached/1/201807/5b38c4c405c245212656-120x90.jpg" alt="fdgfdg">						</a>
					</td>
					<td class="kboard-list-title">
						<a href="/demo/?uid=3239&amp;mod=document&amp;pageid=1">
							<div class="kboard-thumbnail-cut-strings">
																<div class="kboard-mobile-contents">
									<img src="https://www.cosmosfarm.com/demo/wp-content/uploads/kboard_attached/1/201807/5b38c4c405c245212656-96x70.jpg" alt="fdgfdg" class="contents-thumbnail">
								</div>
																																fdgfdg								<span class="kboard-comments-count"></span>
							</div>
						</a>
						<div class="kboard-mobile-contents">
							<span class="contents-item kboard-user">gfdg</span>
							<span class="contents-separator kboard-date">|</span>
							<span class="contents-item kboard-date">2018.07.01</span>
							<span class="contents-separator kboard-vote">|</span>
							<span class="contents-item kboard-vote">추천 0</span>
							<span class="contents-separator kboard-view">|</span>
							<span class="contents-item kboard-view">조회 76</span>
						</div>
					</td>
					<td class="kboard-list-user">gfdg</td>
					<td class="kboard-list-date">2018.07.01</td>
					<td class="kboard-list-vote">0</td>
					<td class="kboard-list-view">76</td>
				</tr>
												<tr class="">
					<td class="kboard-list-uid">1193</td>
					<td class="kboard-list-thumbnail">
						<a href="/demo/?uid=3238&amp;mod=document&amp;pageid=1">
						<img src="https://www.cosmosfarm.com/demo/wp-content/uploads/kboard_attached/1/201806/5b377f2f6e0086817979-120x90.png" alt="이미지 테스트">						</a>
					</td>
					<td class="kboard-list-title">
						<a href="/demo/?uid=3238&amp;mod=document&amp;pageid=1">
							<div class="kboard-thumbnail-cut-strings">
																<div class="kboard-mobile-contents">
									<img src="https://www.cosmosfarm.com/demo/wp-content/uploads/kboard_attached/1/201806/5b377f2f6e0086817979-96x70.png" alt="이미지 테스트" class="contents-thumbnail">
								</div>
																																이미지 테스트								<span class="kboard-comments-count"></span>
							</div>
						</a>
						<div class="kboard-mobile-contents">
							<span class="contents-item kboard-user">kjm</span>
							<span class="contents-separator kboard-date">|</span>
							<span class="contents-item kboard-date">2018.06.30</span>
							<span class="contents-separator kboard-vote">|</span>
							<span class="contents-item kboard-vote">추천 0</span>
							<span class="contents-separator kboard-view">|</span>
							<span class="contents-item kboard-view">조회 81</span>
						</div>
					</td>
					<td class="kboard-list-user">kjm</td>
					<td class="kboard-list-date">2018.06.30</td>
					<td class="kboard-list-vote">0</td>
					<td class="kboard-list-view">81</td>
				</tr>
												<tr class="">
					<td class="kboard-list-uid">1192</td>
					<td class="kboard-list-thumbnail">
						<a href="/demo/?uid=3231&amp;mod=document&amp;pageid=1">
						<i class="icon-picture"></i>						</a>
					</td>
					<td class="kboard-list-title">
						<a href="/demo/?uid=3231&amp;mod=document&amp;pageid=1">
							<div class="kboard-thumbnail-cut-strings">
																																fdsfs								<span class="kboard-comments-count"></span>
							</div>
						</a>
						<div class="kboard-mobile-contents">
							<span class="contents-item kboard-user">asdf</span>
							<span class="contents-separator kboard-date">|</span>
							<span class="contents-item kboard-date">2018.06.27</span>
							<span class="contents-separator kboard-vote">|</span>
							<span class="contents-item kboard-vote">추천 0</span>
							<span class="contents-separator kboard-view">|</span>
							<span class="contents-item kboard-view">조회 69</span>
						</div>
					</td>
					<td class="kboard-list-user">asdf</td>
					<td class="kboard-list-date">2018.06.27</td>
					<td class="kboard-list-vote">0</td>
					<td class="kboard-list-view">69</td>
				</tr>
												<tr class="">
					<td class="kboard-list-uid">1191</td>
					<td class="kboard-list-thumbnail">
						<a href="/demo/?uid=3225&amp;mod=document&amp;pageid=1">
						<img src="https://www.cosmosfarm.com/demo/wp-content/uploads/kboard_thumbnails/1/201806/5b2e55b2dfc6d7776847-120x90.png" alt="썸네일 테스트">						</a>
					</td>
					<td class="kboard-list-title">
						<a href="/demo/?uid=3225&amp;mod=document&amp;pageid=1">
							<div class="kboard-thumbnail-cut-strings">
																<div class="kboard-mobile-contents">
									<img src="https://www.cosmosfarm.com/demo/wp-content/uploads/kboard_thumbnails/1/201806/5b2e55b2dfc6d7776847-96x70.png" alt="썸네일 테스트" class="contents-thumbnail">
								</div>
																																썸네일 테스트								<span class="kboard-comments-count">(2)</span>
							</div>
						</a>
						<div class="kboard-mobile-contents">
							<span class="contents-item kboard-user">썸네일</span>
							<span class="contents-separator kboard-date">|</span>
							<span class="contents-item kboard-date">2018.06.23</span>
							<span class="contents-separator kboard-vote">|</span>
							<span class="contents-item kboard-vote">추천 0</span>
							<span class="contents-separator kboard-view">|</span>
							<span class="contents-item kboard-view">조회 109</span>
						</div>
					</td>
					<td class="kboard-list-user">썸네일</td>
					<td class="kboard-list-date">2018.06.23</td>
					<td class="kboard-list-vote">0</td>
					<td class="kboard-list-view">109</td>
				</tr>
												<tr class="">
					<td class="kboard-list-uid">1190</td>
					<td class="kboard-list-thumbnail">
						<a href="/demo/?uid=3224&amp;mod=document&amp;pageid=1">
						<i class="icon-picture"></i>						</a>
					</td>
					<td class="kboard-list-title">
						<a href="/demo/?uid=3224&amp;mod=document&amp;pageid=1">
							<div class="kboard-thumbnail-cut-strings">
																																안녕하새요								<span class="kboard-comments-count"></span>
							</div>
						</a>
						<div class="kboard-mobile-contents">
							<span class="contents-item kboard-user">ㅇㅇ</span>
							<span class="contents-separator kboard-date">|</span>
							<span class="contents-item kboard-date">2018.06.23</span>
							<span class="contents-separator kboard-vote">|</span>
							<span class="contents-item kboard-vote">추천 0</span>
							<span class="contents-separator kboard-view">|</span>
							<span class="contents-item kboard-view">조회 104</span>
						</div>
					</td>
					<td class="kboard-list-user">ㅇㅇ</td>
					<td class="kboard-list-date">2018.06.23</td>
					<td class="kboard-list-vote">0</td>
					<td class="kboard-list-view">104</td>
				</tr>
												<tr class="">
					<td class="kboard-list-uid">1189</td>
					<td class="kboard-list-thumbnail">
						<a href="/demo/?uid=3218&amp;mod=document&amp;pageid=1">
						<i class="icon-picture"></i>						</a>
					</td>
					<td class="kboard-list-title">
						<a href="/demo/?uid=3218&amp;mod=document&amp;pageid=1">
							<div class="kboard-thumbnail-cut-strings">
																																asd								<span class="kboard-comments-count"></span>
							</div>
						</a>
						<div class="kboard-mobile-contents">
							<span class="contents-item kboard-user">asd</span>
							<span class="contents-separator kboard-date">|</span>
							<span class="contents-item kboard-date">2018.06.21</span>
							<span class="contents-separator kboard-vote">|</span>
							<span class="contents-item kboard-vote">추천 0</span>
							<span class="contents-separator kboard-view">|</span>
							<span class="contents-item kboard-view">조회 90</span>
						</div>
					</td>
					<td class="kboard-list-user">asd</td>
					<td class="kboard-list-date">2018.06.21</td>
					<td class="kboard-list-vote">0</td>
					<td class="kboard-list-view">90</td>
				</tr>
												<tr class="">
					<td class="kboard-list-uid">1188</td>
					<td class="kboard-list-thumbnail">
						<a href="/demo/?uid=3213&amp;mod=document&amp;pageid=1">
						<i class="icon-picture"></i>						</a>
					</td>
					<td class="kboard-list-title">
						<a href="/demo/?uid=3213&amp;mod=document&amp;pageid=1">
							<div class="kboard-thumbnail-cut-strings">
																																adasd								<span class="kboard-comments-count"></span>
							</div>
						</a>
						<div class="kboard-mobile-contents">
							<span class="contents-item kboard-user">asdasdasd</span>
							<span class="contents-separator kboard-date">|</span>
							<span class="contents-item kboard-date">2018.06.20</span>
							<span class="contents-separator kboard-vote">|</span>
							<span class="contents-item kboard-vote">추천 0</span>
							<span class="contents-separator kboard-view">|</span>
							<span class="contents-item kboard-view">조회 91</span>
						</div>
					</td>
					<td class="kboard-list-user">asdasdasd</td>
					<td class="kboard-list-date">2018.06.20</td>
					<td class="kboard-list-vote">0</td>
					<td class="kboard-list-view">91</td>
				</tr>
												<tr class="">
					<td class="kboard-list-uid">1187</td>
					<td class="kboard-list-thumbnail">
						<a href="/demo/?uid=3211&amp;mod=document&amp;pageid=1">
						<i class="icon-picture"></i>						</a>
					</td>
					<td class="kboard-list-title">
						<a href="/demo/?uid=3211&amp;mod=document&amp;pageid=1">
							<div class="kboard-thumbnail-cut-strings">
																																SNS 로그인 테스트								<span class="kboard-comments-count"></span>
							</div>
						</a>
						<div class="kboard-mobile-contents">
							<span class="contents-item kboard-user">Himchan Park</span>
							<span class="contents-separator kboard-date">|</span>
							<span class="contents-item kboard-date">2018.06.20</span>
							<span class="contents-separator kboard-vote">|</span>
							<span class="contents-item kboard-vote">추천 0</span>
							<span class="contents-separator kboard-view">|</span>
							<span class="contents-item kboard-view">조회 123</span>
						</div>
					</td>
					<td class="kboard-list-user">Himchan Park</td>
					<td class="kboard-list-date">2018.06.20</td>
					<td class="kboard-list-vote">0</td>
					<td class="kboard-list-view">123</td>
				</tr>
											</tbody>
		</table>
	</div>
	<!-- 리스트 끝 -->
	
	<!-- 페이징 시작 -->
	<div class="kboard-pagination">
		<ul class="kboard-pagination-pages">
			<li class="active"><a href="?pageid=1&amp;mod=list" onclick="return false">1</a></li><li><a href="?pageid=2&amp;mod=list">2</a></li><li><a href="?pageid=3&amp;mod=list">3</a></li><li><a href="?pageid=4&amp;mod=list">4</a></li><li><a href="?pageid=5&amp;mod=list">5</a></li><li><a href="?pageid=6&amp;mod=list">6</a></li><li><a href="?pageid=7&amp;mod=list">7</a></li><li><a href="?pageid=8&amp;mod=list">8</a></li><li><a href="?pageid=9&amp;mod=list">9</a></li><li><a href="?pageid=10&amp;mod=list">10</a></li><li class="next-page"><a href="?pageid=2&amp;mod=list"></a></li><li class="last-page"><a href="?pageid=120&amp;mod=list">마지막</a></li>		</ul>
	</div>
	<!-- 페이징 끝 -->
	
	<!-- 검색폼 시작 -->
	<div class="kboard-search">
		<form id="kboard-search-form-1" method="get" action="/demo/?pageid=1">
			<input type="hidden" name="mod" value="list"><input type="hidden" name="pageid" value="1">			
			<select name="target">
				<option value="">전체</option>
				<option value="title">제목</option>
				<option value="content">내용</option>
				<option value="member_display">작성자</option>
			</select>
			<input type="text" name="keyword" value="">
			<button type="submit" class="kboard-thumbnail-button-small">검색</button>
		</form>
	</div>
	<!-- 검색폼 끝 -->
	
		<!-- 버튼 시작 -->
	<div class="kboard-control">
		<a href="/demo/?mod=editor&amp;pageid=1" class="kboard-thumbnail-button-small">글쓰기</a>
	</div>
	<!-- 버튼 끝 -->
		
		<div class="kboard-thumbnail-poweredby">
		<a href="http://www.cosmosfarm.com/products/kboard" onclick="window.open(this.href);return false;" title="의미있는 워드프레스 게시판">Powered by KBoard</a>
	</div>
	</div>
</body>
</html>