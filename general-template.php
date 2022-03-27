<?php
//Template name: General Template
?>
<?php get_header();//Chama header.php?>
<div class="content-area">
    <main>
        <section class="middle-area">
        	<div class="container">
       
                        <div class="general-template">
                        <?php
                        // Se houver algum post
                        if(have_posts()):
                            //Enquanto houver posts, mostre-os
                            while(have_posts()): the_post();
                        ?>
                        <article>
                            <h2><?php the_title(); //Titulo do artigo?></h2>
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
        </section>
    </main>
</div>
<?php get_footer();//Chama footer.php?>
   