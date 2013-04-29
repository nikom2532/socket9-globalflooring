
<div id="base-container">
	<div id="powered"><?php echo $powered; ?></div>
	<div id="social-links">
	<?php if ($config_activate_social_profiles) { ?>
		<?php if ($config_activate_facebook) { ?>
			<a href="<?php echo $config_facebook_url; ?>" target="_blank"><img  class="poshytip" title="Facebook" alt="Facebook" src="catalog/view/theme/shoppa/image/facebook.png"></a> 
		<?php } ?>
		<?php if ($config_activate_twitter) { ?>
			<a href="<?php echo $config_twitter_url; ?>" target="_blank"><img  class="poshytip" title="Twitter" alt="Twitter" src="catalog/view/theme/shoppa/image/twitter.png"></a> 
		<?php } ?>
		<?php if ($config_activate_gplus) { ?>
			<a href="<?php echo $config_gplus_url; ?>" target="_blank"><img  class="poshytip" title="Google Plus" alt="Google Plus" src="catalog/view/theme/shoppa/image/gplus.png"></a>
		<?php } ?>
		<?php if ($config_activate_pinterest) { ?>
			<a href="<?php echo $config_pinterest_url; ?>" target="_blank"><img  class="poshytip" title="Pinterest" alt="Pinterest" src="catalog/view/theme/shoppa/image/pinterest.png"></a>
		<?php } ?>
	<?php } ?>
	</div>
</div>
</div>
</body></html>