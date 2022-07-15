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
			<h1 class="page-header" align="center">출고 현황</h1>
		
			<div class="row"><span style="display: inline-block; width: 45%; margin-right: 2%;">	
				<div class="col-sm-12">				
					<table width="100%" class="table table-striped table-bordered table-hover dataTable no-footer dtr-inline productTable" id="dataTables-example" role="grid" aria-describedby="dataTables-example_info" style="width: 200%;">
						
						<thead>
					         <tr role="row">
						         <th class="sorting_asc" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending" style="width: 168px;">번호</th>
						         <th class="sorting_asc" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending" style="width: 168px;">생산일자</th>
						         <th class="sorting_asc" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending" style="width: 168px;">출고상황</th>
								 <th class="sorting_asc" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending" style="width: 168px;">출고일자</th>  
					        </tr>
						</thead>
							
						<tbody>           
		
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