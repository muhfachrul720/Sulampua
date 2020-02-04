<div class="container" style="margin-top:40px">
    <div class="row">
        <div class="col-lg-9 pr-5">
            <form action="<?= base_url()?>public_/berita/index" method="post">
            <div class="row">
                <div class="col-sm-10">
                    <input type="text" name="search" class="form-control mb-4" placeholder="Cari Berita Disini..">
                </div>
                <div class="col-sm-2">
                    <button class="btn w-100" style="background-color:#f1a059; color:white">Cari</button>
                </div>
            </div>
            </form>
            <div class="panel panel-default">
               <?php foreach($news as $n) {?>
                <div class="panel-body">
                    <h3><?= $n->nname?></h3>
                        <div class="info-meta">
                            <ul class="coba" style="display:inline;">
                                <li><i class="fa fa-clock"></i><?= $n->ndate?></li>   
                                <li><i class="fa fa-user"></i> <?= $n->uname?></li> 
                            </ul>
                            
                        </div>
                    <hr>
                    <div class = "media">
                    <a class = "pull-left" href = "#">
                        <img class = "media-object " src = "<?= base_url()?>upload/data_img/<?= $n->nimg?>">
                    </a>
                    <div class = "media-body pr-3">
                        <p><?= substr($n->nsect, 3, 655)?>
                        </p> 
                    </div>
                    
                    </div>
                    <p style="text-align:right;">
                            <a href="<?=base_url('public_/berita/detail_berita/')?><?=$n->nid?>">
                                <button class="btn btn-primary">Selengkapnya</button>
                            </a>
                        </p>
                        
                    <hr>
               </div>
               <?php };?>
            </div>
            <?= $this->pagination->create_links()?>
        </div>       
        <div class="col-lg-3 pt-100"><br>
            <div class="panel panel-default">
               <div class="panel-heading"><h4 class="text-center">Berita Terbaru</h4></div>
               <div class="panel-body">
                    <?php foreach($latestnews as $l) {?>
                    <div class="recent" style="border:none">
                        <a href="#"><img class="img-responsive" src="<?= base_url()?>upload/data_img/<?= $l->nimg?>" alt="" /></a>                
                        <div class="info-meta">
                            <ul class="list-inline">
                                <li><i class="fa fa-clock"></i> <?= $l->ndate?> </a></li>
                            </ul>
                        </div>
                        <h4>
                            <a href="<?=base_url('public_/berita/detail_berita/')?><?=$l->nid?>"><?= $l->nname?></a>
                        </h4>
                    </div>
                    <?php };?>
                </div>
            </div>      
        </div>     
    </div>          
</div>