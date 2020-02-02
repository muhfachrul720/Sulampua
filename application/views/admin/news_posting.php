<section class="content">
    <div class="container-fluid">
        <div class="block-header">
            <h2>
                NEWS POSTING MANAGEMENT
                <small>Halaman Untuk Mengelola Berita Yang Akan Di Posting</small>
            </h2>
        </div>

        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12">
            <?php if($this->session->flashdata() != NULL) {?>
                <div class="alert alert-info alert-dismissible" role="alert">
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>
                    <?= $this->session->flashdata('alert')?>
                </div>
            <?php };?>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12">
                <div class="card">
                <form action="<?= base_url() ?>/operator/news" method="post">
                    <div class="body" style="padding-top:8px; padding-bottom:8px">
                        <p><small>Pencarian Berdasar Nama : </small></p>
                        <div style="display:flex;">
                            <div style="width: 85%">
                                <input type="text" name="search" id="" placeholder="Cari Disini" class="form-control">
                            </div>
                            <div style="width: 14%; margin-left:2%">
                                <input type="submit" value="Cari.." class="btn btn-success" style="width:100%;margin-top:2px">
                            </div>
                        </div>
                    </div>
                </form>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="card">
                    <div class="header">
                        <a href="<?= base_url()?>operator/news/display_add" class="btn btn-primary">Tambah</a>
                        <button type="button" class="btn btn-danger waves-effect" id="deleteBtn">Hapus</button>
                    </div>
                    <div class="body">
                            <table id="mainTable" class="table table-striped">
                                <thead style="font-size:12px">
                                    <tr>
                                    <th class="inputDelete" style="display:none">Input</th>    
                                    <th>No</th>
                                    <th>Title</th>
                                    <th>Posted</th>
                                    <th>Description</th>
                                    <th>Date</th>
                                    <th>Image</th>
                                    <th>Aksi</th>
                                </tr>
                            </thead>
                            <tbody style="font-size:12px">
                                <?php 
                                $no = $this->uri->segment(4)+1;
                                foreach($news as $u) {?>
                                <tr>
                                    <td class="inputDelete" style="display:none"> 
                                        <input type="checkbox" id="checkbox_<?= $u->nid?>" class="filled-in" value="<?= $u->nid?>" name="id[]"/>
                                        <label for="checkbox_<?= $u->nid?>"></label>
                                    </td>
                                <td><?= $no++?></td>
                                <td style="text-transform:capitalize"><?= $u->nname?></td>
                                <td style="text-transform:capitalize"><?= $u->uname?></td>
                                <td><?= $u->nsect?></td>
                                <td><?= $u->ndate?></td>
                                <td>
                                    <div style="border:solid 1px gray; width:150px;">
                                        <img width="100%" src="<?= base_url()?>upload/data_img/<?= $u->nimg?>" alt="">
                                    </div>
                                </td>
                                <td>
                                    <a href="<?= base_url()?>operator/news/display_add/<?= $u->nid?>" value="<?= $u->nid?>" type="button" class="btn btn-danger" data-toggle="modal"><i class="material-icons">edit</i></a>
                                </td>
                                </tr>
                                <?php };?>
                            </tbody>
                            <tfoot>
                                <tr>
                                    <th><strong>TOTAL</strong></th>
                                    <th><?= $no - 1?></th>
                                </tr>
                            </tfoot>
                        </table>
                        <button type="button" data-toggle="modal" data-target="#smallModal" disabled class="btn btn-danger inputDelete" id="btnDelete" style="display:none" value="operator/news/delete_news">Hapus</button>
                        <br>
                        <?=
                            $this->pagination->create_links();
                        ?>
                    </div>
                </div>
            </div>
        </div>

    </div>
</section>