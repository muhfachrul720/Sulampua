<script src="<?= base_url()?>assets/js/jquery/jquery.min.js"></script>
<script src="<?= base_url()?>assets/js/bootstrap.min.js"></script>
<script>

	loadData($('#catName li:first-child input').val(), "<?= base_url();?>public_/data/fetch_post", "#resultPost");
	loadData($('#catName li:first-child input').val(), "<?= base_url();?>public_/data/fetch_idk", "#idkResult");

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

	// First Active tab 
	$('#catName li:first').addClass('active-tab');

	// Active tab at Halaman Data
	$('.data-tab').on('click', function(e){
		$('.data-tab').not(this).removeClass("active-tab");
		$(this).toggleClass("active-tab");
	});

	// fetch post ajax categories 
	$('.data-tab').on('click', function() {
		var id = $(this).find('input').val()
		var url = "<?= base_url();?>public_/data/fetch_post";
		var target = "#resultPost";
		loadData(id, url, target);
	});

	$('.data-tab').on('click', function() {
		var id = $(this).find('input').val()
		var url = "<?= base_url();?>public_/data/fetch_idk";
		var target = "#idkResult";
		loadData(id, url, target);
	});

	// Initial fetch Post Ajax
	function loadData(id, url, target, keyword=null) {
		var from = window.location.href;
		var arr = from.split('/');
		console.log(keyword);
		$.ajax({
			url : url,
			method : "POST", 
			data : {id:id, from:arr[7], keyword:keyword},
			success:function(data){
				$(target).html(data);
			},
			error:function(e){
				alert('Gagal Dapat Data');
			}
		});
	}

	// Search Data
	$('#searchBox').on('keyup', function(){
		loadData($('#catName li:first-child input').val(), "<?= base_url();?>public_/data/fetch_post", "#resultPost", $(this).val());
	})

</script>
</html>

