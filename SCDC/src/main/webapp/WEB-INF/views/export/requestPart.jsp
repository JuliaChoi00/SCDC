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
				
		&nbsp;&nbsp;&nbsp;&nbsp;		

    		
		<div class="col-sm-12">
			<form action="requestPart" method="post">
				<table width="100%" class="table table-striped table-bordered table-hover dataTable no-footer dtr-inline productTable" id="request_table" role="grid" aria-describedby="dataTables-example_info" style="width: 200%;">
					<thead>
				         <tr role="row">
					         <th class="sorting_asc" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending" style="width: 168px;">요청번호</th>
					         <th class="sorting_asc" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending" style="width: 168px;">품목코드</th>
					         <th class="sorting_asc" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending" style="width: 168px;">공정</th>
							 <th class="sorting_asc" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending" style="width: 168px;">생산날짜</th>  
							 <th class="sorting_asc" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending" style="width: 168px;">출고요청량</th>  
				        </tr>
					</thead>
	
					<tbody>           
						<tr>
							<td><input type="int" class="odd gradeX" name="req_no"></td>			
							<td><input type="text" class="odd gradeX" name="partCode"></td>			
							<td><input type="text" class="odd gradeX" name="materialProcess"></td>			
							<td><input type="text" class="odd gradeX" name="makeDate"></td>
							<td><input type="int" class="odd gradeX" name="requestQuantity"></td>												
						</tr>
					</tbody>
					
				</table>
				
	          	<input type="submit" id="requestbtn" value="요청하기" >
	          	<input type="reset" value="초기화" >
	          	<input type="button" id="btn-add-row" value="추가하기">
	          	<input type="button" id="btn-delete-row" value="삭제하기">
	        </form>  	
		</div>

     &nbsp;&nbsp;&nbsp;&nbsp;                 
                            
              </div>		
       </div>
	</div>
	

	<script>
		$('#btn-add-row').click(function() {
			$("#tbody").append(
					"<tr>
						<td><input type="int" class="odd gradeX" name="req_no"></td>			
						<td><input type="int" class="odd gradeX" name="partCode"></td>			
						<td><input type="text" class="odd gradeX" name="process"></td>			
						<td><input type="int" class="odd gradeX" name="requestQuantity"></td>			
						<td><input type="int" class="odd gradeX" name="makeDate"></td>			
				</tr>");
		});
		$('#btn_delete_row").click(function() {
			$("#request_table > tbody > tr:list").remove();
		});
	</script>
	

    <!-- Bootstrap Core JavaScript -->
    <script src="/resources/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="/resources/vendor/metisMenu/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="/resources/dist/js/sb-admin-2.js"></script>

    <!-- Page-Level Demo Scripts - Tables - Use for reference -->
</body>

</html>