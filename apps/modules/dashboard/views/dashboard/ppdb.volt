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
        {% if session.has('auth')%}
        <nav id="sidebar" class="active">
            <ul class="list-unstyled components">
                <li>
                    {{ link_to('/beranda', '<i class="fa fa-home"></i> Utama', 'class': 'nav-link') }}
                </li>
                <li>
                    {{ link_to('/profil', '<i class="fa fa-user"></i> Profil', 'class': 'nav-link') }}
                </li>
                <li class="active">
                    {{ link_to('/ppdb', '<i class="fa fa-list"></i> PPDB', 'class': 'nav-link') }}
                </li>
            </ul>
        </nav>
        {% endif %}

        <div id="content">
            {% if session.has('auth') == false %}
            <div class="card mb-3 border-0">
                <div class="card-body">
                    <h3><center>404 Not found</center></h3>
                </div>
            </div>
            {% endif %}
            {% if session.has('auth')%}
            <div class="card mb-3 border-0">
                <div class="card-body">
                    <h4>Pendaftaran PPDB SMA Lawu 2019</h4>
                    Data pendaftar.
                </div>
            </div>
            {{ flashSession.output() }}
            <div class="card mb-3 border-0 mb-3">
                <div class="card-body">
                    <div class="row">
                        <div class="col-sm">
                            <h5>Data Anda</h5>
                        </div>
                        <div class="col-sm">
                            <div class="dropdown">
                                <button type="button" class="btn btn-primary btn-sm float-right mr-3y" data-toggle="dropdown">
                                    <i class="fa fa-list"></i> Kelola
                                </button>
                                <div class="dropdown-menu dropdown-menu-right">
                                    {{ link_to('/ppdb/edit', 'Edit', 'class': 'dropdown-item') }}
                                    <form method="post" action="{{ url('/profil/downloadpdf') }}">   
                                        <!-- <input type="submit" name="download" class="btn btn-success btn-sm float-right mr-3" value="Download"> -->
                                        <button type="submit" name="download" id="download" class="dropdown-item">Download</button>
                                    </form>
                                </div>
                            </div>       
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
            <div class="card border-0">
                <div class="card-body">
                    <h5>Data PPDB</h5>
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>Nama</th>
                                <th>Asal Sekolah</th>
                                <th>IPA</th>
                                <th>B. Indonesia</th>
                                <th>Matematika</th>
                                <th>B. Inggris</th>
                                <th>Total</th>
                            </tr>
                        </thead>
                        <tbody>
                            {% for user in users %}
                            <tr>
                                <th>{{ user.username }}</th>
                                <th>{{ user.sekolah }}</th>
                                <th>{{ user.ipa }}</th>
                                <th>{{ user.ind }}</th>
                                <th>{{ user.mtk }}</th>
                                <th>{{ user.eng }}</th>
                                <th>{{ user.nun }}</th>
                            </tr>
                            {% endfor  %}
                        </tbody>
                    </table>
                </div>
            </div>
            {% endif %}
            
        </div>
    </div>
 
</body>
</html>