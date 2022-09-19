<?php

// BEGIN iThemes Security - Do not modify or remove this line
// iThemes Security Config Details: 2
define( 'DISALLOW_FILE_EDIT', true ); // Disable File Editor - Security > Settings > WordPress Tweaks > File Editor
// END iThemes Security - Do not modify or remove this line

/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wp_latihan_2' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', '' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         ')@3 mY[15@o0p80/<(RS`-XM1W0}T69L8$EE%8VNg@>3jtdH DV)jivdS5SqfjEK' );
define( 'SECURE_AUTH_KEY',  '|=O7C`mEmp*!NXGm}u>e#BnVOIW;b8>%SWuYIa8wS:r{!ckJ^`yA$ c:`X+Y!xat' );
define( 'LOGGED_IN_KEY',    'omGRc5)xD:@]uxx@l_g)VD|z#fQ[%L&<y66P4~Wr)tZr/dqW}}A&xnnY0cJN-0q/' );
define( 'NONCE_KEY',        '3dN)K;e`Y/O@#0i)-ZZ>(Y7x$YnPmo$pX@LR)WX >T{UdB2&{tz1.Im`[@1jo+}z' );
define( 'AUTH_SALT',        '3Wy&D5 5]fM|gu=+/G=8GZk#%RV&l)o}k)TA_yK]01l]>gBj=D2VpXX#IP3U)0hH' );
define( 'SECURE_AUTH_SALT', '~j}^[xET`[W6HwiDNLf7cK)?Z`EI45 7Sk?[S=b;eJz0c2l 639-%:`pj;-JjLZ/' );
define( 'LOGGED_IN_SALT',   '2oba.R8AkX9kR!&t/Pe W]tbSj_1F~mvBWzxrIRNwlN`iFwx.vlHuAQ<X60wX2wl' );
define( 'NONCE_SALT',       'wz04rA~RO98W.%zG)<{tM~M&4<oe,YO!dV6#G=q|<+vp$W-.,Fw>((T 4NNWP&82' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
