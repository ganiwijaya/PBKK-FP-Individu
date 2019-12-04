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
        <nav id="sidebar" class="active">
            <ul class="list-unstyled components">
                <li>
                    {{ link_to('', '<i class="fa fa-home"></i> Utama', 'class': 'nav-link') }}
                </li>
                <li>
                    {{ link_to('/daftar', '<i class="fa fa-user"></i> Daftar', 'class': 'nav-link') }}
                </li>
                <li class="active">
                    {{ link_to('/ppdb2', '<i class="fa fa-edit"></i> PPDB', 'class': 'nav-link') }}
                </li>
            </ul>
        </nav>

        <div id="content">
            <div class="card mb-3 border-0">
                <div class="card-body">
                    <h4>Pendaftar PPDB 2019</h4>
                    Data pendaftar.
                </div>
            </div>
            <div class="card border-0">
                <div class="card-body">
                    <table class="table table-hover">
                        <thead-light>
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
            
        </div>
    </div>
 
</body>
</html>