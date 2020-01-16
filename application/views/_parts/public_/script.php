<script src="<?= base_url()?>assets/js/jquery/jquery.min.js"></script>
<script src="<?= base_url()?>assets/js/bootstrap.min.js"></script>
<script src="<?= base_url()?>assets/js/chartjs/Chart.js"></script>
<script>
	// Init var
	var trigger1 = 0;
	var trigger2 = 0;

	// Search Button
	$('#searchButton').on('click', function(){
		if(trigger1 == 0){
			$('.cs-searchbox').css({'width':'380px', 'background-color':'rgba(255,255,255,0.4)'});
			trigger1 = 1;
		}
		else {
			$('.cs-searchbox').css({'width':'0px', 'background':'transparent'});
			trigger1 = 0;
		}
	});

	//Slide box
	$('#slideBox').on('click', function(){
		if(trigger2 == 0){
			$('.slide-box').css('bottom','0');
			trigger2 = 1;
		}
		else {
			$('.slide-box').css('bottom','-60%');
			trigger2 = 0;
		}
	});

	// About us
	$('.about-checked').on('click', function(){
		var value = $(this).val()
		// console.log(value);
		if(value == 1){
			$('#geografis').css('display', 'block');
			$('#about').css('display', 'none');
			$('#people').css('display', 'none');
		}
		else if (value == 2){
			$('#geografis').css('display', 'none');
			$('#about').css('display', 'block');
			$('#people').css('display', 'none');
		}
		else {
			$('#geografis').css('display', 'none');
			$('#about').css('display', 'none');
			$('#people').css('display', 'block');
		}
	});

	// Chart 1 js
	var ctx = document.getElementById("myChart").getContext('2d');
	var myChart = new Chart(ctx, {
		type : 'bar',
		data : {
			labels : ["Kalimantan", "Sulawesi Utara", "Sulawesi Tengah", "Sulawesi Selatan", "Sulawesi Tenggara", "Gorontalo", "Sulawesi Barat", "Maluku", "Papua", "Papua Barat"],
			datasets : [{
				label : '# of Votes',
				data : [12, 9, 3, 23 ,2 , 3, 2, 3, 4, 5, 6, 7,],
				backgroundColor : [
					'rgba(255, 99, 132, 0.2)',
					'rgba(54, 162, 235, 0.2)',
					'rgba(255, 206, 86, 0.2)',
					'rgba(75, 192, 192, 0.2)',
					'rgba(153, 102, 255, 0.2)',
					'rgba(255, 159, 64, 0.2)'
				],
				borderColor : [
					'rgba(255, 99, 132, 1)',
					'rgba(54, 162, 235, 1)',
					'rgba(255, 206, 86, 1)',
					'rgba(75, 192, 192, 1)',
					'rgba(153, 102, 255, 1)',
					'rgba(255, 159, 64, 1)'
				],
				borderWidth : 1
			}]	
		},
		options : {
			legend :{
				display : false
			},
			scales: {
				xAxes: [{
					gridLines: {
						display:false
					},
					stacked : false,
					begitAtZero : true,
					ticks : {
						autoSkip:false,
						maxRotation: 90,
						minRotation: 90
					}
				}],
				yAxes: [{
					gridLines: {
						display:false
					}   
				}]
			}
		}
	});

	var ctx = document.getElementById("myChart2").getContext('2d');
	var myChart = new Chart(ctx, {
		type : 'bar',
		data : {
			labels : ["Kalimantan", "Sulawesi Utara", "Sulawesi Tengah", "Sulawesi Selatan", "Sulawesi Tenggara", "Gorontalo", "Sulawesi Barat", "Maluku", "Papua", "Papua Barat"],
			datasets : [{
				label : '# of Votes',
				data : [12, 9, 3, 23 ,2 , 3, 2, 3, 4, 5, 6, 7,],
				backgroundColor : [
					'rgba(255, 99, 132, 0.2)',
					'rgba(54, 162, 235, 0.2)',
					'rgba(255, 206, 86, 0.2)',
					'rgba(75, 192, 192, 0.2)',
					'rgba(153, 102, 255, 0.2)',
					'rgba(255, 159, 64, 0.2)'
				],
				borderColor : [
					'rgba(255, 99, 132, 1)',
					'rgba(54, 162, 235, 1)',
					'rgba(255, 206, 86, 1)',
					'rgba(75, 192, 192, 1)',
					'rgba(153, 102, 255, 1)',
					'rgba(255, 159, 64, 1)'
				],
				borderWidth : 1
			}]	
		},
		options : {
			legend :{
				display : false
			},
			scales: {
				xAxes: [{
					gridLines: {
						display:false
					},
					stacked : false,
					begitAtZero : true,
					ticks : {
						autoSkip:false,
						maxRotation: 90,
						minRotation: 90
					}
				}],
				yAxes: [{
					gridLines: {
						display:false
					}   
				}]
			}
		}
	});

	var ctx = document.getElementById("myChart3").getContext('2d');
	var myChart = new Chart(ctx, {
		type : 'bar',
		data : {
			labels : ["Kalimantan", "Sulawesi Utara", "Sulawesi Tengah", "Sulawesi Selatan", "Sulawesi Tenggara", "Gorontalo", "Sulawesi Barat", "Maluku", "Papua", "Papua Barat"],
			datasets : [{
				label : '# of Votes',
				data : [12, 9, 3, 23 ,2 , 3, 2, 3, 4, 5, 6, 7,],
				backgroundColor : [
					'rgba(255, 99, 132, 0.2)',
					'rgba(54, 162, 235, 0.2)',
					'rgba(255, 206, 86, 0.2)',
					'rgba(75, 192, 192, 0.2)',
					'rgba(153, 102, 255, 0.2)',
					'rgba(255, 159, 64, 0.2)'
				],
				borderColor : [
					'rgba(255, 99, 132, 1)',
					'rgba(54, 162, 235, 1)',
					'rgba(255, 206, 86, 1)',
					'rgba(75, 192, 192, 1)',
					'rgba(153, 102, 255, 1)',
					'rgba(255, 159, 64, 1)'
				],
				borderWidth : 1
			}]	
		},
		options : {
			legend :{
				display : false
			},
			scales: {
				xAxes: [{
					gridLines: {
						display:false
					},
					stacked : false,
					begitAtZero : true,
					ticks : {
						autoSkip:false,
						maxRotation: 90,
						minRotation: 90
					}
				}],
				yAxes: [{
					gridLines: {
						display:false
					}   
				}]
			}
		}
	});

</script>
</html>

