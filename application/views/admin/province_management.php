<section class="content">
        <div class="container-fluid">
            <div class="block-header">
                <h2>
                    PROVINCE MANAGEMENT
                    <small>Halaman Untuk Mengelola Provinsi</small>
                    <input type="checkbox" style="display:block !important">
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
                    <form action="<?= base_url() ?>admin/province/index" method="post">
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
                            <button type="button" class="btn btn-primary waves-effect" data-toggle="modal" data-target="#defaultModal" id="addBtn">Tambah</button>
                            <script>
                                $('#addBtn').on('click', function(){
                                    $('#iptModName').val('');
                                    $('#iptModPass').val('');
                                    $('#iptModLv').val('0').change();
                                    $('#formTarget').attr('action', '<?=base_url()?>admin/province/add_province');
                                });
                            </script>
                            <button type="button" class="btn btn-danger waves-effect" id="deleteBtn">Hapus</button>
                        </div>
                        <div class="body">
                                <table id="mainTable" class="table table-striped">
                                    <thead>
                                        <tr>
                                        <th class="inputDelete" style="display:none">Input</th>    
                                        <th>No</th>
                                        <th>Province Name</th>
                                        <th>Total User</th>
                                        <th>Aksi</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php 
                                    $no = $this->uri->segment(4) + 1;
                                    foreach($province as $u) {?>
                                    <tr>
                                        <td class="inputDelete" style="display:none"> 
                                            <input type="checkbox" id="checkbox_<?= $u->id?>" class="filled-in" value="<?= $u->id?>" name="id[]"/>
                                            <label for="checkbox_<?= $u->id?>"></label>
                                        </td>
                                    <td><?= $no++?></td>
                                    <td style="text-transform:capitalize"><?= $u->name?></td>
                                    <td style="text-transform:capitalize">Null</td>
                                        <td>
                                            <button value="<?= $u->id?>" type="button" class="btn btn-danger editBtn" data-toggle="modal" data-target="#defaultModal"><i class="material-icons">edit</i></button>
                                        </td>
                                    </tr>
                                    <?php };?>
                                    <script>
                                        $('.editBtn').on('click', function(){
                                            var id = $(this).val();
                                            $.ajax({
                                                type: "POST",
                                                url: '<?= base_url()?>admin/province/get_data_individual',
                                                data: {id:id},
                                                dataType : 'JSON',
                                                success: function(response){
                                                    $('#iptModName').val(response['Name']);
                                                    $('#iptModId').val(id);
                                                    $('#formTarget').attr('action', '<?=base_url()?>admin/province/update_province');
                                                },
                                                error: function(){
                                                    alert('Terjadi Sebuah Kesalahan...');
                                                }
                                            });
                                        });
                                    </script>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <th><strong>TOTAL</strong></th>
                                        <th><?= $no - 1 ?></th>
                                    </tr>
                                </tfoot>
                            </table>
                            <button type="button" data-toggle="modal" data-target="#smallModal" disabled class="btn btn-danger inputDelete" id="btnDelete" style="display:none" value="admin/province/delete_province">Hapus</button>
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

    <div class="modal fade" id="defaultModal" tabindex="-1" role="dialog">
    <form id="formTarget" action="" method="post">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="defaultModalLabel">Tambah Provinsi</h4>
                <small>Menambahkan Provinsi Baru Nantinya Dipakai Saat Menambah User</small>
            </div>
           
            <div class="modal-body">
                <div class="row clearfix">
                    <div class="col-sm-12">
                        <input type="hidden" value="" id="iptModId" name="id">
                        <div class="form-group">
                            <div class="form-line">
                                <label for="iptModName"><small>Province Name : </small></label>
                                <input type="text" class="form-control" placeholder="Masukkan Nama Provinsi" name="name" id="iptModName" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="submit" class="btn btn-link waves-effect">SIMPAN</button>
                <button type="button" class="btn btn-link waves-effect" data-dismiss="modal">CLOSE</button>
            </div>
        </form>
        </div>
    </div>
</div>