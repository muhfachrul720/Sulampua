<div class="container">
    <div class="row my-4">
        <div class="col-lg-6 pt-2" style="text-align:center">
            <h4>Gini Rasio September</h4>
        </div>
        <div class="col-lg-6 download" style="text-align:center">
            <a href="<?= base_url()?>upload/data_excel/<?= $file->file_name?>" download class="btn btn-theme-1 btn-sm my-2 w-75"><i class="fas fa-download"></i> Download Data</a>
        </div>
        <div class="col-lg-12">
        <div id="chart_div"  style="width: 100%; height: 500px;"></div>
            <script type="text/javascript">
            google.charts.load('current', {'packages':['corechart']});
            google.charts.setOnLoadCallback(drawVisualization);

            function drawVisualization() {
                // Some raw data (not necessarily accurate)
                var data = google.visualization.arrayToDataTable([
                ['Tahun', '2015', '2016', '2017', '2018', '2019'],
                <?php foreach($detail as $d) {?>
                    ["<?= $d->province ?>", <?= $d->tahun_2015 ?>, <?= $d->tahun_2016 ?>, <?= $d->tahun_2017 ?>, <?= $d->tahun_2018 ?>, <?= $d->tahun_2019 ?>],
                <?php };?>
                ]);

                var options = {
                seriesType: 'bars',
                series: {5: {type: 'line'}},
                hAxis: {
                    textStyle: {
                        color: "#000",
                        fontName: "sans-serif",
                        fontSize: 9,
                        bold: true,
                        italic: false
                        }
                    },
                };
                var chart = new google.visualization.ComboChart(document.getElementById('chart_div'));
                chart.draw(data, options);
            }
            </script>
        </div>
    </div>
</div>