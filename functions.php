<?php
//Chama arquivos css e js
function load_scripts(){
	/*
	1- Identificador
	2- Caminho
	3- Dependencias
	4- Versão
	5- Midia
	*/
	wp_enqueue_script( 'bootstrap-js', 'https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js', array('jquery'), '4.0.0', true);
	//True, js é implementado no final do arquivo
	wp_enqueue_style( 'bootstrap-css', 'https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css', array(), '4.0.0', 'all');
	wp_enqueue_style('template', get_template_directory_uri().'/css/template.css', array(),'1.0','all');
}
add_action('wp_enqueue_scripts', 'load_scripts');



function wpcurso_config(){
	//Registrando nossos menus
	register_nav_menus(
		array(
			'my_main_menu' => 'Main Menu',
			'footer_menu' => 'Footer Menu'
		)
	);

	$args = array(
		'height' => 225,
		'width' => 1920
	);
	
	add_theme_support('custom_header', $args);
}

add_action('after_setup_theme', 'wpcurso_config', 0);