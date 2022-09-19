<?php 
add_action( 'init', function () { 
    register_post_type('social-media', [
        'label' => 'Social Media',
        'public' => true
    ]);
} );

add_action('wp_enqueue_scripts', function (){
    wp_enqueue_script('slide', '/wp-content/themes/beautiful_indonesia/js/slide.js', array('jquery'), '1.0.0', true);
    wp_enqueue_script('main', '/wp-content/themes/beautiful_indonesia/js/main.js', array('jquery'), '1.0.0', true);
});


add_action('init', function(){
    register_post_type('places', [
        'label' => 'places',
        'public' => true
    ]);
});



// function wp_get_current_url() {
//     return home_url();
// }
