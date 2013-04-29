<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
<meta charset="UTF-8" />

<title><?php echo $title; ?></title>

<!-- Google Chrome Frame for IE -->
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

<!-- mobile meta -->
<meta name="HandheldFriendly" content="True">
<meta name="MobileOptimized" content="320">
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>

<base href="<?php echo $base; ?>" />

<!-- meta description -->
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>

<!-- meta keywords -->
<?php if ($keywords) { ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } ?>

<!-- icons & favicons -->
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>

<!-- links -->
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>

<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/stylesheet.css" />

<!-- stylesheets -->
<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>

<!-- Grab Google CDN's jQuery, with a protocol relative URL; fall back to local if necessary -->
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script>window.jQuery || document.write(unescape('%3Cscript src="catalog/view/javascript/jquery/jquery-1.7.1.min.js" %3E%3C/script%3E'))</script>

<!-- Grab Google CDN's jQuery UI, with a protocol relative URL; fall back to local if necessary -->
<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.8.16/jquery-ui.min.js"></script>
<script>window.jQuery.ui || document.write(unescape('%3Cscript src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js" %3E%3C/script%3E'))</script>

<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/external/jquery.cookie.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/colorbox/jquery.colorbox.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/colorbox/colorbox.css" media="screen" />
<script type="text/javascript" src="catalog/view/javascript/jquery/tabs.js"></script>
<!-- <script type="text/javascript" src="catalog/view/javascript/common.js"></script> -->

<!-- scripts -->
<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>

<!--[if IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/ie7.css" />
<![endif]-->
<!--[if lt IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/ie6.css" />
<script type="text/javascript" src="catalog/view/javascript/DD_belatedPNG_0.0.8a-min.js"></script>
<script type="text/javascript">
DD_belatedPNG.fix('#logo img');
</script>
<![endif]-->

<?php echo $google_analytics; ?><!-- Google Analytics -->

<link rel="stylesheet" href="catalog/view/theme/shoppa/js/poshytip/src/tip-twitter/tip-twitter.css" type="text/css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/shoppa/stylesheet/cloud-zoom.css" media="all" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/shoppa/stylesheet/normalize.css" media="all" />
<?php if ($config_enable_responsive_view) { ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/shoppa/stylesheet/responsive.css" media="all" />
<?php } ?>
<script type="text/javascript" src="catalog/view/theme/shoppa/js/shoppa-common.js"></script>
<script type="text/javascript" src="catalog/view/theme/shoppa/js/scrolltopcontrol.js"></script>
<script type="text/javascript" src="catalog/view/theme/shoppa/js/poshytip/src/jquery.poshytip.min.js"></script>
<script type="text/javascript" src="catalog/view/theme/shoppa/js/cloud-zoom.1.0.2.min.js"></script>
<script type="text/javascript" src="catalog/view/theme/shoppa/js/jquery.mobile.customized.min.js"></script>
<script type="text/javascript" src="catalog/view/theme/shoppa/js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="catalog/view/theme/shoppa/js/camera.min.js"></script>
<script type="text/javascript" src="catalog/view/theme/shoppa/js/jquery.carouFredSel-5.6.4-packed.js"></script>
<script type="text/javascript" src="catalog/view/theme/shoppa/js/respond.min.js"></script>
<script type="text/javascript" src="catalog/view/theme/shoppa/js/modernizr-2.6.1.min.js"></script>

<?php if ($config_activate_google_custom_fonts) { ?>
<?php echo "
<link rel='stylesheet' type='text/css' href='http://fonts.googleapis.com/css?family=".$config_choose_header_font."'/>
<link rel='stylesheet' type='text/css' href='http://fonts.googleapis.com/css?family=".$config_choose_menu_font."'/>
"; ?>
<?php } ?>

<style type="text/css">
	#colorbox, #cboxOverlay, #cboxWrapper { z-index:9999999; }
</style>

<?php if ($config_activate_google_custom_fonts) { ?>
	<style type="text/css">
	#header-notifications { font-family: '<?php echo $config_choose_menu_font; ?>', sans-serif !important; }
	#menu > ul > li > a { font-family: '<?php echo $config_choose_menu_font; ?>', sans-serif !important; font-size: 14px; }
	#menu > ul > li ul > li > a { font-family: '<?php echo $config_choose_menu_font; ?>', sans-serif !important; font-size: 14px; }
	#menu > ul > li ul > li > a:hover { font-family: '<?php echo $config_choose_menu_font; ?>', sans-serif !important; font-size: 14px;}
	.box .box-heading span { font-family: '<?php echo $config_choose_header_font; ?>', sans-serif !important; }
	h1, h2, h3, h4, h5, h6 { font-family: '<?php echo $config_choose_header_font; ?>', sans-serif !important; }
	.product-grid .name a { font-family: '<?php echo $config_choose_menu_font; ?>', sans-serif !important; }
	.product-grid .name a:hover { font-family: '<?php echo $config_choose_menu_font; ?>', sans-serif !important; }
	.product-list .name a { font-family: '<?php echo $config_choose_menu_font; ?>', sans-serif !important; }
	.box-product .name a { font-family: '<?php echo $config_choose_menu_font; ?>', sans-serif !important; }
	.box-product .name a:hover { font-family: '<?php echo $config_choose_menu_font; ?>', sans-serif !important; }
	#footer .column b { font-family: '<?php echo $config_choose_header_font; ?>', sans-serif !important; }
	</style>
<?php } ?>

<?php if ($config_activate_theme_color_editor) { ?>
<style type="text/css">
	body { background: <?php if (!$config_upload_your_own_pattern) { ?>
	<?php echo $body_bg; ?> url('catalog/view/theme/shoppa/image/bg-patterns/<?php echo $config_choose_background_texture; ?>')
	<?php } else { ?> <?php echo $body_bg; ?> url('<?php echo $ebg; ?>') <?php echo $config_background_position; ?> <?php echo $config_background_repeat; ?> <?php echo $config_background_attachment; ?> <?php } ?>; }
	#menu { border-bottom: 3px solid <?php echo $general_color; ?>; }
	.featured .box-heading h3 { border-bottom: 3px solid <?php echo $general_color; ?>; }
	.latest .box-heading h3 { border-bottom: 3px solid <?php echo $general_color; ?>; }
	.box .box-heading h3 { border-bottom: 3px solid <?php echo $general_color; ?>; }
	#footer .titl { border-bottom: 1px solid <?php echo $general_color; ?>; }
	#footer h3 { border-bottom: 2px solid <?php echo $general_color; ?>; }
    #home-featured-list .featured-item:hover .name a { color: <?php echo $body_links_color; ?>; }
    #home-featured-pagination a.selected { background: <?php echo $general_color; ?>; }
    #home-latest-list .latest-item:hover .name a { color: <?php echo $body_links_color; ?>; }
    #home-latest-pagination a.selected { background: <?php echo $general_color; ?>; }
	a, a:visited, a b { color: <?php echo $body_links_color; ?>; }
	body a { color: <?php echo $body_links_color; ?>; text-decoration: none; }
	.box-product > div:hover .name a { color: <?php echo $body_links_color; ?> !important; }
	.product-filter .product-compare a { color: <?php echo $body_links_color; ?>; }
	.product-grid > div:hover .name a { color: <?php echo $body_links_color; ?> !important; }
	.product-grid .name a:hover { color: <?php echo $body_links_color; ?> !important; }
	.product-list > div:hover .name a { color: <?php echo $body_links_color; ?> !important; }
	.product-list .name a:hover { color: <?php echo $body_links_color; ?> !important; }
	.box-product .name a { color: <?php echo $body_links_color; ?>; }
	a.button:hover, input.button:hover { background: <?php echo $general_color; ?>; }
</style>
<?php } ?>

<?php if ($config_logo_top_spacing) { ?>
<style type="text/css">	
@media only screen and (min-width: 960px) { 
	#header #logo { top: <?php echo $config_logo_top_spacing ?>px !important; }
}
</style>
<?php } ?>

</head>
<body>
<div id="container">
<div id="header">
	<!-- logo start -->
	<?php if ($logo) { ?>
	<div id="logo"><a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a></div>
	<?php } ?>
	<!-- logo end -->
	
	<div id="call">Contact Number <span class="numbers">63654395</span></div>
	
<!-- REMOVE -->
	

</div>

<!-- responsive
<div id="phonemenublock" style="display:none">
	<div id="phonemenubutton">Menu</div>
	<select id="phonemenuselect" onchange="location=this.value"> 
		<option value=""></option> 
		<?php foreach ($categories as $category) { ?>
			<option value="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></option> 
		<?php } ?>
	</select> 
</div>
 -->

<!-- start header menu -->
<?php if ($categories) { ?>
<?php 
	$homepageUrl = HTTP_SERVER;
	
	$protocol = strpos(strtolower($_SERVER['SERVER_PROTOCOL']),'https') 
	=== FALSE ? 'http' : 'https';
	$host     = $_SERVER['HTTP_HOST'];
	$script   = $_SERVER['SCRIPT_NAME'];
	$params   = $_SERVER['QUERY_STRING'];
	$uri = $_SERVER['REQUEST_URI'];
	
	$currentUrl = $protocol . '://' . $host . $script . '?' . $params;
	
	$currentUrlshort = $protocol . '://' . $host . $uri;
?>
<div id="menu" style="display:none">
	<ul>
		<li><a href="<?php echo $home; ?>" <?php if (($currentUrl == $home)|| $currentUrlshort == $base) { ?><?php echo 'class="active"'; ?><?php } ?>><?php echo $text_home; ?></a></li><!-- home link -->
		<?php foreach ($categories as $category) { ?>
		<li><a href="<?php echo $category['href']; ?>" <?php if ($currentUrl == $category['href']) { ?><?php echo 'class="active"'; ?><?php } ?>><?php echo $category['name']; ?></a>
			<?php if ($category['children']) { ?>
			<div>
				<?php for ($i = 0; $i < count($category['children']);) { ?>
				<ul>
					<?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
					<?php for (; $i < $j; $i++) { ?>
					<?php if (isset($category['children'][$i])) { ?>
					<li><a href="<?php echo $category['children'][$i]['href']; ?>"><span><?php echo $category['children'][$i]['name']; ?></span></a>
						<?php $categories_2 = $this->model_catalog_category->getCategories($category['children'][$i]['category_id']); ?>
						<?php if($categories_2) {  ?>
						<div>
							<ul>
								<?php foreach ($categories_2 as $category_2) { ?>
								<li><a href="<?php echo $this->url->link('product/category', 'path='.$category['category_id'].'_' . $category['children'][$i]['category_id'] . '_' . $category_2['category_id']); ?>"><span><?php echo $category_2['name']; ?></span></a></li>	
								<?php } ?>
							</ul>
						</div>
						<?php } ?>
					</li>
					<?php } ?>
					<?php } ?>
				</ul>
				<?php } ?>
			</div>
			<?php } ?>
		</li>
		<?php } ?>
	</ul>
</div>
<?php } ?>
<!-- end header menu -->

<!-- notifications block -->
<div id="notification" style="margin-bottom:50px;content:'';"></div>
