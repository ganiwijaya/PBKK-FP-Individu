<!DOCTYPE html>
<html>
<head>
    <title>mySMArt</title>

    {{ assets.outputCss() }}
    {{ assets.outputJs() }}
</head>
<body>
    <nav class="navbar navbar-primary bg-primary fixed-top">
            <!-- Brand -->
        <button type="button" id="sidebarCollapse" class="btn btn-primary border-0" >
                <i class="fas fa-bars"></i>&nbsp&nbsp&nbsp mySMArt
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent"></div>
            {% if session.has('auth')%}
                <ul class="nav ml-auto">
                    <li class="nav-item dropdown">
                        <a class="btn btn-primary border-0" href="#" id="navbardrop" data-toggle="dropdown">
                            {{ session.get('auth')['username'] }}
                        </a>
                        <div class="dropdown-menu">
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
                        {{ link_to('/masuk', 'mySMArt', 'class': 'btn btn-primary') }}
                    </li>
                </ul>
            {% endif %}
        </div>
    </nav>

    <div class="wrapper">
        {% if session.has('auth')%}
        <nav id="sidebar" class="active">
            <ul class="list-unstyled components">
                <li>
                    {{ link_to('/beranda', '<i class="fa fa-home"></i> Utama', 'class': 'nav-link') }}
                </li>
                <li class="active">
                    {{ link_to('/profil', '<i class="fa fa-user"></i> Profil', 'class': 'nav-link') }}
                </li>
                <li>
                    {{ link_to('/ppdb', '<i class="fa fa-list"></i> PPDB', 'class': 'nav-link') }}
                </li>
            </ul>
        </nav>
        {% endif %}

        <div id="content">
            {% if session.has('auth') == false %}
            <div class="card border-0 mb-3">
                <div class="card-body">
                    <h3><center>404 Not found</center></h3>
                </div>
            </div>
            {% endif %}
            {% if session.has('auth')%}
            <div class="card border-0 mb-3">
                <div class="card-body">
                    <h4>Data Anda</h4>
                    Data Anda di PPDB.
                </div>
            </div>
            {{ flashSession.output() }}
            <div class="card border-0 mb-3">
                <div class="card-body">
                    <div class="row">
                        <div class="col-sm">
                            <h5>Akun</h5>
                        </div>
                        <div class="col-sm">
                            {{ link_to('/profil/edit', '<i class="fa fa-edit"></i> Edit', 'class': 'btn btn-primary btn-sm float-right') }}
                        </div>
                    </div>
                    <hr>
                    Nama<br>
                    <strong>{{ session.get('auth')['username'] }}</strong>
                    <hr>
                    Email<br>
                    <strong>{{ session.get('auth')['email'] }}</strong>
                </div>
            </div>
            <div class="card border-0 mb-3">
                <div class="card-body">
                    <div class="row">
                        <div class="col-sm">
                            <h5>Data PPDB</h5>
                        </div>
                        <div class="col-sm">
                            {{ link_to('/profil/editppdb', '<i class="fa fa-edit"></i> Edit', 'class': 'btn btn-primary btn-sm float-right') }}
                        </div>
                    </div>
                    <hr>
                    NISN<br>
                    <strong>{{ session.get('auth')['nisn'] }}</strong>
                    <hr>
                    Asal Sekolah<br>
                    <strong>{{ session.get('auth')['sekolah'] }}</strong>
                    <hr>
                    Nilai Ujian SMP<br>
                    <strong>{{ session.get('auth')['nun'] }}</strong>
                    <hr>
                    Rincian:
                    <div class="row">
                        <div class="col-sm">
                            IPA<br>
                            <strong>{{ session.get('auth')['ipa'] }}</strong>
                        </div>
                        <div class="col-sm">
                            B. Indonesia<br>
                            <strong>{{ session.get('auth')['ind'] }}</strong>
                        </div>
                        <div class="col-sm">
                            Matematika<br>
                            <strong>{{ session.get('auth')['mtk'] }}</strong>
                        </div>
                        <div class="col-sm">
                            B. Inggris<br>
                            <strong>{{ session.get('auth')['eng'] }}</strong>
                        </div>
                    </div>
                </div>
            </div>
            {% endif %}
        </div>
    </div>
 
</body>
</html>