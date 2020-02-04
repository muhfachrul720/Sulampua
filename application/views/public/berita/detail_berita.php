<div class="container" style="margin-top:40px">
    <div class="row">
        <div class="col-md-10">
            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="post-detail">
                        <h3><?= $news->name?></h3>
                        <div class="info-meta">
                            <ul class="list-inline">
                                <i class="fa fa-clock"></i> &nbsp<?= $news->date?>  
                            </ul>
                        </div>
                    <hr>
                    <img src="<?= base_url()?>upload/data_img/<?= $news->image?>" alt="..." class="image" style="width:100%;">
                    <div style="text-align:justify; margin-top:16px">
                        <?= $news->section?>
                    </div>
                    </div>
                    </div>
                              
                  
                </div>
               
            </div>
         </div>
         <div class="col-lg-2">
                
        </div>        
    </div>          
</div>