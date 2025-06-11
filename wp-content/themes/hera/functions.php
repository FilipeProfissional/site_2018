<?php
add_theme_support( 'post-thumbnails' );
add_image_size('logo_cliente', 150, 62, true);
//add_image_size('exames_page', 335, 221, true);
//add_image_size('paginas', 639, 342, true);
//add_image_size('depoimento', 85, 85, true);
//add_image_size('exames_single', 639, 342, true);
//add_image_size('slides', 730, 400, true);
//add_image_size('especialidades_img', 213, 192, true);




//register_post_type('welcome', array(
//    'label' => 'Welcome',
//    'public' => true,
//    'show_ui' => true,
//    'capability_type' => 'post',
//    'hierarchical' => true,
//    'rewrite' => array('slug' => 'welcome'),
//    'query_var' => true,
//    'supports' => array(
//        'title',
//        'editor',
//        'thumbnail',
//    )
//
//) );

register_post_type('sobre', array(
    'label' => 'Sobre',
    'public' => true,
    'show_ui' => true,
    'capability_type' => 'post',
    'hierarchical' => true,
    'rewrite' => array('slug' => 'sobre'),
    'query_var' => true,
    'supports' => array(
        'title',
        'editor',
    )

) );

register_post_type('solucoes', array(
    'label' => 'Soluções',
    'public' => true,
    'show_ui' => true,
    'capability_type' => 'post',
    'hierarchical' => true,
    'rewrite' => array('slug' => 'solucoes'),
    'query_var' => true,
    'supports' => array(
        'title',
        'editor',
    )

) );

register_post_type('vantagens', array(
    'label' => 'Vantagens',
    'public' => true,
    'show_ui' => true,
    'capability_type' => 'post',
    'hierarchical' => true,
    'rewrite' => array('slug' => 'vantagens'),
    'query_var' => true,
    'supports' => array(
        'title',
        'editor',
        'thumbnail',
    )

) );

register_post_type('onde_estamos', array(
    'label' => 'Onde estamos',
    'public' => true,
    'show_ui' => true,
    'capability_type' => 'post',
    'hierarchical' => true,
    'rewrite' => array('slug' => 'onde_estamos'),
    'query_var' => true,
    'supports' => array(
        'title',
        'editor',
        'thumbnail',
    )

) );

register_post_type('clientes', array(
    'label' => 'Clientes',
    'public' => true,
    'show_ui' => true,
    'capability_type' => 'post',
    'hierarchical' => true,
    'rewrite' => array('slug' => 'clientes'),
    'query_var' => true,
    'supports' => array(
        'title',
        'editor',
        'thumbnail',
    )

) );



// custom post type conditional - Márcio Lobo
function is_post_type($type){
    global $wp_query;
    if($type == get_post_type($wp_query->post->ID)) return true;
    return false;
}


/*-----------------------------------------------------------------------------------*/
/* Remove Unwanted Admin Menu Items */
/*-----------------------------------------------------------------------------------*/

function remove_admin_menu_items() {
    $remove_menu_items = array(__('Comments'),__('Links'),__('Posts'),__('Media'),__('Pages'),__('Tools'));
    global $menu;
    end ($menu);
    while (prev($menu)){
        $item = explode(' ',$menu[key($menu)][0]);
        if(in_array($item[0] != NULL?$item[0]:"" , $remove_menu_items)){
            unset($menu[key($menu)]);}
    }
}

add_action('admin_menu', 'remove_admin_menu_items');

/*-----------------------------------------------------------------------------------*/
/* Modify The Read More Link Text to has nothing in it */
/*-----------------------------------------------------------------------------------*/
function modify_read_more_link() {
    return '';
}
add_filter( 'the_content_more_link', 'modify_read_more_link' );


/*-----------------------------------------------------------------------------------*/
/* change logo login */
/*-----------------------------------------------------------------------------------*/
add_action("login_head", "my_login_head");
function my_login_head() {
  echo "
    <style>
    body.login #login h1 a {
        background: url('".get_bloginfo('template_url')."/images/a_alerta.png') no-repeat scroll center top transparent;
        height: 140px;
        width: 228px;
    }
    .login .button-primary, .login .button-group.button-large .button, .login .button.button-large {
    height:40px;
    padding:0px 20px;
    display:inline-block;
    box-shadow:none;
    border:none;
    background:#cb3532;
    font-size:16px;
    color:#fff;
    text-shadow:0px 1px 0px rgba(0,0,0,0.2);
}

.login .button-primary:hover {
    background:#9a2522;
}

.login .forgetmenot {
    margin-top:10px;
}

    </style>
    ";
}
?>
