<div class="camera_white_skin camera_wrap" id="camera_wrap_1">
    <?php foreach ($banners as $banner) { ?>
	    <?php if ($banner['link']) { ?>
	    <div data-src="<?php echo $banner['image']; ?>" data-thumb="<?php echo $banner['image']; ?>"  data-link="<?php echo $banner['link']; ?>"></div>
	    <?php } else { ?>
	    <div data-src="<?php echo $banner['image']; ?>" data-thumb="<?php echo $banner['image']; ?>"></div>
	    <?php } ?>
    <?php } ?>
</div>

<script type="text/javascript"><!--
$('#camera_wrap_1').camera({
	height: '52%',
	thumbnails: false,
	loader: 'bar',
	pagination: false,
	hover: true
});
--></script>