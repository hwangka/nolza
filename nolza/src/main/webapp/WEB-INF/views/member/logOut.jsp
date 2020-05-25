<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:remove var="mem_id" scope="session"/>  <!-- 변수제거, 세션무효화 -->
<%
//session.invalidate();//세션 무효화
response.sendRedirect("camboard.cam_list.do");
%>