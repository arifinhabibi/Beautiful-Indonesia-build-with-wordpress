<?php  

get_header();

$datas = get_posts([]);

?>

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
            <?php $allPostsWPQuery = new WP_Query(array('post_type'=>'post', 'posts_per_page'=>-1));
            if ($allPostsWPQuery->have_posts()): while ($allPostsWPQuery->have_posts()) : $allPostsWPQuery->the_post(); ?>
            <div class="cards">
                <?php get_template_part('entry'); ?>
            </div>
                    <?php endwhile;
            endif; ?>
            <?php get_template_part('nav', 'below'); ?>
        </div>

        <div class="sidebar">
            <?php get_sidebar() ?>
        </div>
    </div>
</main>



<?php 

get_footer();