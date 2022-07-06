<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>조달구매시스템</title>

    <!-- Bootstrap Core CSS -->
    <link href="/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="/resources/vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- DataTables CSS -->
    <link href="/resources/vendor/datatables-plugins/dataTables.bootstrap.css" rel="stylesheet">

    <!-- DataTables Responsive CSS -->
    <link href="/resources/vendor/datatables-responsive/dataTables.responsive.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="/resources/dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="/resources/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <div id="wrapper">
	<!-- Navigation -->
	<nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
           <div class="navbar-header">
               <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                   <span class="sr-only">Toggle navigation</span>
                   <span class="icon-bar"></span>
                   <span class="icon-bar"></span>
                   <span class="icon-bar"></span>
               </button>
                <a class="navbar-brand" href="index.html">조달구매시스템</a>
            </div>
            
 <!-- navbar-top  2022.07.05 by JuliaChoi -->
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i> ${user}사용자 님
                    </a>

                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-sign-out fa-fw"></i> 로그아웃 
                    </a>                    
                </li>
            </ul>
            <!-- /.navbar-top-links -->

 <!-- navbar-top  2022.07.05 by JuliaChoi -->
                 
           <div class="navbar-default sidebar" role="navigation">
               <div class="sidebar-nav navbar-collapse">
                   <ul class="nav" id="side-menu">
                       <li class="sidebar-search">
                           <div class="input-group custom-search-form">
                               <input type="text" class="form-control" placeholder="Search...">
                               <span class="input-group-btn">
                               <button class="btn btn-default" type="button">
                                   <i class="fa fa-search"></i>
                               </button>
                           </span>
                           </div>
                           <!-- /input-group -->
                       </li>
 <!-- side bar 2022.07.04 by JuliaChoi -->
                       <li>
                           <a href="#"><i class="fa fa-wrench fa-fw"></i> 회원관리 <span class="fa arrow"></span></a>
                           <ul class="nav nav-second-level">
                               <li>
                                   <a href="#">회원 가입</a>
                               </li>
                               <li>
                                   <a href="#">회원정보 수정 / 삭제</a>
                               </li>
                           </ul>
                           <!-- /.nav-second-level -->
                       </li>
                       <li>
                           <a href="#"><i class="fa fa-wrench fa-fw"></i>정보등록 <span class="fa arrow"></span></a>
                           <ul class="nav nav-second-level">
                               <li>
                                   <a href="#">제품 정보 등록 / 조회</a>
                               </li>
                               <li>
                                   <a href="#">품목 정보 등록 / 조회</a>
                               </li>
                               <li>
                                   <a href="#">회사정보 등록 / 조회</a>
                               </li>
                           </ul>
                           <!-- /.nav-second-level -->
                       </li>
                       <li>
                           <a href="#"><i class="fa fa-wrench fa-fw"></i> 발주계획<span class="fa arrow"></span></a>
                           <ul class="nav nav-second-level">
                               <li>
                                   <a href="#">조달계획 등록 / 조회</a>
                               </li>
                               <li>
                                   <a href="#">계약정보 등록 / 조회</a>
                               </li>
                           </ul>
                           <!-- /.nav-second-level -->
                       </li>
                       <li>
                           <a href="#"><i class="fa fa-wrench fa-fw"></i> 구매발주<span class="fa arrow"></span></a>
                           <ul class="nav nav-second-level">
                               <li>
                                   <a href="#">대시보드</a>
                               </li>
                               <li>
                                   <a href="#">계획확인</a>
                               </li>
                               <li>
                                   <a href="#">발주계획</a>
                               </li>
                               <li>
                                   <a href="#">진척검수</a>
                               </li>
                           </ul>
                           <!-- /.nav-second-level -->
                       </li>
                       <li>
                           <a href="#"><i class="fa fa-wrench fa-fw"></i> 자재입고<span class="fa arrow"></span></a>
                           <ul class="nav nav-second-level">
                               <li>
                                   <a href="#">현황관리</a>
                               </li>
                               <li>
                                   <a href="#">검수확인</a>
                               </li>
                               <li>
                                   <a href="#">입고처리</a>
                               </li>
                               <li>
                                   <a href="#">거래마감</a>
                               </li>
                           </ul>
                           <!-- /.nav-second-level -->
                       </li>
                       <li>
                           <a href="#"><i class="fa fa-wrench fa-fw"></i> 자재출고<span class="fa arrow"></span></a>
                           <ul class="nav nav-second-level">
                               <li>
                                   <a href="#">자재 현황</a>
                               </li>
                               <li>
                                   <a href="#">자재 출고</a>
                               </li>
                               <li>
                                   <a href="#">재고 금액 <span class="fa arrow"></span></a>
                                   <ul class="nav nav-third-level">
                                       <li>
                                           <a href="#">대시보드</a>
                                       </li>
                                       <li>
                                           <a href="#">재고리포트</a>
                                       </li>
                                   </ul>
                                   <!-- /.nav-third-level -->
                               </li>
                               <li>
                                   <a href="#">잔재입고</a>
                               </li>
                           </ul>
                           <!-- /.nav-second-level -->
                       </li>
                   </ul>
               </div>
               <!-- /.sidebar-collapse -->
           </div>
           <!-- /.navbar-static-side -->
       </nav>
       </div>
       </body>
	<!-- Navigation -->