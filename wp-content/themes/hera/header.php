<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="utf-8" />
    <meta charset="<?php bloginfo( 'charset' ); ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <link rel="profile" href="http://gmpg.org/xfn/11">
    <?php if ( is_singular() && pings_open( get_queried_object() ) ) : ?>
        <link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>">
        <?php endif; ?>
            <?php wp_head(); ?>

                <!-- JS -->
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>

                <!-- Latest compiled and minified CSS -->
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous" />
                <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css" />
                <link rel="stylesheet" href="<?php bloginfo('stylesheet_directory'); ?>/style.css" type="text/css" media="screen" />
                <link rel="stylesheet" href="<?php bloginfo('stylesheet_directory'); ?>/css/style.css" type="text/css" media="screen" />
                <link rel="stylesheet" href="<?php bloginfo('stylesheet_directory'); ?>/css/scrolling-nav.css" />
                <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css" />
                <link href="https://fonts.googleapis.com/css?family=Nunito:400,400i,500, 500i,700,700i" rel="stylesheet">

                <title>
                    <?php bloginfo( 'name' );?> |
                        <?php bloginfo( 'description' ); ?>
                </title>
                <link rel="shortcut icon" href="<?php bloginfo('stylesheet_directory'); ?>/favicon.ico" />
  <meta name="robots" content="index, follow">
  <meta name="description" content="Serviços de consultoria em Sistemas de Informação.">
  <meta name="author" content="Alerta!design">
</head>

  <body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top" <?php get_body_class(); ?> onload="init();" >
    <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand page-scroll" href="#page-top"><img alt="Hera" src="<?php bloginfo('template_directory'); ?>/images/logo.svg" width="155" height="61" /></a>
            </div>
            <div class="collapse navbar-collapse navbar-ex1-collapse">
              <h2 class="navbar-subtitle">Consultoria em sistemas de informação</h2>
                <ul class="nav navbar-nav navbar-right main_menu">
                    <li>
                        <a class="page-scroll" href="#sobre">Sobre Nós</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#solucoes">Soluções</a>
                    </li>
                  <li>
                    <a class="page-scroll" href="#clientes">Clientes</a>
                  </li>
                    <li>
                        <a class="page-scroll" href="#mapa">Contato</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
