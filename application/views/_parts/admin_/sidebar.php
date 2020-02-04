<!-- #Top Bar -->
<section>
    <!-- Left Sidebar -->
    <aside id="leftsidebar" class="sidebar">
        <!-- User Info -->
        <div class="user-info" style="background:url(<?= base_url('assets/img/user-img-background.jpg') ?>)">
            <div class="image">
                <img src="<?=base_url()?>assets/img/geo.jpg" width="48" height="48" alt="User" />
            </div>
            <div class="info-container">
                <div class="name" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Selamat Datang</div>
                <div class="email"></div>
                <div class="btn-group user-helper-dropdown">
                    <i class="material-icons" data-toggle="dropdown" aria-haspopup="true"
                        aria-expanded="true">keyboard_arrow_down</i>
                    <ul class="dropdown-menu pull-right">
                        <li><a href="javascript:void(0);"><i class="material-icons">person</i>Profile</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- #User Info -->
        <!-- Menu -->
        <div class="menu" style="overflow:hidden">
            <ul class="list">
                <li class="header">MAIN NAVIGATION</li>

                <?php if($this->session->userdata('status') == 1) {?>
                <li>
                    <a href="javascript:void(0);" class="menu-toggle">
                        <i class="material-icons">home</i>
                        <span>Landing</span>
                    </a>
                    <ul class="ml-menu">
                        <li>
                            <a href="<?= base_url()?>admin/landing/display_graph">
                                <span>Graph</span>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:void(0);">
                                <span>Banner</span>
                            </a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="<?=base_url('admin/user')?>">
                        <i class="material-icons">face</i>
                        <span>User</span>
                    </a>
                </li>
                <li>
                    <a href="<?=base_url('admin/province')?>">
                        <i class="material-icons">map</i>
                        <span>Province</span>
                    </a>
                </li>
                <li>
                    <a href="<?=base_url('admin/categories')?>">
                        <i class="material-icons">label</i>
                        <span>Categories</span>
                    </a>
                </li>
                <li>
                    <a href="<?= base_url()?>user/dt_kasulampua/post">
                        <i class="material-icons">archive</i>
                        <span>Data Kasulampua</span>
                    </a>
                </li>
                <li>
                    <a href="<?= base_url()?>operator/news">
                        <i class="material-icons">format_align_left</i>
                        <span>Berita</span>
                    </a>
                </li>
                <li>
                    <a href="<?= base_url()?>operator/book">
                        <i class="material-icons">library_books</i>
                        <span>Buku</span>
                    </a>
                </li>

            <?php } else if($this->session->userdata('status') == 2) {?>
                <li>
                    <a href="<?= base_url()?>user/dt_kasulampua/post">
                        <i class="material-icons">archive</i>
                        <span>Data Kasulampua</span>
                    </a>
                </li>
                <li>
                    <a href="<?= base_url()?>operator/news">
                        <i class="material-icons">format_align_left</i>
                        <span>Berita</span>
                    </a>
                </li>
                <li>
                    <a href="<?= base_url()?>operator/book">
                        <i class="material-icons">library_books</i>
                        <span>Buku</span>
                    </a>
                </li>
            <?php } else {?>
                <li>
                    <a href="<?= base_url()?>operator/news">
                        <i class="material-icons">format_align_left</i>
                        <span>Berita</span>
                    </a>
                </li>
                <li>
                    <a href="<?= base_url()?>operator/book">
                        <i class="material-icons">library_books</i>
                        <span>Buku</span>
                    </a>
                </li>
            <?php }; ?>
            </ul>
        </div>
        <!-- #Menu -->
        <!-- Footer -->
        <div class="legal">
            <div class="copyright">
               <a href="javascript:void(0);">BPS - Badan Pusat Statistik SULTRA</a>.
            </div>
        </div>
        <!-- #Footer -->
    </aside>
    <!-- #END# Left Sidebar -->
</section>