<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'herainfo_site_2018');

/** MySQL database username */
define('DB_USER', 'herainfo_alerta');

/** MySQL database password */
define('DB_PASSWORD', 'wecanfly2222');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

define('DISABLE_WP_CRON', true);

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'witP  FP6,{-9b!%,YC?.L`e#+!sSY,u|r<GmR~N9@2svzm3>tCD2^p?weU(3^Vj');
define('SECURE_AUTH_KEY',  'eOCTGs<w]A#*mYai02+2/eJ(iJAVcJKtT40S+eg{b.EPRGqtT6O-MP&^KMlcO%xQ');
define('LOGGED_IN_KEY',    'CFqF:a[x:m}S001YQ{-ZSCA2@g9d}H0xE`&ecfTy8t<B:F~n1EsGrUTCUF8M,n}@');
define('NONCE_KEY',        'XS1^vBt!%ZXVq$@ExQ$LT8;rk7O3DC-O[({(u3.e|#W<E2p8W3p,]gq2WD4}Rg}i');
define('AUTH_SALT',        'aM>5A466Gd7<#aj1{[t~?24O#@F3HNG%L2gauXeE#CVe nI`~cEcLP3^H$5sP!9w');
define('SECURE_AUTH_SALT', 'u?&%XjJkZ(R>:l$+&o5)L:R)HL &t3UpDgV;Jo(*_)fJ45,tPVFPfENH>ponI=Wh');
define('LOGGED_IN_SALT',   'WaT3@,vvXll$].J:055oct9tu&gD$V:,#lx3](`wHE$>IUwKDA fD(iWi4IW{uhN');
define('NONCE_SALT',       'K>+fJu*0/^rQyg_wVNN3UYb S7dy>4_^)?l$L+k5C)IVME]`+1FKM{TtyLck3(sI');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'mr_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define( 'WP_DEBUG', false );


/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
    define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');