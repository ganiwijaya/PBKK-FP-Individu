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
            {{ flashSession.output() }}
            <div class="card border-0 mb-3">
                <div class="card-body">
                    <div class="row">
                        <div class="col-sm">
                            <h4>Profil</h4>
                            Rincian akun Anda.
                        </div>
                        <div class="col-sm">
                            <div class="dropdown">
                                <button type="button" class="btn btn-primary btn-sm float-right mr-3y" data-toggle="dropdown">
                                    <i class="fa fa-list"></i> Kelola
                                </button>
                                <div class="dropdown-menu dropdown-menu-right">
                                    {{ link_to('/profil/edit', 'Edit', 'class': 'dropdown-item') }}
                                    <form method="post" action="{{ url('/hapus') }}">   
                                        <!-- <input type="submit" name="download" class="btn btn-success btn-sm float-right mr-3" value="Download"> -->
                                        <button type="submit" name="hapus" id="hapus" class="dropdown-item">Hapus Akun</button>
                                    </form>
                                </div>
                            </div>  
                        </div>
                    </div>
                    <hr>
                    Nama<br>
                    <strong>{{ session.get('auth')['username'] }}</strong>
                    <hr>
                    Email<br>
                    <strong>{{ session.get('auth')['email'] }}</strong>
                    <hr>
                    Asal Kota<br>
                    <strong>{{ session.get('auth')['kota'] }}</strong>
                </div>
            </div>
            {% endif %}
        </div>
    </div>
 
</body>
</html>