<?php
// HTTP
define('HTTP_SERVER', 'http://'.$_SERVER['SERVER_NAME'].':80/opencart/admin/');
define('HTTP_CATALOG', 'http://'.$_SERVER['SERVER_NAME'].':80/opencart/');

// HTTPS
define('HTTPS_SERVER', 'https://'.$_SERVER['SERVER_NAME'].':443/opencart/admin/');
define('HTTPS_CATALOG', 'https://'.$_SERVER['SERVER_NAME'].':443/opencart/');

// DIR
define('DIR_APPLICATION', '/opt/lampp/apps/opencart/htdocs/admin/');
define('DIR_SYSTEM', '/opt/lampp/apps/opencart/htdocs/system/');
define('DIR_LANGUAGE', '/opt/lampp/apps/opencart/htdocs/admin/language/');
define('DIR_TEMPLATE', '/opt/lampp/apps/opencart/htdocs/admin/view/template/');
define('DIR_CONFIG', '/opt/lampp/apps/opencart/htdocs/system/config/');
define('DIR_IMAGE', '/opt/lampp/apps/opencart/htdocs/image/');
define('DIR_CACHE', '/opt/lampp/apps/opencart/htdocs/system/storage/cache/');
define('DIR_DOWNLOAD', '/opt/lampp/apps/opencart/htdocs/system/storage/download/');
define('DIR_LOGS', '/opt/lampp/apps/opencart/htdocs/system/storage/logs/');
define('DIR_MODIFICATION', '/opt/lampp/apps/opencart/htdocs/system/storage/modification/');
define('DIR_UPLOAD', '/opt/lampp/apps/opencart/htdocs/system/storage/upload/');
define('DIR_CATALOG', '/opt/lampp/apps/opencart/htdocs/catalog/');

// DB
define('DB_DRIVER', 'mysqli');
define('DB_HOSTNAME', 'localhost');
define('DB_USERNAME', 'bn_opencart');
define('DB_PASSWORD', '48d0fd0c04');
define('DB_DATABASE', 'bitnami_opencart');
define('DB_PORT', '3309');
define('DB_PREFIX', 'oc_');
