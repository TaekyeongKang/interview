<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="x-ua-compatible" content="ie=edge">

<title></title>

<!-- REQUIRED SCRIPTS -->
<%@ include file="/WEB-INF/jsp/interview/layout/commonLib.jsp" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body class="hold-transition sidebar-mini">
	<div class="wrapper">

		<!-- Navbar -->
		<nav class="main-header navbar navbar-expand navbar-white navbar-light">
			 <tiles:insertAttribute  name="nav"/>
<%-- 			<%@ include file="/WEB-INF/views/layout/nav.jsp" %> --%>
		</nav>
		<!-- /.navbar -->


		<!-- Main Sidebar Container -->
		<aside class="main-sidebar sidebar-dark-primary elevation-4">
			 <tiles:insertAttribute  name="sidebar"/>
<%-- 			<%@ include file="/WEB-INF/views/layout/sidebar.jsp" %> --%>
			<!-- /.sidebar -->
		</aside>

		<!-- content@@@ -->
		<div id="if_list_div" style="position: relative; padding: 0; overflow: hidden; height: 750px;">
			<div class="content-wrapper" style="min-height: 584px;">
			 <tiles:insertAttribute  name="content"/>
			</div>
		</div>
	</div>

	<!-- Main Footer -->
	<footer class="main-footer">
		 <tiles:insertAttribute  name="footer"/>
<%-- 		<%@ include file="/WEB-INF/views/layout/footer.jsp" %> --%>
	</footer>
	</div>
	<!-- ./wrapper -->

	

</body>
</html>







