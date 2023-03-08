<style>
    .pagination1 {
        display: block;
        padding: 5px 10px;
        float: right;
    }

    .pagination1 a {
        background: #f3f3f3;
        border: 1px solid #c4c4c4;
        border-radius: 2px;
        box-shadow: 0 1px 0 #eaeaea, 0 1px 0 #ffffff inset;
        color: #717171;
        display: inline-block;
        float: left;
        font-weight: 700;
        line-height: 25px;
        margin-right: 4px;
        min-height: 25px;
        padding: 0 10px;
        text-decoration: none;
    }

    .pagination1 strong {
        background: #f3f3f3;
        border: 1px solid #c4c4c4;
        border-radius: 2px;
        box-shadow: 0 1px 0 #eaeaea, 0 1px 0 #ffffff inset;
        color: maroon;
        display: inline-block;
        float: left;
        font-weight: 700;
        line-height: 25px;
        margin-right: 4px;
        min-height: 25px;
        padding: 0 10px;
        text-decoration: none;
    }

	.csw-btn-button {
  		cursor: pointer;
  		font-size: 16px;
  		padding: 10px 35px;
  		color: #ffffff !important;
 		border-radius: 5px;
  		background: #9B6A1D;
  		border: 1px solid #9B6A1D;
  		transition: 0.4s;
	}
	.csw-btn-button:hover {
  		background: #292929;
	}

	.col-md-3{
		text-align: center;
		width: 100%;
	}
</style>
<section class="blog-page">
    <div class="container">
        <div class="heading-sub ver2">
            <h3 class="pull-left">BLOG</h3>
            <ul class="other-link-sub pull-right">
                <li><a href="#home">home</a></li>
                <li><a class="active" href="#blog">blog</a></li>
            </ul>
            <div class="clearfix"></div>
        </div>

        <div class="col-md-3">
				<?php 
					$doc = new DOMDocument();
					$doc->load('https://vnexpress.net/rss/tin-moi-nhat.rss');
					$content = $doc->getElementsByTagName("item");

					foreach($content as $row){
						echo '<h3 class="text-info">' . $row->getElementsByTagName("title")->item(0)->nodeValue . '</h3>';
						echo '<br/>';
						echo '<a href="'. $row->getElementsByTagName("link")->item(0)->nodeValue .'" class="csw-btn-button" rel="nofollow" target="_blank">'. $row->getElementsByTagName("title")->item(0)->nodeValue .'</a>';
						echo '<br/>';
						echo '</br>';
					
						$des = $row->getElementsByTagName("description")->item(0)->nodeValue;
						$dess = strip_tags($des, '<img>');
						$imgpattern = '/src="([^"]+)"/i';
						preg_match($imgpattern, $dess, $matches);
						$imageurl['image'] = isset($matches[1]) ? $matches[1] : null;
						if($imageurl['image'] != null){
							echo '<img width="300px" src="'. $imageurl['image'] .'">';
						}
						echo '<br/>';

						echo '<p>' . $row->getElementsByTagName("pubDate")->item(0)->nodeValue. '</p>';
						echo '<br/>';
					}
				?>
        </div>

        <!-- <div class="pagination1">
            <?php echo $this->pagination->create_links() ?>
        </div> -->
    </div>
</section>