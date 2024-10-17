<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Murach's Java Servlets and JSP</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="/main.css" type="text/css"/>
</head>

<body>
<div class="container mt-5 w-50">
    <h1 class="text-center">Thanks for joining our email list</h1>

    <section class="mt-4">
        <h5>Here is the information that you entered:</h5>
        <div class="mb-3">
            <span class="form-control-plaintext">Email: ${user.email}</span>
        </div>

        <div class="mb-3">
            <span class="form-control-plaintext">First Name: ${user.firstName}</span>
        </div>

        <div class="mb-3">
            <span class="form-control-plaintext">Last Name: ${user.lastName}</span>
        </div>
    </section>

    <section class="mt-4 text-center">
        <p>To enter another email address, click on the Back button in your browser or the Return button shown below.</p>

        <form action="emailList" method="get">
            <input type="hidden" name="action" value="join">
            <button type="submit" class="btn btn-primary">Return</button>
        </form>
    </section>
</div>

</body>
</html>
