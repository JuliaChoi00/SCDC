<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../includes/header.jsp"%>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">

<!-- jQuery -->
<script src="/resources/vendor/jquery/jquery.min.js"></script>
<!-- <script src="//code.jquery.com/jquery.min.js"></script> -->
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>

<body>
	<div id="wrapper">

	<!-- include nav.jsp add by JuliaChoi 2022.07.06 -->
	<%@ include file="../includes/nav.jsp"%>
		<div id="page-wrapper" style="min-height: 868px;">
			<div class="row"><span style="display: inline-block; width: 45%; margin-right: 2%;">
	
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
				         <th class="sorting_asc" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending" style="width: 168px;">요청번호</th>
				         <th class="sorting_asc" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending" style="width: 168px;">생산날짜</th>
				         <th class="sorting_asc" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending" style="width: 168px;">출고상황</th>
						 <th class="sorting_asc" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending" style="width: 168px;">출고날짜</th>  
			        </tr>
				</thead>
					
				<tbody>           
					<c:forEach var="state" items="${state}">                              
						<tr class="odd gradeX">
							<td><c:out value="${state.req_no}"></c:out></td>
							<td><c:out value="${state.makedate}"></c:out></td>
							<td> <a href="/export/export?req_no=${state.req_no}"><c:choose>
								    <c:when test="${state.confirm == '0' }">
								    	출고대기
								    </c:when>
								    <c:otherwise>
								    	출고완료
								    </c:otherwise>
								</c:choose></a>
							</td>
							<td><c:out value="${state.export_date}"></c:out></td>
						</tr>
					</c:forEach>  
				</tbody>
			</table>
		</div>
                             
                         
              </div>		
       </div>
	</div>

    <!-- Bootstrap Core JavaScript -->
    <script src="/resources/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="/resources/vendor/metisMenu/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="/resources/dist/js/sb-admin-2.js"></script>
    

    <!-- Page-Level Demo Scripts - Tables - Use for reference -->
</body>

</html>