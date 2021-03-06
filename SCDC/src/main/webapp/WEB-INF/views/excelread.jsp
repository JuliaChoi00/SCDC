<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../views/includes/header.jsp"%>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">

<!-- jQuery -->
<script src="/resources/vendor/jquery/jquery.min.js"></script>
<!-- <script src="//code.jquery.com/jquery.min.js"></script> -->
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>엑셀 파일 내용 출력</title>
</head>
<body>

	<div id="wrapper">	
		<table width="100%" class="table table-striped table-bordered table-hover dataTable no-footer dtr-inline productTable" id="dataTables" role="grid" aria-describedby="dataTables_info" style="width: 80%;">
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
				</tr>
			</thead>
			
			<tbody>           
				<c:forEach var="excel" items="${excelList}">
					<tr class="odd gradeX">
						<td>${excel.partCode}</td>			
						<td>${excel.partName}</td>
						<td>${excel.nickName}</td>
						<td>${excel.library}</td>
						<td>${excel.drw_No}</td>
						<td>${excel.drw_Img}</td>
						<td>${excel.common}</td>
						<td>${excel.remark}</td>
						<td>${excel.stockQuantity}</td>
					</tr>
				</c:forEach>				
			</tbody>
		
		</table>
	</div>
</body>
</html>
