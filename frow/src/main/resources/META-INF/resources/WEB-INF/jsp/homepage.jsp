<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>JSP with EL and if statement</title>
</head>
<body>

    <c:set var="role" value="${role}" />

    <!-- if role is designer -->
    <c:if test="${role eq 'ROLE_DESIGNER'}">
        <p>Welcome, Designer!</p>
    </c:if>
    
    <!-- else if role is vendor -->
    <c:if test="${role eq 'ROLE_VENDOR'}">
        <p>Welcome, Vendor!</p>
    </c:if>

</body>
</html>
