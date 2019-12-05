<!DOCTYPE html>
<html>
<head>
    <title>Masuk | SMArt Lawu</title>

    {{ assets.outputCss() }}
    {{ assets.outputJs() }}
</head>
<body>
    <nav class="navbar navbar-primary bg-primary fixed-top">
            <!-- Brand -->
        <button type="button" id="sidebarCollapse" class="btn btn-primary border-0" >
                <i class="fas fa-bars"></i>&nbsp&nbsp&nbsp SMA Lawu
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent"></div>
            {% if session.has('auth')%}
                <div class="dropdown">
                    <button type="button" class="btn btn-primary" data-toggle="dropdown">
                        {{ session.get('auth')['username'] }}
                    </button>
                    <div class="dropdown-menu dropdown-menu-right">
                        <form action="{{url('/logout')}}" method="post">
                            <button type="submit" class="dropdown-item">Keluar</button>
                        </form>
                    </div>
                </div>
            {% endif %}
            {% if session.has('auth') == false %}
                <ul class="nav navbar-nav ml-auto">
                    <li class="nav-item">
                        {{ link_to('/masuk', '<i class="fa fa-user"></i> mySMArt', 'class': 'btn btn-primary active') }}
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
                <li>
                    {{ link_to('/daftar', '<i class="fa fa-user"></i> Daftar', 'class': 'nav-link') }}
                </li>
                <li>
                    {{ link_to('/ppdb2019', '<i class="fa fa-list"></i> PPDB', 'class': 'nav-link') }}
                </li>
            </ul>
        </nav>

        <div id="content">
            <div class="card border-0 mb-3">
                <div class="card-body">
                    <h4>Masuk ke mySMArt</h4>
                    Masuk dengan akun Anda.
                </div>
            </div>
            <div class="card border-0">
                <div class="card-body">
                    {{ flashSession.output() }}
                    {% if session.has('auth')%}
                    <div class="alert alert-success" role="alert">
                        Anda berhasil masuk.
                    </div>
                    {% endif %}
                    {% if session.has('auth') == false %}
                    <form action="{{url('/login')}}" method="post">
                        <div class="form-group">
                            <label for="email">Email</label>
                            <input type="email" name="em" class="form-control">
                        </div>
                        <div class="form-group">
                            <label for="password">Password</label>
                            <input type="password" name="pw" class="form-control">
                        </div>
                        <button type="submit" class="btn btn-primary">Masuk</button>
                    </form>
                    {% endif %}
                </div>
            </div>
            
        </div>
    </div>

    <div class="modal fade" id="myModal">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content border-0 rounded-0">
            
            <!-- Modal Header -->
            <div class="modal-header border-0">
                <h5 class="modal-title">Masuk ke MySMArt</h5>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
            
            <!-- Modal body -->
            <div class="modal-body">
                <form action="{{url('/login')}}" method="post">
                    <div class="form-group">
                        <label for="email">Email</label>
                        <input type="email" name="em" class="form-control rounded-0">
                    </div>
                    <div class="form-group">
                        <label for="password">Password</label>
                        <input type="password" name="pw" class="form-control rounded-0">
                    </div>
                    <button type="submit" class="btn btn-primary">Submit</button>
                </form>
            </div>
            
            <!-- Modal footer -->
            <div class="modal-footer">
                <a class="btn btn-light nav-link border-0 rounded-0" href="backoffice">
                    Daftar
                </a>
                <a class="btn btn-primary nav-link border-0 rounded-0" href="backoffice">
                    Masuk
                </a>
            </div>
            
            </div>
        </div>
    </div>
 
</body>
</html>