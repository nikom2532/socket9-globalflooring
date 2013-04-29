<section class="featured">

<div class="box-heading"><h3><?php echo $heading_title; ?></h3></div>

<div id="home-featured-list">

	<div id="featured" class="featured-normal clearfix">
	
		<?php foreach ($products as $product) { ?>
			<div class="featured-item">
			
			<!-- Display manufacturer logo DON -->
			<?php if ($product['manufacturer_id']) : ?>
				<?php if($product['manufacturer_id']== 12) : ?>
					<div class="product_tag_shera"></div> 
				<?php endif; ?>
				<?php if($product['manufacturer_id']== 11) : ?>
					<div class="product_tag_pergo"></div> 
				<?php endif; ?>
			<?php endif; ?>
			<!-- End display manufacturer logo DON -->
				
				<div class="featured-image">
					<?php if ($product['thumb']) { ?>
					<a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a>
					<?php } ?>
				</div>
			
				<div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
				
				<div class="featured-description">
					
					<?php if ($product['price']) { ?>
					<div class="price">
						<?php if (!$product['special']) { ?>
						<?php echo $product['price'];  ?>
						<?php } else { ?>
						<span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
						<?php } ?>
					</div>
					<?php } ?>
					
				
					<!-- REMOVE-->
					<div class="cart"><input type="button" value="More detail" onclick="view_product('<?php echo $product['href']; ?>');" class="button-featured" /></div>
				</div>
			</div>	
		<?php } ?>
		
	</div>
	
	<div class="featured-navigation">
		<a href="#" id="home-featured-prev" class="featured-prev">Prev</a>
		<a href="#" id="home-featured-next" class="featured-next">Next</a>
	</div>
	
	<div id="home-featured-pagination"></div>
	
	<script type="text/javascript"><!--
		jQuery("#featured").carouFredSel({
			circular   : true,
			responsive : true,
			auto       : {
					pauseDuration: 2500
				},
			items: {
				width  : 310,
				visible: {
					min: 1,
					max: 4
				}
			},
			scroll: {
				pauseOnHover: true,
				duration: 1300,
				easing  : "quadratic",
				wipe    : true
			},
			prev: {	
				button	: "#home-featured-prev",
				key		: "left"
			},
			next: { 
				button	: "#home-featured-next",
				key		: "right"
			},
			pagination	: "#home-featured-pagination"
		});
	--></script>
</div>
<div style="clear: both;"></div>
</section>
