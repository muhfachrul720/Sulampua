<?php
defined('BASEPATH') OR exit('No direct script access allowed');

$route['default_controller'] = 'welcome';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;

// Custom Route
$route['backend'] = 'auth';
$route['dashboard_admin'] = 'admin/home';
$route['dashboard_user'] = 'user/home';
$route['dashboard_operator'] = 'operator/home';
