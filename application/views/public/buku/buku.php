<div class="container" >
    <div class="row sect-data_ks my-4">
        <div class="col-lg-12">
        <form action="<?= base_url()?>public_/buku/index" method="post">
            <div class="row">
                <div class="col-sm-4">
                    <h2>Link Buku Buku Terbaru</h2>
                </div>
                <div class="col-sm-6">
                    <input type="text" name="search" class="form-control mb-4" placeholder="Cari Buku Disini..">
                </div>
                <div class="col-sm-2">
                    <button class="btn w-100" style="background-color:#f1a059; color:white">Cari</button>
                </div>
            </div>
        </form>
            <table class="table-book" style="width:100%;">
                    <?php foreach($buku as $b) {?>
                    <tr>
                        <td width="90%"><?= $b->nname?></td>
                        <td style="text-align:center"><a target="_blank" href="<?= $b->nlink?>" class="btn btn-sm btn-primary">Links</a></td>
                    </tr>
                    <?php };?>
            </table>
            <?= $this->pagination->create_links()?>
        </div>
    </div>
</div>