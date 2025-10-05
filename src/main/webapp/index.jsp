<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
</head>
<body>
    
<h1>Man's CD list</h1>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<table>
    <tr>
        <th>Description</th>
        <th>Price</th>
        <th></th>
    </tr>
    <c:forEach var="product" items="${products}">
	<tr>
                <td>${product.description}</td>
                <td>$${product.price}</td>
                <td class="action-cell">
                    <form action="cart" method="post">
                        <input type="hidden" name="productCode" value="${product.code}">
                        <input type="hidden" name="action" value="add">
                        <input type="submit" value="Add To Cart">
                    </form>
                </td>
            </tr>
    </c:forEach>
</table>
        
</body>
</html>