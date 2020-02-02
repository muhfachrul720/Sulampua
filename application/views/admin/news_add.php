<?php   
    if(isset($result)){
        $form = array(
            'status' => 2,
            'id' => $result->id,
            'name' => $result->name,
            'section' => $result->section,
            'image' => $result->image
        );
    }
    else {
        $form = array(
            'status' => 1,
            'id' => '',
            'name' => '',
            'section' => '',
            'image' => ''
        );
    }
?>

<section class="content">
    <div class="container-fluid">
        <div class="block-header">
            <h2>
                <?= $status ?>
                <small>Halaman Untuk Menambah Berita Yang Akan Di Posting</small>
            </h2>
        </div>

        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12">
                <div class="card">
                    <div class="body">
                        <?php if($form['status'] == 2) {?>
                            <form action="<?=base_url()?>operator/news/update_news" method="post" enctype="multipart/form-data">
                        <?php } else { ?>
                            <form action="<?=base_url()?>operator/news/add_news" method="post" enctype="multipart/form-data">
                        <?php }; ?>
                            <input type="hidden" name="id" id="" value="<?= $form['id']?>">
                            <input type="hidden" name="image_name" id="" value="<?= $form['image']?>">
                            <div class="form-group">
                                <div class="form-line">
                                    <label for="newsTitle"><small>Judul Berita : </small></label>
                                    <input required name="title" value="<?=$form['name']?>" type="text" class="form-control" name="title" placeholder="Masukkan Judul Disini">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="form-line">
                                    <label for="newsTitle"><small>Gambar Berita : </small></label>
                                    <input name="image" type="file" class="form-control" placeholder="Masukkan Judul Disini" name="image">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="form-line">
                                    <label for="ckeditor"><small>Isi Berita : </small></label>
                                    <textarea name="description" id="ckeditor"><?= $form['section']?></textarea>
                                    <script>
                                        var ckeditor = CKEDITOR.replace('ckeditor', {
                                            height:'400px'
                                        });

                                        CKEDITOR.disableAutoInline = true;
                                        CKEDITOR.inline('editable');
                                    </script>
                                </div>
                            </div>
                            <div class="form-group">
                                <input type="submit" name="submit" value="Kirim" class="btn btn-success btn-lg">
                                <a href="<?= base_url()?>operator/news" class="btn btn-success btn-lg">Cancel</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>    