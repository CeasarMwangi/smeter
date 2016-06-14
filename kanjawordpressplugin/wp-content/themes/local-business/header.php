<?php
/**
 * The Header for our theme.
 *
 * Displays all of the <head> section and everything up till <div id="main">
 *
 */
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html <?php language_attributes(); ?>>
    <head>
        <meta charset="<?php bloginfo('charset'); ?>" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
        <link rel="profile" href="http://gmpg.org/xfn/11" />
        <link rel="pingback" href="<?php bloginfo('pingback_url'); ?>" />
        <link rel="stylesheet" type="text/css" media="all" href="<?php bloginfo('stylesheet_url'); ?>" /> 
        <?php
        wp_head();
        ?>
    </head>
    <body <?php body_class(); ?>>
        <div class="wrapper">
            <div class="container_24">
                <div class="grid_24 body_wrapper">
                    <div class="main-container">
                        <div class="header">
                            <div class="grid_14 alpha">
                                <div class="logo">
                                    <?php if (localbusiness_get_option('localbusiness_logo') != '') { ?>
                                    <a href="<?php echo esc_url(home_url()); ?>"><img src="<?php echo localbusiness_get_option('localbusiness_logo'); ?>" alt="<?php bloginfo('name'); ?>" alt="logo"/></a>
                                    <?php } else{ ?>
                                    <hgroup>
                                        <h1 class="site-title"><a href="<?php echo esc_url(home_url('/')); ?>" title="<?php echo esc_attr(get_bloginfo('name', 'display')); ?>" rel="home"><?php bloginfo('name'); ?></a></h1>
                                        <h2 class="site-description"><?php bloginfo('description'); ?></h2>
                                    </hgroup>
                                    <?php } ?>
                                </div>                    
                            </div>
                            <div class="grid_10 omega">
                                <div class="call">
                                    <div class="call-us">
                                        <?php if (localbusiness_get_option('localbusiness_topright') != '') { ?>
                                            <a href="tel:<?php echo stripslashes(localbusiness_get_option('localbusiness_contact_number')); ?>"> <?php echo stripslashes(localbusiness_get_option('localbusiness_topright')); ?></a>
                                            </br><a class="btn" href="tel:<?php echo stripslashes(localbusiness_get_option('localbusiness_contact_number')); ?>">
                                                <span></span></a>
                                        <?php } else {
                                            ?>
                                            <a href="tel:5551234567">Call 24 Hours: 1.888.222.5847</a>
                                            </br>
                                            <a class="btn" href="tel:5551234567"><span>Tap To Call</span></a>
                                        <?php } ?>
                                    </div>
                                </div>
                            </div>
                            <div class="clear"></div>
                        </div>
                        <div class="menu_container">
                            <div class="menu_bar">
                                <div id="MainNav">
                                    <a href="#" class="mobile_nav closed">Pages Navigation Menu<span></span></a>
                                    <?php localbusiness_nav(); ?> 
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="clear"></div>