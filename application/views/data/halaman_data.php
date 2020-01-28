<div class="container" >
    <div class="row sect-data_ks my-4">
        <div class="col-lg-3">
           <ul id="catName"> 
                <?php foreach($cat as $c){?>
                    <li class="data-tab">
                        <input type="hidden" value="<?= $c->id?>">
                        <?= $c->name?>
                    </li>
                <?php };?>
           </ul>
        </div>
        <div class="col-lg-9" id="resultPost">

        </div>
    </div>
    <div class="row sect-indikator_ks my-4">
        <div class="col-lg-12">
            <table class="w-100">
                <tr>
                    <th width="20%">Indikator</th>
                </tr>
                <tr>
                    <td>IPM</td>
                    <td>Indeks Pembangunan Manusia (IPM) adalah ukuran ringkas rata-rata capaian/ keberhasilan dimensi utama pembangunan manusia, yaitu: umur panjang dan hidup sehat, mempunyai pengetahuan, dan memiliki standar hidup yang layak.</td>
                </tr>
                <tr>
                    <td>Rasio Gini</td>
                    <td>Merupakan suatu ukuran kemerataan yang dihitung dengan membandingkan luas antara diagonal dan kurva lorenz (daerah A) dibagi dengan luas segitiga di bawah diagonal. Kegunaan: Untuk mengukur derajat ketidakmerataan distribusi penduduk. Keterangan : Rasio Gini bernilai antara 0 dan 1. Nilai 1 menunjukkan complete inequality atau perfectly inequal, di mana seluruh penduduk menempati satu lokasi di suatu negara dan tidak ada penduduk di lokasi lainnya. Nilai 0 menunjukkan perfectly equal, yaitu penduduk terdistribusikan sempurna di seluruh wilayah suatu negara. Jadi, semakin besar nilai rasio konsentrasi Gini, semakin besar ketidakmerataan antara distribusi penduduk dan jumlah lokasi.</td>
                </tr>
                <tr>
                    <td>Penduduk Miskin</td>
                    <td>Penduduk miskin adalah penduduk yang memiliki rata-rata pengeluaran per kapita per bulan di bawah Garis Kemiskinan.</td>
                </tr>
            </table>
        </div>
    </div>
</div>