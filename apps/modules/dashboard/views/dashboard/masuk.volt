<!DOCTYPE html>
<html>
<head>
    <title>Masuk | SMArt Lawu</title>

    {{ assets.outputCss() }}
    {{ assets.outputJs() }}
</head>
<body>
    <nav class="navbar navbar-expand-sm bg-white navbar-light fixed-top">
            <!-- Brand -->
        <button type="button" id="sidebarCollapse" class="btn btn-putih border-0 rounded-0" >
                <i class="fas fa-bars"></i>&nbsp&nbsp&nbsp SMA Lawu
        </button>
        <button class="btn btn-putih d-inline-block d-lg-none ml-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <i class="fas fa-user"></i>
        </button>
    </nav>

    <div class="wrapper">
        <nav id="sidebar" class="active">
            <ul class="list-unstyled components">
                <li>
                    {{ link_to('', '<i class="fa fa-home"></i> Utama', 'class': 'nav-link') }}
                </li>
                <li class="active">
                    {{ link_to('/masuk', '<i class="fa fa-star"></i> Masuk', 'class': 'nav-link') }}
                </li>
                <li>
                    {{ link_to('/daftar', '<i class="fa fa-edit"></i> Daftar', 'class': 'nav-link') }}
                </li>
            </ul>
        </nav>

        <div id="content">
            <div class="card border-0 rounded-0 mb-3">
                <div class="card-body">
                    <h4>Masuk</h4>
                    Masuk dengan akun Anda.
                </div>
            </div>
            <div class="card border-0 rounded-0">
                <div class="card-body">
                        {{ flashSession.output() }}
                        {% if session.has('auth')%}
                        <p>Selamat Datang, <span class="h4">{{ session.get('auth')['username'] }}</span></p>
                        <form action="{{url('/logout')}}" method="post">
                            <button type="submit" class="btn btn-primary">Logout</button>
                        </form>
                        {% endif %}
                        {% if session.has('auth') == false %}
                        <form action="{{url('/login')}}" method="post">
                            <div class="form-group">
                                <label for="email">Email</label>
                                <input type="email" name="em" class="form-control rounded-0">
                            </div>
                            <div class="form-group">
                                <label for="password">Password</label>
                                <input type="password" name="pw" class="form-control rounded-0">
                            </div>
                            <button type="submit" class="btn btn-primary rounded-0">Masuk</button>
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