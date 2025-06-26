<?php
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
 * * Localized language
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'local' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', 'root' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

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
define( 'AUTH_KEY',          'lfKl+a3c8g9SeG4Eift3ymU^35,lzf90fQceO^o{W<$^o*c#=_}<gm>BW-AsaMdE' );
define( 'SECURE_AUTH_KEY',   ' 2c`j!h-z I^<LZE`5ZG>5]fxc7ZKHF)k`YS~r4n1%uX]x}nadBym]aSm=exwwn}' );
define( 'LOGGED_IN_KEY',     '5qZ-rFX uV$Td85]evXR6[5Cjuz)6 i+>b^BQh,&ug0bF _laezz0Se9cgL>?1s;' );
define( 'NONCE_KEY',         '/w7D<MS+=>tn$@-o;x9>GxF,&iQXi80-q<ndvZS_%G=VNLjDt5a{]_pxhUa|q. 4' );
define( 'AUTH_SALT',         'tX&HbE/=o9Pf#}jgIi$=[h&y(#%WJ{dvit)r/RXEl9O6n&x/kL29?Ko0K4Is*bPv' );
define( 'SECURE_AUTH_SALT',  'N[~?Wm.$b>RCXBE0CvEq=]C!sm`m-HRHtI#MuwjK[I1CythT*$hXK|G.fGE=com1' );
define( 'LOGGED_IN_SALT',    '`70y=Cl_()6pZ/R ^K#eAFH~C3UU2wQ[>OVM0L<NvHU0fOb|[<1=2fBBs*0^NUh<' );
define( 'NONCE_SALT',        '5|C$<PG4x55S_N{=1nz>L1:UjO%I3,+~q=_XOl%TU/AyanB48[dlZ2WMYuUrFI1c' );
define( 'WP_CACHE_KEY_SALT', 'Z[F/mMeSaYf41*I(}HbSBk<SSI`q0R* vIs1>pp4vj^}L<bucREq5?JlmbsHm|oq' );


/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'mr_';


/* Add any custom values between this line and the "stop editing" line. */



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
if ( ! defined( 'WP_DEBUG' ) ) {
	define( 'WP_DEBUG', false );
}

define( 'WP_ENVIRONMENT_TYPE', 'local' );
/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
