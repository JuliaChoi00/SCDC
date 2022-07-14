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
                    <h1 class="page-header" align="center">자재 출고</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
     
		                
		                
					<!-- <span style="display: inline-block; width: 45%; margin-right: 2%;">  -->
						생산품 <select name="library">
						   	<option value=""></option>
						    <option value="대분류">생산품1</option>
						    <option value="중분류">생산품2</option>
						    <option value="소분류">생산품3</option>
						</select>
	

<!-- 품목구분선택 add by Julia at 2022.07.05 --> 		                
                </div>
                        <!-- /.panel-heading -->

                        <div class="panel-body">
                           <form action="/export/register" method="post">  
                            <table width="100%" class="table table-striped table-bordered table-hover">
                                <thead>
                                    <tr>
                                        <th style="text-align:center">요청번호</th>
                                        <th style="text-align:center">출고여부</th>
                                        <th style="text-align:center">생산날짜</th>
                                        <th style="text-align:center">출고날짜</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th style="text-align:center">1</th>
                                        <th style="text-align:center">출고대기</th>
                                        <th style="text-align:center">2012.12.13</th>
                                        <th style="text-align:center">2012.12.12</th>
                                    </tr>
<!-- <c:forEach var="part" items="${export}">                              
                                    <tr class="odd gradeX">
                                        <td><c:out value="${part.partCode}"></c:out></td>
                                        <td><c:out value="${part.stock_date}"></c:out></td>
                                        <td><c:out value="${part.stockQuantity}"></c:out></td>
                                        <%-- <td><c:out value="${part.stockQuantity}"></c:out></td> --%>
                                     
                                       <td>
                                        <input class="form-control" placeholder="출고량을 적어주세요" type="text" name="exportQuantity" required>
                                       </td>
                                        
                                    </tr>
 </c:forEach>                                  	--!>
                                   </tbody>
                            </table>  
          	                        	
                      	<input type="submit" class="btn btn-primary" value="초기화" onclick='btn_click("main");'>
                      	<input type="reset" class="btn btn-primary" value="저장" onclick='btn_click("stock");'>
                     </form>                      

                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
        </div>
        <!-- /#page-wrapper -->
</div>

    <!-- Bootstrap Core JavaScript -->
    <script src="/resources/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="/resources/vendor/metisMenu/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="/resources/dist/js/sb-admin-2.js"></script>

    <!-- Page-Level Demo Scripts - Tables - Use for reference -->

<script>
    $(document).ready(function() {
        $('#dataTables-example').DataTable({
            responsive: true
        });
    });
</script>

</body>

</html>
