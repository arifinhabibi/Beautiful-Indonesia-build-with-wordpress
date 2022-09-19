<?php
    get_header();
?>
<div class="slideshow-container">

    <div class="mySlides fade">
        <img src="<?= get_template_directory_uri() . '/img/breadcrumd.jpeg' ?>" alt="" class="image-slide">
    </div>

    <div class="mySlides fade">
        <img src="<?= get_template_directory_uri() . '/img/breadcrumd-2.jpeg' ?>" alt="" class="image-slide">
    </div>

    <div class="mySlides fade">
        <img src="<?= get_template_directory_uri() . '/img/breadcrumd-3.jpeg' ?>" alt="" class="image-slide">
    </div>

    <a class="prev" onclick="plusSlides(-1)">❮</a>
    <a class="next" onclick="plusSlides(1)">❯</a>
</div>
 
 
 <!-- content -->
<main  id="content" role="main" class="container">
    <div class="main-content">
        <div class="post-name">
            <h4 id="main-title" class="mb-3">
                <span id="badge-yellow"></span>
                About
            </h4>
                <hr class="divider-title">
                <div class="margins"></div>
                <p style="margin-bottom: 50px;">Lorem ipsum dolor sit amet consectetur adipisicing elit. Mollitia fugit enim accusantium obcaecati in cupiditate dolorem, deleniti ab suscipit laborum neque vero autem fuga? Tempora, quasi dignissimos adipisci eos libero qui fugiat temporibus ex accusantium quis, corporis laboriosam rem, aliquid debitis reprehenderit modi ad est error voluptas quibusdam vel? Veritatis explicabo at, deserunt in consectetur reiciendis voluptatem minus ex optio voluptatum laborum unde alias id soluta fugiat dolores, voluptates facilis quasi illo inventore maxime quaerat dicta laudantium minima! Vitae voluptatum fuga quae vero sequi accusamus laudantium sint, tempore ipsa ex. Eaque nesciunt ipsa minus nostrum vero temporibus reprehenderit atque vel alias repellat aperiam dolores similique ipsum rem quia numquam assumenda, sint, quas officiis earum, doloremque odit ex explicabo facilis! Dolore fugit deleniti dolores molestias perferendis consequuntur commodi accusamus voluptatum, esse quis ad harum. Odit distinctio dolore provident laboriosam? Laudantium impedit unde consequuntur quas at iste blanditiis tenetur! Modi dolores necessitatibus sequi dolor mollitia cum fugit praesentium magni. Doloribus optio facere odio aut minus quidem vero animi, delectus, at quo facilis? Aut corrupti explicabo, amet id ducimus omnis autem corporis quis blanditiis dignissimos cumque quasi alias labore dolorum suscipit reiciendis! Earum quis voluptates aliquid sequi distinctio cum incidunt deleniti doloribus provident?</p>
                <h4 id="main-title" class="mb-3">
                    <span id="badge-yellow"></span>
                Main Events
            </h4>
            <hr class="divider-title">
            <div class="margins"></div>
            <?php if (have_posts()) : while (have_posts()) : the_post(); ?>
            <div class="cards">
                <?php get_template_part('entry'); ?>
                <?php comments_template(); ?>
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