<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</head>
<body>
<div class="container mt-2">
    <h1 class="text-center">Join Email List</h1>
    <p class="text-center">To join our email list, enter your name and emil address below</p>
    <p class="text-center text-info"><i>${message}</i></p>

    <div class="container w-50">
        <form action="emailList" method="post">
            <input type="hidden" name="action" value="add">
            <div class="row mb-3">
                <label for="email" class="col-form-label">Email</label>
                <input id="email" type="email" name="email" class="form-control" value="${user.email}" required>
            </div>
            <div class="row mb-3">
                <label for="firstName" class="col-form-label">First Name</label>
                <input id="firstName" type="text" name="firstName" class="form-control" value="${user.firstName}" required>
            </div>
            <div class="row mb-3">
                <label for="lastName" class="col-form-label">Last Name</label>
                <input id="lastName" type="text" name="lastName" class="form-control" value="${user.lastName}" required>
            </div>
            <div class="row mb-3">
                <button type="submit" class="btn btn-primary">Join Now</button>
            </div>
        </form>
    </div>
</div>

</body>
</html>