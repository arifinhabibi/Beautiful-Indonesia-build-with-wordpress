<?php get_header(); ?>



<!-- content -->
<main  id="content" role="main" style="margin-top: 35px;margin-bottom: 35px; margin-left: 20px; margin-right: 20px" class="container">
    
    <div class="main-content">
        <div class="post-name">
                <h4 id="main-title" class="mb-3">
                    <span id="badge-yellow"></span>
                <?php echo $post->post_title; ?>
            </h4>
            <hr class="divider-title">
            <div class="margins"></div>
            
            <!-- place content -->
            <?php
                $places = get_posts([
                    'post_type' => 'places'
                ]);
            ?>
                <?php foreach($places as $place) { ?>
                <div class="cards">
                    <div class="grid">
                        <div class="img">
                            <?= wp_get_attachment_image($place->gambar); ?>
                        </div>
                        <div class="content">
                            <h1><?= $place->nama_tempat; ?></h1>
                            <p><?= $place->deskripsi; ?></p>
                        </div>
                    </div>
                </div>
                <?php } ?>



            <?php get_template_part('nav', 'below'); ?>
        </div>

        <div class="sidebar">
            <?php get_sidebar() ?>
        </div>
    </div>
</main>

<?php get_footer(); ?>