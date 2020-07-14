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
	define('DB_NAME', 'wordpress');
	
	/** MySQL database username */
	define('DB_USER', 'abello42');
	
	/** MySQL database password */
	define('DB_PASSWORD', 'abello42');
	
	/** MySQL hostname */
	define('DB_HOST', 'localhost');
	
	/** Database Charset to use in creating database tables. */
	define('DB_CHARSET', 'utf8');
	
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
	define('AUTH_KEY',         'A c1A*~]A1|]&z?axZ%(H(R)DMU7I=M#U$W= aZVR(%t|++i&-8awNQ89T6tt{qi');
	define('SECURE_AUTH_KEY',  '#-> OLB4$+AfPW^u2]v1vVBV(3us|,OUOG[uZ ,7-%me5Uc#C0)IC}vz8b+Q[.rh');
	define('LOGGED_IN_KEY',    'XwytjU!K+#d:xAW}W[f}(-)!8YJh6A@s(o+DUm6LO+0gxaVoj8X/@90+t>p<N3+p');
	define('NONCE_KEY',        '<D^<h<>-G}!rF>[+*S?2OYf^?TRw]`4}egad(YMPC|sKLF)`|UdX10E81=y=O^B3');
	define('AUTH_SALT',        '&V(=k[2<C51&AXrzW a-hMNFSXaDBE,!^7|nTB*IfbHx(ft1[|;Fr1tOA14^ce]D');
	define('SECURE_AUTH_SALT', '0q!B%k)p2^c-{{]A|V.l~+k`{m(*)BGcW-=oij-i-t]&{+%vJ+KVfi_J_)ywU#<~');
	define('LOGGED_IN_SALT',   'JX=g9ZqD|;8yZYvrhoK.Gf&Vhx^v7c!_]h{3)}b7Ey2-:94uBMM-YQtp;)XEfHnj');
	define('NONCE_SALT',       'd`(OYSsPi@D{7pKd_9o)}Uxr]mY1BL+q4:-+JS;~:a>530=7sgiA512-JhG-7ua-');
	
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
