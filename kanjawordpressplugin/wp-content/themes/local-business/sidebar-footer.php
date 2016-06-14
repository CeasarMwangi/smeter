<div class="grid_8 alpha">
    <div class="footer_widget">
        <?php if (is_active_sidebar('first-footer-widget-area')) : ?>
            <?php dynamic_sidebar('first-footer-widget-area'); ?>
        <?php else : ?> 
            <h4><?php _e('Setting Footer Widgets', 'local-business'); ?></h4>
            <p><?php _e('Footer is widgetized. To setup the footer, drag the required Widgets in Appearance -> Widgets Tab in the First, Second or Third Footer Widget Areas.', 'local-business'); ?></p>
            <br/>
        <?php endif; ?>
    </div>
</div>
<div class="grid_8">
    <div class="footer_widget">
        <?php if (is_active_sidebar('second-footer-widget-area')) : ?>
            <?php dynamic_sidebar('second-footer-widget-area'); ?>
        <?php else : ?> 
            <h4><?php _e('Contact Us', 'local-business'); ?></h4>
            <?php _e('Address: Neque porro quisquam est qui dolorem ipsum quia dolor sit amet', 'local-business'); ?><br/>
            <?php _e('Contact : (111) 234 - 5678', 'local-business'); ?> <br/>
            <?php _e('Email: ', 'local-business'); ?><a href="mailto:youremail@domain.com">youremail@domain.com</a> <br/>
            <?php _e('Website : ', 'local-business'); ?><a href="#">www.example.com</a><br/>
            <br/>
        <?php endif; ?>
    </div>
</div>
<div class="grid_8 omega">
    <div class="footer_widget last">
        <?php if (is_active_sidebar('third-footer-widget-area')) : ?>
            <?php dynamic_sidebar('third-footer-widget-area'); ?> 
        <?php else: ?>
        <h4><?php _e('Loream Ipsum', 'local-business'); ?></h4>
        <p>
            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
        </p>
        <?php endif; ?>
    </div>
</div>
