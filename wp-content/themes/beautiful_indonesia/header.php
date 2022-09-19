<!DOCTYPE html>
<html <?php language_attributes(); ?> <?php blankslate_schema_type(); ?>>
<head>
<meta charset="<?php bloginfo( 'charset' ); ?>" />
<meta name="viewport" content="width=device-width" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css">
<?php wp_head(); ?>
</head>
<body>
 
 <!-- navbar -->
 <nav>
    <div class="logo">Beautiful Indonesia</div>
    <ul>
        <li><?php wp_nav_menu(); ?></li>
        <?php if (!is_user_logged_in()) { ?>
        <li><a class="login" href="<?php echo home_url() . "/wp-login.php" ?>">Login</a></li>
            <?php } ?>
    </ul>

    <div class="mobile">
        <i class="fa-solid fa-bars"></i>
        <div class="mobile-nav">
            <ul>
                <li><?php wp_nav_menu(); ?></li>
            </ul>
        </div>
    </div>
</nav>


