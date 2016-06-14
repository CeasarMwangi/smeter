<?php
/**
 * Plugin Name: Ron Pop
 * Plugin URI: http://keydigitalsolutionslimited.com/
 * Description: This plugin shows a pop up.
 * Version: 1.0.0
 * Author: Mwangi Kanja
 * Author URI: http://keydigitalsolutionslimited.com/
 * License: GPL2
 */
	function ron_pop_container(){
	?>	

	<div id="ron_pop_dialog">
		<p id="msg">Click LIKE to close</p>

	</div><!-- ron_pop_dialog -->



	<?php
	}
	add_action('wp_footer','ron_pop_container' );
 	
 	/*calling jquery and css*/
 	function ron_pop_js_css(){
 		wp_enqueue_script('jquery');
 		wp_enqueue_script('jquery-ui-dialog');
 		wp_enqueue_script('my_ron_pop_js', plugin_dir_url(__FILE__).'js/jquery.js');
 		wp_enqueue_style('js_hosted','http://ajax.googleapis.com/ajax/libs/jqueryui/1.7.2/themes/ui-lightness/jquery-ui.css');
 		wp_enqueue_style('my_ron_pop_style',plugin_dir_url(__FILE__).'css/style.css');

 	}

 	add_action('wp_enqueue_scripts','ron_pop_js_css');
 	add_action('wp_enqueue_styles','ron_pop_js_css');




	/*create admim tab for the plugin (this adds a tab for your plugin on the admin dashboard)*/
	function ron_pop_admin_tab(){
		add_menu_page('Ron Pop','Ron Pop','manage_options',__FILE__,'ron_pop_admin_page');
		//ron_pop_admin_page is the function called/invoked when the plugin tab is clicked
	}
	add_action('admin_menu','ron_pop_admin_tab');

	/*create admin page in the back end*/
	function ron_pop_admin_page(){
		//ob out put buffer
		ob_start();
		?>
		<div class="wrap">
			<div id="icon-options-general" class="icon32"></div>
			<h2>Ron pop settings</h2>

		</div>
		
	<?php
	echo ob_get_clean();
	}


