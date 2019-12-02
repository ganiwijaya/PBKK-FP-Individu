<!DOCTYPE html>
<html>
<head>
    <title>SMArt Lawu</title>

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
                <li class="active">
                    {{ link_to('', '<i class="fa fa-home"></i> Utama', 'class': 'nav-link') }}
                </li>
                <li>
                    {{ link_to('/daftar', '<i class="fa fa-edit"></i> Daftar', 'class': 'nav-link') }}
                </li>
            </ul>
        </nav>

        <!-- Page Content  -->
        <div id="content">
            <img src="http://smpn8solo.sch.id/asset/img/banner/home-banner.jpg" class="sampul" alt="Responsive image">
            <div class="alert alert-dark border-0 rounded-0" role="alert">
                Pendaftaran PPDB SMA Lawu 2020 telah dibuka! {{ link_to('/daftar', 'Daftar sekarang', 'class': 'font-weight-bold') }}.
            </div> 
            <div class="card border-0 rounded-0">
                <div class="card-body">
                    <h4>Sejarah SMA Lawu</h4>
                    SMA Lawu berdiri pada tanggal 1 Agustus 1960, walaupun Surat Keputusan (SK) sudah terbit dua bulan sebelumnya, tepatnya tanggal 25 Mei 1960. Sekolah ini pada awalnya beralamat di Jalan Jendral Urip Sumoharjo No. 102 Surakarta,  menempati  bekas bangunan Sekolah Guru Besar (SGB) Negeri 2 Puteri Surakarta
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