<%--
  Created by IntelliJ IDEA.
  User: Nguyen Viet Tien
  Date: 07/15/2021
  Time: 8:16 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>Setting mail info</h2>
<table>
    <tr>
        <td>Languages: </td>
        <td>${email.language}</td>
    </tr>
    <tr>
        <td>Page size: </td>
        <td>${email.pageSize}</td>
    </tr>
    <tr>
        <td>Spam filter: </td>
        <td>${email.spamFilter}</td>
    </tr>
    <tr>
        <td>Signature: </td>
        <td>${email.signature}</td>
    </tr>
</table>
</body>
</html>
