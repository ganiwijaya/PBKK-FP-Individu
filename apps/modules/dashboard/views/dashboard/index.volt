<!DOCTYPE html>
<html>
<head>
    <title>SMArt Lawu</title>

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
                        {{ link_to('/masuk', '<i class="fa fa-user"></i> mySMArt', 'class': 'btn btn-primary') }}
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
                    {{ link_to('/daftar', '<i class="fa fa-user"></i> Daftar', 'class': 'nav-link') }}
                </li>
                <li>
                    {{ link_to('/ppdb2019', '<i class="fa fa-list"></i> PPDB', 'class': 'nav-link') }}
                </li>
            </ul>
        </nav>

        <!-- Page Content  -->
        <div id="content">
            <img src="http://smpn8solo.sch.id/asset/img/banner/home-banner.jpg" class="sampul" alt="Responsive image">
            <div class="alert alert-dark border-0" role="alert">
                Pendaftaran PPDB SMA Lawu 2020 telah dibuka! {{ link_to('/daftar', 'Daftar sekarang', 'class': 'font-weight-bold') }}.
            </div> 
            <div class="card border-0">
                <div class="card-body">
                    <h4>Sejarah SMA Lawu</h4>
                    SMA Lawu berdiri pada tanggal 1 Agustus 1960, walaupun Surat Keputusan (SK) sudah terbit dua bulan sebelumnya, tepatnya tanggal 25 Mei 1960. Sekolah ini pada awalnya beralamat di Jalan Jendral Urip Sumoharjo No. 102 Surakarta,  menempati  bekas bangunan Sekolah Guru Besar (SGB) Negeri 2 Puteri Surakarta
                </div>
            </div>
        </div>
    </div>
 
</body>
</html>