<!-- <!DOCTYPE html>
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
</html> -->

<!DOCTYPE html>
<html>
<head>
    <title>mySMArt</title>

    {{ assets.outputCss() }}
    {{ assets.outputJs() }}
</head>
<body>
    <nav class="navbar navbar-expand-sm bg-white navbar-light fixed-top">
            <!-- Brand -->
        <button type="button" id="sidebarCollapse" class="btn btn-putih border-0 rounded-0" >
                <i class="fas fa-bars"></i>&nbsp&nbsp&nbsp mySMArt
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent"></div>
            {% if session.has('auth')%}
                <ul class="nav ml-auto">
                    <li class="nav-item dropdown navbar-primary">
                        <a class="nav-link" href="#" id="navbardrop" data-toggle="dropdown">
                            {{ session.get('auth')['username'] }}
                        </a>
                        <div class="dropdown-menu border-0 rounded-0">
                            <form action="{{url('/logout')}}" method="post">
                                <button type="submit" class="dropdown-item">Keluar</button>
                            </form>
                        </div>
                    </li>
                </ul>
            {% endif %}
            {% if session.has('auth') == false %}
                <ul class="nav navbar-nav ml-auto">
                    <li class="nav-item">
                        {{ link_to('/masuk', 'Masuk', 'class': 'btn btn-putih rounded-0') }}
                    </li>
                </ul>
            {% endif %}
        </div>
    </nav>

    <div class="wrapper">
        <nav id="sidebar" class="active">
            <ul class="list-unstyled components">
                <li class="active">
                    {{ link_to('/backoffice', '<i class="fa fa-home"></i> Utama', 'class': 'nav-link') }}
                </li>
                <li>
                    {{ link_to('/masuk', '<i class="fa fa-star"></i> Profil', 'class': 'nav-link') }}
                </li>
                <li>
                    {{ link_to('/daftar', '<i class="fa fa-list"></i> PPDB', 'class': 'nav-link') }}
                </li>
            </ul>
        </nav>

        <!-- Page Content  -->
        <div id="content">
            <div class="card border-0 rounded-0">
                <div class="card-body">
                    {% if session.has('auth')%}
                    <p>Selamat Datang, <span>{{ session.get('auth')['username'] }}</span></p>
                    {% endif %}
                </div>
            </div>
        </div>
    </div> 
</body>
</html>