<!DOCTYPE html>
<html>
<head>
    <title>Backoffice</title>
</head>
<body>
    <h1>Hello World! from Backoffice module</h1>
    {% if session.has('auth')%}
    <p>Selamat Datang, <span class="h4">{{ session.get('auth')['username'] }}</span></p>
    <form action="{{url('/logout')}}" method="post">
        <button type="submit" class="btn btn-primary">Logout</button>
    </form>
    {% endif %}
</body>
</html>