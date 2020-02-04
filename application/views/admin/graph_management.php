<section class="content">
    <div class="container-fluid">
        <div class="block-header">
            <h2>
                GRAPH MANAGEMENT
                <small>Halaman Untuk Mengelola Grafik</small>
                <input type="checkbox" style="display:block !important">
            </h2>
        </div>

        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12">
                <div class="card">
                <form action="<?=base_url()?>admin/landing/update_graph" method="post">
                    <div class="body">
                        <table width="100%" class="table table-striped">
                            <tr> 
                                <th colspan="2">Keterangan</th>
                                <th style="text-align:center;" colspan="13">Provinsi</th>
                            </tr>
                            <tr>
                                <th>No</th>
                                <th>Kalsel</th>
                                <th>Kalteng</th>
                                <th>Kaltim</th>
                                <th>Kalbar</th>
                                <th>Kalut</th>
                                <th>Sulut</th>
                                <th>Sulteng</th>
                                <th>Sulsel</th>
                                <th>Sultra</th>
                                <th>Gorontalo</th>
                                <th>Sulbar</th>
                                <th>Maluku</th>
                                <th>Papua</th>
                                <th>Papua Barat</th>
                            </tr>
                            <?php 
                                $no = 1;
                                foreach ($graph as $g) {?>
                            <tr>
                                <th colspan="2">Judul : </th>
                                <td colspan="13"><input name="title[]" id="" style="background:transparent; border:none" value="<?= $g->name?>"></td>
                            </tr>
                            <tr>
                                <input type="hidden" name="id[]" value="<?= $g->id?>"> 
                                <td><?=$no++?></td>
                                <td><input name="prov1[]" style="width:100%; padding:0px 8px; border:none; background:transparent;" type="text" value="<?= $g->prov_kalsel?>"></td>
                                <td><input name="prov2[]" style="width:100%; padding:0px 8px; border:none; background:transparent;" type="text" value="<?= $g->prov_kalteng?>"></td>
                                <td><input name="prov3[]" style="width:100%; padding:0px 8px; border:none; background:transparent;" type="text" value="<?= $g->prov_kaltim?>"></td>
                                <td><input name="prov4[]" style="width:100%; padding:0px 8px; border:none; background:transparent;" type="text" value="<?= $g->prov_kalut?>"></td>
                                <td><input name="prov5[]" style="width:100%; padding:0px 8px; border:none; background:transparent;" type="text" value="<?= $g->prov_kalbar?>"></td>
                                <td><input name="prov6[]" style="width:100%; padding:0px 8px; border:none; background:transparent;" type="text" value="<?= $g->prov_sulut?>"></td>
                                <td><input name="prov7[]" style="width:100%; padding:0px 8px; border:none; background:transparent;" type="text" value="<?= $g->prov_sulteng?>"></td>
                                <td><input name="prov8[]" style="width:100%; padding:0px 8px; border:none; background:transparent;" type="text" value="<?= $g->prov_sulsel?>"></td>
                                <td><input name="prov9[]" style="width:100%; padding:0px 8px; border:none; background:transparent;" type="text" value="<?= $g->prov_sultra?>"></td>
                                <td><input name="prov10[]" style="width:100%; padding:0px 8px; border:none; background:transparent;" type="text" value="<?= $g->prov_gorontalo?>"></td>
                                <td><input name="prov11[]" style="width:100%; padding:0px 8px; border:none; background:transparent;" type="text" value="<?= $g->prov_sulbar?>"></td>
                                <td><input name="prov12[]" style="width:100%; padding:0px 8px; border:none; background:transparent;" type="text" value="<?= $g->prov_maluku?>"></td>
                                <td><input name="prov13[]" style="width:100%; padding:0px 8px; border:none; background:transparent;" type="text" value="<?= $g->prov_papua?>"></td>
                                <td><input name="prov14[]" style="width:100%; padding:0px 8px; border:none; background:transparent;" type="text" value="<?= $g->prov_papua_barat?>"></td>
                            </tr>
                            <?php };?>
                        </table>
                        <input type="submit" name="submit" id="" value="Simpan Perubahan" class="btn btn-success">
                    </div>
                </form>
                </div>
            </div>
        </div>
    </div>
</section>
