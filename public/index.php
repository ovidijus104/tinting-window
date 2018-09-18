<?php

/**
 * Composer autoloading
 */
require dirname(__DIR__) . '/vendor/autoload.php';

/**
 * Error and Exception handling
 */
error_reporting(E_ALL);
set_error_handler('Core\Error::errorHandler');
set_exception_handler('Core\Error::exceptionHandler');

/**
 * Application routing
 */
$router = new Core\Router();

// Add routing path
$router->addRoute('', ['controller' => 'Home', 'action' => 'index']);
$router->addRoute('reservation', ['controller' => 'Reservation', 'action' => 'index']);
$router->addRoute('{controller}/{action}');

$router->dispatch($_SERVER['QUERY_STRING']);