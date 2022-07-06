<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index">자재재고현황</a>
               	<form action="/logout" method="post" name="logoutForm">
	                <span style="float: right;">
                		<input type="hidden" name="${ _csrf.parameterName }" value="${ _csrf.token }" />
                		<a href="#" onclick="document.getElementsByName('logoutForm')[0].submit();">로그아웃</a>
    	            </span>
               	</form>
            </div>
            <!-- /.navbar-header -->
            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav in" id="side-menu">
    
                        <li>
                            <a href="dashboard"><i class="fa fa-dashboard fa-fw"></i>대시보드</a>
                        </li>
    <select name="export" style= "width: 70%;">
   	<option value="">발주계획</option>
    <option value="발주계획">발주계획</option>
    <option value="발주계획">발주계획</option>
    <option value="기타">발주계획</option>
	</select> <br>
    
    <select name="export" style= "width: 70%;">
   	<option value="">구매발주</option>
    <option value="자재재고현황">구매발주</option>
    <option value="재재출고">구매발주</option>
    <option value="기타">구매발주</option>
	</select> <br>
    
    <select name="export" style= "width: 70%;">
   	<option value="">자재입고</option>
    <option value="자재재고현황">자재입고</option>
    <option value="재재출고">자재입고</option>
    <option value="기타">자재입고</option>
	</select> <br>
    
    <select name="export" style= "width: 70%;">
   	<option value="">자재출고</option>
    <option value="자재재고현황">자재재고현황</option>
    <option value="재재출고">자재출고</option>
    <option value="기타">리포트</option>
	</select> <br>
                        <li>
                            <a href="plan" class="active"><i class="fa fa-table fa-fw"></i>자재재고현황</a>
                        </li>
                        <li>
                            <a href="inspection"><i class="fa fa-edit fa-fw"></i>자재출고</a>
                        </li>
                        <li>
                            <a href="progress"><i class="fa fa-edit fa-fw"></i>리포트</a>
                        </li><li>
                       
                        
                        
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>