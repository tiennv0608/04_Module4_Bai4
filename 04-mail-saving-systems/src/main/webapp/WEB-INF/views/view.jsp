<%--
  Created by IntelliJ IDEA.
  User: Nguyen Viet Tien
  Date: 07/19/2021
  Time: 9:06 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>$Title$</title>
</head>
<body>
<h1>Settings</h1>
<form:form action="/show" method="post" modelAttribute="email">
    <table>
        <tr>
            <td><form:label path="language">Languages: </form:label></td>
            <td>
                <form:select path="language">
                    <form:options items="${languages}"/>
                </form:select>
            </td>
        </tr>
        <tr>
            <td><form:label path="pageSize">Page size: </form:label></td>
            <td>Show
                <form:select path="pageSize">
                    <form:options items="${pageSizes}"/>
                </form:select>
                emails per page
            </td>
        </tr>
        <tr>
            <td><form:label path="spamFilter">Spam filter: </form:label></td>
            <td>
                <form:checkbox path="spamFilter" />
                <form:label path="spamFilter" >Enable spams filter</form:label>
            </td>
        </tr>
        <tr>
            <td><form:label path="signature">Signature: </form:label></td>
            <td><form:textarea path="signature" cssStyle="width: 200px; height: 100px"/></td>
        </tr>
        <tr>
            <td><input type="submit" value="Update"></td>
            <td><input type="reset" value="Cancel"></td>
        </tr>
    </table>
</form:form>
</body>
</html>
