<div id="home-carousel-list">

	<div id="carousel<?php echo $module; ?>" class="carousel-normal clearfix">
	
		<?php foreach ($banners as $banner) { ?>
		
			<div class="carousel-item">
			
				<div class="carousel-image">
				
					<a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" title="<?php echo $banner['title']; ?>" /></a>
					
				</div>
				
			</div>	
			
		<?php } ?>
		
	</div>

	<div class="carousel-navigation">
		<a href="#" id="home-carousel-prev" class="carousel-prev">Prev</a>
		<a href="#" id="home-carousel-next" class="carousel-next">Next</a>
	</div>
	
<script type="text/javascript"><!--
		jQuery("#carousel<?php echo $module; ?>").carouFredSel({
			circular   : true,
			responsive : true,
			auto       : false,
			items: {
				width  : 150,
				visible: {
					min: 1,
					max: <?php echo $limit; ?>
				}
			},
			scroll: {
				duration: 900,
				easing  : "quadratic",
				wipe    : true
			},
			prev: {	
				button	: "#home-carousel-prev",
				key		: "left"
			},
			next: { 
				button	: "#home-carousel-next",
				key		: "right"
			}
		});
	--></script>
</div>

