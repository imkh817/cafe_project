<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>메인</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/style.css">
</head>
<body>
<%@ include file="../include/header.jsp" %>
	
    <div class="container mt-4">
        <div class="row">
            <div class="col-12 text-center map-title">메인페이지</div>
        </div>
    </div>
    <div class="container mt-4">
        <div class="row">
            <c:forEach begin="1" end="8" varStatus="cardIndex">
                <div class="col-sm-4 mb-5">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Special title treatment</h5>
                            <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                            <a href="list" class="btn btn-primary">Go somewhere</a>
                        </div>
                    </div>
                </div>
            </c:forEach>
            <div class="col-sm-4 mb-5">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">사장님 어필 공간</h5>
                            <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                            <a href="clientRecommend" class="btn btn-primary">Go somewhere</a>
                        </div>
                    </div>
                </div>
        </div>
    </div>
</body>
</html>
