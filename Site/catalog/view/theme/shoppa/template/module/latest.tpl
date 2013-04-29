<section class="latest">

<div class="box-heading"><?php echo $heading_title; ?></div>

<div id="home-latest-list">

	<div id="latest" class="latest-normal clearfix">
	
		<?php foreach ($products as $product) { ?>
			<div class="latest-item">
				
				<div class="latest-image">
				
					<?php if ($product['thumb']) { ?>
					<a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a>
					<?php } ?>
				
				</div>
			
				<div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
				
				<div class="latest-description">
					
					<?php if ($product['price']) { ?>
					<div class="price">
						<?php if (!$product['special']) { ?>
						<?php echo $product['price']; ?>
						<?php } else { ?>
						<span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
						<?php } ?>
					</div>
					<?php } ?>
					
					<?php if ($product['rating']) { ?>
					<div class="rating"><img src="catalog/view/theme/default/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
					<?php } ?>
					
					<div class="cart"><input type="button" value="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button-latest" /></div>
					
				</div>
			</div>	
		<?php } ?>
		
	</div>
	
	<div class="latest-navigation">
		<a href="#" id="home-latest-prev" class="latest-prev">Prev</a>
		<a href="#" id="home-latest-next" class="latest-next">Next</a>
	</div>
	
	<div id="home-latest-pagination"></div>
	
	<script type="text/javascript"><!--
		jQuery("#latest").carouFredSel({
			circular   : true,
			responsive : true,
			auto       : false,
			// auto       : {
					// pauseDuration: 1800
				// },
			items: {
				width  : 310,
				visible: {
					min: 1,
					max: 4
				}
			},
			scroll: {
				pauseOnHover: true,
				duration: 900,
				easing  : "quadratic",
				wipe    : true
			},
			prev: {	
				button	: "#home-latest-prev",
				key		: "left"
			},
			next: { 
				button	: "#home-latest-next",
				key		: "right"
			},
			pagination	: "#home-latest-pagination"
		});
	--></script>
</div>
<div style="clear: both;"></div>
</section>

