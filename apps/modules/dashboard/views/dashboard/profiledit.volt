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
                        {{ link_to('/masuk', 'mySMArt', 'class': 'btn btn-putih rounded-0') }}
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
                    {{ link_to('/user', '<i class="fa fa-home"></i> Utama', 'class': 'nav-link') }}
                </li>
                <li class="active">
                    {{ link_to('/profil', '<i class="fa fa-star"></i> Profil', 'class': 'nav-link') }}
                </li>
                <li>
                    {{ link_to('/ppdb', '<i class="fa fa-edit"></i> PPDB', 'class': 'nav-link') }}
                </li>
            </ul>
        </nav>
        {% endif %}

        <div id="content">
            {% if session.has('auth') == false %}
            <div class="card border-0 rounded-0 mb-3">
                <div class="card-body">
                    <h3><center>404 Not found</center></h3>
                </div>
            </div>
            {% endif %}
            {% if session.has('auth')%}
            <div class="card border-0 rounded-0 mb-3">
                <div class="card-body">
                    <h4>Data Anda</h4>
                    Data PPDB
                </div>
            </div>
            <div class="card border-0 rounded-0">
                <div class="card-body">
                    <form action="{{ url('/post_register') }}" method="edit">
                        <div class="form-group">
                            <label for="username">Nama Lengkap</label>
                            <input type="text" class="form-control rounded-0" id="username" name="username" required value="{{ session.get('auth')['username'] }}">
                        </div>
                        <div class="form-group">
                            <label for="email">Email</label>
                            <input type="email" class="form-control rounded-0" id="email" name="email" required value="{{ session.get('auth')['email'] }}">
                        </div>
                        <div class="form-group">
                            <label for="password">Password</label>
                            <input type="password" class="form-control rounded-0" id="password" name="password" required>
                        </div>
                        <button type="submit" class="btn btn-primary rounded-0">Submit</button>
                    </form>
                </div>
            </div>
            {% endif %}
            
        </div>
    </div>
 
</body>
</html>