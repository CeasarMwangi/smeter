<?php
/*
  Template Name: Fullwidth Page
 */
?>
<?php get_header(); ?>
<div class="page-heading">
    <h1 class="page-title"><?php the_title(); ?></h1>
</div>
<div class="page-content">
    <div class="fullwidth">
        <?php if (have_posts()) : the_post(); ?>
            <?php the_content(); ?>	
        <?php endif; ?>	  
    </div>
    <div class="clear"></div>
    <?php get_footer(); ?>