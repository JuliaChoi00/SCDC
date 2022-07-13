<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- header add by JuliaChoi at 2022.07.04 -->
<%@ include file ="../includes/header.jsp"%>   
<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">

    <!-- jQuery -->
<script src="/resources/vendor/jquery/jquery.min.js"></script>
<!-- <script src="//code.jquery.com/jquery.min.js"></script> -->
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
<body>
	<div id="wrapper">
		<!-- nav add by JuliaChoi at 2022.07.06 -->
        <%@ include file ="../includes/nav.jsp"%>   
        <div id="page-wrapper" style="min-height: 868px;">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header" align="center">재고 현황</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            대/중/그룹 출고 <a href="/board/register">글 등록</a> 
                           <!-- 그룹별 재고금액 :${count} --> 
                           	그룹별 재고금액 : ${pageMaker.total}                   
<!-- 품목구분선택 add by Julia at 2022.07.05 -->                      
		                 <div class="dropdown">
		                    <input type="text">
		               		<a class="dropdown-toggle" data-toggle="dropdown" href="#">    
							 <i class="fa fa-caret-down"></i>
		                    </a>
		                    <ul class="dropdown-menu dropdown-user">
		                        <li><a href="#"><i class="fa fa-gear fa-fw"></i>대분류</a>
		                        </li>
		                        <li class="divider"></li>
		                        <li><a href="#"><i class="fa fa-gear fa-fw"></i>중분류</a>
		                        </li>
		                        <li class="divider"></li>
		                        <li><a href="login.html"><i class="fa fa-gear fa-fw"></i>소분류</a>
		                        </li>
		                    </ul>
		                    <!-- /.dropdown-품목구분 -->
		                </div>
		                <!-- /.dropdown -->
		                
		                
					<!-- <span style="display: inline-block; width: 45%; margin-right: 2%;">  -->
						품목구분 <select name="library">
						   	<option value=""></option>
						    <option value="대분류">대분류(기판)</option>
						    <option value="중분류">중분류(LCD)</option>
						    <option value="소분류">소분류(케이스)</option>
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
<!-- 품목구분선택 add by Julia at 2022.07.05 --> 		                
                </div>
                        <!-- /.panel-heading -->

                        <div class="panel-body">
                            <table width="100%" class="table table-striped table-bordered table-hover">
                                <thead>
                                    <tr>
                                        <th style="text-align:center">품목코드</th>
                                        <th style="text-align:center">재고일자</th>
                                        <th style="text-align:center">재고수량</th>
                                        <th style="text-align:center">재고번호</th>
                                    </tr>
                                </thead>
                                <tbody>

<c:forEach var="part" items="${stock}">                              
                                    <tr class="odd gradeX">
                                        <td><c:out value="${part.partCode}"></c:out></td>
                                        <td><c:out value="${part.stock_date}"></c:out></td>
                                        <td><c:out value="${part.stockQuantity}"></c:out></td>
                                        <td><c:out value="${part.stock_no}"></c:out></td>
                                        
                                    </tr>
</c:forEach>                                  
                                   </tbody>
                            </table>
                            <!--  2022.07.11추가  with page bar by JuliaChoi -->
                         <c:if test = "${pageMaker.prev}">
                            	<a href="/export/report?pageNum=${pageMaker.startPage-1 }&amount=${pageMaker.cri.amount}"> prev </a>
                            </c:if>

                            <!-- num는 페이지 영역 -->
                           <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="num">
                            	&nbsp;&nbsp; 
                            	<a href="/export/report?pageNum=${num}&amount=${pageMaker.cri.amount}">${num}</a> 
                            	&nbsp;&nbsp;&nbsp;
                            	
                            </c:forEach>
                            
                            <c:if test = "${pageMaker.next}">
                            	<a href="/export/report?pageNum=${pageMaker.endPage+1 }&amount=${pageMaker.cri.amount}"> next </a>
                            </c:if>

                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
        </div>
        <!-- /#page-wrapper -->
                              <!-- Modal -->
                            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                            <h4 class="modal-title" id="myModalLabel">Modal title</h4>
                                        </div>
                                        <div class="modal-body">
                                        <!-- 2022.06.13추가 -->
                                            ${bno}번 글이 등록되었습니다.
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                        </div>
                                    </div>
                                    <!-- /.modal-content -->
                                </div>
                                <!-- /.modal-dialog -->
                            </div>
                            <!-- /.modal -->

</div>

    <!-- Bootstrap Core JavaScript -->
    <script src="/resources/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="/resources/vendor/metisMenu/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="/resources/dist/js/sb-admin-2.js"></script>

    <!-- Page-Level Demo Scripts - Tables - Use for reference -->

<!-- 2022-06-13 추가 -->
<script>
//입력된 글번호 알려주기
//var bno="${param.bno}";
var partCode="${partCode}";//읽히는 순서 page-> request->session->application
var state="${state}";
console.log("등록된 글 번호는 : "+bno);

//<!-- 2022-06-14 추가 ,모달창 뒤로가기 할 때 안띄움-->
//알고있어야 하는 내용
//1.history.replaceState(data,title,url) 	히스토리 상태값을 변경해주는 메소드
//2.history.state	 히스토리 상태값을 읽는것(history.replaceState()미사용시 null)
if(!history.state){//javascript에서는 null이면 false
	console.log("히스토리 상태값이 없다");
}else{
	console.log("히스토리 상태값이 있다.");
}//크롬에서 바로전 뒤로 가기 일때는 변경된 내용이 확인 안된다.(why? 크롬에서 바로전 바로가기일때는 
		//내부적으로 모달창 같은게 동작안되게 뭔가 작업을 해놔서)

console.log("현재상태값:" +state);
if(bno!="" && !history.state){//글번호가 있고
	$("#myModal").modal("show");
}
//<!-- 2022-06-14 추가 //var state 추가 --> 
if(state=="remove" && !history.state){
	$(".modal-body").text("삭제가 정상적으로 처리되었습니다.");
	$("#myModal").modal("show");
}else if(state=="modify" && !history.state){
	$(".modal-body").text("수정이 정상적으로 처리되었습니다..");
	$("#myModal").modal("show");
}

history.replaceState({},null,null);

</script>

</body>

</html>
