<div class="box">
  <div class="box-heading"><h3><?php echo $heading_title; ?></h3></div>
  <div class="box-content">
    <div class="box-category">
		<ul>
        <?php foreach ($categories as $category) { ?>
			<li>
				<?php if ($category['category_id'] == $category_id) { ?>
				<a href="<?php echo $category['href']; ?>" class="active"><?php echo $category['name']; ?></a>
				<?php } else { ?>
				<a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
				<?php } ?>
				<?php if ($category['children']) { ?>
				<div class="ja-sidenav"><a href="javascript:void(0);" class="toggle">&nbsp;</a></div>
				<ul>
					<?php foreach ($category['children'] as $child) { ?>
					<li>
						<?php if ($child['category_id'] == $child_id) { ?>
						<a href="<?php echo $child['href']; ?>" class="active"><?php echo $child['name']; ?></a>
						<?php } else { ?>
						<a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a>
						<?php } ?>
					</li>
					<?php } ?>
				</ul>
				<?php } ?>
			</li>
        <?php } ?>
		</ul>
    </div>
  </div>
</div>


<script type="text/javascript">
$(function(){
	var activeCat = ".box-category ul li a.active";
	if ($(activeCat).length > 0) {
		$(activeCat).parent("li").find("ul").show(500);	
		$(activeCat).parent("li").find("a.toggle").toggleClass("subhead");		
	}	
	$(".ja-sidenav a").click(function() {
		$(".ja-sidenav a").removeClass("subhead");
		var ul = $(this).parent("div").parent("li").find("ul");
		if (!ul.is(":visible")) {
			$(".box-category ul li > ul").slideUp(500);
			$(this).toggleClass("subhead");
		} else {			
			$(this).removeClass("subhead");
		}
		ul.stop(true,true).slideToggle(500);
	});
});
</script>

