<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../views/includes/header.jsp"%>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">

<script src="//code.jquery.com/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>

<body>
	<div id="wrapper">
		<%@ include file="../views/includes/nav.jsp"%>
		<div id="page-wrapper" style="min-height: 868px;">
			<div class="row"><span style="display: inline-block; width: 50%; margin-right: 2%;">
				제품 <select name="job">
   	<option value=""></option>
    <option value="냉장고">냉장고</option>
    <option value="선풍기">선풍기</option>
    <option value="공기청정기">공기청정기</option>
	</select>
	
	<input class="datepicker">
	
	<script>
	
   $(function() {
       //input을 datepicker로 선언
       $(".datepicker").datepicker({
           dateFormat: 'yy-mm-dd' //달력 날짜 형태
           ,showOtherMonths: true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
           ,showMonthAfterYear:true // 월- 년 순서가아닌 년도 - 월 순서
           ,changeYear: true //option값 년 선택 가능
           ,changeMonth: true //option값  월 선택 가능                
           ,showOn: "both" //button:버튼을 표시하고,버튼을 눌러야만 달력 표시 ^ both:버튼을 표시하고,버튼을 누르거나 input을 클릭하면 달력 표시  
           ,buttonImage: "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif" //버튼 이미지 경로
           ,buttonImageOnly: true //버튼 이미지만 깔끔하게 보이게함
           ,buttonText: "선택" //버튼 호버 텍스트              
           ,yearSuffix: "년" //달력의 년도 부분 뒤 텍스트
           ,monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 텍스트
           ,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 Tooltip
           ,dayNamesMin: ['일','월','화','수','목','금','토'] //달력의 요일 텍스트
           ,dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'] //달력의 요일 Tooltip
           ,minDate: "-5Y" //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
           ,maxDate: "+5y" //최대 선택일자(+1D:하루후, -1M:한달후, -1Y:일년후)  
       });                    
       
       //초기값을 오늘 날짜로 설정해줘야 합니다.
       $('.datepicker').datepicker('setDate', 'today'); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후)            
   });
</script>			
				<div class="col-sm-12"><table width="100%" class="table table-striped table-bordered table-hover dataTable no-footer dtr-inline" id="dataTables-example" role="grid" aria-describedby="dataTables-example_info" style="width: 200%;">
                                <thead>
         <tr role="row">
	         <th class="sorting_asc" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending" style="width: 168px;">품목코드</th>
	         <th class="sorting_asc" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending" style="width: 168px;">품목이름</th>
	         <th class="sorting_asc" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending" style="width: 168px;">약칭</th>
			 <th class="sorting_asc" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending" style="width: 168px;">품목구분</th>  
		     <th class="sorting_asc" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending" style="width: 168px;">도면번호</th>
	  		 <th class="sorting_asc" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending" style="width: 168px;">도면이미지</th>
	         <th class="sorting_asc" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending" style="width: 168px;">공용여부</th>
	         <th class="sorting_asc" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending" style="width: 168px;">품목설명</th>
        </tr>
                                </thead>
                                <tbody>
           
                                <tr class="gradeA odd" role="row">
                                        <td class="sorting_1">Gecko</td>
                                        <td>Firefox 1.0</td>
                                        <td>Win 98+ / OSX.2+</td>
                                        <td class="center">1.7</td>
                                        <td class="center">A</td>
                                        <td class="center">1.7</td>
                                        <td class="center">1.7</td>
                                        <td class="center">1.7</td>
                                    </tr><tr class="gradeA even" role="row">
                                        <td class="sorting_1">Gecko</td>
                                        <td>Firefox 1.5</td>
                                        <td>Win 98+ / OSX.2+</td>
                                        <td class="center">1.8</td>
                                        <td class="center">A</td>
                                        <td class="center">1.7</td>
                                        <td class="center">1.7</td>
                                        <td class="center">1.7</td>
                                    </tr><tr class="gradeA odd" role="row">
                                        <td class="sorting_1">Gecko</td>
                                        <td>Firefox 2.0</td>
                                        <td>Win 98+ / OSX.2+</td>
                                        <td class="center">1.8</td>
                                        <td class="center">A</td>
                                        <td class="center">1.7</td>
                                        <td class="center">1.7</td>
                                        <td class="center">1.7</td>
                                    </tr><tr class="gradeA even" role="row">
                                        <td class="sorting_1">Gecko</td>
                                        <td>Firefox 3.0</td>
                                        <td>Win 2k+ / OSX.3+</td>
                                        <td class="center">1.9</td>
                                        <td class="center">A</td>
                                        <td class="center">1.7</td>
                                        <td class="center">1.7</td>
                                        <td class="center">1.7</td>
                                    </tr><tr class="gradeA odd" role="row">
                                        <td class="sorting_1">Gecko</td>
                                        <td>Camino 1.0</td>
                                        <td>OSX.2+</td>
                                        <td class="center">1.8</td>
                                        <td class="center">A</td>
                                        <td class="center">1.7</td>
                                        <td class="center">1.7</td>
                                        <td class="center">1.7</td>
                                    </tr><tr class="gradeA even" role="row">
                                        <td class="sorting_1">Gecko</td>
                                        <td>Camino 1.5</td>
                                        <td>OSX.3+</td>
                                        <td class="center">1.8</td>
                                        <td class="center">A</td>
                                        <td class="center">1.7</td>
                                        <td class="center">1.7</td>
                                        <td class="center">1.7</td>
                                    </tr><tr class="gradeA odd" role="row">
                                        <td class="sorting_1">Gecko</td>
                                        <td>Netscape 7.2</td>
                                        <td>Win 95+ / Mac OS 8.6-9.2</td>
                                        <td class="center">1.7</td>
                                        <td class="center">A</td>
                                        <td class="center">1.7</td>
                                        <td class="center">1.7</td>
                                        <td class="center">1.7</td>
                                    </tr><tr class="gradeA even" role="row">
                                        <td class="sorting_1">Gecko</td>
                                        <td>Netscape Browser 8</td>
                                        <td>Win 98SE+</td>
                                        <td class="center">1.7</td>
                                        <td class="center">A</td>
                                        <td class="center">1.7</td>
                                        <td class="center">1.7</td>
                                        <td class="center">1.7</td>
                                    </tr><tr class="gradeA odd" role="row">
                                        <td class="sorting_1">Gecko</td>
                                        <td>Netscape Navigator 9</td>
                                        <td>Win 98+ / OSX.2+</td>
                                        <td class="center">1.8</td>
                                        <td class="center">A</td>
                                        <td class="center">1.7</td>
                                        <td class="center">1.7</td>
                                        <td class="center">1.7</td>
                                    </tr><tr class="gradeA even" role="row">
                                        <td class="sorting_1">Gecko</td>
                                        <td>Mozilla 1.0</td>
                                        <td>Win 95+ / OSX.1+</td>
                                        <td class="center">1</td>
                                        <td class="center">A</td>
                                        <td class="center">1.7</td>
                                        <td class="center">1.7</td>
                                        <td class="center">1.7</td>
                                    </tr></tbody>
                            </table>
                             
                             <c:if test="${pageMaker.prev}">
                            <a href="/board/list?pageNum=${pageMaker.startPage-1}&&amount=${pageMaker.cri.amount}"> prev </a>  &nbsp;&nbsp;&nbsp;&nbsp;
                            </c:if>
                            
                            <c:forEach begin="${pageMaker.startPage}"  end="${pageMaker.endPage}" var="num">
                            	 <a href="/board/list?pageNum=${num}&amount=${pageMaker.cri.amount}&type=${pageMaker.cri.type}&keyword=${pageMaker.cri.keyword}">
  <%-- 현재페이지를 ${param.pageNum } or ${pageMaker.cri.pageNum } or ${critera.pageNum} --%>
                            	 <c:if test="${pageMaker.cri.pageNum == num }" >
                            	 	<b>${num} </b>
                            	 </c:if>
	                            
	                             <c:if test="${pageMaker.cri.pageNum != num }" >
                            	 	${num} 
                            	 </c:if>

                            	
                            	 </a> &nbsp;&nbsp;&nbsp;&nbsp;
                            </c:forEach>
                            
                            <c:if test="${pageMaker.next}">
                            	<a href="/board/list?pageNum=${pageMaker.endPage+1}&&amount=${pageMaker.cri.amount}"> next </a>
                            </c:if>
     &nbsp;&nbsp;&nbsp;&nbsp;                        
   <form action="/page2" method="get">                        
   <select name="type">
    <option >검색조건</option>
   	<option ${pageMaker.cri.type =="T" ? selected : "" } value="T">품목코드</option>
   	<option ${pageMaker.cri.type =="C" ? selected : "" } value="C">제품명</option>
   </select>     
   <input type="text" name="keyword" value="${pageMaker.cri.keyword }"> 
   <input type="submit" value="검색">                      
   </form> 
                            
                            
                            </div>
		
		


		<!-- jQuery -->
		

		<!-- Bootstrap Core JavaScript -->
		<script src="../vendor/bootstrap/js/bootstrap.min.js"></script>

		<!-- Metis Menu Plugin JavaScript -->
		<script src="../vendor/metisMenu/metisMenu.min.js"></script>

		<!-- Custom Theme JavaScript -->
		<script src="../dist/js/sb-admin-2.js"></script>
</body>

</html>