<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="../_layout/header.jsp" />
<h2>회원 등록</h2>
<%-- <form action="/members/add" method="post"> --%>
<form method="post">
    <input name="memberId" required placeholder="id입니다">
    <input name="name" required placeholder="이름입니다">
    <button>등록</button>
    <button type="button" onclick="location.href = '/members'">목록으로</button>
</form>
<jsp:include page="../_layout/footer.jsp" />