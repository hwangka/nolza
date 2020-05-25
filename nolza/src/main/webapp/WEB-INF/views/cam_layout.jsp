<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %> 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>cam_layout.jsp</title>
 <link href="assets/img/go.png" rel="icon">
  <link href="assets/img/go.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/icofont/icofont.min.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">


<style>
#footer {
    position: absolute;
    left: 0;
    bottom: 0;
    width: 100%;
	padding: 15px 0;
}
</style>
</head>
<body>
	<table  style="width: 100%; height:933px; border-collapse: collapse; ">
		<tr>
			<td colspan="2" height="90px" align="right">
				<tiles:insertAttribute name="cam_header"/>&nbsp;<!-- header.jsp -->
			</td>
		</tr>
		
		<tr>
			<td  align="center" valign="middle">
				<tiles:insertAttribute name="cam_content"/><!-- 중앙에 표시 -->
			</td>
		</tr>
		<tr>
			<td colspan="2" height="83px" id="footer">
				<tiles:insertAttribute name="cam_footer"/><!--footer.jsp -->
			</td>
		</tr>
	</table>
</body>
</html>
