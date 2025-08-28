<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>회원 관리 시스템</title>
</head>
<body>
    <div>
        <a href="/">회원 관리</a>
        <hr>
        <h2>회원 목록</h2>
        <button onclick="location.href = '/members/add'">신규 회원 등록</button>
        <ul>
            <c:forEach items="${members}" var="m">
            <li>${m.memberId} ${m.name}</li>
            </c:forEach>
        </ul>
        <c:if test="${empty members}">
            <p>등록된 회원 없음</p>
        </c:if>
        <hr>
        <footer>
            <p>2025년 클라우드 엔지니어링 수업</p>
        </footer>
    </div>
</body>
</html>