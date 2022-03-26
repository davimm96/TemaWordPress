<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!-- Chama css e js-->
    <?php wp_head();?>
</head>
<!-- Adiciona classe ao bady altomaticamente-->
<body <?php body_class();?>>
    <p>Este é um parágrafo de referência</p>
    <header>
        <section class="top-bar">
            <div class="container">
                <div class="row">
                    <div class="social-media-icons col-xl-9 col-sm-7 col-6">Icones Sociais</div>
                    <div class="search col-xl-3 col-sm-5 text-right">Pesquisa</div>
                </div>
            </div>
        </section>
        <section class="menu-area">
        <div class="container">
            <div class="row">
                <section class="logo col-md-2 col-12 text-center">Logo</section>
		        <nav class="main-menu menu col-md-10 text-right">
                    <!-- Implementa menu topo, com o slug: my_main_menu-->
                    <?php wp_nav_menu(array('theme_location' => 'my_main_menu'));?>
                </nav>
            </div>
        </div>
        </section>
    </header>