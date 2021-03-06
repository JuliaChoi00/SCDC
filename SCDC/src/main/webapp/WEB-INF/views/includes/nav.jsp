<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
                <li >     
                        <i class="fa fa-user fa-fw"></i> ${signedUser} 님
                </li>
                <li>
                <a href="login">
                        <i class="fa fa-sign-out fa-fw"> </i>로그아웃 
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
                                   <a href="/page2">자재 현황</a>
                               </li>
                               <li>
                                   <a href="/export/export">자재 출고</a>
                               </li>
                               <li>
                                   <a href="#">재고 금액 <span class="fa arrow"></span></a>
                                   <ul class="nav nav-third-level">
                                       <li>
                                           <a href="#">대시보드</a>
                                       </li>
                                       <li>
                                           <a href="/report">재고리포트</a>
                                       </li>
                                   </ul>
                                   <!-- /.nav-third-level -->
                               </li>
                     		   <li>
                                   <a href="/export/requestPart">출고요청</a>
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
       	<!-- Navigation -->