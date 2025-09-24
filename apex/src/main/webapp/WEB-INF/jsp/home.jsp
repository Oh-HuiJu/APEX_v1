<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/main.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/sub.css">
    <title>APEX</title>
</head>
<body>
    <header id="header">
        <%@ include file="includes/header.jsp" %>
    </header>
    
    <main id="main-con">
        
    </main>
    
    <footer id="footer">
        <%@ include file="includes/footer.jsp" %>
    </footer>
    
    <script src="${pageContext.request.contextPath}/static/js/cookie.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/router.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/main.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/sub.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/multi_language.js"></script>

</body>
</html>