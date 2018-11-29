
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>game</title>
    <style>
        td.EMPTY {
            background-color: azure;
        }
        td.SHIP {
            background-color: black;
        }
        td.MISS {
            background-color: fuchsia;
        }
        td.HIT {
            background-color: red;
        }
    </style>
</head>
<body>
    <form method="post" action="shipplacement">
    <table>
        <tr>
            <td>&nbsp;</td>
            <c:forEach items="A,B,C,D,E,F,G,H,I,J" var="col">
                <td>${col}</td>
            </c:forEach>
        </tr>
        <c:forEach begin="1" end="10" var="row">
            <tr>
                <td>${row}</td>
                <c:forEach items="A,B,C,D,E,F,G,H,I,J" var="col">
                    <c:set var="addr" value="${col}${row}"/>
                    <td class="${myGame.user.enemyField.getState(addr)}">
                        <c:if test="${myGame.myTurn}">
                            <input type="radio" name="cell">
                        </c:if>
                      &nbsp;

                    </td>
                </c:forEach>
            </tr>
        </c:forEach>
    </table>



        <table>
        <tr>
            <td>&nbsp;</td>
            <c:forEach items="A,B,C,D,E,F,G,H,I,J" var="col">
                <td>${col}</td>
            </c:forEach>
        </tr>
        <c:forEach begin="1" end="10" var="row">
            <tr>
                <td>${row}</td>
                <c:forEach items="A,B,C,D,E,F,G,H,I,J" var="col">
                    <c:set var="addr" value="${col}${row}"/>
                    <td class="${myGame.user.myField.getState(addr)}">
                      &nbsp;

                    </td>
                </c:forEach>
            </tr>
        </c:forEach>
    </table>
    <button type="submit">FIer</button>
    </form>








</body>
</html>
