<?php

function kanja_options_page(){
	ob_start():
	?>
	<h2>My first wordpress plugin options</h2>
	<p>This is our settings page content.</p>

	<?php
	echo ob_get_clean();
}
function kanja_add_options_link(){
	add_options_page('','','','','');
}
	add_action('admin_menu','');