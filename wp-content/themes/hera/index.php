<?php get_header(); ?>
<div id="banner">
  <div class="container">
    <div class="row vertical-align">
      <div class="col-md-6 col-sm-5 col-xs-12">
        <div class="callers">
          <?php query_posts(array('post_type' => 'solucoes', 'p' =>'4'));while (have_posts()) : the_post();endwhile;?>
          <?php if (have_posts()) : while (have_posts()) : the_post(); ?>
          <h1 class="call_00"><?php the_title(); ?></h1>
          <h2 class="call_01"><?php the_field('subtitulo'); ?></h2>
          <span class="call_02">
            <p><?php the_field("resumo"); ?>
<!--            <a href="#" class="more" data-toggle="modal" data-target="#<?php the_ID(); ?>">+</a>-->
            </p>
            <a href="#" class="btn btn-primary page-scroll" data-toggle="modal" data-target="#video">Assista ao vídeo</a>
            <a href="#" class="btn btn-primary page-scroll" data-toggle="modal" data-target="#<?php the_ID(); ?>">Saiba mais</a>
          </span>
          <!-- Modal -->
          <div id="<?php the_ID(); ?>" class="modal fade" role="dialog">
            <div class="modal-dialog modal-lg">
              <div class="modal-content">
                <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <h3 class="modal-title"><?php the_title(); ?></h3>
                </div>
                <div class="modal-body">
                  <?php the_content(); ?>
                </div>
              </div>
            </div>
          </div>

          <!-- Modal -->
          <div id="video" class="modal fade" role="dialog">
            <div class="modal-dialog modal-lg">
              <div class="modal-content">
                <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <h3 class="modal-title">SIGEM CORPORE - Gestão Integrada da engenharia do gás</h3>
                </div>
                  <div class="embed-responsive embed-responsive-16by9">
                  <iframe src="https://www.youtube.com/embed/fIHLxd3MVbg?rel=0&amp;showinfo=0" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
                  </div>
              </div>
            </div>
          </div>
          <?php endwhile; ?>
          <?php endif; ?>
        </div>
      </div>
      <div class="col-md-6 col-sm-7 hidden-xs">
<!--        <div class="iframe-responsive-lobo">-->
          <iframe class="esquema pull-right" frameborder="0" scrolling="no"   src="<?php bloginfo('template_directory'); ?>/esquema_sigem_corpore.html"></iframe>
<!--        </div>-->
      </div>
    </div>
  </div>
</div>
<section id="sobre">
  <div class="container">
    <div class="col-md-8 col-md-offset-2">
      <?php query_posts(array('post_type' => 'sobre'));while (have_posts()) : the_post();endwhile;?>
      <?php if (have_posts()) : while (have_posts()) : the_post(); ?>
      <h3><?php the_title(); ?></h3>
      <?php the_content(); ?>
      <h4 class="missao"><span><?php the_field('subtitulo'); ?></span></h4>
      <p class="text-center"><?php the_field('texto_complementar'); ?></p>
      <?php endwhile; ?>
      <?php endif; ?>
    </div>
  </div>
</section>
<section id="solucoes">
  <div class="container">
    <h3>Soluções</h3>







    <?php query_posts(array('post_type' => 'solucoes', 'post__not_in' =>array(4)));while (have_posts()) : the_post();endwhile;?>
    <?php if (have_posts()) : while (have_posts()) : the_post(); ?>
    <div class="col-md-4 solucao" id="solucao_<?php the_ID() ?>">
      <img src="<?php the_field('icone') ?>" alt="<?php the_title(); ?>" width="170" class="img-responsive center-block animate_00" data-move-y="50px" data-move-x="0px">
      <h4 class="text-center"><?php the_title(); ?></h4>
      <h5><?php the_field('subtitulo'); ?></h5>
      <p class="text-center"><?php the_field('resumo'); ?></p>
      <div class="text-center">
      <a href="#" class="btn btn-secondary"  data-toggle="modal" data-target="#<?php the_ID(); ?>">Saiba mais</a>
      </div>
    </div>
    <!-- Modal -->
    <div id="<?php the_ID(); ?>" class="modal fade" role="dialog" >
      <div class="modal-dialog modal-lg">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <h3 class="modal-title"><?php the_title(); ?></h3>
          </div>
          <div class="modal-body">
            <?php the_content(); ?>
          </div>
        </div>
      </div>
    </div>
    <?php endwhile; ?>
    <?php endif; ?>
  </div>
</section>
<section id="vantagens">
 <div id="vantagens-scai">
  <div class="container">
    <?php query_posts(array('post_type' => 'vantagens', 'p' =>'20'));while (have_posts()) : the_post();endwhile;?>
    <?php if (have_posts()) : while (have_posts()) : the_post(); ?>
    <div class="col-md-12">
      <h3><?php the_title(); ?> <span><?php the_field('subtitulo'); ?></span></h3>
    </div>
<!--
    <div class="row row_first_text_section">
      <div class="col-md-8 col-md-offset-2">
        <div class="text-center">
          <?php the_content(); ?>
        </div>
      </div>
    </div>
-->
    <?php endwhile; ?>
    <?php endif; ?>
    <div id="recursos-scai">
     <div class="row">
       <div class="col-lg-4 col-md-5 col-sm-6 col-xs-12 box-recurso pull-right animate_00" data-rotate-x="90deg" data-move-z="500px" data-move-y="200px">
         <div class="col-sm-4 col-xs-3 box-recurso-icon">
        <img src="<?php the_field('icone_1') ?>" alt="<?php the_title(); ?>" class="img-responsive">
      </div>
         <h4><?php the_field('titulo_da_vantagem_1'); ?></h4>
         <p><?php the_field('texto_da_vantagem_1'); ?></p>
    </div>
      </div>
      <div class="row">
        <div class="col-lg-4 col-md-5 col-sm-6 col-xs-12 box-recurso pull-left animate_00" data-rotate-x="90deg" data-move-z="500px" data-move-y="-200px">
          <div class="col-sm-4 col-xs-3 box-recurso-icon">
          <img src="<?php the_field('icone_2') ?>" alt="<?php the_title(); ?>" class="img-responsive">
        </div>
        <h4><?php the_field('titulo_da_vantagem_2'); ?></h4>
        <p><?php the_field('texto_da_vantagem_2'); ?></p>
      </div>
      </div>
      <div class="row">
        <div class="col-lg-4 col-md-5 col-sm-6 col-xs-12 box-recurso pull-right animate_00" data-rotate-x="90deg" data-move-z="500px" data-move-y="200px">
          <div class="col-sm-4 col-xs-3 box-recurso-icon">
            <img src="<?php the_field('icone-3') ?>" alt="<?php the_title(); ?>" class="img-responsive">
          </div>
          <h4><?php the_field('titulo_da_vantagem_3'); ?></h4>
          <p><?php the_field('texto_da_vantagem_3'); ?></p>
        </div>
      </div>
    </div>
    <div class="col-md-10 col-md-offset-1">
      <img alt="Sistema SCAI" src="<?php bloginfo('template_directory'); ?>/images/laptop_00.png" class="img-responsive animate_00 hidden-xs" data-move-y="0px" data-move-x="-500px" />
    </div>
    <div class="col-md-12">
    <a href="#credit" class="btn btn-primary page-scroll" role="button" data-toggle="collapse" data-target="#form_contato">Entre em contato</a>
    </div></div>
  </div>
  <div id="vantagens-siacom">
   <div class="container">
    <div class="row">
     <?php query_posts(array('post_type' => 'vantagens', 'p' =>'25'));while (have_posts()) : the_post();endwhile;?>
     <?php if (have_posts()) : while (have_posts()) : the_post(); ?>
      <div class="col-lg-5 col-md-6 col-xs-12 animate_00" data-move-y="0px" data-move-x="-400px">
      <h3><?php the_title(); ?> <span><?php the_field('subtitulo'); ?></span></h3>
      <?php the_content(); ?>
      <a href="#credit" class="btn btn-primary page-scroll" role="button" data-toggle="collapse" data-target="#form_contato">Entre em contato</a>
     </div>
      <div class="col-lg-7 col-md-6 box-siacom">
       <img alt="" src="<?php bloginfo('template_directory'); ?>/images/siacom_box.png" width="" height="" class="img-responsive animate_00 hidden-xs" data-move-y="0px" data-move-x="400px" />
     </div>
      <?php endwhile; ?>
      <?php endif; ?>
    </div>
    </div>
  </div>
</section>
<section id="clientes">
  <div class="container">
    <div class="col-md-12">
      <h3>Clientes</h3>
      <?php query_posts(array('post_type' => 'clientes'));while (have_posts()) : the_post();endwhile;?>
      <?php if (have_posts()) : while (have_posts()) : the_post(); ?>
      <div class="row">
        <div class="col-lg-3 col-sm-3 col-xs-5">
        <img src="<?php the_field('logotipo') ?>" alt="<?php the_title(); ?>" class="img-responsive">
      </div>
        <div class="col-lg-9 col-sm-9 col-xs-7">
        <h4><?php the_title(); ?></h4>
        <?php the_content(); ?>
      </div>
      </div>
      <?php endwhile; ?>
      <?php endif; ?>
    </div>
  </div>
</section>
<section id="mapa">
  <div class="container">
    <div class="col-md-12">
      <div class="text-center">
        <h3>Onde Estamos</h3>
      </div>
    </div>

  </div>
  <div class='embed-container maps'>
<!--    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1212.303499409104!2d-43.34465833694365!3d-22.831574705781843!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x996358ad1febab%3A0x37476b73b4e4283f!2sCondom%C3%ADnio+Nova+Am%C3%A9rica+-+Av.+Pastor+Martin+Luther+King+Junior%2C+126+-+Del+Castilho%2C+Rio+de+Janeiro+-+RJ!5e0!3m2!1spt-BR!2sbr!4v1513780244090" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>-->

    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7351.844752155951!2d-43.27491737094871!3d-22.87932570533693!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMjLCsDUyJzQ1LjYiUyA0M8KwMTYnMTMuOSJX!5e0!3m2!1spt-BR!2sbr!4v1521135759332" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
  </div>
  <div id="info_contato">
    <div class="container">
    <div class="col-md-5">
      <img alt="Hera" src="<?php bloginfo('template_directory'); ?>/images/logotipo_hera_2017_white.svg" width="80" /><br />
      <a href="#credit" class="btn btn-primary page-scroll" role="button" data-toggle="collapse" data-target="#form_contato">Entre em contato</a>
    </div>
    <div class="col-md-7">
      <?php query_posts(array('post_type' => 'onde_estamos'));while (have_posts()) : the_post();endwhile;?>
      <?php if (have_posts()) : while (have_posts()) : the_post(); ?>
      <p class="col-lg-4 col-md-12"><img alt="Hera" src="<?php bloginfo('template_directory'); ?>/images/icon_tel.svg" width="18" /> <?php the_field('telefone'); ?></p>
      <p class="col-lg-8 col-md-12"><img alt="Hera" src="<?php bloginfo('template_directory'); ?>/images/icon_email.svg" width="20" /> <?php the_field('email'); ?></p>
      <p class="col-md-12"><img alt="Hera" src="<?php bloginfo('template_directory'); ?>/images/icon_address.svg" width="14" /> <?php the_field('endereco'); ?></p>
      <?php endwhile; ?>
      <?php endif; ?>
    </div>
    </div>
    <div id="form_contato" class="collapse">

      <div class="container">
      <div class="col-md-6 col-md-offset-3">
        <h5>Entre em contato</h5>
        <?php echo do_shortcode("[contact-form-7 id='55' title='contato_01']"); ?>
        </div>
      </div>
    </div>
    </div>
</section>
<section id="credit">
  <p><a href="http://www.alertadesign.com.br" target="_blank">Produção: Alerta!design</a></p>
  <a id="footer_alerta_logo" title="Saiba mais sobre Alerta!design" href="http://www.alertadesign.com.br" target="_blank">
    <img alt="Alerta!design" src="<?php bloginfo('template_directory'); ?>/images/a.png">
  </a>
</section>
<?php get_footer(); ?>
