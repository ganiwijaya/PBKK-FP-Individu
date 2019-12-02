<!DOCTYPE html>
<html>
<head>
    <title>Pendaftaran | SMArt Lawu</title>

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
                <li>
                    {{ link_to('/masuk', '<i class="fa fa-star"></i> Masuk', 'class': 'nav-link') }}
                </li>
                <li class="active">
                    {{ link_to('/daftar', '<i class="fa fa-edit"></i> Daftar', 'class': 'nav-link') }}
                </li>
            </ul>
        </nav>

        <!-- Page Content  -->
        <div id="content">
            <div class="card border-0 rounded-0 mb-3">
                <div class="card-body">
                    <h4>Pendaftaran</h4>
                    Pastikan data telah terisi dengan benar.
                </div>
            </div>
            <div class="card border-0 rounded-0">
                <div class="card-body">
                    <form action="{{ url('/post_register') }}" method="POST">
                        <div class="form-group">
                            <label for="username">Username</label>
                            <input type="text" class="form-control rounded-0" id="username" name="username">
                        </div>
                        <div class="form-group">
                            <label for="email">Email</label>
                            <input type="email" class="form-control rounded-0" id="email" name="email">
                        </div>
                        <div class="form-group">
                            <label for="password">Password</label>
                            <input type="password" class="form-control rounded-0" id="password" name="password">
                        </div>
                        <button type="submit" class="btn btn-primary rounded-0">Submit</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>