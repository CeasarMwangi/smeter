<?php
class LocalBusiness_Customizer {
    public static function LocalBusiness_Register($wp_customize) {
        self::LocalBusiness_Sections($wp_customize);
        self::LocalBusiness_Controls($wp_customize);
    }
    public static function LocalBusiness_Sections($wp_customize) {
        /**
         * General Section
         */
        $wp_customize->add_section('general_setting_section', array(
            'title' => __('General Settings', 'local-business'),
            'description' => __('Allows you to customize header logo, favicon, background etc settings for LocalBusiness Theme.', 'local-business'), //Descriptive tooltip
            'panel' => '',
            'priority' => '10',
            'capability' => 'edit_theme_options'
            )
        );
        /**
         * Home Page Top Feature Area
         */
        $wp_customize->add_section('home_top_feature_area', array(
            'title' => __('Top Feature Area', 'local-business'),
            'description' => __('Allows you to setup Top feature area section for LocalBusiness Theme.', 'local-business'), //Descriptive tooltip
            'panel' => '',
            'priority' => '11',
            'capability' => 'edit_theme_options'
          )
        );
        /**
         * Add panel for home page feature area
         */
        $wp_customize->add_panel('home_page_feature_area_panel', array(
            'title' => __('Home Page Feature Area', 'local-business'),
            'description' => __('Allows you to setup home page feature area section for LocalBusiness Theme.', 'local-business'),
            'priority' => '12',
            'capability' => 'edit_theme_options'
        ));       
        /**
         * Home Page feature area 1
         */
        $wp_customize->add_section('home_feature_area_section1', array(
            'title' => __('First Feature Area', 'local-business'),
            'description' => __('Allows you to setup first feature area section for LocalBusiness Theme.', 'local-business'),
            'panel' => 'home_page_feature_area_panel',
            'priority' => '',
            'capability' => 'edit_theme_options'
                )
        );
        /**
         * Home Page feature area 2
         */
        $wp_customize->add_section('home_feature_area_section2', array(
            'title' => __('Second Feature Area', 'local-business'),
            'description' => __('Allows you to setup second feature area section for LocalBusiness Theme.', 'local-business'),
            'panel' => 'home_page_feature_area_panel',
            'priority' => '',
            'capability' => 'edit_theme_options'
                )
        );

        /**
         * Home Page feature area 3
         */
        $wp_customize->add_section('home_feature_area_section3', array(
            'title' => __('Third Feature Area', 'local-business'),
            'description' => __('Allows you to setup third feature area section for LocalBusiness Theme.', 'local-business'),
            'panel' => 'home_page_feature_area_panel',
            'priority' => '',
            'capability' => 'edit_theme_options'
                )
        );
         /**
         * Home Page Left Feature Feature
         */
        $wp_customize->add_section('home_page_left_feature', array(
            'title' => __('Home Page Main Heading', 'local-business'),
            'description' => __('Allows you to setup home page left feature section for LocalBusiness Theme.', 'local-business'),
            'panel' => 'home_page_feature_area_panel',
            'priority' => '',
            'capability' => 'edit_theme_options'
                )
        );
        /**
         * Home Page Right Feature Feature
         */
        $wp_customize->add_section('home_page_right_feature', array(
            'title' => __('Home Page Testimonial Area', 'local-business'),
            'description' => __('Allows you to setup home page right feature section for LocalBusiness Theme.', 'local-business'),
            'panel' => 'home_page_feature_area_panel',
            'priority' => '',
            'capability' => 'edit_theme_options'
                )
        );
    }
    public static function LocalBusiness_Section_Content() {
        $section_content = array(
            'general_setting_section' => array(
                'localbusiness_logo',
                'localbusiness_favicon',
                'localbusiness_topright',
                'localbusiness_contact_number'
            ),
            'home_top_feature_area' => array(
                'localbusiness_slideimage1',
                'localbusiness_slidelink1',
                'localbusiness_slider_heading',
                'localbusiness_slider_description',
                'localbusiness_slider_read_more',
                'localbusiness_slider_link'
            ),
            'home_feature_area_section1' => array(
                'localbusiness_firsthead',
                'localbusiness_firstdesc',
                'localbusiness_feature_link1'
            ),
            'home_feature_area_section2' => array(
                'localbusiness_secondhead',
                'localbusiness_seconddesc',
                'localbusiness_feature_link2',
            ),
            'home_feature_area_section3' => array(
                'localbusiness_thirdhead',
                'localbusiness_thirddesc',
                'localbusiness_feature_link3'
            ),
            'home_page_left_feature' => array(
                'localbusiness_lefthead',
                'localbusiness_leftdesc'
             ),
            'home_page_right_feature' => array(
                'localbusiness_rightdesc'
             )
        );
        return $section_content;
    }

    public static function LocalBusiness_Settings() {

        $localbusiness_settings = array(
            'localbusiness_logo' => array(
                'id' => 'localbusiness_options[localbusiness_logo]',
                'label' => __('Custom Logo', 'local-business'),
                'description' => __('Choose your own logo. Optimal Size: 221px Wide by 84px Height.', 'local-business'),
                'type' => 'option',
                'setting_type' => 'image',
                'default' => get_template_directory_uri() . '/images/logo.png'
            ),
            'localbusiness_favicon' => array(
                'id' => 'localbusiness_options[localbusiness_favicon]',
                'label' => __('Custom Favicon', 'local-business'),
                'description' => __('Here you can upload a Favicon for your Website. Specified size is 16px x 16px.', 'local-business'),
                'type' => 'option',
                'setting_type' => 'image',
                'default' => ''
            ),      
            'localbusiness_topright' => array(
                'id' => 'localbusiness_options[localbusiness_topright]',
                'label' => __('Top Right Contact Details', 'local-business'),
                'description' => __('Enter your contact detail/number to display it at the top right corner.', 'local-business'),
                'type' => 'option',
                'setting_type' => 'textarea',
                'default' => __('Call 24 Hours: 1.888.222.5847', 'local-business')
            ), 
            'localbusiness_contact_number' => array(
                'id' => 'localbusiness_options[localbusiness_contact_number]',
                'label' => __('Contact No.', 'local-business'),
                'description' => __('Enter your contact number on which you want to receive calls 
			(Feature active only when site is viewed on moblie devices).
			example: +91-1800-548-783', 'local-business'),
                'type' => 'option',
                'setting_type' => 'text',
                'default' => __('1.888.222.5847', 'local-business')
            ), 
 
            // Top Feature Area
            'localbusiness_slideimage1' => array(
                'id' => 'localbusiness_options[localbusiness_slideimage1]',
                'label' => __('Upload Home Page Image', 'local-business'),
                'description' => __('Choose Image for Top feature Area. Optimal size is 950px wide and 363px height.', 'local-business'),
                'type' => 'option',
                'setting_type' => 'image',
                'default' => get_template_directory_uri() . '/images/signupimg.jpg'
            ),
            'localbusiness_slidelink1' => array(
                'id' => 'localbusiness_options[localbusiness_slidelink1]',
                'label' => __('Home Page Image Link', 'local-business'),
                'description' => __('Enter yout link url for Home page image', 'local-business'),
                'type' => 'option',
                'setting_type' => 'link',
                'default' => '#'
            ),
             'localbusiness_slider_heading' => array(
                'id' => 'localbusiness_options[localbusiness_slider_heading]',
                'label' => __('Top Feature Heading', 'local-business'),
                'description' => __('Enter your text for Top Feature.', 'local-business'),
                'type' => 'option',
                'setting_type' => 'textarea',
                'default' => __('Book a cab easily in less than 60 seconds!', 'local-business')
            ),
            'localbusiness_slider_description' => array(
                'id' => 'localbusiness_options[localbusiness_slider_description]',
                'label' => __('Top Feature Description', 'local-business'),
                'description' => __('Enter your text for Top Feature Description.', 'local-business'),
                'type' => 'option',
                'setting_type' => 'textarea',
                'default' => __('<p>Restaurants range from unpretentious lunching or dining places catering to people working with simple food served in simple settings at low prices.</p><p>To expensive  serving refined food and wines in a formal setting. unpretentious lunching or dining places catering to people.</p>', 'local-business')
            ),
            'localbusiness_slider_read_more' => array(
                'id' => 'localbusiness_options[localbusiness_slider_read_more]',
                'label' => __('Top Feature button text', 'local-business'),
                'description' => __('Enter your text for Top Feature button text', 'local-business'),
                'type' => 'option',
                'setting_type' => 'textarea',
                'default' => __('Read More', 'local-business')
            ),
            'localbusiness_slider_link' => array(
                'id' => 'localbusiness_options[localbusiness_slider_link]',
                'label' => __('Top Feature Link', 'local-business'),
                'description' => __('Enter your text for Top Feature Link.', 'local-business'),
                'type' => 'option',
                'setting_type' => 'link',
                'default' => '#'
            ),
            // First Feature Box
            'localbusiness_firsthead' => array(
                'id' => 'localbusiness_options[localbusiness_firsthead]',
                'label' => __('First Feature Heading', 'local-business'),
                'description' => __('Mention the heading for First Feature Box that will showcase your business services.', 'local-business'),
                'type' => 'option',
                'setting_type' => 'textarea',
                'default' => __('Travel Safe with Us', 'local-business')
            ),       
            'localbusiness_firstdesc' => array(
                'id' => 'localbusiness_options[localbusiness_firstdesc]',
                'label' => __('First Feature Description', 'local-business'),
                'description' => __('Restaurants range from unpretentious lunching or dining places catering to people working with simple food served in simple settings at low prices, to expensive  serving refined food and wines in a formal setting.', 'local-business'),
                'type' => 'option',
                'setting_type' => 'textarea',
                'default' => __('An LocalBusiness is a WordPress theme which is easily customizable. You can customize the theme as per your requirement. The theme provides an exiting benefit to your websites. It also features a clean design and sure you will be more happier to use it', 'local-business')
            ),
            'localbusiness_feature_link1' => array(
                'id' => 'localbusiness_options[localbusiness_feature_link1]',
                'label' => __('First feature Link', 'local-business'),
                'description' => __('Enter your text for First feature Link.', 'local-business'),
                'type' => 'option',
                'setting_type' => 'link',
                'default' => '#'
            ),
            // Second Feature Box
            'localbusiness_secondhead' => array(
                'id' => 'localbusiness_options[localbusiness_secondhead]',
                'label' => __('Second Feature Heading', 'local-business'),
                'description' => __('Mention the heading for Second Feature Box that will showcase your business services.', 'local-business'),
                'type' => 'option',
                'setting_type' => 'textarea',
                'default' => __('Great Service Ever', 'local-business')
            ),       
            'localbusiness_seconddesc' => array(
                'id' => 'localbusiness_options[localbusiness_seconddesc]',
                'label' => __('Second Feature Description', 'local-business'),
                'description' => __('Write short description for your Second Feature Box.', 'local-business'),
                'type' => 'option',
                'setting_type' => 'textarea',
                'default' => __('Restaurants range from unpretentious lunching or dining places catering to people working with simple food served in simple settings at low prices, to expensive  serving refined food and wines in a formal setting.', 'local-business')
            ),
            'localbusiness_feature_link2' => array(
                'id' => 'localbusiness_options[localbusiness_feature_link2]',
                'label' => __('Second feature Link', 'local-business'),
                'description' => __('Enter your text for Second feature Link.', 'local-business'),
                'type' => 'option',
                'setting_type' => 'link',
                'default' => '#'
            ),
             // Third Feature Box
             'localbusiness_thirdhead' => array(
                'id' => 'localbusiness_options[localbusiness_thirdhead]',
                'label' => __('Third Feature Heading', 'local-business'),
                'description' => __('Mention the heading for Third Feature Box that will showcase your business services.', 'local-business'),
                'type' => 'option',
                'setting_type' => 'textarea',
                'default' => __('Love your Journey', 'local-business')
            ),       
            'localbusiness_thirddesc' => array(
                'id' => 'localbusiness_options[localbusiness_thirddesc]',
                'label' => __('Third Feature Description', 'local-business'),
                'description' => __('Write short description for your Third Feature Box.', 'local-business'),
                'type' => 'option',
                'setting_type' => 'textarea',
                'default' => __('Restaurants range from unpretentious lunching or dining places catering to people working with simple food served in simple settings at low prices, to expensive  serving refined food and wines in a formal setting.', 'local-business')
            ),
            'localbusiness_feature_link3' => array(
                'id' => 'localbusiness_options[localbusiness_feature_link3]',
                'label' => __('Third feature Link', 'local-business'),
                'description' => __('Enter your text for Third feature Link.', 'local-business'),
                'type' => 'option',
                'setting_type' => 'link',
                'default' => '#'
            ),
             'localbusiness_lefthead' => array(
                'id' => 'localbusiness_options[localbusiness_lefthead]',
                'label' => __('Left Feature Heading', 'local-business'),
                'description' => __('Enter your text for LeftFeature heading.', 'local-business'),
                'type' => 'option',
                'setting_type' => 'textarea',
                'default' => __('Our Taxi service is really awesome and you gonna love it.', 'local-business')
            ),
            'localbusiness_leftdesc' => array(
                'id' => 'localbusiness_options[localbusiness_leftdesc]',
                'label' => __('Left Feature Description', 'local-business'),
                'description' => __('Enter your text for Left Feature description.', 'local-business'),
                'type' => 'option',
                'setting_type' => 'textarea',
                'default' => __('<p>LocalBusiness was one of the most easiest theme to work with. My Clients loved their websites built using LocalBusiness Theme. I highly recommend it to anyone want to build a business site.</p><p>Restaurants range from unpretentious lunching or dining places catering to people working with simple food served in simple settings at low prices, to expensive  serving refined food and wines in a formal setting. In the former case, customers usually wear casual clothing. In the latter case, depending on culture and local traditions, customers might wear semi-casual.</p>', 'local-business')
            ),
            'localbusiness_rightdesc' => array(
                'id' => 'localbusiness_options[localbusiness_rightdesc]',
                'label' => __('Right Feature Section', 'local-business'),
                'description' => __('Enter your text for Feature Section. if you are putting any type of embed content for eg: youtube/vimeo videos or facebook embed code, make sure optimal width and height is equal to 300px and 235px respectively', 'local-business'),
                'type' => 'option',
                'setting_type' => 'textarea',
                'default' =>  'Enter your text for Feature Section. if you are putting any type of embed content for eg: youtube/vimeo videos or facebook embed code, make sure optimal width and height is equal to 300px and 235px respectively'
            ),
        );
        return $localbusiness_settings;
    }
    public static function LocalBusiness_Controls($wp_customize) {
        $sections = self::LocalBusiness_Section_Content();
        $settings = self::LocalBusiness_Settings();
        foreach ($sections as $section_id => $section_content) {
            foreach ($section_content as $section_content_id) {
                switch ($settings[$section_content_id]['setting_type']) {
                    case 'image':
                        self::add_setting($wp_customize, $settings[$section_content_id]['id'], $settings[$section_content_id]['default'], $settings[$section_content_id]['type'], 'localbusiness_sanitize_url');
                        $wp_customize->add_control(new WP_Customize_Image_Control(
                                $wp_customize, $settings[$section_content_id]['id'], array(
                            'label' => $settings[$section_content_id]['label'],
                            'description' => $settings[$section_content_id]['description'],
                            'section' => $section_id,
                            'settings' => $settings[$section_content_id]['id']
                                )
                        ));
                        break;
                    case 'text':
                        self::add_setting($wp_customize, $settings[$section_content_id]['id'], $settings[$section_content_id]['default'], $settings[$section_content_id]['type'], 'localbusiness_sanitize_text');
                        $wp_customize->add_control(new WP_Customize_Control(
                                $wp_customize, $settings[$section_content_id]['id'], array(
                            'label' => $settings[$section_content_id]['label'],
                            'description' => $settings[$section_content_id]['description'],
                            'section' => $section_id,
                            'settings' => $settings[$section_content_id]['id'],
                            'type' => 'text'
                                )
                        ));
                        break;
                    case 'textarea':
                        self::add_setting($wp_customize, $settings[$section_content_id]['id'], $settings[$section_content_id]['default'], $settings[$section_content_id]['type'], 'localbusiness_sanitize_textarea');

                        $wp_customize->add_control(new WP_Customize_Control(
                                $wp_customize, $settings[$section_content_id]['id'], array(
                            'label' => $settings[$section_content_id]['label'],
                            'description' => $settings[$section_content_id]['description'],
                            'section' => $section_id,
                            'settings' => $settings[$section_content_id]['id'],
                            'type' => 'textarea'
                                )
                        ));
                        break;
                    case 'link':

                        self::add_setting($wp_customize, $settings[$section_content_id]['id'], $settings[$section_content_id]['default'], $settings[$section_content_id]['type'], 'localbusiness_sanitize_url');

                        $wp_customize->add_control(new WP_Customize_Control(
                                $wp_customize, $settings[$section_content_id]['id'], array(
                            'label' => $settings[$section_content_id]['label'],
                            'description' => $settings[$section_content_id]['description'],
                            'section' => $section_id,
                            'settings' => $settings[$section_content_id]['id'],
                            'type' => 'text'
                                )
                        ));

                        break;
                    default:
                        break;
                }
            }
        }
    }
    public static function add_setting($wp_customize, $setting_id, $default, $type, $sanitize_callback) {
        $wp_customize->add_setting($setting_id, array(
            'default' => $default,
            'capability' => 'edit_theme_options',
            'sanitize_callback' => array('LocalBusiness_Customizer', $sanitize_callback),
            'type' => $type
                )
        );
    }
    /**
     * adds sanitization callback funtion : textarea
     * @package LocalBusiness
     */
    public static function localbusiness_sanitize_textarea($value) {
        $value = esc_html($value);
        return $value;
    }
    /**
     * adds sanitization callback funtion : url
     * @package LocalBusiness
     */
    public static function localbusiness_sanitize_url($value) {
        $value = esc_url($value);
        return $value;
    }
    /**
     * adds sanitization callback funtion : text
     * @package LocalBusiness
     */
    public static function localbusiness_sanitize_text($value) {
        $value = sanitize_text_field($value);
        return $value;
    }

    /**
     * adds sanitization callback funtion : email
     * @package LocalBusiness
     */
    public static function localbusiness_sanitize_email($value) {
        $value = sanitize_email($value);
        return $value;
    }

    /**
     * adds sanitization callback funtion : number
     * @package LocalBusiness
     */
    public static function localbusiness_sanitize_number($value) {
        $value = preg_replace("/[^0-9+ ]/", "", $value);
        return $value;
    }

}
// Setup the Theme Customizer settings and controls...
add_action('customize_register', array('LocalBusiness_Customizer', 'LocalBusiness_Register'));
function inkthemes_registers() {
          wp_register_script( 'inkthemes_jquery_ui', '//code.jquery.com/ui/1.11.0/jquery-ui.js', array("jquery"), true  );
	wp_register_script( 'inkthemes_customizer_script', get_template_directory_uri() . '/js/inkthemes_customizer.js', array("jquery","inkthemes_jquery_ui"), true  );
	wp_enqueue_script( 'inkthemes_customizer_script' );
	wp_localize_script( 'inkthemes_customizer_script', 'ink_advert', array(
            'pro' => __('View PRO version','local-business'),
            'url' => esc_url('http://www.inkthemes.com/wp-themes/local-business-wordpress-theme/')
            )
            );
}
add_action( 'customize_controls_enqueue_scripts', 'inkthemes_registers' );
