<?php  

get_header();
?>

<!-- content -->
<div class="contact">
    <form action="" method="post">
        <div class="form-content">
            <label for="name">Name </label>
            <input type="text" id="name">
        </div>
        <div class="form-content">
            <label for="message">Mesaages</label>
            <textarea name="" id="message" cols="30" rows="5"></textarea>
        </div>
        <button class="submit" type="submit">submit</button>
    </form>
    <div class="slug">
        <h3><?= $post->post_title; ?></h3>
    </div>
</div>


<?php  
get_footer();