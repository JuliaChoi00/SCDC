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
                    <h1 class="page-header" align="center">출고 현황</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
           
<!-- 품목구분선택 add by Julia at 2022.07.05 --> 		                
                </div>
                        <!-- /.panel-heading -->

                        <div class="panel-body">
                            <table width="100%" class="table table-striped table-bordered table-hover">
                                <thead>
                                    <tr>
                                        <th style="text-align:center">요청번호</th>
                                        <th style="text-align:center">생산날짜</th>
                                        <th style="text-align:center">출고상황</th>
                                        <th style="text-align:center">출고날짜</th>
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