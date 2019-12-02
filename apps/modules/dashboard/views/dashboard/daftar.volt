<!DOCTYPE html>
<html>
<head>
    <title>Pendaftaran | SMArt Lawu</title>

    {{ assets.outputCss() }}
    {{ assets.outputJs() }}
</head>
<body>
    <nav class="navbar navbar-expand-sm bg-white navbar-light fixed-top">
            <!-- Brand -->
        <button type="button" id="sidebarCollapse" class="btn btn-putih border-0 rounded-0" >
                <i class="fas fa-bars"></i>&nbsp&nbsp&nbsp SMA Lawu
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
                        {{ link_to('/masuk', 'mySMArt', 'class': 'btn btn-putih rounded-0') }}
                    </li>
                </ul>
            {% endif %}
        </div>
    </nav>

    <div class="wrapper">
        <nav id="sidebar" class="active">
            <ul class="list-unstyled components">
                <li>
                    {{ link_to('', '<i class="fa fa-home"></i> Utama', 'class': 'nav-link') }}
                </li>
                <li class="active">
                    {{ link_to('/daftar', '<i class="fa fa-edit"></i> Daftar', 'class': 'nav-link') }}
                </li>
            </ul>
        </nav>

        <!-- Page Content  -->
        <div id="content">
            <div class="card border-0 rounded-0 mb-3">
                <div class="card-body">
                    <h4>Pendaftaran PPDB 2020</h4>
                    Sudah mendaftar? {{ link_to('/masuk', 'Masuk', 'class': 'font-weight-bold') }} sekarang.
                </div>
            </div>
            <div class="card border-0 rounded-0">
                <div class="card-body">
                    {{ flashSession.output() }}
                    {% if session.has('auth')%}
                    <div class="alert alert-success rounded-0" role="alert">
                        Anda berhasil masuk.
                    </div>
                    {% endif %}
                    {% if session.has('auth') == false %}
                    <form action="{{ url('/post_register') }}" method="POST">
                        <div class="form-group">
                            <label for="username">Nama Lengkap</label>
                            <input type="text" class="form-control rounded-0" id="username" name="username">
                        </div>
                        <div class="form-group">
                            <label for="email">Email</label>
                            <input type="email" class="form-control rounded-0" id="email" name="email">
                        </div>
                        <div class="form-group">
                            <label for="password">Password</label>
                            <input type="password" class="form-control rounded-0" id="password" name="password">
                        </div>
                        <button type="submit" class="btn btn-primary rounded-0">Submit</button>
                    </form>
                    {% endif %}
                </div>
            </div>
        </div>
    </div>
</body>
</html>