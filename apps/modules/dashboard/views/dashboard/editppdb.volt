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
                    {{ link_to('/profil', '<i class="fa fa-star"></i> Profil', 'class': 'nav-link') }}
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
            <h6>{{ link_to('/ppdb', '<i class="fa fa-arrow-left"></i>', 'class': 'mb-3') }} &nbsp&nbsp&nbsp Edit PPDB</h6>
            <div class="card border-0 mt-3">
                <div class="card-body">
                    <form action="{{ url('/ppdb/edit') }}" method="POST">
                        <input type="hidden" id="id" name="id" value="{{ session.get('auth')['id'] }}">
                        <div class="form-group">
                            <label for="nisn">NISN</label>
                            <input type="text" class="form-control" id="nisn" name="nisn" required value="{{ session.get('auth')['nisn'] }}">
                        </div>
                        <div class="form-group">
                            <label for="sekolah">Asal Sekolah</label>
                            <input type="text" class="form-control" id="sekolah" name="sekolah" required value="{{ session.get('auth')['sekolah'] }}">
                        </div>
                        <div class="form-group">
                            <label for="skhun">No SKHUN</label>
                            <input type="text" class="form-control" id="skhun" name="skhun" required value="{{ session.get('auth')['skhun'] }}">
                        </div>
                        <div class="form-group">
                            <label for="nun">Nilai Ujian Nasional</label>
                            <input type="text" class="form-control" id="nun" name="nun" required value="{{ session.get('auth')['nun'] }}">
                        </div>
                        <div class="row">
                            <div class="col form-group">
                                <label for="ipa">IPA</label>
                                <input type="text" class="form-control" id="ipa" name="ipa" value="{{ session.get('auth')['ipa'] }}" required>
                            </div>
                            <div class="col form-group">
                                <label for="ind">B. Indonesia</label>
                                <input type="text" class="form-control" id="ind" name="ind" value="{{ session.get('auth')['ind'] }}" required>
                            </div>
                            <div class="col form-group">
                                <label for="mtk">Matematika</label>
                                <input type="text" class="form-control" id="mtk" name="mtk" value="{{ session.get('auth')['mtk'] }}" required>
                            </div>
                            <div class="col form-group">
                                <label for="eng">B. Inggris</label>
                                <input type="text" class="form-control" id="eng" name="eng" value="{{ session.get('auth')['eng'] }}" required>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div>
            </div>
            {% endif %}
            
        </div>
    </div>
 
</body>
</html>