<?php get_header();//Chama header.php?>
<div class="content-area">
    <main>
        
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
                        <article>
                            <h2><?php the_title(); //Titulo do artigo?></h2>
                            <p>Published in <?php echo get_the_date(); //Data do artigo?> by
                            <?php the_author_posts_link();?></p>
                            <p>Categories: <?php the_category(' '); //Categoria?></p>
                            <p><?php the_tags('Tags: ', ', '); //Tags?></p>
                            <?php the_content();?>
                        </article>
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
    </main>
</div>
<?php get_footer();//Chama footer.php?>
   