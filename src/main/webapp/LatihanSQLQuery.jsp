<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Latihan SQL Query</title>
    </head>
    <body>
        <sql:setDataSource var="conn" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/dbtoko"
                           user="root" password="admin"/>
        
        <sql:query var="result" dataSource="${conn}">
            SELECT * FROM Baju
        </sql:query>
            <table border="1">
                <tr>
                    <th>Kode Baju</th>
                    <th>Merk Baju</th>
                    <th>Ukuran</th>
                </tr>
                <c:forEach var="row" items="${result.rows}">
                    <tr>
                        <td><c:out value="${row.KodeBaju}"/></td>
                        <td><c:out value="${row.MerkBaju}"/></td>
                        <td><c:out value="${row.Ukuran}"/></td>
                    </tr>                    
                </c:forEach>
            </table>
    </body>
</html>
