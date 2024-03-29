<?php

use Phalcon\Session\Adapter\Files as Session;

$di['router'] = function() use ($defaultModule, $modules, $di, $config) {

	$router = new \Phalcon\Mvc\Router(false);
	$router->clear();

	// $eventsManager = new \Phalcon\Events\Manager();

	// $eventsManager->attach(
	//     'router:beforeCheckRoute',
	//     function (\Phalcon\Events\Event $event, $connection) {
	//     	$session = new Session();
	// 		$session->start();
	//         if(!$session->has('auth')) (new \Phalcon\Http\Response())->redirect('/');
	//     }
	// );


	// $router->setEventsManager($eventsManager);

	/**
	 * Default Routing
	 */
	$router->add('/', [
	    'namespace' => $modules[$defaultModule]['webControllerNamespace'],
		'module' => $defaultModule,
	    'controller' => isset($modules[$defaultModule]['defaultController']) ? $modules[$defaultModule]['defaultController'] : 'index',
	    'action' => isset($modules[$defaultModule]['defaultAction']) ? $modules[$defaultModule]['defaultAction'] : 'index'
	]);

	$router->addGet('/daftar', [
	    'namespace' => 'Phalcon\Init\Dashboard\Controllers\Web',
		'module' => 'dashboard',
	    'controller' => 'Dashboard',
	    'action' => 'daftar'
	]);

	$router->addGet('/masuk', [
	    'namespace' => 'Phalcon\Init\Dashboard\Controllers\Web',
		'module' => 'dashboard',
	    'controller' => 'Dashboard',
	    'action' => 'masuk'
	]);

	$router->addGet('/beranda', [
	    'namespace' => 'Phalcon\Init\Dashboard\Controllers\Web',
		'module' => 'dashboard',
	    'controller' => 'Dashboard',
	    'action' => 'user'
	]);

	$router->addGet('/profil', [
	    'namespace' => 'Phalcon\Init\Dashboard\Controllers\Web',
		'module' => 'dashboard',
	    'controller' => 'Dashboard',
	    'action' => 'profil'
	]);

	$router->addGet('/profil/edit', [
	    'namespace' => 'Phalcon\Init\Dashboard\Controllers\Web',
		'module' => 'dashboard',
	    'controller' => 'Dashboard',
	    'action' => 'editakun'
	]);

	$router->addPost('/profil/edit', [
	    'namespace' => 'Phalcon\Init\Dashboard\Controllers\Web',
		'module' => 'dashboard',
	    'controller' => 'Dashboard',
	    'action' => 'editakun1'
	]);

	$router->addGet('/ppdb/edit', [
	    'namespace' => 'Phalcon\Init\Dashboard\Controllers\Web',
		'module' => 'dashboard',
	    'controller' => 'Dashboard',
	    'action' => 'editppdb'
	]);

	$router->addPost('/ppdb/edit', [
	    'namespace' => 'Phalcon\Init\Dashboard\Controllers\Web',
		'module' => 'dashboard',
	    'controller' => 'Dashboard',
	    'action' => 'editppdb1'
	]);

	$router->addGet('/ppdb', [
	    'namespace' => 'Phalcon\Init\Dashboard\Controllers\Web',
		'module' => 'dashboard',
	    'controller' => 'Dashboard',
	    'action' => 'ppdb'
	]);

	$router->addGet('/ppdb2019', [
	    'namespace' => 'Phalcon\Init\Dashboard\Controllers\Web',
		'module' => 'dashboard',
	    'controller' => 'Dashboard',
	    'action' => 'ppdb2019'
	]);

	$router->addGet('profil/downloadpdf', [
	    'namespace' => 'Phalcon\Init\Dashboard\Controllers\Web',
		'module' => 'dashboard',
	    'controller' => 'Dashboard',
	    'action' => 'download'
	]);

	$router->addPost('/hapus', [
	    'namespace' => 'Phalcon\Init\Dashboard\Controllers\Web',
		'module' => 'dashboard',
	    'controller' => 'Dashboard',
	    'action' => 'hapus'
	]);

	$router->addPost('/post_register', [
	    'namespace' => 'Phalcon\Init\Dashboard\Controllers\Web',
		'module' => 'dashboard',
	    'controller' => 'Dashboard',
	    'action' => 'store'
	]);

	$router->addPost('/login', [
	    'namespace' => 'Phalcon\Init\Dashboard\Controllers\Web',
		'module' => 'dashboard',
	    'controller' => 'Dashboard',
	    'action' => 'login'
	]);

	$router->addPost('/logout', [
	    'namespace' => 'Phalcon\Init\Dashboard\Controllers\Web',
		'module' => 'dashboard',
	    'controller' => 'Dashboard',
	    'action' => 'logout'
	]);


	/**
	 * Not Found Routing
	 */
	$router->notFound(
		[
			'namespace' => 'Phalcon\Init\Common\Controllers',
			'controller' => 'base',
			'action'     => 'route404',
		]
	);

	/**
	 * Module Routing
	 */
	foreach ($modules as $moduleName => $module) {

		if ($module['defaultRouting'] == true) {
			/**
			 * Default Module routing
			 */
			$router->add('/'. $moduleName . '/:params', array(
				'namespace' => $module['webControllerNamespace'],
				'module' => $moduleName,
				'controller' => isset($module['defaultController']) ? $module['defaultController'] : 'index',
				'action' => isset($module['defaultAction']) ? $module['defaultAction'] : 'index',
				'params'=> 1
			));
			
			$router->add('/'. $moduleName . '/:controller/:params', array(
				'namespace' => $module['webControllerNamespace'],
				'module' => $moduleName,
				'controller' => 1,
				'action' => isset($module['defaultAction']) ? $module['defaultAction'] : 'index',
				'params' => 2
			));

			$router->add('/'. $moduleName . '/:controller/:action/:params', array(
				'namespace' => $module['webControllerNamespace'],
				'module' => $moduleName,
				'controller' => 1,
				'action' => 2,
				'params' => 3
			));	

			/**
			 * Default API Module routing
			 */
			$router->add('/'. $moduleName . '/api/{version:^(\d+\.)?(\d+\.)?(\*|\d+)$}/:params', array(
				'namespace' => $module['apiControllerNamespace'] . "\\" . 1,
				'module' => $moduleName,
				'version' => 1,
				'controller' => isset($module['defaultController']) ? $module['defaultController'] : 'index',
				'action' => isset($module['defaultAction']) ? $module['defaultAction'] : 'index',
				'params'=> 2
			));
			
			$router->add('/'. $moduleName . '/api/{version:^(\d+\.)?(\d+\.)?(\*|\d+)$}/:controller/:params', array(
				'namespace' => $module['apiControllerNamespace'] . "\\" . 1,
				'module' => $moduleName,
				'version' => 1,
				'controller' => 2,
				'action' => isset($module['defaultAction']) ? $module['defaultAction'] : 'index',
				'params' => 3
			));

			$router->add('/'. $moduleName . '/api/{version:^(\d+\.)?(\d+\.)?(\*|\d+)$}/:controller/:action/:params', array(
				'namespace' => $module['apiControllerNamespace'] . "\\" . 1,
				'module' => $moduleName,
				'version' => 1,
				'controller' => 2,
				'action' => 3,
				'params' => 4
			));	
		} else {
			
			$webModuleRouting = APP_PATH . '/modules/'. $moduleName .'/config/routes/web.php';
			
			if (file_exists($webModuleRouting) && is_file($webModuleRouting)) {
				include $webModuleRouting;
			}

			$apiModuleRouting = APP_PATH . '/modules/'. $moduleName .'/config/routes/api.php';
			
			if (file_exists($apiModuleRouting) && is_file($apiModuleRouting)) {
				include $apiModuleRouting;
			}
		}
	}
	
    $router->removeExtraSlashes(true);
    
	return $router;
};