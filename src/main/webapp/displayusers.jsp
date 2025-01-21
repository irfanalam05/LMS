<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Display Users</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-5">
    <h2>All Users</h2>

    <!-- Use JSTL to loop through a list of users -->
    <c:forEach var="user" items="${users}">
        <div class="card mt-3">
            <div class="card-body">
                <h5 class="card-title">Name: ${user.name}</h5>
                <p class="card-text">Email: ${user.email}</p>
                <p class="card-text">Country: ${user.country}</p>
            </div>
        </div>
    </c:forEach>
</div>

</body>
</html>
