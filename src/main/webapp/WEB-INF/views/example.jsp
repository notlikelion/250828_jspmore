<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%-- core 라이브러리 : if, forEach. --%>
<html>
<%-- 구버전 --%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> --%>
<%-- 신버전 --%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<head>
    <title>EL & JSTL</title>
</head>
<body>
<%-- EL 문법(JSP 기본 내장)을 사용하여 Model에 담긴 데이터 출력 --%>
    <h3>총 회원 수: ${totalCount} 명</h3>
    <%-- 조건부 렌더링 --%>
    <c:if test="${isManager}">
        <p>[관리자 모드]</p>
    </c:if>

    <h3>회원 목록</h3>
    <ul>
        <c:forEach items="${memberList}" var="name">
            <%-- ${name} --%>
            <li>${name}</li>
        </c:forEach>
     </ul>

    <c:if test="${empty memberList2}">
        <p>등록된 회원이 없습니다.</p>
    </c:if>
</body>
</html>