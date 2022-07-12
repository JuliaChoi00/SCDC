<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../views/includes/header.jsp"%>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">

<!-- jQuery -->
<script src="/resources/vendor/jquery/jquery.min.js"></script>
<!-- <script src="//code.jquery.com/jquery.min.js"></script> -->
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>

<body>
	<div id="wrapper">

	<!-- include nav.jsp add by JuliaChoi 2022.07.06 -->
	<%@ include file="../views/includes/nav.jsp"%>
		<div id="page-wrapper" style="min-height: 868px;">
			<div class="row"><span style="display: inline-block; width: 45%; margin-right: 2%;">
				분류 <select name="libraryList">
					   	<option selected>선택</option>
					   	<c:forEach items="${ library }" var="product">
					   		<option value=${ product.library }>${ product.library }</option>
					   	</c:forEach>
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

		&nbsp;&nbsp;&nbsp;&nbsp;		
	<!-- 링크가 파일이름이 되기 때문에 엑셀파일의 확장자를
	뒤에 붙이는 것이 좋습니다-->
	<a href="excel">엑셀파일 만들기</a> &nbsp;&nbsp;&nbsp;&nbsp;
	<!-- 엑셀 파일을 읽어서 출력하는 요청 -->
    <a href="excelread">엑셀파일 읽기</a><br/>	
    		
		<div class="col-sm-12">
			<table width="100%" class="table table-striped table-bordered table-hover dataTable no-footer dtr-inline productTable" id="dataTables-example" role="grid" aria-describedby="dataTables-example_info" style="width: 200%;">
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
				         <th class="sorting_asc" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending" style="width: 168px;">재고수량</th>
				         <th class="sorting_asc" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending" style="width: 168px;">단가</th>
				         <th class="sorting_asc" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending" style="width: 168px;">재고금액</th>
			        </tr>
				</thead>
					
				<tbody>           

				</tbody>
			</table>
		</div>
                             
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
                         
   <form action="/page" method="get">                        
   <select name="type">
    <option >검색조건</option>
   	<option ${pageMaker.cri.type =="T" ? selected : "" } value="T">품목코드</option>
   	<option ${pageMaker.cri.type =="C" ? selected : "" } value="C">제품명</option>
   </select>     
   <input type="text" name="keyword" value="${pageMaker.cri.keyword }"> 
   <input type="submit" value="검색">                      
   </form> 
                            
                            
              </div>		
       </div>
	</div>

    <!-- Bootstrap Core JavaScript -->
    <script src="/resources/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="/resources/vendor/metisMenu/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="/resources/dist/js/sb-admin-2.js"></script>
    
    
    <script>
    	$("select[name=libraryList]").on("change", function() {
    		$.ajax({
        		url: "/api/report",
        		type: "get",
        		data: {
        			"libraryList" : $("select[name=libraryList]").val()
        		},
        		success: function(data) {
        			
        			console.log(data);
        			
        			$("table.productTable tbody").empty();
        			
        			for(var key in data) {
        			$("table.productTable tbody").append(
	                    `<tr class="odd gradeX">
	    	                <td>` + data[key].partCode + `</td>
	    	                <td>` + data[key].partName + `</td>
	    	                <td>` + data[key].nickName + `</td>
	    	                <td>` + data[key].library + `</td>
	    	                <td>` + data[key].drw_No + `</td>
	    	                <td>` + data[key].drw_Img + `</td>
	    	                <td>` + data[key].common + `</td>
	    	                <td>` + data[key].remark + `</td>
	    	                <td>` + data[key].stockQuantity + `</td>
	    	                <td>` + data[key].unitPrice + `</td>
	    	                <td>` + data[key].totalPrice + `</td>
	                    </tr>`
	                )
       			}
        		}
        			
        	})
    	})
    	
    </script>

    <!-- Page-Level Demo Scripts - Tables - Use for reference -->
</body>

</html>