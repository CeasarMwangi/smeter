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
define('WP_CACHE', true); //Added by WP-Cache Manager
define( 'WPCACHEHOME', '/home/keydigit/public_html/watermeter/kanjawordpressplugin/wp-content/plugins/wp-super-cache/' ); //Added by WP-Cache Manager
define('DB_NAME', 'keydigit_kanjawordpressplugin');

/** MySQL database username */
define('DB_USER', 'keydigit_kanja');

/** MySQL database password */
define('DB_PASSWORD', 'kanja@2015');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '@}s5Gn]__ -S?=/t~i|+hW+0& 6YI5,2g*yK-qM~yaksz=Nv&h;sh.+8p<(FH(OU');
define('SECURE_AUTH_KEY',  'sDnU_x{0W]}PW+U[>YufNpssEB+fJ_H<.&/LoBYEsl{|lRO,tQ-_j[FJxCqEzVAJ');
define('LOGGED_IN_KEY',    '*Q)!4/JO%A|bgCM<=ByOX_zaB>)UM`SV4j!+c,v6c`lHrHYO`y#^$Qn%J+*Z?RgU');
define('NONCE_KEY',        '?dzlB2A#>oNv%-~G3,+yRQ|HTw;M!v4d-,BY^)-)u`2*QUm9i~,aV&}xGtSUxKTD');
define('AUTH_SALT',        '[|5AJy 6@n=]w/7gOy-C|TIULW)A?kX^xW;XLVmkfP{5(rCecY(}6ZrL-Qei<E ;');
define('SECURE_AUTH_SALT', 'e,~!$PfBnPBf[sH)>-`h9c@MzLXF*H7YRLsu(J(fC5s@ydqBcF4~fB!83UK,WSEE');
define('LOGGED_IN_SALT',   'Rq#A/f:RG-%?0RW[-L]reF.A%T@2S#Nv9:Qn_>w_*-(fEN +`$nxj8G-D!<5_]ln');
define('NONCE_SALT',       '%CZoENbLF},1_-;UFk,pVIC<MS3RL+ED+`r|O~ !2B8{kH*JZ>tE-iow,.!|zQ.V');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

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
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');