<?php echo $header; ?>
<div id="content">
<div class="breadcrumb">
  <?php foreach ($breadcrumbs as $breadcrumb) { ?>
  <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
  <?php } ?>
</div>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>
<div class="box">
  <div class="heading">
    <h1><img src="view/image/module.png" alt="" /> <?php echo $heading_title; ?></h1>
    <div class="buttons"><a onclick="$('#form').submit();" class="button"><span><?php echo $button_save; ?></span></a><a onclick="location = '<?php echo $cancel; ?>';" class="button"><span><?php echo $button_cancel; ?></span></a></div>
  </div>
    <div class="content">
	<div id="tabs" class="htabs">
		<a href="#tab-general"><?php echo $tab_general; ?></a>
		<a href="#tab-theme-colors"><?php echo $tab_theme_colors; ?></a>
		<a href="#tab-fonts"><?php echo $tab_fonts; ?></a>
		<a href="#tab-social-profiles"><?php echo $tab_social_profiles; ?></a>
	</div>
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
        <div id="tab-general"><!-- GENERAL TAB STARTS HERE -->
          <table class="form"> 
			<tr>
              <td><?php echo $entry_enable_responsive_view; ?></td>
              <td><?php if ($config_enable_responsive_view) { ?>
                <input type="radio" name="config_enable_responsive_view" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="config_enable_responsive_view" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="config_enable_responsive_view" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="config_enable_responsive_view" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?></td>
            </tr>
		    <tr>
              <td><?php echo $entry_enable_cloud_zoom; ?></td>
              <td><?php if ($config_enable_cloud_zoom) { ?>
                <input type="radio" name="config_enable_cloud_zoom" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="config_enable_cloud_zoom" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="config_enable_cloud_zoom" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="config_enable_cloud_zoom" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?></td>
            </tr>
		    <tr>
              <td><?php echo $entry_enable_pinterest_button; ?></td>
              <td><?php if ($config_enable_pinterest_button) { ?>
                <input type="radio" name="config_enable_pinterest_button" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="config_enable_pinterest_button" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="config_enable_pinterest_button" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="config_enable_pinterest_button" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?></td>
            </tr>
            <tr>
              <td><?php echo $entry_logo_top_spacing; ?></td>
              <td><input type="text" name="config_logo_top_spacing" value="<?php echo $config_logo_top_spacing; ?>" size="5" />px
                <?php if ($error_logo_top_spacing) { ?>
                <span class="error"><?php echo $error_logo_top_spacing; ?></span>
                <?php } ?></td>
            </tr>
            <tr>
              <td><?php echo $entry_facontact_address; ?></td>
              <td><input type="text" name="config_facontact_address" value="<?php echo $config_facontact_address; ?>" size="30" />
                <?php if ($error_facontact_address) { ?>
                <span class="error"><?php echo $error_facontact_address; ?></span>
                <?php } ?></td>
            </tr>
            <tr>
              <td><?php echo $entry_facontact_phone; ?></td>
              <td><input type="text" name="config_facontact_phone" value="<?php echo $config_facontact_phone; ?>" size="30" />
                <?php if ($error_facontact_phone) { ?>
                <span class="error"><?php echo $error_facontact_phone; ?></span>
                <?php } ?></td>
            </tr>
            <tr>
              <td><?php echo $entry_facontact_email; ?></td>
              <td><input type="text" name="config_facontact_email" value="<?php echo $config_facontact_email; ?>" size="30" />
                <?php if ($error_facontact_email) { ?>
                <span class="error"><?php echo $error_facontact_email; ?></span>
                <?php } ?></td>
            </tr>
            <tr>
              <td><?php echo $entry_facontact_fax; ?></td>
              <td><input type="text" name="config_facontact_fax" value="<?php echo $config_facontact_fax; ?>" size="30" />
                <?php if ($error_facontact_fax) { ?>
                <span class="error"><?php echo $error_facontact_fax; ?></span>
                <?php } ?></td>
            </tr>
          </table>
        </div><!-- GENERAL TAB ENDS HERE -->
		<div id="tab-theme-colors"><!-- THEME COLORS TAB STARTS HERE -->
          <table class="form">
		    <tr>
              <td><?php echo $entry_activate_theme_color_editor; ?></td>
              <td><?php if ($config_activate_theme_color_editor) { ?>
                <input type="radio" name="config_activate_theme_color_editor" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="config_activate_theme_color_editor" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="config_activate_theme_color_editor" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="config_activate_theme_color_editor" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?></td>
            </tr>
			<tr>
              <td><?php echo $entry_background_patterns; ?></td>
              <td></td>
            </tr>
		    <tr>
              <td><?php echo $entry_choose_background_texture; ?></td>
              <td>
			    <select name="config_choose_background_texture">
				  <?php if ($config_choose_background_texture == '') { ?>
                  <option value="" selected="selected"><?php echo $text_bg_texture_no; ?></option>
                  <?php } else { ?>
                  <option value=""><?php echo $text_bg_texture_no; ?></option>
                  <?php } ?>
			      <?php if ($config_choose_background_texture == 'arab_tile.png') { ?>
                  <option value="arab_tile.png" selected="selected"><?php echo $text_bg_texture_1; ?></option>
                  <?php } else { ?>
                  <option value="arab_tile.png"><?php echo $text_bg_texture_1; ?></option>
                  <?php } ?>
                  <?php if ($config_choose_background_texture == 'argyle.png') { ?>
                  <option value="argyle.png" selected="selected"><?php echo $text_bg_texture_2; ?></option>
                  <?php } else { ?>
                  <option value="argyle.png"><?php echo $text_bg_texture_2; ?></option>
                  <?php } ?>
                  <?php if ($config_choose_background_texture == 'back_pattern.png') { ?>
                  <option value="back_pattern.png" selected="selected"><?php echo $text_bg_texture_3; ?></option>
                  <?php } else { ?>
                  <option value="back_pattern.png"><?php echo $text_bg_texture_3; ?></option>
                  <?php } ?>
				  <?php if ($config_choose_background_texture == 'black_linen_v2.png') { ?>
                  <option value="black_linen_v2.png" selected="selected"><?php echo $text_bg_texture_4; ?></option>
                  <?php } else { ?>
                  <option value="black_linen_v2.png"><?php echo $text_bg_texture_4; ?></option>
                  <?php } ?>
				  <?php if ($config_choose_background_texture == 'black_thread.png') { ?>
                  <option value="black_thread.png" selected="selected"><?php echo $text_bg_texture_5; ?></option>
                  <?php } else { ?>
                  <option value="black_thread.png"><?php echo $text_bg_texture_5; ?></option>
                  <?php } ?>
				  <?php if ($config_choose_background_texture == 'bright_squares.png') { ?>
                  <option value="bright_squares.png" selected="selected"><?php echo $text_bg_texture_6; ?></option>
                  <?php } else { ?>
                  <option value="bright_squares.png"><?php echo $text_bg_texture_6; ?></option>
                  <?php } ?>
				  <?php if ($config_choose_background_texture == 'brushed_alu.png') { ?>
                  <option value="brushed_alu.png" selected="selected"><?php echo $text_bg_texture_7; ?></option>
                  <?php } else { ?>
                  <option value="brushed_alu.png"><?php echo $text_bg_texture_7; ?></option>
                  <?php } ?>
				  <?php if ($config_choose_background_texture == 'checkered_pattern.png') { ?>
                  <option value="checkered_pattern.png" selected="selected"><?php echo $text_bg_texture_8; ?></option>
                  <?php } else { ?>
                  <option value="checkered_pattern.png"><?php echo $text_bg_texture_8; ?></option>
                  <?php } ?>
				  <?php if ($config_choose_background_texture == 'classy_fabric.png') { ?>
                  <option value="classy_fabric.png" selected="selected"><?php echo $text_bg_texture_9; ?></option>
                  <?php } else { ?>
                  <option value="classy_fabric.png"><?php echo $text_bg_texture_9; ?></option>
                  <?php } ?>
				  <?php if ($config_choose_background_texture == 'concrete_wall_3.png') { ?>
                  <option value="concrete_wall_3.png" selected="selected"><?php echo $text_bg_texture_10; ?></option>
                  <?php } else { ?>
                  <option value="concrete_wall_3.png"><?php echo $text_bg_texture_10; ?></option>
                  <?php } ?>
				  <?php if ($config_choose_background_texture == 'connect.png') { ?>
                  <option value="connect.png" selected="selected"><?php echo $text_bg_texture_11; ?></option>
                  <?php } else { ?>
                  <option value="connect.png"><?php echo $text_bg_texture_11; ?></option>
                  <?php } ?>
				  <?php if ($config_choose_background_texture == 'crossed_stripes.png') { ?>
                  <option value="crossed_stripes.png" selected="selected"><?php echo $text_bg_texture_12; ?></option>
                  <?php } else { ?>
                  <option value="crossed_stripes.png"><?php echo $text_bg_texture_12; ?></option>
                  <?php } ?>
				  <?php if ($config_choose_background_texture == 'cubes.png') { ?>
                  <option value="cubes.png" selected="selected"><?php echo $text_bg_texture_13; ?></option>
                  <?php } else { ?>
                  <option value="cubes.png"><?php echo $text_bg_texture_13; ?></option>
                  <?php } ?>
				  <?php if ($config_choose_background_texture == 'dark_wood.png') { ?>
                  <option value="dark_wood.png" selected="selected"><?php echo $text_bg_texture_14; ?></option>
                  <?php } else { ?>
                  <option value="dark_wood.png"><?php echo $text_bg_texture_14; ?></option>
                  <?php } ?>
				  <?php if ($config_choose_background_texture == 'furley_bg.png') { ?>
                  <option value="furley_bg.png" selected="selected"><?php echo $text_bg_texture_15; ?></option>
                  <?php } else { ?>
                  <option value="furley_bg.png"><?php echo $text_bg_texture_15; ?></option>
                  <?php } ?>
				  <?php if ($config_choose_background_texture == 'grey.png') { ?>
                  <option value="grey.png" selected="selected"><?php echo $text_bg_texture_16; ?></option>
                  <?php } else { ?>
                  <option value="grey.png"><?php echo $text_bg_texture_16; ?></option>
                  <?php } ?>
				  <?php if ($config_choose_background_texture == 'large_leather.png') { ?>
                  <option value="large_leather.png" selected="selected"><?php echo $text_bg_texture_17; ?></option>
                  <?php } else { ?>
                  <option value="large_leather.png"><?php echo $text_bg_texture_17; ?></option>
                  <?php } ?>
				  <?php if ($config_choose_background_texture == 'light_noise_diagonal.png') { ?>
                  <option value="light_noise_diagonal.png" selected="selected"><?php echo $text_bg_texture_18; ?></option>
                  <?php } else { ?>
                  <option value="light_noise_diagonal.png"><?php echo $text_bg_texture_18; ?></option>
                  <?php } ?>
				  <?php if ($config_choose_background_texture == 'low_contrast_linen.png') { ?>
                  <option value="low_contrast_linen.png" selected="selected"><?php echo $text_bg_texture_19; ?></option>
                  <?php } else { ?>
                  <option value="low_contrast_linen.png"><?php echo $text_bg_texture_19; ?></option>
                  <?php } ?>
				  <?php if ($config_choose_background_texture == 'merely_cubed.png') { ?>
                  <option value="merely_cubed.png" selected="selected"><?php echo $text_bg_texture_20; ?></option>
                  <?php } else { ?>
                  <option value="merely_cubed.png"><?php echo $text_bg_texture_20; ?></option>
                  <?php } ?>
				  <?php if ($config_choose_background_texture == 'noise-bg.png') { ?>
                  <option value="noise-bg.png" selected="selected"><?php echo $text_bg_texture_21; ?></option>
                  <?php } else { ?>
                  <option value="noise-bg.png"><?php echo $text_bg_texture_21; ?></option>
                  <?php } ?>
				  <?php if ($config_choose_background_texture == 'paper.png') { ?>
                  <option value="paper.png" selected="selected"><?php echo $text_bg_texture_22; ?></option>
                  <?php } else { ?>
                  <option value="paper.png"><?php echo $text_bg_texture_22; ?></option>
                  <?php } ?>
				  <?php if ($config_choose_background_texture == 'pinstripe.png') { ?>
                  <option value="pinstripe.png" selected="selected"><?php echo $text_bg_texture_23; ?></option>
                  <?php } else { ?>
                  <option value="pinstripe.png"><?php echo $text_bg_texture_23; ?></option>
                  <?php } ?>
				  <?php if ($config_choose_background_texture == 'plaid.png') { ?>
                  <option value="plaid.png" selected="selected"><?php echo $text_bg_texture_24; ?></option>
                  <?php } else { ?>
                  <option value="plaid.png"><?php echo $text_bg_texture_24; ?></option>
                  <?php } ?>
				  <?php if ($config_choose_background_texture == 'project_papper.png') { ?>
                  <option value="project_papper.png" selected="selected"><?php echo $text_bg_texture_25; ?></option>
                  <?php } else { ?>
                  <option value="project_papper.png"><?php echo $text_bg_texture_25; ?></option>
                  <?php } ?>
				  <?php if ($config_choose_background_texture == 'purty_wood.png') { ?>
                  <option value="purty_wood.png" selected="selected"><?php echo $text_bg_texture_26; ?></option>
                  <?php } else { ?>
                  <option value="purty_wood.png"><?php echo $text_bg_texture_26; ?></option>
                  <?php } ?>
				  <?php if ($config_choose_background_texture == 'px_by_Gre3g.png') { ?>
                  <option value="px_by_Gre3g.png" selected="selected"><?php echo $text_bg_texture_27; ?></option>
                  <?php } else { ?>
                  <option value="px_by_Gre3g.png"><?php echo $text_bg_texture_27; ?></option>
                  <?php } ?>
				  <?php if ($config_choose_background_texture == 'redox_01.png') { ?>
                  <option value="redox_01.png" selected="selected"><?php echo $text_bg_texture_28; ?></option>
                  <?php } else { ?>
                  <option value="redox_01.png"><?php echo $text_bg_texture_28; ?></option>
                  <?php } ?>
				  <?php if ($config_choose_background_texture == 'retina_wood.png') { ?>
                  <option value="retina_wood.png" selected="selected"><?php echo $text_bg_texture_29; ?></option>
                  <?php } else { ?>
                  <option value="retina_wood.png"><?php echo $text_bg_texture_29; ?></option>
                  <?php } ?>
				  <?php if ($config_choose_background_texture == 'shinecaro.png') { ?>
                  <option value="shinecaro.png" selected="selected"><?php echo $text_bg_texture_30; ?></option>
                  <?php } else { ?>
                  <option value="shinecaro.png"><?php echo $text_bg_texture_30; ?></option>
                  <?php } ?>
				  <?php if ($config_choose_background_texture == 'square_bg.png') { ?>
                  <option value="square_bg.png" selected="selected"><?php echo $text_bg_texture_31; ?></option>
                  <?php } else { ?>
                  <option value="square_bg.png"><?php echo $text_bg_texture_31; ?></option>
                  <?php } ?>
				  <?php if ($config_choose_background_texture == 'stacked_circles.png') { ?>
                  <option value="stacked_circles.png" selected="selected"><?php echo $text_bg_texture_32; ?></option>
                  <?php } else { ?>
                  <option value="stacked_circles.png"><?php echo $text_bg_texture_32; ?></option>
                  <?php } ?>
				  <?php if ($config_choose_background_texture == 'subtle_freckles.png') { ?>
                  <option value="subtle_freckles.png" selected="selected"><?php echo $text_bg_texture_33; ?></option>
                  <?php } else { ?>
                  <option value="subtle_freckles.png"><?php echo $text_bg_texture_33; ?></option>
                  <?php } ?>
				  <?php if ($config_choose_background_texture == 'subtlenet2.png') { ?>
                  <option value="subtlenet2.png" selected="selected"><?php echo $text_bg_texture_34; ?></option>
                  <?php } else { ?>
                  <option value="subtlenet2.png"><?php echo $text_bg_texture_34; ?></option>
                  <?php } ?>
				  <?php if ($config_choose_background_texture == 'white_texture.png') { ?>
                  <option value="white_texture.png" selected="selected"><?php echo $text_bg_texture_35; ?></option>
                  <?php } else { ?>
                  <option value="white_texture.png"><?php echo $text_bg_texture_35; ?></option>
                  <?php } ?>
				  <?php if ($config_choose_background_texture == 'wood_pattern.png') { ?>
                  <option value="wood_pattern.png" selected="selected"><?php echo $text_bg_texture_36; ?></option>
                  <?php } else { ?>
                  <option value="wood_pattern.png"><?php echo $text_bg_texture_36; ?></option>
                  <?php } ?>
                </select>
			  </td>
            </tr>
			 <tr>
              <td><?php echo $entry_upload_your_own_pattern; ?></td>
              <td><?php if ($config_upload_your_own_pattern) { ?>
                <input type="radio" name="config_upload_your_own_pattern" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="config_upload_your_own_pattern" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="config_upload_your_own_pattern" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="config_upload_your_own_pattern" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?></td>
            </tr>
		    <tr>
				<td>Upload Your Own Bacground Image:</td>
				<td>
					<div class="image"><img src="<?php echo $ebg; ?>" alt="" id="thumb-ebg" />
						<input type="hidden" name="config_ebg" value="<?php echo $config_ebg; ?>" id="ebg" />
						<br />
						<a onclick="image_upload('ebg', 'thumb-ebg');"><?php echo $text_browse; ?></a>&nbsp;&nbsp;|&nbsp;&nbsp;<a onclick="$('#thumb-ebg').attr('src', '<?php echo $no_image; ?>'); $('#ebg').attr('value', '');"><?php echo $text_clear; ?></a>
					</div>
			    </td>
            </tr>
			<tr>
              <td><?php echo $entry_background_repeat; ?></td>
              <td>
			    <select name="config_background_repeat">
				  <?php if ($config_background_repeat == 'repeat') { ?>
                  <option value="repeat" selected="selected"><?php echo $text_bg_repeat; ?></option>
                  <?php } else { ?>
                  <option value="repeat"><?php echo $text_bg_repeat; ?></option>
                  <?php } ?>
				  <?php if ($config_background_repeat == 'no-repeat') { ?>
                  <option value="no-repeat" selected="selected"><?php echo $text_bg_norepeat; ?></option>
                  <?php } else { ?>
                  <option value="no-repeat"><?php echo $text_bg_norepeat; ?></option>
                  <?php } ?><?php if ($config_background_repeat == 'repeat-x') { ?>
                  <option value="repeat-x" selected="selected"><?php echo $text_bg_repeatx; ?></option>
                  <?php } else { ?>
                  <option value="repeat-x"><?php echo $text_bg_repeatx; ?></option>
                  <?php } ?>
			      <?php if ($config_background_repeat == 'repeat-y') { ?>
                  <option value="repeat-y" selected="selected"><?php echo $text_bg_repeaty; ?></option>
                  <?php } else { ?>
                  <option value="repeat-y"><?php echo $text_bg_repeaty; ?></option>
                  <?php } ?>
                </select>
			  </td>
            </tr>
			<tr>
              <td><?php echo $entry_background_position; ?></td>
              <td>
			    <select name="config_background_position">
				  <?php if ($config_background_position == 'left top') { ?>
                  <option value="left top" selected="selected"><?php echo $text_bg_left_top; ?></option>
                  <?php } else { ?>
                  <option value="left top"><?php echo $text_bg_left_top; ?></option>
                  <?php } ?>
				  <?php if ($config_background_position == 'left center') { ?>
                  <option value="left center" selected="selected"><?php echo $text_bg_left_center; ?></option>
                  <?php } else { ?>
                  <option value="left center"><?php echo $text_bg_left_center; ?></option>
                  <?php } ?><?php if ($config_background_position == 'left bottom') { ?>
                  <option value="left bottom" selected="selected"><?php echo $text_bg_left_bottom; ?></option>
                  <?php } else { ?>
                  <option value="left bottom"><?php echo $text_bg_left_bottom; ?></option>
                  <?php } ?>
			      <?php if ($config_background_position == 'right top') { ?>
                  <option value="right top" selected="selected"><?php echo $text_bg_right_top; ?></option>
                  <?php } else { ?>
                  <option value="right top"><?php echo $text_bg_right_top; ?></option>
                  <?php } ?>
			      <?php if ($config_background_position == 'right center') { ?>
                  <option value="right center" selected="selected"><?php echo $text_bg_right_center; ?></option>
                  <?php } else { ?>
                  <option value="right center"><?php echo $text_bg_right_center; ?></option>
                  <?php } ?>
			      <?php if ($config_background_position == 'right bottom') { ?>
                  <option value="right bottom" selected="selected"><?php echo $text_bg_right_bottom; ?></option>
                  <?php } else { ?>
                  <option value="right bottom"><?php echo $text_bg_right_bottom; ?></option>
                  <?php } ?>
			      <?php if ($config_background_position == 'center top') { ?>
                  <option value="center top" selected="selected"><?php echo $text_bg_center_top; ?></option>
                  <?php } else { ?>
                  <option value="center top"><?php echo $text_bg_center_top; ?></option>
                  <?php } ?>
			      <?php if ($config_background_position == 'center center') { ?>
                  <option value="center center" selected="selected"><?php echo $text_bg_center_center; ?></option>
                  <?php } else { ?>
                  <option value="center center"><?php echo $text_bg_center_center; ?></option>
                  <?php } ?>
			      <?php if ($config_background_position == 'center bottom') { ?>
                  <option value="center bottom" selected="selected"><?php echo $text_bg_center_bottom; ?></option>
                  <?php } else { ?>
                  <option value="center bottom"><?php echo $text_bg_center_bottom; ?></option>
                  <?php } ?>
                </select>
			  </td>
            </tr>
			<tr>
              <td><?php echo $entry_background_attachment; ?></td>
              <td>
			    <select name="config_background_attachment">
				  <?php if ($config_background_attachment == 'scroll') { ?>
                  <option value="scroll" selected="selected"><?php echo $text_bg_scroll; ?></option>
                  <?php } else { ?>
                  <option value="scroll"><?php echo $text_bg_scroll; ?></option>
                  <?php } ?>
				  <?php if ($config_background_attachment == 'fixed') { ?>
                  <option value="fixed" selected="selected"><?php echo $text_bg_fixed; ?></option>
                  <?php } else { ?>
                  <option value="fixed"><?php echo $text_bg_fixed; ?></option>
                  <?php } ?>
                </select>
			  </td>
            </tr>
			<tr>
              <td><?php echo $entry_body_colors; ?></td>
              <td></td>
            </tr>
		    <tr>
              <td><?php echo $entry_body_bg; ?></td>
              <td><input type="text" name="body_bg" value="<?php echo $body_bg; ?>" class="colors" size="7" /></td>
            </tr>
		    <tr>
              <td><?php echo $entry_body_links_color; ?></td>
              <td><input type="text" name="body_links_color" value="<?php echo $body_links_color; ?>" class="colors" size="7" /></td>
            </tr>
		    <tr>
              <td><?php echo $entry_general_color; ?></td>
              <td><input type="text" name="general_color" value="<?php echo $general_color; ?>" class="colors" size="7" /></td>
            </tr>
          </table>
        </div><!-- THEME COLORS TAB ENDS HERE -->
		<div id="tab-fonts"><!-- FONTS TAB STARTS HERE -->
          <table class="form">
		      <tr>
              <td><?php echo $entry_activate_google_custom_fonts; ?></td>
              <td><?php if ($config_activate_google_custom_fonts) { ?>
                <input type="radio" name="config_activate_google_custom_fonts" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="config_activate_google_custom_fonts" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="config_activate_google_custom_fonts" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="config_activate_google_custom_fonts" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?></td>
			  </tr>
		      <tr>
              <td><?php echo $entry_choose_header_font; ?></td>
              <td>
				<select name="config_choose_header_font">
					<?php if ($config_choose_header_font == 'Abel') { ?>
						<option value="Abel" selected="selected"><?php echo $text_font_abel; ?></option>
					<?php } else { ?>
						<option value="Abel"><?php echo $text_font_abel; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Actor') { ?>
						<option value="Actor" selected="selected"><?php echo $text_font_actor; ?></option>
					<?php } else { ?>
						<option value="Actor"><?php echo $text_font_actor; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Arial') { ?>
						<option value="Arial" selected="selected"><?php echo $text_font_arial; ?></option>
					<?php } else { ?>
						<option value="Arial"><?php echo $text_font_arial; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Aclonica') { ?>
						<option value="Aclonica" selected="selected"><?php echo $text_font_aclonica; ?></option>
					<?php } else { ?>
						<option value="Aclonica"><?php echo $text_font_aclonica; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Allan') { ?>
						<option value="Allan" selected="selected"><?php echo $text_font_allan; ?></option>
					<?php } else { ?>
						<option value="Allan"><?php echo $text_font_allan; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Annie Use Your Telescope') { ?>
						<option value="Annie Use Your Telescope" selected="selected"><?php echo $text_font_annie_use_your_telescope; ?></option>
					<?php } else { ?>
						<option value="Annie Use Your Telescope"><?php echo $text_font_annie_use_your_telescope; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Anonymous Pro') { ?>
						<option value="Anonymous Pro" selected="selected"><?php echo $text_font_anonymous_pro; ?></option>
					<?php } else { ?>
						<option value="Anonymous Pro"><?php echo $text_font_anonymous_pro; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Allerta Stencil') { ?>
						<option value="Allerta Stencil" selected="selected"><?php echo $text_font_allerta_stencil; ?></option>
					<?php } else { ?>
						<option value="Allerta Stencil"><?php echo $text_font_allerta_stencil; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Allerta') { ?>
						<option value="Allerta" selected="selected"><?php echo $text_font_allerta; ?></option>
					<?php } else { ?>
						<option value="Allerta"><?php echo $text_font_allerta; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Amaranth') { ?>
						<option value="Amaranth" selected="selected"><?php echo $text_font_amaranth; ?></option>
					<?php } else { ?>
						<option value="Amaranth"><?php echo $text_font_amaranth; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Anton') { ?>
						<option value="Anton" selected="selected"><?php echo $text_font_anton; ?></option>
					<?php } else { ?>
						<option value="Anton"><?php echo $text_font_anton; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Architects Daughter') { ?>
						<option value="Architects Daughter" selected="selected"><?php echo $text_font_architects_daughter; ?></option>
					<?php } else { ?>
						<option value="Architects Daughter"><?php echo $text_font_architects_daughter; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Arimo') { ?>
						<option value="Arimo" selected="selected"><?php echo $text_font_arimo; ?></option>
					<?php } else { ?>
						<option value="Arimo"><?php echo $text_font_arimo; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Artifika') { ?>
						<option value="Artifika" selected="selected"><?php echo $text_font_artifika; ?></option>
					<?php } else { ?>
						<option value="Artifika"><?php echo $text_font_artifika; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Arvo') { ?>
						<option value="Arvo" selected="selected"><?php echo $text_font_arvo; ?></option>
					<?php } else { ?>
						<option value="Arvo"><?php echo $text_font_arvo; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Asset') { ?>
						<option value="Asset" selected="selected"><?php echo $text_font_asset; ?></option>
					<?php } else { ?>
						<option value="Asset"><?php echo $text_font_asset; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Astloch') { ?>
						<option value="Astloch" selected="selected"><?php echo $text_font_astloch; ?></option>
					<?php } else { ?>
						<option value="Astloch"><?php echo $text_font_astloch; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Bangers') { ?>
						<option value="Bangers" selected="selected"><?php echo $text_font_bangers; ?></option>
					<?php } else { ?>
						<option value="Bangers"><?php echo $text_font_bangers; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Bentham') { ?>
						<option value="Bentham" selected="selected"><?php echo $text_font_bentham; ?></option>
					<?php } else { ?>
						<option value="Bentham"><?php echo $text_font_bentham; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Bevan') { ?>
						<option value="Bevan" selected="selected"><?php echo $text_font_bevan; ?></option>
					<?php } else { ?>
						<option value="Bevan"><?php echo $text_font_bevan; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Bigshot One') { ?>
						<option value="Bigshot One" selected="selected"><?php echo $text_font_bigshot_one; ?></option>
					<?php } else { ?>
						<option value="Bigshot One"><?php echo $text_font_bigshot_one; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Bowlby One') { ?>
						<option value="Bowlby One" selected="selected"><?php echo $text_font_bowlby_one; ?></option>
					<?php } else { ?>
						<option value="Bowlby One"><?php echo $text_font_bowlby_one; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Bowlby One SC') { ?>
						<option value="Bowlby One SC" selected="selected"><?php echo $text_font_bowlby_one_sc; ?></option>
					<?php } else { ?>
						<option value="Bowlby One SC"><?php echo $text_font_bowlby_one_sc; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Brawler') { ?>
						<option value="Brawler" selected="selected"><?php echo $text_font_brawler; ?></option>
					<?php } else { ?>
						<option value="Brawler"><?php echo $text_font_brawler; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Buda') { ?>
						<option value="Buda" selected="selected"><?php echo $text_font_buda; ?></option>
					<?php } else { ?>
						<option value="Buda"><?php echo $text_font_buda; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Cabin') { ?>
						<option value="Cabin" selected="selected"><?php echo $text_font_cabin; ?></option>
					<?php } else { ?>
						<option value="Cabin"><?php echo $text_font_cabin; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Calligraffitti') { ?>
						<option value="Calligraffitti" selected="selected"><?php echo $text_font_calligraffitti; ?></option>
					<?php } else { ?>
						<option value="Calligraffitti"><?php echo $text_font_calligraffitti; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Candal') { ?>
						<option value="Candal" selected="selected"><?php echo $text_font_candal; ?></option>
					<?php } else { ?>
						<option value="Candal"><?php echo $text_font_candal; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Cantarell') { ?>
						<option value="Cantarell" selected="selected"><?php echo $text_font_cantarell; ?></option>
					<?php } else { ?>
						<option value="Cantarell"><?php echo $text_font_cantarell; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Cardo') { ?>
						<option value="Cardo" selected="selected"><?php echo $text_font_cardo; ?></option>
					<?php } else { ?>
						<option value="Cardo"><?php echo $text_font_cardo; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Carter One') { ?>
						<option value="Carter One" selected="selected"><?php echo $text_font_carter_one; ?></option>
					<?php } else { ?>
						<option value="Carter One"><?php echo $text_font_carter_one; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Caudex') { ?>
						<option value="Caudex" selected="selected"><?php echo $text_font_caudex; ?></option>
					<?php } else { ?>
						<option value="Caudex"><?php echo $text_font_caudex; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Cedarville Cursive') { ?>
						<option value="Cedarville Cursive" selected="selected"><?php echo $text_font_cedarville_cursive; ?></option>
					<?php } else { ?>
						<option value="Cedarville Cursive"><?php echo $text_font_cedarville_cursive; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Cherry Cream Soda') { ?>
						<option value="Cherry Cream Soda" selected="selected"><?php echo $text_font_cherry_cream_soda; ?></option>
					<?php } else { ?>
						<option value="Cherry Cream Soda"><?php echo $text_font_cherry_cream_soda; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Chewy') { ?>
						<option value="Chewy" selected="selected"><?php echo $text_font_chewy; ?></option>
					<?php } else { ?>
						<option value="Chewy"><?php echo $text_font_chewy; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Coda') { ?>
						<option value="Coda" selected="selected"><?php echo $text_font_coda; ?></option>
					<?php } else { ?>
						<option value="Coda"><?php echo $text_font_coda; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Coming Soon') { ?>
						<option value="Coming Soon" selected="selected"><?php echo $text_font_coming_soon; ?></option>
					<?php } else { ?>
						<option value="Coming Soon"><?php echo $text_font_coming_soon; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Copse') { ?>
						<option value="Copse" selected="selected"><?php echo $text_font_copse; ?></option>
					<?php } else { ?>
						<option value="Copse"><?php echo $text_font_copse; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Corben') { ?>
						<option value="Corben" selected="selected"><?php echo $text_font_corben; ?></option>
					<?php } else { ?>
						<option value="Corben"><?php echo $text_font_corben; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Cousine') { ?>
						<option value="Cousine" selected="selected"><?php echo $text_font_cousine; ?></option>
					<?php } else { ?>
						<option value="Cousine"><?php echo $text_font_cousine; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Covered By Your Grace') { ?>
						<option value="Covered By Your Grace" selected="selected"><?php echo $text_font_covered_by_your_grace; ?></option>
					<?php } else { ?>
						<option value="Covered By Your Grace"><?php echo $text_font_covered_by_your_grace; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Crafty Girls') { ?>
						<option value="Crafty Girls" selected="selected"><?php echo $text_font_crafty_girls; ?></option>
					<?php } else { ?>
						<option value="Crafty Girls"><?php echo $text_font_crafty_girls; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Crimson Text') { ?>
						<option value="Crimson Text" selected="selected"><?php echo $text_font_crimson_text; ?></option>
					<?php } else { ?>
						<option value="Crimson Text"><?php echo $text_font_crimson_text; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Crushed') { ?>
						<option value="Crushed" selected="selected"><?php echo $text_font_crushed; ?></option>
					<?php } else { ?>
						<option value="Crushed"><?php echo $text_font_crushed; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Cuprum') { ?>
						<option value="Cuprum" selected="selected"><?php echo $text_font_cuprum; ?></option>
					<?php } else { ?>
						<option value="Cuprum"><?php echo $text_font_cuprum; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Damion') { ?>
						<option value="Damion" selected="selected"><?php echo $text_font_damion; ?></option>
					<?php } else { ?>
						<option value="Damion"><?php echo $text_font_damion; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Dancing Script') { ?>
						<option value="Dancing Script" selected="selected"><?php echo $text_font_dancing_script; ?></option>
					<?php } else { ?>
						<option value="Dancing Script"><?php echo $text_font_dancing_script; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Dawning of a New Day') { ?>
						<option value="Dawning of a New Day" selected="selected"><?php echo $text_font_dawning_of_a_new_day; ?></option>
					<?php } else { ?>
						<option value="Dawning of a New Day"><?php echo $text_font_dawning_of_a_new_day; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Didact Gothic') { ?>
						<option value="Didact Gothic" selected="selected"><?php echo $text_font_didact_gothic; ?></option>
					<?php } else { ?>
						<option value="Didact Gothic"><?php echo $text_font_didact_gothic; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Droid Sans') { ?>
						<option value="Droid Sans" selected="selected"><?php echo $text_font_droid_sans; ?></option>
					<?php } else { ?>
						<option value="Droid Sans"><?php echo $text_font_droid_sans; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Droid Sans Mono') { ?>
						<option value="Droid Sans Mono" selected="selected"><?php echo $text_font_droid_sans_mono; ?></option>
					<?php } else { ?>
						<option value="Droid Sans Mono"><?php echo $text_font_droid_sans_mono; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Droid Serif') { ?>
						<option value="Droid Serif" selected="selected"><?php echo $text_font_droid_serif; ?></option>
					<?php } else { ?>
						<option value="Droid Serif"><?php echo $text_font_droid_serif; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'EB Garamond') { ?>
						<option value="EB Garamond" selected="selected"><?php echo $text_font_eb_garamond; ?></option>
					<?php } else { ?>
						<option value="EB Garamond"><?php echo $text_font_eb_garamond; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Expletus Sans') { ?>
						<option value="Expletus Sans" selected="selected"><?php echo $text_font_expletus_sans; ?></option>
					<?php } else { ?>
						<option value="Expletus Sans"><?php echo $text_font_expletus_sans; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Fontdiner Swanky') { ?>
						<option value="Fontdiner Swanky" selected="selected"><?php echo $text_font_fontdiner_swanky; ?></option>
					<?php } else { ?>
						<option value="Fontdiner Swanky"><?php echo $text_font_fontdiner_swanky; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Forum') { ?>
						<option value="Forum" selected="selected"><?php echo $text_font_forum; ?></option>
					<?php } else { ?>
						<option value="Forum"><?php echo $text_font_forum; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Francois One') { ?>
						<option value="Francois One" selected="selected"><?php echo $text_font_francois_one; ?></option>
					<?php } else { ?>
						<option value="Francois One"><?php echo $text_font_francois_one; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Geo') { ?>
						<option value="Geo" selected="selected"><?php echo $text_font_geo; ?></option>
					<?php } else { ?>
						<option value="Geo"><?php echo $text_font_geo; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Give You Glory') { ?>
						<option value="Give You Glory" selected="selected"><?php echo $text_font_give_you_glory; ?></option>
					<?php } else { ?>
						<option value="Give You Glory"><?php echo $text_font_give_you_glory; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Goblin One') { ?>
						<option value="Goblin One" selected="selected"><?php echo $text_font_goblin_one; ?></option>
					<?php } else { ?>
						<option value="Goblin One"><?php echo $text_font_goblin_one; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Goudy Bookletter 1911') { ?>
						<option value="Goudy Bookletter 1911" selected="selected"><?php echo $text_font_goudy_bookletter_1911; ?></option>
					<?php } else { ?>
						<option value="Goudy Bookletter 1911"><?php echo $text_font_goudy_bookletter_1911; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Gravitas One') { ?>
						<option value="Gravitas One" selected="selected"><?php echo $text_font_gravitas_one; ?></option>
					<?php } else { ?>
						<option value="Gravitas One"><?php echo $text_font_gravitas_one; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Gruppo') { ?>
						<option value="Gruppo" selected="selected"><?php echo $text_font_gruppo; ?></option>
					<?php } else { ?>
						<option value="Gruppo"><?php echo $text_font_gruppo; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Hammersmith One') { ?>
						<option value="Hammersmith One" selected="selected"><?php echo $text_font_hammersmith_one; ?></option>
					<?php } else { ?>
						<option value="Hammersmith One"><?php echo $text_font_hammersmith_one; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Holtwood One SC') { ?>
						<option value="Holtwood One SC" selected="selected"><?php echo $text_font_holtwood_one_sc; ?></option>
					<?php } else { ?>
						<option value="Holtwood One SC"><?php echo $text_font_holtwood_one_sc; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Homemade Apple') { ?>
						<option value="Homemade Apple" selected="selected"><?php echo $text_font_homemade_apple; ?></option>
					<?php } else { ?>
						<option value="Homemade Apple"><?php echo $text_font_homemade_apple; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Inconsolata') { ?>
						<option value="Inconsolata" selected="selected"><?php echo $text_font_inconsolata; ?></option>
					<?php } else { ?>
						<option value="Inconsolata"><?php echo $text_font_inconsolata; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Indie Flower') { ?>
						<option value="Indie Flower" selected="selected"><?php echo $text_font_indie_flower; ?></option>
					<?php } else { ?>
						<option value="Indie Flower"><?php echo $text_font_indie_flower; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'IM Fell DW Pica') { ?>
						<option value="IM Fell DW Pica" selected="selected"><?php echo $text_font_im_fell_dw_pica; ?></option>
					<?php } else { ?>
						<option value="IM Fell DW Pica"><?php echo $text_font_im_fell_dw_pica; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'IM Fell DW Pica SC') { ?>
						<option value="IM Fell DW Pica SC" selected="selected"><?php echo $text_font_im_fell_dw_pica_sc; ?></option>
					<?php } else { ?>
						<option value="IM Fell DW Pica SC"><?php echo $text_font_im_fell_dw_pica_sc; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'IM Fell Double Pica') { ?>
						<option value="IM Fell Double Pica" selected="selected"><?php echo $text_font_im_fell_double_pica; ?></option>
					<?php } else { ?>
						<option value="IM Fell Double Pica"><?php echo $text_font_im_fell_double_pica; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'IM Fell Double Pica SC') { ?>
						<option value="IM Fell Double Pica SC" selected="selected"><?php echo $text_font_im_fell_double_pica_sc; ?></option>
					<?php } else { ?>
						<option value="IM Fell Double Pica SC"><?php echo $text_font_im_fell_double_pica_sc; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'IM Fell English') { ?>
						<option value="IM Fell English" selected="selected"><?php echo $text_font_im_fell_english; ?></option>
					<?php } else { ?>
						<option value="IM Fell English"><?php echo $text_font_im_fell_english; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'IM Fell English SC') { ?>
						<option value="IM Fell English SC" selected="selected"><?php echo $text_font_im_fell_english_sc; ?></option>
					<?php } else { ?>
						<option value="IM Fell English SC"><?php echo $text_font_im_fell_english_sc; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'IM Fell French Canon') { ?>
						<option value="IM Fell French Canon" selected="selected"><?php echo $text_font_im_fell_french_canon; ?></option>
					<?php } else { ?>
						<option value="IM Fell French Canon"><?php echo $text_font_im_fell_french_canon; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'IM Fell French Canon SC') { ?>
						<option value="IM Fell French Canon SC" selected="selected"><?php echo $text_font_im_fell_french_canon_sc; ?></option>
					<?php } else { ?>
						<option value="IM Fell French Canon SC"><?php echo $text_font_im_fell_french_canon_sc; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'IM Fell Great Primer') { ?>
						<option value="IM Fell Great Primer" selected="selected"><?php echo $text_font_im_fell_great_primer; ?></option>
					<?php } else { ?>
						<option value="IM Fell Great Primer"><?php echo $text_font_im_fell_great_primer; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'IM Fell Great Primer SC') { ?>
						<option value="IM Fell Great Primer SC" selected="selected"><?php echo $text_font_im_fell_great_primer_sc; ?></option>
					<?php } else { ?>
						<option value="IM Fell Great Primer SC"><?php echo $text_font_im_fell_great_primer_sc; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Irish Grover') { ?>
						<option value="Irish Grover" selected="selected"><?php echo $text_font_irish_grover; ?></option>
					<?php } else { ?>
						<option value="Irish Grover"><?php echo $text_font_irish_grover; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Irish Growler') { ?>
						<option value="Irish Growler" selected="selected"><?php echo $text_font_irish_growler; ?></option>
					<?php } else { ?>
						<option value="Irish Growler"><?php echo $text_font_irish_growler; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Istok Web') { ?>
						<option value="Istok Web" selected="selected"><?php echo $text_font_istok_web; ?></option>
					<?php } else { ?>
						<option value="Istok Web"><?php echo $text_font_istok_web; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Josefin Sans') { ?>
						<option value="Josefin Sans" selected="selected"><?php echo $text_font_josefin_sans; ?></option>
					<?php } else { ?>
						<option value="Josefin Sans"><?php echo $text_font_josefin_sans; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Josefin Slab') { ?>
						<option value="Josefin Slab" selected="selected"><?php echo $text_font_josefin_slab; ?></option>
					<?php } else { ?>
						<option value="Josefin Slab"><?php echo $text_font_josefin_slab; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Judson') { ?>
						<option value="Judson" selected="selected"><?php echo $text_font_judson; ?></option>
					<?php } else { ?>
						<option value="Judson"><?php echo $text_font_judson; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Jura') { ?>
						<option value="Jura" selected="selected"><?php echo $text_font_jura; ?></option>
					<?php } else { ?>
						<option value="Jura"><?php echo $text_font_jura; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Just Another Hand') { ?>
						<option value="Just Another Hand" selected="selected"><?php echo $text_font_just_another_hand; ?></option>
					<?php } else { ?>
						<option value="Just Another Hand"><?php echo $text_font_just_another_hand; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Just Me Again Down Here') { ?>
						<option value="Just Me Again Down Here" selected="selected"><?php echo $text_font_just_me_again_down_here; ?></option>
					<?php } else { ?>
						<option value="Just Me Again Down Here"><?php echo $text_font_just_me_again_down_here; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Kameron') { ?>
						<option value="Kameron" selected="selected"><?php echo $text_font_kameron; ?></option>
					<?php } else { ?>
						<option value="Kameron"><?php echo $text_font_kameron; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Kenia') { ?>
						<option value="Kenia" selected="selected"><?php echo $text_font_kenia; ?></option>
					<?php } else { ?>
						<option value="Kenia"><?php echo $text_font_kenia; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Kranky') { ?>
						<option value="Kranky" selected="selected"><?php echo $text_font_kranky; ?></option>
					<?php } else { ?>
						<option value="Kranky"><?php echo $text_font_kranky; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Kreon') { ?>
						<option value="Kreon" selected="selected"><?php echo $text_font_kreon; ?></option>
					<?php } else { ?>
						<option value="Kreon"><?php echo $text_font_kreon; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Kristi') { ?>
						<option value="Kristi" selected="selected"><?php echo $text_font_kristi; ?></option>
					<?php } else { ?>
						<option value="Kristi"><?php echo $text_font_kristi; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'La Belle Aurore') { ?>
						<option value="La Belle Aurore" selected="selected"><?php echo $text_font_la_belle_aurore; ?></option>
					<?php } else { ?>
						<option value="La Belle Aurore"><?php echo $text_font_la_belle_aurore; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Lato') { ?>
						<option value="Lato" selected="selected"><?php echo $text_font_lato; ?></option>
					<?php } else { ?>
						<option value="Lato"><?php echo $text_font_lato; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'League Script') { ?>
						<option value="League Script" selected="selected"><?php echo $text_font_league_script; ?></option>
					<?php } else { ?>
						<option value="League Script"><?php echo $text_font_league_script; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Lekton') { ?>
						<option value="Lekton" selected="selected"><?php echo $text_font_lekton; ?></option>
					<?php } else { ?>
						<option value="Lekton"><?php echo $text_font_lekton; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Limelight') { ?>
						<option value="Limelight" selected="selected"><?php echo $text_font_limelight; ?></option>
					<?php } else { ?>
						<option value="Limelight"><?php echo $text_font_limelight; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Lobster') { ?>
						<option value="Lobster" selected="selected"><?php echo $text_font_lobster; ?></option>
					<?php } else { ?>
						<option value="Lobster"><?php echo $text_font_lobster; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Lobster Two') { ?>
						<option value="Lobster Two" selected="selected"><?php echo $text_font_lobster_two; ?></option>
					<?php } else { ?>
						<option value="Lobster Two"><?php echo $text_font_lobster_two; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Lora') { ?>
						<option value="Lora" selected="selected"><?php echo $text_font_lora; ?></option>
					<?php } else { ?>
						<option value="Lora"><?php echo $text_font_lora; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Love Ya Like A Sister') { ?>
						<option value="Love Ya Like A Sister" selected="selected"><?php echo $text_font_love_ya_like_a_sister; ?></option>
					<?php } else { ?>
						<option value="Love Ya Like A Sister"><?php echo $text_font_love_ya_like_a_sister; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Loved by the King') { ?>
						<option value="Loved by the King" selected="selected"><?php echo $text_font_loved_by_the_king; ?></option>
					<?php } else { ?>
						<option value="Loved by the King"><?php echo $text_font_loved_by_the_king; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Luckiest Guy') { ?>
						<option value="Luckiest Guy" selected="selected"><?php echo $text_font_luckiest_guy; ?></option>
					<?php } else { ?>
						<option value="Luckiest Guy"><?php echo $text_font_luckiest_guy; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Maiden Orange') { ?>
						<option value="Maiden Orange" selected="selected"><?php echo $text_font_maiden_orange; ?></option>
					<?php } else { ?>
						<option value="Maiden Orange"><?php echo $text_font_maiden_orange; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Mako') { ?>
						<option value="Mako" selected="selected"><?php echo $text_font_mako; ?></option>
					<?php } else { ?>
						<option value="Mako"><?php echo $text_font_mako; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Maven Pro') { ?>
						<option value="Maven Pro" selected="selected"><?php echo $text_font_maven_pro; ?></option>
					<?php } else { ?>
						<option value="Maven Pro"><?php echo $text_font_maven_pro; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Meddon') { ?>
						<option value="Meddon" selected="selected"><?php echo $text_font_meddon; ?></option>
					<?php } else { ?>
						<option value="Meddon"><?php echo $text_font_meddon; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'MedievalSharp') { ?>
						<option value="MedievalSharp" selected="selected"><?php echo $text_font_medievalsharp; ?></option>
					<?php } else { ?>
						<option value="MedievalSharp"><?php echo $text_font_medievalsharp; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Megrim') { ?>
						<option value="Megrim" selected="selected"><?php echo $text_font_megrim; ?></option>
					<?php } else { ?>
						<option value="Megrim"><?php echo $text_font_megrim; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Merriweather') { ?>
						<option value="Merriweather" selected="selected"><?php echo $text_font_merriweather; ?></option>
					<?php } else { ?>
						<option value="Merriweather"><?php echo $text_font_merriweather; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Metrophobic') { ?>
						<option value="Metrophobic" selected="selected"><?php echo $text_font_metrophobic; ?></option>
					<?php } else { ?>
						<option value="Metrophobic"><?php echo $text_font_metrophobic; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Michroma') { ?>
						<option value="Michroma" selected="selected"><?php echo $text_font_michroma; ?></option>
					<?php } else { ?>
						<option value="Michroma"><?php echo $text_font_michroma; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Miltonian Tattoo') { ?>
						<option value="Miltonian Tattoo" selected="selected"><?php echo $text_font_miltonian_tattoo; ?></option>
					<?php } else { ?>
						<option value="Miltonian Tattoo"><?php echo $text_font_miltonian_tattoo; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Miltonian') { ?>
						<option value="Miltonian" selected="selected"><?php echo $text_font_miltonian; ?></option>
					<?php } else { ?>
						<option value="Miltonian"><?php echo $text_font_miltonian; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Moder Antiqua') { ?>
						<option value="Moder Antiqua" selected="selected"><?php echo $text_font_moder_antiqua; ?></option>
					<?php } else { ?>
						<option value="Moder Antiqua"><?php echo $text_font_moder_antiqua; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Monofett') { ?>
						<option value="Monofett" selected="selected"><?php echo $text_font_monofett; ?></option>
					<?php } else { ?>
						<option value="Monofett"><?php echo $text_font_monofett; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Molengo') { ?>
						<option value="Molengo" selected="selected"><?php echo $text_font_molengo; ?></option>
					<?php } else { ?>
						<option value="Molengo"><?php echo $text_font_molengo; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Mountains of Christmas') { ?>
						<option value="Mountains of Christmas" selected="selected"><?php echo $text_font_mountains_of_christmas; ?></option>
					<?php } else { ?>
						<option value="Mountains of Christmas"><?php echo $text_font_mountains_of_christmas; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Muli') { ?>
						<option value="Muli" selected="selected"><?php echo $text_font_muli; ?></option>
					<?php } else { ?>
						<option value="Muli"><?php echo $text_font_muli; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Neucha') { ?>
						<option value="Neucha" selected="selected"><?php echo $text_font_neucha; ?></option>
					<?php } else { ?>
						<option value="Neucha"><?php echo $text_font_neucha; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Neuton') { ?>
						<option value="Neuton" selected="selected"><?php echo $text_font_neuton; ?></option>
					<?php } else { ?>
						<option value="Neuton"><?php echo $text_font_neuton; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'News Cycle') { ?>
						<option value="News Cycle" selected="selected"><?php echo $text_font_news_cycle; ?></option>
					<?php } else { ?>
						<option value="News Cycle"><?php echo $text_font_news_cycle; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Nixie One') { ?>
						<option value="Nixie One" selected="selected"><?php echo $text_font_nixie_one; ?></option>
					<?php } else { ?>
						<option value="Nixie One"><?php echo $text_font_nixie_one; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Nobile') { ?>
						<option value="Nobile" selected="selected"><?php echo $text_font_nobile; ?></option>
					<?php } else { ?>
						<option value="Nobile"><?php echo $text_font_nobile; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Nova Cut') { ?>
						<option value="Nova Cut" selected="selected"><?php echo $text_font_nova_cut; ?></option>
					<?php } else { ?>
						<option value="Nova Cut"><?php echo $text_font_nova_cut; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Nova Flat') { ?>
						<option value="Nova Flat" selected="selected"><?php echo $text_font_nova_flat; ?></option>
					<?php } else { ?>
						<option value="Nova Flat"><?php echo $text_font_nova_flat; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Nova Mono') { ?>
						<option value="Nova Mono" selected="selected"><?php echo $text_font_nova_mono; ?></option>
					<?php } else { ?>
						<option value="Nova Mono"><?php echo $text_font_nova_mono; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Nova Oval') { ?>
						<option value="Nova Oval" selected="selected"><?php echo $text_font_nova_oval; ?></option>
					<?php } else { ?>
						<option value="Nova Oval"><?php echo $text_font_nova_oval; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Nova Round') { ?>
						<option value="Nova Round" selected="selected"><?php echo $text_font_nova_round; ?></option>
					<?php } else { ?>
						<option value="Nova Round"><?php echo $text_font_nova_round; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Nova Script') { ?>
						<option value="Nova Script" selected="selected"><?php echo $text_font_nova_script; ?></option>
					<?php } else { ?>
						<option value="Nova Script"><?php echo $text_font_nova_script; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Nova Slim') { ?>
						<option value="Nova Slim" selected="selected"><?php echo $text_font_nova_slim; ?></option>
					<?php } else { ?>
						<option value="Nova Slim"><?php echo $text_font_nova_slim; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Nova Square') { ?>
						<option value="Nova Square" selected="selected"><?php echo $text_font_nova_square; ?></option>
					<?php } else { ?>
						<option value="Nova Square"><?php echo $text_font_nova_square; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Nunito:light') { ?>
						<option value="Nunito:light" selected="selected"><?php echo $text_font_nunito_light; ?></option>
					<?php } else { ?>
						<option value="Nunito:light"><?php echo $text_font_nunito_light; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Nunito') { ?>
						<option value="Nunito" selected="selected"><?php echo $text_font_nunito; ?></option>
					<?php } else { ?>
						<option value="Nunito"><?php echo $text_font_nunito; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'OFL Sorts Mill Goudy TT') { ?>
						<option value="OFL Sorts Mill Goudy TT" selected="selected"><?php echo $text_font_ofl_sorts_mill_goudy_tt; ?></option>
					<?php } else { ?>
						<option value="OFL Sorts Mill Goudy TT"><?php echo $text_font_ofl_sorts_mill_goudy_tt; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Old Standard TT') { ?>
						<option value="Old Standard TT" selected="selected"><?php echo $text_font_old_standard_tt; ?></option>
					<?php } else { ?>
						<option value="Old Standard TT"><?php echo $text_font_old_standard_tt; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Open Sans') { ?>
						<option value="Open Sans" selected="selected"><?php echo $text_font_open_sans; ?></option>
					<?php } else { ?>
						<option value="Open Sans"><?php echo $text_font_open_sans; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Open Sans Condensed') { ?>
						<option value="Open Sans Condensed" selected="selected"><?php echo $text_font_open_sans_condensed; ?></option>
					<?php } else { ?>
						<option value="Open Sans Condensed"><?php echo $text_font_open_sans_condensed; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Orbitron') { ?>
						<option value="Orbitron" selected="selected"><?php echo $text_font_orbitron; ?></option>
					<?php } else { ?>
						<option value="Orbitron"><?php echo $text_font_orbitron; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Oswald') { ?>
						<option value="Oswald" selected="selected"><?php echo $text_font_oswald; ?></option>
					<?php } else { ?>
						<option value="Oswald"><?php echo $text_font_oswald; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Over the Rainbow') { ?>
						<option value="Over the Rainbow" selected="selected"><?php echo $text_font_over_the_rainbow; ?></option>
					<?php } else { ?>
						<option value="Over the Rainbow"><?php echo $text_font_over_the_rainbow; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Reenie Beanie') { ?>
						<option value="Reenie Beanie" selected="selected"><?php echo $text_font_reenie_beanie; ?></option>
					<?php } else { ?>
						<option value="Reenie Beanie"><?php echo $text_font_reenie_beanie; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Pacifico') { ?>
						<option value="Pacifico" selected="selected"><?php echo $text_font_pacifico; ?></option>
					<?php } else { ?>
						<option value="Pacifico"><?php echo $text_font_pacifico; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Patrick Hand') { ?>
						<option value="Patrick Hand" selected="selected"><?php echo $text_font_patrick_hand; ?></option>
					<?php } else { ?>
						<option value="Patrick Hand"><?php echo $text_font_patrick_hand; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Paytone One') { ?>
						<option value="Paytone One" selected="selected"><?php echo $text_font_paytone_one; ?></option>
					<?php } else { ?>
						<option value="Paytone One"><?php echo $text_font_paytone_one; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Permanent Marker') { ?>
						<option value="Permanent Marker" selected="selected"><?php echo $text_font_permanent_marker; ?></option>
					<?php } else { ?>
						<option value="Permanent Marker"><?php echo $text_font_permanent_marker; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Philosopher') { ?>
						<option value="Philosopher" selected="selected"><?php echo $text_font_philosopher; ?></option>
					<?php } else { ?>
						<option value="Philosopher"><?php echo $text_font_philosopher; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Play') { ?>
						<option value="Play" selected="selected"><?php echo $text_font_play; ?></option>
					<?php } else { ?>
						<option value="Play"><?php echo $text_font_play; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Playfair Display') { ?>
						<option value="Playfair Display" selected="selected"><?php echo $text_font_playfair_display; ?></option>
					<?php } else { ?>
						<option value="Playfair Display"><?php echo $text_font_playfair_display; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Podkova') { ?>
						<option value="Podkova" selected="selected"><?php echo $text_font_podkova; ?></option>
					<?php } else { ?>
						<option value="Podkova"><?php echo $text_font_podkova; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'PT Sans') { ?>
						<option value="PT Sans" selected="selected"><?php echo $text_font_pt_sans; ?></option>
					<?php } else { ?>
						<option value="PT Sans"><?php echo $text_font_pt_sans; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'PT Sans Narrow') { ?>
						<option value="PT Sans Narrow" selected="selected"><?php echo $text_font_pt_sans_narrow; ?></option>
					<?php } else { ?>
						<option value="PT Sans Narrow"><?php echo $text_font_pt_sans_narrow; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'PT Sans Narrow:regular,bold') { ?>
						<option value="PT Sans Narrow:regular,bold" selected="selected"><?php echo $text_font_pt_sans_narrow_regular_bold; ?></option>
					<?php } else { ?>
						<option value="PT Sans Narrow:regular,bold"><?php echo $text_font_pt_sans_narrow_regular_bold; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'PT Serif') { ?>
						<option value="PT Serif" selected="selected"><?php echo $text_font_pt_serif; ?></option>
					<?php } else { ?>
						<option value="PT Serif"><?php echo $text_font_pt_serif; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'PT Serif Caption') { ?>
						<option value="PT Serif Caption" selected="selected"><?php echo $text_font_pt_serif_caption; ?></option>
					<?php } else { ?>
						<option value="PT Serif Caption"><?php echo $text_font_pt_serif_caption; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Puritan') { ?>
						<option value="Puritan" selected="selected"><?php echo $text_font_puritan; ?></option>
					<?php } else { ?>
						<option value="Puritan"><?php echo $text_font_puritan; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Quattrocento') { ?>
						<option value="Quattrocento" selected="selected"><?php echo $text_font_quattrocento; ?></option>
					<?php } else { ?>
						<option value="Quattrocento"><?php echo $text_font_quattrocento; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Quattrocento Sans') { ?>
						<option value="Quattrocento Sans" selected="selected"><?php echo $text_font_quattrocento_sans; ?></option>
					<?php } else { ?>
						<option value="Quattrocento Sans"><?php echo $text_font_quattrocento_sans; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Radley') { ?>
						<option value="Radley" selected="selected"><?php echo $text_font_radley; ?></option>
					<?php } else { ?>
						<option value="Radley"><?php echo $text_font_radley; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Raleway') { ?>
						<option value="Raleway" selected="selected"><?php echo $text_font_raleway; ?></option>
					<?php } else { ?>
						<option value="Raleway"><?php echo $text_font_raleway; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Redressed') { ?>
						<option value="Redressed" selected="selected"><?php echo $text_font_redressed; ?></option>
					<?php } else { ?>
						<option value="Redressed"><?php echo $text_font_redressed; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Rock Salt') { ?>
						<option value="Rock Salt" selected="selected"><?php echo $text_font_rock_salt; ?></option>
					<?php } else { ?>
						<option value="Rock Salt"><?php echo $text_font_rock_salt; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Rokkitt') { ?>
						<option value="Rokkitt" selected="selected"><?php echo $text_font_rokkitt; ?></option>
					<?php } else { ?>
						<option value="Rokkitt"><?php echo $text_font_rokkitt; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Ruslan Display') { ?>
						<option value="Ruslan Display" selected="selected"><?php echo $text_font_ruslan_display; ?></option>
					<?php } else { ?>
						<option value="Ruslan Display"><?php echo $text_font_ruslan_display; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Schoolbell') { ?>
						<option value="Schoolbell" selected="selected"><?php echo $text_font_schoolbell; ?></option>
					<?php } else { ?>
						<option value="Schoolbell"><?php echo $text_font_schoolbell; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Shadows Into Light') { ?>
						<option value="Shadows Into Light" selected="selected"><?php echo $text_font_shadows_into_light; ?></option>
					<?php } else { ?>
						<option value="Shadows Into Light"><?php echo $text_font_shadows_into_light; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Shanti') { ?>
						<option value="Shanti" selected="selected"><?php echo $text_font_shanti; ?></option>
					<?php } else { ?>
						<option value="Shanti"><?php echo $text_font_shanti; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Sigmar One') { ?>
						<option value="Sigmar One" selected="selected"><?php echo $text_font_sigmar_one; ?></option>
					<?php } else { ?>
						<option value="Sigmar One"><?php echo $text_font_sigmar_one; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Six Caps') { ?>
						<option value="Six Caps" selected="selected"><?php echo $text_font_six_caps; ?></option>
					<?php } else { ?>
						<option value="Six Caps"><?php echo $text_font_six_caps; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Slackey') { ?>
						<option value="Slackey" selected="selected"><?php echo $text_font_slackey; ?></option>
					<?php } else { ?>
						<option value="Slackey"><?php echo $text_font_slackey; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Smythe') { ?>
						<option value="Smythe" selected="selected"><?php echo $text_font_smythe; ?></option>
					<?php } else { ?>
						<option value="Smythe"><?php echo $text_font_smythe; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Sniglet') { ?>
						<option value="Sniglet" selected="selected"><?php echo $text_font_sniglet; ?></option>
					<?php } else { ?>
						<option value="Sniglet"><?php echo $text_font_sniglet; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Special Elite') { ?>
						<option value="Special Elite" selected="selected"><?php echo $text_font_special_elite; ?></option>
					<?php } else { ?>
						<option value="Special Elite"><?php echo $text_font_special_elite; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Stardos Stencil') { ?>
						<option value="Stardos Stencil" selected="selected"><?php echo $text_font_stardos_stencil; ?></option>
					<?php } else { ?>
						<option value="Stardos Stencil"><?php echo $text_font_stardos_stencil; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Sue Ellen Francisco') { ?>
						<option value="Sue Ellen Francisco" selected="selected"><?php echo $text_font_sue_ellen_francisco; ?></option>
					<?php } else { ?>
						<option value="Sue Ellen Francisco"><?php echo $text_font_sue_ellen_francisco; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Sunshiney') { ?>
						<option value="Sunshiney" selected="selected"><?php echo $text_font_sunshiney; ?></option>
					<?php } else { ?>
						<option value="Sunshiney"><?php echo $text_font_sunshiney; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Swanky and Moo Moo') { ?>
						<option value="Swanky and Moo Moo" selected="selected"><?php echo $text_font_swanky_and_moo_moo; ?></option>
					<?php } else { ?>
						<option value="Swanky and Moo Moo"><?php echo $text_font_swanky_and_moo_moo; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Syncopate') { ?>
						<option value="Syncopate" selected="selected"><?php echo $text_font_syncopate; ?></option>
					<?php } else { ?>
						<option value="Syncopate"><?php echo $text_font_syncopate; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Tangerine') { ?>
						<option value="Tangerine" selected="selected"><?php echo $text_font_tangerine; ?></option>
					<?php } else { ?>
						<option value="Tangerine"><?php echo $text_font_tangerine; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Tenor Sans') { ?>
						<option value="Tenor Sans" selected="selected"><?php echo $text_font_tenor_sans; ?></option>
					<?php } else { ?>
						<option value="Tenor Sans"><?php echo $text_font_tenor_sans; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Terminal Dosis Light') { ?>
						<option value="Terminal Dosis Light" selected="selected"><?php echo $text_font_terminal_dosis_light; ?></option>
					<?php } else { ?>
						<option value="Terminal Dosis Light"><?php echo $text_font_terminal_dosis_light; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'The Girl Next Door') { ?>
						<option value="The Girl Next Door" selected="selected"><?php echo $text_font_the_girl_next_door; ?></option>
					<?php } else { ?>
						<option value="The Girl Next Door"><?php echo $text_font_the_girl_next_door; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Tinos') { ?>
						<option value="Tinos" selected="selected"><?php echo $text_font_tinos; ?></option>
					<?php } else { ?>
						<option value="Tinos"><?php echo $text_font_tinos; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Ubuntu') { ?>
						<option value="Ubuntu" selected="selected"><?php echo $text_font_ubuntu; ?></option>
					<?php } else { ?>
						<option value="Ubuntu"><?php echo $text_font_ubuntu; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Ultra') { ?>
						<option value="Ultra" selected="selected"><?php echo $text_font_ultra; ?></option>
					<?php } else { ?>
						<option value="Ultra"><?php echo $text_font_ultra; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Unkempt') { ?>
						<option value="Unkempt" selected="selected"><?php echo $text_font_unkempt; ?></option>
					<?php } else { ?>
						<option value="Unkempt"><?php echo $text_font_unkempt; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'UnifrakturCook:bold') { ?>
						<option value="UnifrakturCook:bold" selected="selected"><?php echo $text_font_unifrakturcook_bold; ?></option>
					<?php } else { ?>
						<option value="UnifrakturCook:bold"><?php echo $text_font_unifrakturcook_bold; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'UnifrakturMaguntia') { ?>
						<option value="UnifrakturMaguntia" selected="selected"><?php echo $text_font_unifrakturmaguntia; ?></option>
					<?php } else { ?>
						<option value="UnifrakturMaguntia"><?php echo $text_font_unifrakturmaguntia; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Varela') { ?>
						<option value="Varela" selected="selected"><?php echo $text_font_varela; ?></option>
					<?php } else { ?>
						<option value="Varela"><?php echo $text_font_varela; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Varela Round') { ?>
						<option value="Varela Round" selected="selected"><?php echo $text_font_varela_round; ?></option>
					<?php } else { ?>
						<option value="Varela Round"><?php echo $text_font_varela_round; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Vibur') { ?>
						<option value="Vibur" selected="selected"><?php echo $text_font_vibur; ?></option>
					<?php } else { ?>
						<option value="Vibur"><?php echo $text_font_vibur; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Vollkorn') { ?>
						<option value="Vollkorn" selected="selected"><?php echo $text_font_vollkorn; ?></option>
					<?php } else { ?>
						<option value="Vollkorn"><?php echo $text_font_vollkorn; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'VT323') { ?>
						<option value="VT323" selected="selected"><?php echo $text_font_vt323; ?></option>
					<?php } else { ?>
						<option value="VT323"><?php echo $text_font_vt323; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Waiting for the Sunrise') { ?>
						<option value="Waiting for the Sunrise" selected="selected"><?php echo $text_font_waiting_for_the_sunrise; ?></option>
					<?php } else { ?>
						<option value="Waiting for the Sunrise"><?php echo $text_font_waiting_for_the_sunrise; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Wallpoet') { ?>
						<option value="Wallpoet" selected="selected"><?php echo $text_font_wallpoet; ?></option>
					<?php } else { ?>
						<option value="Wallpoet"><?php echo $text_font_wallpoet; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Walter Turncoat') { ?>
						<option value="Walter Turncoat" selected="selected"><?php echo $text_font_walter_turncoat; ?></option>
					<?php } else { ?>
						<option value="Walter Turncoat"><?php echo $text_font_walter_turncoat; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Wire One') { ?>
						<option value="Wire One" selected="selected"><?php echo $text_font_wire_one; ?></option>
					<?php } else { ?>
						<option value="Wire One"><?php echo $text_font_wire_one; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Yanone Kaffeesatz') { ?>
						<option value="Yanone Kaffeesatz" selected="selected"><?php echo $text_font_yanone_kaffeesatz; ?></option>
					<?php } else { ?>
						<option value="Yanone Kaffeesatz"><?php echo $text_font_yanone_kaffeesatz; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Yeseva One') { ?>
						<option value="Yeseva One" selected="selected"><?php echo $text_font_yeseva_one; ?></option>
					<?php } else { ?>
						<option value="Yeseva One"><?php echo $text_font_yeseva_one; ?></option>
					<?php } ?>
					<?php if ($config_choose_header_font == 'Zeyada') { ?>
						<option value="Zeyada" selected="selected"><?php echo $text_font_zeyada; ?></option>
					<?php } else { ?>
						<option value="Zeyada"><?php echo $text_font_zeyada; ?></option>
					<?php } ?>
				</select>
			  </td>
            </tr>
             <tr>
              <td><?php echo $entry_choose_menu_font; ?></td>
              <td>
				<select name="config_choose_menu_font">
					<?php if ($config_choose_menu_font == 'Abel') { ?>
						<option value="Abel" selected="selected"><?php echo $text_font_abel; ?></option>
					<?php } else { ?>
						<option value="Abel"><?php echo $text_font_abel; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Actor') { ?>
						<option value="Actor" selected="selected"><?php echo $text_font_actor; ?></option>
					<?php } else { ?>
						<option value="Actor"><?php echo $text_font_actor; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Arial') { ?>
						<option value="Arial" selected="selected"><?php echo $text_font_arial; ?></option>
					<?php } else { ?>
						<option value="Arial"><?php echo $text_font_arial; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Aclonica') { ?>
						<option value="Aclonica" selected="selected"><?php echo $text_font_aclonica; ?></option>
					<?php } else { ?>
						<option value="Aclonica"><?php echo $text_font_aclonica; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Allan') { ?>
						<option value="Allan" selected="selected"><?php echo $text_font_allan; ?></option>
					<?php } else { ?>
						<option value="Allan"><?php echo $text_font_allan; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Annie Use Your Telescope') { ?>
						<option value="Annie Use Your Telescope" selected="selected"><?php echo $text_font_annie_use_your_telescope; ?></option>
					<?php } else { ?>
						<option value="Annie Use Your Telescope"><?php echo $text_font_annie_use_your_telescope; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Anonymous Pro') { ?>
						<option value="Anonymous Pro" selected="selected"><?php echo $text_font_anonymous_pro; ?></option>
					<?php } else { ?>
						<option value="Anonymous Pro"><?php echo $text_font_anonymous_pro; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Allerta Stencil') { ?>
						<option value="Allerta Stencil" selected="selected"><?php echo $text_font_allerta_stencil; ?></option>
					<?php } else { ?>
						<option value="Allerta Stencil"><?php echo $text_font_allerta_stencil; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Allerta') { ?>
						<option value="Allerta" selected="selected"><?php echo $text_font_allerta; ?></option>
					<?php } else { ?>
						<option value="Allerta"><?php echo $text_font_allerta; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Amaranth') { ?>
						<option value="Amaranth" selected="selected"><?php echo $text_font_amaranth; ?></option>
					<?php } else { ?>
						<option value="Amaranth"><?php echo $text_font_amaranth; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Anton') { ?>
						<option value="Anton" selected="selected"><?php echo $text_font_anton; ?></option>
					<?php } else { ?>
						<option value="Anton"><?php echo $text_font_anton; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Architects Daughter') { ?>
						<option value="Architects Daughter" selected="selected"><?php echo $text_font_architects_daughter; ?></option>
					<?php } else { ?>
						<option value="Architects Daughter"><?php echo $text_font_architects_daughter; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Arimo') { ?>
						<option value="Arimo" selected="selected"><?php echo $text_font_arimo; ?></option>
					<?php } else { ?>
						<option value="Arimo"><?php echo $text_font_arimo; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Artifika') { ?>
						<option value="Artifika" selected="selected"><?php echo $text_font_artifika; ?></option>
					<?php } else { ?>
						<option value="Artifika"><?php echo $text_font_artifika; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Arvo') { ?>
						<option value="Arvo" selected="selected"><?php echo $text_font_arvo; ?></option>
					<?php } else { ?>
						<option value="Arvo"><?php echo $text_font_arvo; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Asset') { ?>
						<option value="Asset" selected="selected"><?php echo $text_font_asset; ?></option>
					<?php } else { ?>
						<option value="Asset"><?php echo $text_font_asset; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Astloch') { ?>
						<option value="Astloch" selected="selected"><?php echo $text_font_astloch; ?></option>
					<?php } else { ?>
						<option value="Astloch"><?php echo $text_font_astloch; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Bangers') { ?>
						<option value="Bangers" selected="selected"><?php echo $text_font_bangers; ?></option>
					<?php } else { ?>
						<option value="Bangers"><?php echo $text_font_bangers; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Bentham') { ?>
						<option value="Bentham" selected="selected"><?php echo $text_font_bentham; ?></option>
					<?php } else { ?>
						<option value="Bentham"><?php echo $text_font_bentham; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Bevan') { ?>
						<option value="Bevan" selected="selected"><?php echo $text_font_bevan; ?></option>
					<?php } else { ?>
						<option value="Bevan"><?php echo $text_font_bevan; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Bigshot One') { ?>
						<option value="Bigshot One" selected="selected"><?php echo $text_font_bigshot_one; ?></option>
					<?php } else { ?>
						<option value="Bigshot One"><?php echo $text_font_bigshot_one; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Bowlby One') { ?>
						<option value="Bowlby One" selected="selected"><?php echo $text_font_bowlby_one; ?></option>
					<?php } else { ?>
						<option value="Bowlby One"><?php echo $text_font_bowlby_one; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Bowlby One SC') { ?>
						<option value="Bowlby One SC" selected="selected"><?php echo $text_font_bowlby_one_sc; ?></option>
					<?php } else { ?>
						<option value="Bowlby One SC"><?php echo $text_font_bowlby_one_sc; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Brawler') { ?>
						<option value="Brawler" selected="selected"><?php echo $text_font_brawler; ?></option>
					<?php } else { ?>
						<option value="Brawler"><?php echo $text_font_brawler; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Buda') { ?>
						<option value="Buda" selected="selected"><?php echo $text_font_buda; ?></option>
					<?php } else { ?>
						<option value="Buda"><?php echo $text_font_buda; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Cabin') { ?>
						<option value="Cabin" selected="selected"><?php echo $text_font_cabin; ?></option>
					<?php } else { ?>
						<option value="Cabin"><?php echo $text_font_cabin; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Calligraffitti') { ?>
						<option value="Calligraffitti" selected="selected"><?php echo $text_font_calligraffitti; ?></option>
					<?php } else { ?>
						<option value="Calligraffitti"><?php echo $text_font_calligraffitti; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Candal') { ?>
						<option value="Candal" selected="selected"><?php echo $text_font_candal; ?></option>
					<?php } else { ?>
						<option value="Candal"><?php echo $text_font_candal; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Cantarell') { ?>
						<option value="Cantarell" selected="selected"><?php echo $text_font_cantarell; ?></option>
					<?php } else { ?>
						<option value="Cantarell"><?php echo $text_font_cantarell; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Cardo') { ?>
						<option value="Cardo" selected="selected"><?php echo $text_font_cardo; ?></option>
					<?php } else { ?>
						<option value="Cardo"><?php echo $text_font_cardo; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Carter One') { ?>
						<option value="Carter One" selected="selected"><?php echo $text_font_carter_one; ?></option>
					<?php } else { ?>
						<option value="Carter One"><?php echo $text_font_carter_one; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Caudex') { ?>
						<option value="Caudex" selected="selected"><?php echo $text_font_caudex; ?></option>
					<?php } else { ?>
						<option value="Caudex"><?php echo $text_font_caudex; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Cedarville Cursive') { ?>
						<option value="Cedarville Cursive" selected="selected"><?php echo $text_font_cedarville_cursive; ?></option>
					<?php } else { ?>
						<option value="Cedarville Cursive"><?php echo $text_font_cedarville_cursive; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Cherry Cream Soda') { ?>
						<option value="Cherry Cream Soda" selected="selected"><?php echo $text_font_cherry_cream_soda; ?></option>
					<?php } else { ?>
						<option value="Cherry Cream Soda"><?php echo $text_font_cherry_cream_soda; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Chewy') { ?>
						<option value="Chewy" selected="selected"><?php echo $text_font_chewy; ?></option>
					<?php } else { ?>
						<option value="Chewy"><?php echo $text_font_chewy; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Coda') { ?>
						<option value="Coda" selected="selected"><?php echo $text_font_coda; ?></option>
					<?php } else { ?>
						<option value="Coda"><?php echo $text_font_coda; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Coming Soon') { ?>
						<option value="Coming Soon" selected="selected"><?php echo $text_font_coming_soon; ?></option>
					<?php } else { ?>
						<option value="Coming Soon"><?php echo $text_font_coming_soon; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Copse') { ?>
						<option value="Copse" selected="selected"><?php echo $text_font_copse; ?></option>
					<?php } else { ?>
						<option value="Copse"><?php echo $text_font_copse; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Corben') { ?>
						<option value="Corben" selected="selected"><?php echo $text_font_corben; ?></option>
					<?php } else { ?>
						<option value="Corben"><?php echo $text_font_corben; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Cousine') { ?>
						<option value="Cousine" selected="selected"><?php echo $text_font_cousine; ?></option>
					<?php } else { ?>
						<option value="Cousine"><?php echo $text_font_cousine; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Covered By Your Grace') { ?>
						<option value="Covered By Your Grace" selected="selected"><?php echo $text_font_covered_by_your_grace; ?></option>
					<?php } else { ?>
						<option value="Covered By Your Grace"><?php echo $text_font_covered_by_your_grace; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Crafty Girls') { ?>
						<option value="Crafty Girls" selected="selected"><?php echo $text_font_crafty_girls; ?></option>
					<?php } else { ?>
						<option value="Crafty Girls"><?php echo $text_font_crafty_girls; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Crimson Text') { ?>
						<option value="Crimson Text" selected="selected"><?php echo $text_font_crimson_text; ?></option>
					<?php } else { ?>
						<option value="Crimson Text"><?php echo $text_font_crimson_text; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Crushed') { ?>
						<option value="Crushed" selected="selected"><?php echo $text_font_crushed; ?></option>
					<?php } else { ?>
						<option value="Crushed"><?php echo $text_font_crushed; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Cuprum') { ?>
						<option value="Cuprum" selected="selected"><?php echo $text_font_cuprum; ?></option>
					<?php } else { ?>
						<option value="Cuprum"><?php echo $text_font_cuprum; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Damion') { ?>
						<option value="Damion" selected="selected"><?php echo $text_font_damion; ?></option>
					<?php } else { ?>
						<option value="Damion"><?php echo $text_font_damion; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Dancing Script') { ?>
						<option value="Dancing Script" selected="selected"><?php echo $text_font_dancing_script; ?></option>
					<?php } else { ?>
						<option value="Dancing Script"><?php echo $text_font_dancing_script; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Dawning of a New Day') { ?>
						<option value="Dawning of a New Day" selected="selected"><?php echo $text_font_dawning_of_a_new_day; ?></option>
					<?php } else { ?>
						<option value="Dawning of a New Day"><?php echo $text_font_dawning_of_a_new_day; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Didact Gothic') { ?>
						<option value="Didact Gothic" selected="selected"><?php echo $text_font_didact_gothic; ?></option>
					<?php } else { ?>
						<option value="Didact Gothic"><?php echo $text_font_didact_gothic; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Droid Sans') { ?>
						<option value="Droid Sans" selected="selected"><?php echo $text_font_droid_sans; ?></option>
					<?php } else { ?>
						<option value="Droid Sans"><?php echo $text_font_droid_sans; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Droid Sans Mono') { ?>
						<option value="Droid Sans Mono" selected="selected"><?php echo $text_font_droid_sans_mono; ?></option>
					<?php } else { ?>
						<option value="Droid Sans Mono"><?php echo $text_font_droid_sans_mono; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Droid Serif') { ?>
						<option value="Droid Serif" selected="selected"><?php echo $text_font_droid_serif; ?></option>
					<?php } else { ?>
						<option value="Droid Serif"><?php echo $text_font_droid_serif; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'EB Garamond') { ?>
						<option value="EB Garamond" selected="selected"><?php echo $text_font_eb_garamond; ?></option>
					<?php } else { ?>
						<option value="EB Garamond"><?php echo $text_font_eb_garamond; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Expletus Sans') { ?>
						<option value="Expletus Sans" selected="selected"><?php echo $text_font_expletus_sans; ?></option>
					<?php } else { ?>
						<option value="Expletus Sans"><?php echo $text_font_expletus_sans; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Fontdiner Swanky') { ?>
						<option value="Fontdiner Swanky" selected="selected"><?php echo $text_font_fontdiner_swanky; ?></option>
					<?php } else { ?>
						<option value="Fontdiner Swanky"><?php echo $text_font_fontdiner_swanky; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Forum') { ?>
						<option value="Forum" selected="selected"><?php echo $text_font_forum; ?></option>
					<?php } else { ?>
						<option value="Forum"><?php echo $text_font_forum; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Francois One') { ?>
						<option value="Francois One" selected="selected"><?php echo $text_font_francois_one; ?></option>
					<?php } else { ?>
						<option value="Francois One"><?php echo $text_font_francois_one; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Geo') { ?>
						<option value="Geo" selected="selected"><?php echo $text_font_geo; ?></option>
					<?php } else { ?>
						<option value="Geo"><?php echo $text_font_geo; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Give You Glory') { ?>
						<option value="Give You Glory" selected="selected"><?php echo $text_font_give_you_glory; ?></option>
					<?php } else { ?>
						<option value="Give You Glory"><?php echo $text_font_give_you_glory; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Goblin One') { ?>
						<option value="Goblin One" selected="selected"><?php echo $text_font_goblin_one; ?></option>
					<?php } else { ?>
						<option value="Goblin One"><?php echo $text_font_goblin_one; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Goudy Bookletter 1911') { ?>
						<option value="Goudy Bookletter 1911" selected="selected"><?php echo $text_font_goudy_bookletter_1911; ?></option>
					<?php } else { ?>
						<option value="Goudy Bookletter 1911"><?php echo $text_font_goudy_bookletter_1911; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Gravitas One') { ?>
						<option value="Gravitas One" selected="selected"><?php echo $text_font_gravitas_one; ?></option>
					<?php } else { ?>
						<option value="Gravitas One"><?php echo $text_font_gravitas_one; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Gruppo') { ?>
						<option value="Gruppo" selected="selected"><?php echo $text_font_gruppo; ?></option>
					<?php } else { ?>
						<option value="Gruppo"><?php echo $text_font_gruppo; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Hammersmith One') { ?>
						<option value="Hammersmith One" selected="selected"><?php echo $text_font_hammersmith_one; ?></option>
					<?php } else { ?>
						<option value="Hammersmith One"><?php echo $text_font_hammersmith_one; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Holtwood One SC') { ?>
						<option value="Holtwood One SC" selected="selected"><?php echo $text_font_holtwood_one_sc; ?></option>
					<?php } else { ?>
						<option value="Holtwood One SC"><?php echo $text_font_holtwood_one_sc; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Homemade Apple') { ?>
						<option value="Homemade Apple" selected="selected"><?php echo $text_font_homemade_apple; ?></option>
					<?php } else { ?>
						<option value="Homemade Apple"><?php echo $text_font_homemade_apple; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Inconsolata') { ?>
						<option value="Inconsolata" selected="selected"><?php echo $text_font_inconsolata; ?></option>
					<?php } else { ?>
						<option value="Inconsolata"><?php echo $text_font_inconsolata; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Indie Flower') { ?>
						<option value="Indie Flower" selected="selected"><?php echo $text_font_indie_flower; ?></option>
					<?php } else { ?>
						<option value="Indie Flower"><?php echo $text_font_indie_flower; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'IM Fell DW Pica') { ?>
						<option value="IM Fell DW Pica" selected="selected"><?php echo $text_font_im_fell_dw_pica; ?></option>
					<?php } else { ?>
						<option value="IM Fell DW Pica"><?php echo $text_font_im_fell_dw_pica; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'IM Fell DW Pica SC') { ?>
						<option value="IM Fell DW Pica SC" selected="selected"><?php echo $text_font_im_fell_dw_pica_sc; ?></option>
					<?php } else { ?>
						<option value="IM Fell DW Pica SC"><?php echo $text_font_im_fell_dw_pica_sc; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'IM Fell Double Pica') { ?>
						<option value="IM Fell Double Pica" selected="selected"><?php echo $text_font_im_fell_double_pica; ?></option>
					<?php } else { ?>
						<option value="IM Fell Double Pica"><?php echo $text_font_im_fell_double_pica; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'IM Fell Double Pica SC') { ?>
						<option value="IM Fell Double Pica SC" selected="selected"><?php echo $text_font_im_fell_double_pica_sc; ?></option>
					<?php } else { ?>
						<option value="IM Fell Double Pica SC"><?php echo $text_font_im_fell_double_pica_sc; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'IM Fell English') { ?>
						<option value="IM Fell English" selected="selected"><?php echo $text_font_im_fell_english; ?></option>
					<?php } else { ?>
						<option value="IM Fell English"><?php echo $text_font_im_fell_english; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'IM Fell English SC') { ?>
						<option value="IM Fell English SC" selected="selected"><?php echo $text_font_im_fell_english_sc; ?></option>
					<?php } else { ?>
						<option value="IM Fell English SC"><?php echo $text_font_im_fell_english_sc; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'IM Fell French Canon') { ?>
						<option value="IM Fell French Canon" selected="selected"><?php echo $text_font_im_fell_french_canon; ?></option>
					<?php } else { ?>
						<option value="IM Fell French Canon"><?php echo $text_font_im_fell_french_canon; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'IM Fell French Canon SC') { ?>
						<option value="IM Fell French Canon SC" selected="selected"><?php echo $text_font_im_fell_french_canon_sc; ?></option>
					<?php } else { ?>
						<option value="IM Fell French Canon SC"><?php echo $text_font_im_fell_french_canon_sc; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'IM Fell Great Primer') { ?>
						<option value="IM Fell Great Primer" selected="selected"><?php echo $text_font_im_fell_great_primer; ?></option>
					<?php } else { ?>
						<option value="IM Fell Great Primer"><?php echo $text_font_im_fell_great_primer; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'IM Fell Great Primer SC') { ?>
						<option value="IM Fell Great Primer SC" selected="selected"><?php echo $text_font_im_fell_great_primer_sc; ?></option>
					<?php } else { ?>
						<option value="IM Fell Great Primer SC"><?php echo $text_font_im_fell_great_primer_sc; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Irish Grover') { ?>
						<option value="Irish Grover" selected="selected"><?php echo $text_font_irish_grover; ?></option>
					<?php } else { ?>
						<option value="Irish Grover"><?php echo $text_font_irish_grover; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Irish Growler') { ?>
						<option value="Irish Growler" selected="selected"><?php echo $text_font_irish_growler; ?></option>
					<?php } else { ?>
						<option value="Irish Growler"><?php echo $text_font_irish_growler; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Istok Web') { ?>
						<option value="Istok Web" selected="selected"><?php echo $text_font_istok_web; ?></option>
					<?php } else { ?>
						<option value="Istok Web"><?php echo $text_font_istok_web; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Josefin Sans') { ?>
						<option value="Josefin Sans" selected="selected"><?php echo $text_font_josefin_sans; ?></option>
					<?php } else { ?>
						<option value="Josefin Sans"><?php echo $text_font_josefin_sans; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Josefin Slab') { ?>
						<option value="Josefin Slab" selected="selected"><?php echo $text_font_josefin_slab; ?></option>
					<?php } else { ?>
						<option value="Josefin Slab"><?php echo $text_font_josefin_slab; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Judson') { ?>
						<option value="Judson" selected="selected"><?php echo $text_font_judson; ?></option>
					<?php } else { ?>
						<option value="Judson"><?php echo $text_font_judson; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Jura') { ?>
						<option value="Jura" selected="selected"><?php echo $text_font_jura; ?></option>
					<?php } else { ?>
						<option value="Jura"><?php echo $text_font_jura; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Just Another Hand') { ?>
						<option value="Just Another Hand" selected="selected"><?php echo $text_font_just_another_hand; ?></option>
					<?php } else { ?>
						<option value="Just Another Hand"><?php echo $text_font_just_another_hand; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Just Me Again Down Here') { ?>
						<option value="Just Me Again Down Here" selected="selected"><?php echo $text_font_just_me_again_down_here; ?></option>
					<?php } else { ?>
						<option value="Just Me Again Down Here"><?php echo $text_font_just_me_again_down_here; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Kameron') { ?>
						<option value="Kameron" selected="selected"><?php echo $text_font_kameron; ?></option>
					<?php } else { ?>
						<option value="Kameron"><?php echo $text_font_kameron; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Kenia') { ?>
						<option value="Kenia" selected="selected"><?php echo $text_font_kenia; ?></option>
					<?php } else { ?>
						<option value="Kenia"><?php echo $text_font_kenia; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Kranky') { ?>
						<option value="Kranky" selected="selected"><?php echo $text_font_kranky; ?></option>
					<?php } else { ?>
						<option value="Kranky"><?php echo $text_font_kranky; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Kreon') { ?>
						<option value="Kreon" selected="selected"><?php echo $text_font_kreon; ?></option>
					<?php } else { ?>
						<option value="Kreon"><?php echo $text_font_kreon; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Kristi') { ?>
						<option value="Kristi" selected="selected"><?php echo $text_font_kristi; ?></option>
					<?php } else { ?>
						<option value="Kristi"><?php echo $text_font_kristi; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'La Belle Aurore') { ?>
						<option value="La Belle Aurore" selected="selected"><?php echo $text_font_la_belle_aurore; ?></option>
					<?php } else { ?>
						<option value="La Belle Aurore"><?php echo $text_font_la_belle_aurore; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Lato') { ?>
						<option value="Lato" selected="selected"><?php echo $text_font_lato; ?></option>
					<?php } else { ?>
						<option value="Lato"><?php echo $text_font_lato; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'League Script') { ?>
						<option value="League Script" selected="selected"><?php echo $text_font_league_script; ?></option>
					<?php } else { ?>
						<option value="League Script"><?php echo $text_font_league_script; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Lekton') { ?>
						<option value="Lekton" selected="selected"><?php echo $text_font_lekton; ?></option>
					<?php } else { ?>
						<option value="Lekton"><?php echo $text_font_lekton; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Limelight') { ?>
						<option value="Limelight" selected="selected"><?php echo $text_font_limelight; ?></option>
					<?php } else { ?>
						<option value="Limelight"><?php echo $text_font_limelight; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Lobster') { ?>
						<option value="Lobster" selected="selected"><?php echo $text_font_lobster; ?></option>
					<?php } else { ?>
						<option value="Lobster"><?php echo $text_font_lobster; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Lobster Two') { ?>
						<option value="Lobster Two" selected="selected"><?php echo $text_font_lobster_two; ?></option>
					<?php } else { ?>
						<option value="Lobster Two"><?php echo $text_font_lobster_two; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Lora') { ?>
						<option value="Lora" selected="selected"><?php echo $text_font_lora; ?></option>
					<?php } else { ?>
						<option value="Lora"><?php echo $text_font_lora; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Love Ya Like A Sister') { ?>
						<option value="Love Ya Like A Sister" selected="selected"><?php echo $text_font_love_ya_like_a_sister; ?></option>
					<?php } else { ?>
						<option value="Love Ya Like A Sister"><?php echo $text_font_love_ya_like_a_sister; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Loved by the King') { ?>
						<option value="Loved by the King" selected="selected"><?php echo $text_font_loved_by_the_king; ?></option>
					<?php } else { ?>
						<option value="Loved by the King"><?php echo $text_font_loved_by_the_king; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Luckiest Guy') { ?>
						<option value="Luckiest Guy" selected="selected"><?php echo $text_font_luckiest_guy; ?></option>
					<?php } else { ?>
						<option value="Luckiest Guy"><?php echo $text_font_luckiest_guy; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Maiden Orange') { ?>
						<option value="Maiden Orange" selected="selected"><?php echo $text_font_maiden_orange; ?></option>
					<?php } else { ?>
						<option value="Maiden Orange"><?php echo $text_font_maiden_orange; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Mako') { ?>
						<option value="Mako" selected="selected"><?php echo $text_font_mako; ?></option>
					<?php } else { ?>
						<option value="Mako"><?php echo $text_font_mako; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Maven Pro') { ?>
						<option value="Maven Pro" selected="selected"><?php echo $text_font_maven_pro; ?></option>
					<?php } else { ?>
						<option value="Maven Pro"><?php echo $text_font_maven_pro; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Meddon') { ?>
						<option value="Meddon" selected="selected"><?php echo $text_font_meddon; ?></option>
					<?php } else { ?>
						<option value="Meddon"><?php echo $text_font_meddon; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'MedievalSharp') { ?>
						<option value="MedievalSharp" selected="selected"><?php echo $text_font_medievalsharp; ?></option>
					<?php } else { ?>
						<option value="MedievalSharp"><?php echo $text_font_medievalsharp; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Megrim') { ?>
						<option value="Megrim" selected="selected"><?php echo $text_font_megrim; ?></option>
					<?php } else { ?>
						<option value="Megrim"><?php echo $text_font_megrim; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Merriweather') { ?>
						<option value="Merriweather" selected="selected"><?php echo $text_font_merriweather; ?></option>
					<?php } else { ?>
						<option value="Merriweather"><?php echo $text_font_merriweather; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Metrophobic') { ?>
						<option value="Metrophobic" selected="selected"><?php echo $text_font_metrophobic; ?></option>
					<?php } else { ?>
						<option value="Metrophobic"><?php echo $text_font_metrophobic; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Michroma') { ?>
						<option value="Michroma" selected="selected"><?php echo $text_font_michroma; ?></option>
					<?php } else { ?>
						<option value="Michroma"><?php echo $text_font_michroma; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Miltonian Tattoo') { ?>
						<option value="Miltonian Tattoo" selected="selected"><?php echo $text_font_miltonian_tattoo; ?></option>
					<?php } else { ?>
						<option value="Miltonian Tattoo"><?php echo $text_font_miltonian_tattoo; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Miltonian') { ?>
						<option value="Miltonian" selected="selected"><?php echo $text_font_miltonian; ?></option>
					<?php } else { ?>
						<option value="Miltonian"><?php echo $text_font_miltonian; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Moder Antiqua') { ?>
						<option value="Moder Antiqua" selected="selected"><?php echo $text_font_moder_antiqua; ?></option>
					<?php } else { ?>
						<option value="Moder Antiqua"><?php echo $text_font_moder_antiqua; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Monofett') { ?>
						<option value="Monofett" selected="selected"><?php echo $text_font_monofett; ?></option>
					<?php } else { ?>
						<option value="Monofett"><?php echo $text_font_monofett; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Molengo') { ?>
						<option value="Molengo" selected="selected"><?php echo $text_font_molengo; ?></option>
					<?php } else { ?>
						<option value="Molengo"><?php echo $text_font_molengo; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Mountains of Christmas') { ?>
						<option value="Mountains of Christmas" selected="selected"><?php echo $text_font_mountains_of_christmas; ?></option>
					<?php } else { ?>
						<option value="Mountains of Christmas"><?php echo $text_font_mountains_of_christmas; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Muli') { ?>
						<option value="Muli" selected="selected"><?php echo $text_font_muli; ?></option>
					<?php } else { ?>
						<option value="Muli"><?php echo $text_font_muli; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Neucha') { ?>
						<option value="Neucha" selected="selected"><?php echo $text_font_neucha; ?></option>
					<?php } else { ?>
						<option value="Neucha"><?php echo $text_font_neucha; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Neuton') { ?>
						<option value="Neuton" selected="selected"><?php echo $text_font_neuton; ?></option>
					<?php } else { ?>
						<option value="Neuton"><?php echo $text_font_neuton; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'News Cycle') { ?>
						<option value="News Cycle" selected="selected"><?php echo $text_font_news_cycle; ?></option>
					<?php } else { ?>
						<option value="News Cycle"><?php echo $text_font_news_cycle; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Nixie One') { ?>
						<option value="Nixie One" selected="selected"><?php echo $text_font_nixie_one; ?></option>
					<?php } else { ?>
						<option value="Nixie One"><?php echo $text_font_nixie_one; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Nobile') { ?>
						<option value="Nobile" selected="selected"><?php echo $text_font_nobile; ?></option>
					<?php } else { ?>
						<option value="Nobile"><?php echo $text_font_nobile; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Nova Cut') { ?>
						<option value="Nova Cut" selected="selected"><?php echo $text_font_nova_cut; ?></option>
					<?php } else { ?>
						<option value="Nova Cut"><?php echo $text_font_nova_cut; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Nova Flat') { ?>
						<option value="Nova Flat" selected="selected"><?php echo $text_font_nova_flat; ?></option>
					<?php } else { ?>
						<option value="Nova Flat"><?php echo $text_font_nova_flat; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Nova Mono') { ?>
						<option value="Nova Mono" selected="selected"><?php echo $text_font_nova_mono; ?></option>
					<?php } else { ?>
						<option value="Nova Mono"><?php echo $text_font_nova_mono; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Nova Oval') { ?>
						<option value="Nova Oval" selected="selected"><?php echo $text_font_nova_oval; ?></option>
					<?php } else { ?>
						<option value="Nova Oval"><?php echo $text_font_nova_oval; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Nova Round') { ?>
						<option value="Nova Round" selected="selected"><?php echo $text_font_nova_round; ?></option>
					<?php } else { ?>
						<option value="Nova Round"><?php echo $text_font_nova_round; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Nova Script') { ?>
						<option value="Nova Script" selected="selected"><?php echo $text_font_nova_script; ?></option>
					<?php } else { ?>
						<option value="Nova Script"><?php echo $text_font_nova_script; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Nova Slim') { ?>
						<option value="Nova Slim" selected="selected"><?php echo $text_font_nova_slim; ?></option>
					<?php } else { ?>
						<option value="Nova Slim"><?php echo $text_font_nova_slim; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Nova Square') { ?>
						<option value="Nova Square" selected="selected"><?php echo $text_font_nova_square; ?></option>
					<?php } else { ?>
						<option value="Nova Square"><?php echo $text_font_nova_square; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Nunito:light') { ?>
						<option value="Nunito:light" selected="selected"><?php echo $text_font_nunito_light; ?></option>
					<?php } else { ?>
						<option value="Nunito:light"><?php echo $text_font_nunito_light; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Nunito') { ?>
						<option value="Nunito" selected="selected"><?php echo $text_font_nunito; ?></option>
					<?php } else { ?>
						<option value="Nunito"><?php echo $text_font_nunito; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'OFL Sorts Mill Goudy TT') { ?>
						<option value="OFL Sorts Mill Goudy TT" selected="selected"><?php echo $text_font_ofl_sorts_mill_goudy_tt; ?></option>
					<?php } else { ?>
						<option value="OFL Sorts Mill Goudy TT"><?php echo $text_font_ofl_sorts_mill_goudy_tt; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Old Standard TT') { ?>
						<option value="Old Standard TT" selected="selected"><?php echo $text_font_old_standard_tt; ?></option>
					<?php } else { ?>
						<option value="Old Standard TT"><?php echo $text_font_old_standard_tt; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Open Sans') { ?>
						<option value="Open Sans" selected="selected"><?php echo $text_font_open_sans; ?></option>
					<?php } else { ?>
						<option value="Open Sans"><?php echo $text_font_open_sans; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Open Sans Condensed') { ?>
						<option value="Open Sans Condensed" selected="selected"><?php echo $text_font_open_sans_condensed; ?></option>
					<?php } else { ?>
						<option value="Open Sans Condensed"><?php echo $text_font_open_sans_condensed; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Orbitron') { ?>
						<option value="Orbitron" selected="selected"><?php echo $text_font_orbitron; ?></option>
					<?php } else { ?>
						<option value="Orbitron"><?php echo $text_font_orbitron; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Oswald') { ?>
						<option value="Oswald" selected="selected"><?php echo $text_font_oswald; ?></option>
					<?php } else { ?>
						<option value="Oswald"><?php echo $text_font_oswald; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Over the Rainbow') { ?>
						<option value="Over the Rainbow" selected="selected"><?php echo $text_font_over_the_rainbow; ?></option>
					<?php } else { ?>
						<option value="Over the Rainbow"><?php echo $text_font_over_the_rainbow; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Reenie Beanie') { ?>
						<option value="Reenie Beanie" selected="selected"><?php echo $text_font_reenie_beanie; ?></option>
					<?php } else { ?>
						<option value="Reenie Beanie"><?php echo $text_font_reenie_beanie; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Pacifico') { ?>
						<option value="Pacifico" selected="selected"><?php echo $text_font_pacifico; ?></option>
					<?php } else { ?>
						<option value="Pacifico"><?php echo $text_font_pacifico; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Patrick Hand') { ?>
						<option value="Patrick Hand" selected="selected"><?php echo $text_font_patrick_hand; ?></option>
					<?php } else { ?>
						<option value="Patrick Hand"><?php echo $text_font_patrick_hand; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Paytone One') { ?>
						<option value="Paytone One" selected="selected"><?php echo $text_font_paytone_one; ?></option>
					<?php } else { ?>
						<option value="Paytone One"><?php echo $text_font_paytone_one; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Permanent Marker') { ?>
						<option value="Permanent Marker" selected="selected"><?php echo $text_font_permanent_marker; ?></option>
					<?php } else { ?>
						<option value="Permanent Marker"><?php echo $text_font_permanent_marker; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Philosopher') { ?>
						<option value="Philosopher" selected="selected"><?php echo $text_font_philosopher; ?></option>
					<?php } else { ?>
						<option value="Philosopher"><?php echo $text_font_philosopher; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Play') { ?>
						<option value="Play" selected="selected"><?php echo $text_font_play; ?></option>
					<?php } else { ?>
						<option value="Play"><?php echo $text_font_play; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Playfair Display') { ?>
						<option value="Playfair Display" selected="selected"><?php echo $text_font_playfair_display; ?></option>
					<?php } else { ?>
						<option value="Playfair Display"><?php echo $text_font_playfair_display; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Podkova') { ?>
						<option value="Podkova" selected="selected"><?php echo $text_font_podkova; ?></option>
					<?php } else { ?>
						<option value="Podkova"><?php echo $text_font_podkova; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'PT Sans') { ?>
						<option value="PT Sans" selected="selected"><?php echo $text_font_pt_sans; ?></option>
					<?php } else { ?>
						<option value="PT Sans"><?php echo $text_font_pt_sans; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'PT Sans Narrow') { ?>
						<option value="PT Sans Narrow" selected="selected"><?php echo $text_font_pt_sans_narrow; ?></option>
					<?php } else { ?>
						<option value="PT Sans Narrow"><?php echo $text_font_pt_sans_narrow; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'PT Sans Narrow:regular,bold') { ?>
						<option value="PT Sans Narrow:regular,bold" selected="selected"><?php echo $text_font_pt_sans_narrow_regular_bold; ?></option>
					<?php } else { ?>
						<option value="PT Sans Narrow:regular,bold"><?php echo $text_font_pt_sans_narrow_regular_bold; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'PT Serif') { ?>
						<option value="PT Serif" selected="selected"><?php echo $text_font_pt_serif; ?></option>
					<?php } else { ?>
						<option value="PT Serif"><?php echo $text_font_pt_serif; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'PT Serif Caption') { ?>
						<option value="PT Serif Caption" selected="selected"><?php echo $text_font_pt_serif_caption; ?></option>
					<?php } else { ?>
						<option value="PT Serif Caption"><?php echo $text_font_pt_serif_caption; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Puritan') { ?>
						<option value="Puritan" selected="selected"><?php echo $text_font_puritan; ?></option>
					<?php } else { ?>
						<option value="Puritan"><?php echo $text_font_puritan; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Quattrocento') { ?>
						<option value="Quattrocento" selected="selected"><?php echo $text_font_quattrocento; ?></option>
					<?php } else { ?>
						<option value="Quattrocento"><?php echo $text_font_quattrocento; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Quattrocento Sans') { ?>
						<option value="Quattrocento Sans" selected="selected"><?php echo $text_font_quattrocento_sans; ?></option>
					<?php } else { ?>
						<option value="Quattrocento Sans"><?php echo $text_font_quattrocento_sans; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Radley') { ?>
						<option value="Radley" selected="selected"><?php echo $text_font_radley; ?></option>
					<?php } else { ?>
						<option value="Radley"><?php echo $text_font_radley; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Raleway') { ?>
						<option value="Raleway" selected="selected"><?php echo $text_font_raleway; ?></option>
					<?php } else { ?>
						<option value="Raleway"><?php echo $text_font_raleway; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Redressed') { ?>
						<option value="Redressed" selected="selected"><?php echo $text_font_redressed; ?></option>
					<?php } else { ?>
						<option value="Redressed"><?php echo $text_font_redressed; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Rock Salt') { ?>
						<option value="Rock Salt" selected="selected"><?php echo $text_font_rock_salt; ?></option>
					<?php } else { ?>
						<option value="Rock Salt"><?php echo $text_font_rock_salt; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Rokkitt') { ?>
						<option value="Rokkitt" selected="selected"><?php echo $text_font_rokkitt; ?></option>
					<?php } else { ?>
						<option value="Rokkitt"><?php echo $text_font_rokkitt; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Ruslan Display') { ?>
						<option value="Ruslan Display" selected="selected"><?php echo $text_font_ruslan_display; ?></option>
					<?php } else { ?>
						<option value="Ruslan Display"><?php echo $text_font_ruslan_display; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Schoolbell') { ?>
						<option value="Schoolbell" selected="selected"><?php echo $text_font_schoolbell; ?></option>
					<?php } else { ?>
						<option value="Schoolbell"><?php echo $text_font_schoolbell; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Shadows Into Light') { ?>
						<option value="Shadows Into Light" selected="selected"><?php echo $text_font_shadows_into_light; ?></option>
					<?php } else { ?>
						<option value="Shadows Into Light"><?php echo $text_font_shadows_into_light; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Shanti') { ?>
						<option value="Shanti" selected="selected"><?php echo $text_font_shanti; ?></option>
					<?php } else { ?>
						<option value="Shanti"><?php echo $text_font_shanti; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Sigmar One') { ?>
						<option value="Sigmar One" selected="selected"><?php echo $text_font_sigmar_one; ?></option>
					<?php } else { ?>
						<option value="Sigmar One"><?php echo $text_font_sigmar_one; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Six Caps') { ?>
						<option value="Six Caps" selected="selected"><?php echo $text_font_six_caps; ?></option>
					<?php } else { ?>
						<option value="Six Caps"><?php echo $text_font_six_caps; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Slackey') { ?>
						<option value="Slackey" selected="selected"><?php echo $text_font_slackey; ?></option>
					<?php } else { ?>
						<option value="Slackey"><?php echo $text_font_slackey; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Smythe') { ?>
						<option value="Smythe" selected="selected"><?php echo $text_font_smythe; ?></option>
					<?php } else { ?>
						<option value="Smythe"><?php echo $text_font_smythe; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Sniglet') { ?>
						<option value="Sniglet" selected="selected"><?php echo $text_font_sniglet; ?></option>
					<?php } else { ?>
						<option value="Sniglet"><?php echo $text_font_sniglet; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Special Elite') { ?>
						<option value="Special Elite" selected="selected"><?php echo $text_font_special_elite; ?></option>
					<?php } else { ?>
						<option value="Special Elite"><?php echo $text_font_special_elite; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Stardos Stencil') { ?>
						<option value="Stardos Stencil" selected="selected"><?php echo $text_font_stardos_stencil; ?></option>
					<?php } else { ?>
						<option value="Stardos Stencil"><?php echo $text_font_stardos_stencil; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Sue Ellen Francisco') { ?>
						<option value="Sue Ellen Francisco" selected="selected"><?php echo $text_font_sue_ellen_francisco; ?></option>
					<?php } else { ?>
						<option value="Sue Ellen Francisco"><?php echo $text_font_sue_ellen_francisco; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Sunshiney') { ?>
						<option value="Sunshiney" selected="selected"><?php echo $text_font_sunshiney; ?></option>
					<?php } else { ?>
						<option value="Sunshiney"><?php echo $text_font_sunshiney; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Swanky and Moo Moo') { ?>
						<option value="Swanky and Moo Moo" selected="selected"><?php echo $text_font_swanky_and_moo_moo; ?></option>
					<?php } else { ?>
						<option value="Swanky and Moo Moo"><?php echo $text_font_swanky_and_moo_moo; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Syncopate') { ?>
						<option value="Syncopate" selected="selected"><?php echo $text_font_syncopate; ?></option>
					<?php } else { ?>
						<option value="Syncopate"><?php echo $text_font_syncopate; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Tangerine') { ?>
						<option value="Tangerine" selected="selected"><?php echo $text_font_tangerine; ?></option>
					<?php } else { ?>
						<option value="Tangerine"><?php echo $text_font_tangerine; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Tenor Sans') { ?>
						<option value="Tenor Sans" selected="selected"><?php echo $text_font_tenor_sans; ?></option>
					<?php } else { ?>
						<option value="Tenor Sans"><?php echo $text_font_tenor_sans; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Terminal Dosis Light') { ?>
						<option value="Terminal Dosis Light" selected="selected"><?php echo $text_font_terminal_dosis_light; ?></option>
					<?php } else { ?>
						<option value="Terminal Dosis Light"><?php echo $text_font_terminal_dosis_light; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'The Girl Next Door') { ?>
						<option value="The Girl Next Door" selected="selected"><?php echo $text_font_the_girl_next_door; ?></option>
					<?php } else { ?>
						<option value="The Girl Next Door"><?php echo $text_font_the_girl_next_door; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Tinos') { ?>
						<option value="Tinos" selected="selected"><?php echo $text_font_tinos; ?></option>
					<?php } else { ?>
						<option value="Tinos"><?php echo $text_font_tinos; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Ubuntu') { ?>
						<option value="Ubuntu" selected="selected"><?php echo $text_font_ubuntu; ?></option>
					<?php } else { ?>
						<option value="Ubuntu"><?php echo $text_font_ubuntu; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Ultra') { ?>
						<option value="Ultra" selected="selected"><?php echo $text_font_ultra; ?></option>
					<?php } else { ?>
						<option value="Ultra"><?php echo $text_font_ultra; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Unkempt') { ?>
						<option value="Unkempt" selected="selected"><?php echo $text_font_unkempt; ?></option>
					<?php } else { ?>
						<option value="Unkempt"><?php echo $text_font_unkempt; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'UnifrakturCook:bold') { ?>
						<option value="UnifrakturCook:bold" selected="selected"><?php echo $text_font_unifrakturcook_bold; ?></option>
					<?php } else { ?>
						<option value="UnifrakturCook:bold"><?php echo $text_font_unifrakturcook_bold; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'UnifrakturMaguntia') { ?>
						<option value="UnifrakturMaguntia" selected="selected"><?php echo $text_font_unifrakturmaguntia; ?></option>
					<?php } else { ?>
						<option value="UnifrakturMaguntia"><?php echo $text_font_unifrakturmaguntia; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Varela') { ?>
						<option value="Varela" selected="selected"><?php echo $text_font_varela; ?></option>
					<?php } else { ?>
						<option value="Varela"><?php echo $text_font_varela; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Varela Round') { ?>
						<option value="Varela Round" selected="selected"><?php echo $text_font_varela_round; ?></option>
					<?php } else { ?>
						<option value="Varela Round"><?php echo $text_font_varela_round; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Vibur') { ?>
						<option value="Vibur" selected="selected"><?php echo $text_font_vibur; ?></option>
					<?php } else { ?>
						<option value="Vibur"><?php echo $text_font_vibur; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Vollkorn') { ?>
						<option value="Vollkorn" selected="selected"><?php echo $text_font_vollkorn; ?></option>
					<?php } else { ?>
						<option value="Vollkorn"><?php echo $text_font_vollkorn; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'VT323') { ?>
						<option value="VT323" selected="selected"><?php echo $text_font_vt323; ?></option>
					<?php } else { ?>
						<option value="VT323"><?php echo $text_font_vt323; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Waiting for the Sunrise') { ?>
						<option value="Waiting for the Sunrise" selected="selected"><?php echo $text_font_waiting_for_the_sunrise; ?></option>
					<?php } else { ?>
						<option value="Waiting for the Sunrise"><?php echo $text_font_waiting_for_the_sunrise; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Wallpoet') { ?>
						<option value="Wallpoet" selected="selected"><?php echo $text_font_wallpoet; ?></option>
					<?php } else { ?>
						<option value="Wallpoet"><?php echo $text_font_wallpoet; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Walter Turncoat') { ?>
						<option value="Walter Turncoat" selected="selected"><?php echo $text_font_walter_turncoat; ?></option>
					<?php } else { ?>
						<option value="Walter Turncoat"><?php echo $text_font_walter_turncoat; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Wire One') { ?>
						<option value="Wire One" selected="selected"><?php echo $text_font_wire_one; ?></option>
					<?php } else { ?>
						<option value="Wire One"><?php echo $text_font_wire_one; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Yanone Kaffeesatz') { ?>
						<option value="Yanone Kaffeesatz" selected="selected"><?php echo $text_font_yanone_kaffeesatz; ?></option>
					<?php } else { ?>
						<option value="Yanone Kaffeesatz"><?php echo $text_font_yanone_kaffeesatz; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Yeseva One') { ?>
						<option value="Yeseva One" selected="selected"><?php echo $text_font_yeseva_one; ?></option>
					<?php } else { ?>
						<option value="Yeseva One"><?php echo $text_font_yeseva_one; ?></option>
					<?php } ?>
					<?php if ($config_choose_menu_font == 'Zeyada') { ?>
						<option value="Zeyada" selected="selected"><?php echo $text_font_zeyada; ?></option>
					<?php } else { ?>
						<option value="Zeyada"><?php echo $text_font_zeyada; ?></option>
					<?php } ?>
				</select>
			  </td>
            </tr>
            <tr>
              <td><?php echo $entry_choose_body_font; ?></td>
              <td>
				<select name="config_choose_body_font">
					<?php if ($config_choose_body_font == 'Arial') { ?>
						<option value="Arial" selected="selected"><?php echo $text_font_arial; ?></option>
					<?php } else { ?>
						<option value="Arial"><?php echo $text_font_arial; ?></option>
					<?php } ?>
					<?php if ($config_choose_body_font == 'Georgia') { ?>
						<option value="Georgia" selected="selected"><?php echo $text_font_georgia; ?></option>
					<?php } else { ?>
						<option value="Georgia"><?php echo $text_font_georgia; ?></option>
					<?php } ?>
					<?php if ($config_choose_body_font == 'Helvetica') { ?>
						<option value="Helvetica" selected="selected"><?php echo $text_font_helvetica; ?></option>
					<?php } else { ?>
						<option value="Helvetica"><?php echo $text_font_helvetica; ?></option>
					<?php } ?>
					<?php if ($config_choose_body_font == 'Tahoma') { ?>
						<option value="Tahoma" selected="selected"><?php echo $text_font_tahoma; ?></option>
					<?php } else { ?>
						<option value="Tahoma"><?php echo $text_font_tahoma; ?></option>
					<?php } ?>
					<?php if ($config_choose_body_font == 'Trebuchet MS') { ?>
						<option value="Trebuchet MS" selected="selected"><?php echo $text_font_trebuchet_ms; ?></option>
					<?php } else { ?>
						<option value="Trebuchet MS"><?php echo $text_font_trebuchet_ms; ?></option>
					<?php } ?>
					<?php if ($config_choose_body_font == 'Verdana') { ?>
						<option value="Verdana" selected="selected"><?php echo $text_font_verdana; ?></option>
					<?php } else { ?>
						<option value="Verdana"><?php echo $text_font_verdana; ?></option>
					<?php } ?>
				</select>
			  </td>
            </tr>
          </table>
        </div><!-- FONTS TAB ENDS HERE -->
		<div id="tab-social-profiles"><!-- SOCIAL PROFILES STARTS HERE -->
          <table class="form">
			<tr>
              <td><?php echo $entry_activate_social_profiles; ?></td>
              <td><?php if ($config_activate_social_profiles) { ?>
                <input type="radio" name="config_activate_social_profiles" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="config_activate_social_profiles" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="config_activate_social_profiles" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="config_activate_social_profiles" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?></td>
            </tr>
		    <tr>
              <td><?php echo $entry_activate_facebook; ?></td><!-- FACEBOOK -->
              <td><?php if ($config_activate_facebook) { ?>
                <input type="radio" name="config_activate_facebook" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="config_activate_facebook" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="config_activate_facebook" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="config_activate_facebook" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?></td>
            </tr>
            <tr>
              <td><?php echo $entry_facebook_url; ?></td>
              <td><input type="text" name="config_facebook_url" value="<?php echo $config_facebook_url; ?>" size="60" />
                <?php if ($error_facebook_url) { ?>
                <span class="error"><?php echo $error_facebook_url; ?></span>
                <?php } ?></td>
            </tr>
			<tr>
              <td><?php echo $entry_activate_twitter; ?></td><!-- TWITTER -->
              <td><?php if ($config_activate_twitter) { ?>
                <input type="radio" name="config_activate_twitter" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="config_activate_twitter" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="config_activate_twitter" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="config_activate_twitter" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?></td>
            </tr>
            <tr>
              <td><?php echo $entry_twitter_url; ?></td>
              <td><input type="text" name="config_twitter_url" value="<?php echo $config_twitter_url; ?>" size="60" />
                <?php if ($error_twitter_url) { ?>
				<span class="error"><?php echo $error_twitter_url; ?></span>
                <?php } ?></td>
            </tr>
			<tr>
              <td><?php echo $entry_activate_gplus; ?></td><!-- GOOGLE PLUS -->
              <td><?php if ($config_activate_gplus) { ?>
                <input type="radio" name="config_activate_gplus" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="config_activate_gplus" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="config_activate_gplus" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="config_activate_gplus" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?></td>
            </tr>
            <tr>
              <td><?php echo $entry_gplus_url; ?></td>
              <td><input type="text" name="config_gplus_url" value="<?php echo $config_gplus_url; ?>" size="60" />
                <?php if ($error_gplus_url) { ?>
                <span class="error"><?php echo $error_gplus_url; ?></span>
                <?php } ?></td>
            </tr>
			<tr>
              <td><?php echo $entry_activate_pinterest; ?></td><!-- PINTEREST -->
              <td><?php if ($config_activate_pinterest) { ?>
                <input type="radio" name="config_activate_pinterest" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="config_activate_pinterest" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="config_activate_pinterest" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="config_activate_pinterest" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?></td>
            </tr>
            <tr>
              <td><?php echo $entry_pinterest_url; ?></td>
              <td><input type="text" name="config_pinterest_url" value="<?php echo $config_pinterest_url; ?>" size="60" />
                <?php if ($error_pinterest_url) { ?>
                <span class="error"><?php echo $error_pinterest_url; ?></span>
                <?php } ?></td>
            </tr>
          </table>
        </div><!-- SOCIAL PROFILES ENDS HERE -->
		
		
	  </form>
    </div>
</div>

<script type="text/javascript"><!--
function image_upload(field, thumb) {
	$('#dialog').remove();
	
	$('#content').prepend('<div id="dialog" style="padding: 3px 0px 0px 0px;"><iframe src="index.php?route=common/filemanager&token=<?php echo $token; ?>&field=' + encodeURIComponent(field) + '" style="padding:0; margin: 0; display: block; width: 100%; height: 100%;" frameborder="no" scrolling="auto"></iframe></div>');
	
	$('#dialog').dialog({
		title: '<?php echo $text_image_manager; ?>',
		close: function (event, ui) {
			if ($('#' + field).attr('value')) {
				$.ajax({
					url: 'index.php?route=common/filemanager/image&token=<?php echo $token; ?>&image=' + encodeURIComponent($('#' + field).val()),
					dataType: 'text',
					success: function(data) {
						$('#' + thumb).replaceWith('<img src="' + data + '" alt="" id="' + thumb + '" />');
					}
				});
			}
		},	
		bgiframe: false,
		width: 800,
		height: 400,
		resizable: false,
		modal: false
	});
};
//--></script> 
<script type="text/javascript"><!--
$('#tabs a').tabs();
//--></script> 
<script type="text/javascript" src="view/javascript/jquery.miniColors.js"></script>
<script type="text/javascript"><!--
$(document).ready( function() {
	$(".colors").miniColors({});
});
//--></script> 
<?php echo $footer; ?>