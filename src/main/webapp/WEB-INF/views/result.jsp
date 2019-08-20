<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<html>
<head>
<meta charset="UTF-8">
<title>2019-08-20</title>
<style>
*, *:before, *:after {
	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
}

body {
	font-family: 'Nunito', sans-serif;
	color: #384047;
}

table {
	max-width: 960px;
	margin: 10px auto;
}

caption {
	font-size: 1.6em;
	font-weight: 400;
	padding: 10px 0;
}

thead th {
	font-weight: 400;
	background: #8a97a0;
	color: #FFF;
}

tr {
	background: #f4f7f8;
	border-bottom: 1px solid #FFF;
	margin-bottom: 5px;
}

tr:nth-child(even) {
	background: #e8eeef;
}

th, td {
	text-align: left;
	padding: 20px;
	font-weight: 300;
}

tfoot tr {
	background: none;
}

tfoot td {
	padding: 10px 2px;
	font-size: 0.8em;
	font-style: italic;
	color: #8a97a0;
}
</style>

</head>
<body>
	<h2>Result - ${file_name}</h2>
	
<table>
      <caption>Airline Information</caption>
      <thead>
        <tr>
          <th scope="col">unique Airline</th>
          <th scope="col">Numb</th>
        </tr>
      </thead>
      <tfoot>
        <tr>
          <td colspan="2">if u want to change create jenkins job</td>
        </tr>
      </tfoot>
      <tbody>
      <c:forEach var="resultItem" items="${result.result}">
        <tr>
          <th scope="row"><c:out value="${resultItem.name}" /></th>
          <td><c:out value="${resultItem.value}" /></td>
        </tr>
	  </c:forEach>
      </tbody>
    </table>
</body>
</html>
