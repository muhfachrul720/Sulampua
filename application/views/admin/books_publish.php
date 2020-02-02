<section class="content">
        <div class="container-fluid">
            <div class="block-header">
                <h2>
                    BOOKS PUBLISH
                    <small>Halaman Untuk Mempublikasikan Buku</small>
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
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <button type="button" class="btn btn-primary waves-effect" data-toggle="modal" data-target="#defaultModal" id="addBtn">Tambah</button>
                            <script>
                                $('#addBtn').on('click', function(){
                                    $('#iptModName').val('');
                                    $('#iptModPass').val('');
                                    $('#idkAdd').css('display','block');
                                    $('#formTarget').attr('action', '<?=base_url()?>operator/book/add_books');
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
                                        <th style="width:40%">Judul</th>
                                        <th style="width:40%">Link</th>
                                        <th>Aksi</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php 
                                    $no = $this->uri->segment(4) + 1;
                                    foreach($books as $c) {?>
                                    <tr>
                                        <td class="inputDelete" style="display:none"> 
                                            <input type="checkbox" id="checkbox_<?= $c->nid?>" class="filled-in" value="<?= $c->nid?>"/>
                                            <label for="checkbox_<?= $c->nid?>"></label>
                                        </td>
                                        <td><?= $no++?></td>
                                        <td style="text-transform:capitalize"><?= $c->nname?></td>
                                        <td><?= $c->nlink ?></td>
                                        <td>
                                            <button value="<?= $c->nid?>" type="button" class="btn btn-danger editBtn" data-toggle="modal" data-target="#defaultModal"><i class="material-icons">edit</i></button>
                                        </td>
                                    </tr>
                                    <?php };?>
                                    <script>
                                        $('.editBtn').on('click', function(){
                                            var id = $(this).val();
                                            $.ajax({
                                                type: "POST",
                                                url: '<?= base_url()?>operator/book/get_data_individual',
                                                data: {id:id},
                                                dataType : 'JSON',
                                                success: function(response){
                                                    $('#iptModName').val(response['Title']);
                                                    $('#iptModId').val(id);
                                                    $('#iptModLink').val(response['Link']);
                                                    $('#iptModDesc').val(response['Desc']);
                                                    $('#formTarget').attr('action', '<?=base_url()?>operator/book/update_books');
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
                            <button type="button" data-toggle="modal" data-target="#smallModal" disabled class="btn btn-danger inputDelete" id="btnDelete" style="display:none" value="operator/book/delete_books">Hapus</button>
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
                <h4 class="modal-title" id="defaultModalLabel">Tambah Buku</h4>
                <small>Menambahkan Buku Untuk Publikasi </small>
            </div>
           
            <div class="modal-body">
                <div class="row clearfix">
                    <div class="col-sm-12">
                        <input type="hidden" value="" id="iptModId" name="id">
                        <div class="form-group">
                            <div class="form-line">
                                <label for="iptModName"><small>Judul Buku : </small></label>
                                <input type="text" class="form-control" placeholder="Masukkan Judul Disini.." name="name" id="iptModName" />
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="form-line">
                                <label for="iptModLink"><small>Link: </small></label>
                                <input type="text" class="form-control" placeholder="Masukkan Tautan Disini.." name="link" id="iptModLink" />
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="form-line">
                                <label for="iptModDesc"><small>Deskripsi : </small></label>
                                <textarea rows="4" id="iptModDesc" class="form-control no-resize" placeholder="Tulis Deskripsi Disini Kosong Juga Tidak Apa apa" name="desc"></textarea>
    =                       </div>
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