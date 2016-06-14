<?php
/**
 * Plugin Name: My Facebook Tags
 * Plugin URI: http://keydigitalsolutionslimited.com/
 * Description: This plugin adds some Facebook Open Graph tags to our single posts.
 * Version: 1.0.0
 * Author: Mwangi Kanja
 * Author URI: http://keydigitalsolutionslimited.com/
 * License: GPL2
 */

//facebook open graph
add_action( 'wp_head', 'my_facebook_tags' );
function my_facebook_tags() {
  if( is_single() ) {//wordpress conditional tag
  ?>
    <meta property="og:title" content="<?php the_title() ?>" />
    <meta property="og:site_name" content="<?php bloginfo( 'name' ) ?>" />
    <meta property="og:url" content="<?php the_permalink() ?>" />
    <meta property="og:description" content="<?php the_excerpt() ?>" />
    <meta property="og:type" content="article" />
    
    <?php 
      if ( has_post_thumbnail() ) ://wordpress template tag(to check if the post has a featured image)
        $image = wp_get_attachment_image_src( get_post_thumbnail_id(), 'large' ); 
    ?>
      <meta property="og:image" content="<?php echo $image[0]; ?>"/>  
    <?php endif; ?>
    
  <?php
  }
}

/*a wordpress action hook to send an author's email when the post is published*/
add_action( 'publish_post', 'post_published_notification', 10, 2 );
function post_published_notification( $ID, $post ) {
    $email = get_the_author_meta( 'user_email', $post->post_author );
    $subject = 'Published ' . $post->post_title;
    $message = 'We just published your post: ' . $post->post_title . ' take a look: ' . get_permalink( $ID ); 
    wp_mail( $email, $subject, $message );//wordpress in built function
}

/*a wordpress filter hook to change the login error message*/
add_filter('login_errors','login_error_message');
function login_error_message( $error ){
    $error = "Incorrect login information, stay out...!";
    return $error;
}

/*Adding Scripts And Styles using wp_enqueue_scripts action hook */
add_action( 'wp_enqueue_scripts', 'my_enqueued_assets_style' );

function my_enqueued_assets_style() {
	wp_enqueue_style( 'my-font', '//fonts.googleapis.com/css?family=Roboto' );
}

/*Adding Scripts And Styles using wp_enqueue_scripts action hook */
add_action( 'wp_enqueue_scripts', 'my_enqueued_assets_script' );
function my_enqueued_assets_script() {
	wp_enqueue_script( 'my-script', plugin_dir_url( __FILE__ ) . '/js/my-script.js', array( 'jquery' ), '1.0', true );
}



/*a custom function that will display a favicon on our site.*/
function custom_add_favicon() {
 
    echo '<link rel="shortcut icon" href="/http://media02.hongkiat.com/wp-action-hooks-theme-customization/your-favicon.ico" type="image/x-icon" />';
 
}
add_action( 'wp_head', 'custom_add_favicon')



/* triming content using an action hook  kanja_trim_content function*/

/*
add_action( 'wp_enqueue_scripts', 'kanja_trim_content' );
function kanja_trim_content( $limit ) {
  $content = explode( ' ', get_the_content(), $limit );
   
  if ( count( $content ) >= $limit ) {
    array_pop( $content );
    $content = implode(" ",$content).'...';
  } else {
    $content = implode(" ",$content);
  } 
   
  $content = preg_replace('/\[.+\]/','', $content);
  $content = apply_filters('the_content', $content); 
 
  return $content;
}

*/
/*
Once completed you’ll want to access the WordPress administration panel and browse your current set of plug-ins for the demo just installed. Once you activate nothing new will happen, not until we manually add in our function call. To do this simply navigate Appearance -> Editor and look for single.php.

This file contains all the template HTML/CSS for your basic article post page. Scroll down until you find the_content() and replace with the example code above. This will limit all your article pages to 55 characters no matter what view is being used. You could also add in this function to similar pages in your templates directory such as search.php or archive.php.

*/
?>