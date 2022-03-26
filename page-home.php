<?php get_header();//Chama header.php?>
<div class="content-area">
    <main>
        <section class="slide"></section>
        <div class="container">
            <div class="row">Slide</div>
        </div>
        <section class="services">
        	<div class="container">
        		<div class="row">Serviços</div>
        	</div>
        </section>
        <section class="middle-area">
        	<div class="container">
                <div class="row">
                    <aside class="sidebar col-md-4">Barra Lateral</aside>
                        <div class="news col-md-8">
                        <?php
                        // Se houver algum post
                        if(have_posts()):
                            //Enquanto houver posts, mostre-os
                            while(have_posts()): the_post();
                        ?>
                        <p>page-home.php</p>
                        <?php 
                            endwhile;
                        else:
                        ?>
                        <p>There´s nothing yet to be displayed...</p>
                        <?php endif;?>
                    </div>
                </div>
        	</div>
        </section>
        <section class="map">
        	<div class="container">
        		<div class="row">Mapa</div>
        	</div>
        </section>
    </main>
</div>
<?php get_footer();//Chama footer.php?>
   