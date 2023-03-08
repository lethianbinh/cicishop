<div class="info">
    <div class="container">
        <div class="row">
            <div class="col-md-3 col-xs-12">
                <div class="photo">
                    <a href="#"><img style="border-radius: 50%; height: 120px" src="<?php echo public_url() ?>site/image/logo.png" alt="images" class="img-responsive"></a>
                </div>
                <p class="info-desc">The ability to travel from one retailer to another while sitting at home has become a reality. Any product can now be ordered online...</p>
                <div class="widget-info">
                    <?php foreach ($supports as $row) : ?>
                        <ul>
                            <li><i class="ion-ios-location fa-4" aria-hidden="true"></i><?php echo $row->name ?></li>
                            <li class="clearfix"></li>
                            <li><i class="ion-ios-telephone fa-4" aria-hidden="true"></i>
                                <p class="title-contain">(84+) <?php echo $row->phone ?> </p>
                            </li>
                            <li class="clearfix"></li>
                            <li><i class="ion-email-unread fa-4" aria-hidden="true"></i>
                                <p class="title-contain"><?php echo $row->gmail ?></p>
                            </li>
                            <li class="clearfix"></li>
                        </ul>
                    <?php endforeach; ?>
                </div>
            </div>
            <div class="col-md-5 col-xs-12">
                <div class="row">
                    <div class="col-md-6 col-xs-12">
                        <h3>let us help you</h3>
                        <ul class="fmenu">
                            <li><a href="#">your account</a></li>
                            <li><a href="#">your orders</a></li>
                            <li><a href="#">shipping rates & policies</a></li>
                            <li><a href="#">clickShop prime</a></li>
                            <li><a href="#">return & Replacements</a></li>
                            <li><a href="#">Manage Your Content and Devices</a></li>
                            <li><a href="#">ClickShop Assistant</a></li>
                            <li><a href="#">Help</a></li>
                        </ul>
                    </div>
                    <div class="col-md-6 col-xs-12 pd-left">
                        <h3>useful links</h3>
                        <ul class="fmenu">
                            <li><a href="#">Careers</a></li>
                            <li><a href="#">About ClickShop</a></li>
                            <li><a href="#">Investor Relations</a></li>
                            <li><a href="#">Our Devices</a></li>
                            <li><a href="#">Apps & Download</a></li>
                            <li><a href="#">Thinking</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-xs-12">
                <h3>Newsletter</h3>
                <p class="news-desc">Totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et.</p>
                <!-- Begin Mailchimp Signup Form -->
                <link href="//cdn-images.mailchimp.com/embedcode/classic-071822.css" rel="stylesheet" type="text/css">
                <style type="text/css">
                    #mc_embed_signup{background:#fff; clear:left; font:14px Helvetica,Arial,sans-serif;  width:360px;}
                    /* Add your own Mailchimp form style overrides in your site stylesheet or in this style block.
                    We recommend moving this block and the preceding CSS link to the HEAD of your HTML file. */
                </style>
                <div id="mc_embed_signup">
                <form action="https://000webhostapp.us13.list-manage.com/subscribe/post?u=a1fd41e7b3b5f7b91a8994163&amp;id=5644618412&amp;f_id=00d4dbe2f0" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" class="validate" target="_blank" novalidate>
                    <div id="mc_embed_signup_scroll">
                    <h2>Subscribe to our newsletter</h2>
                <div class="indicates-required"><span class="asterisk">*</span> indicates required</div>
                <div class="mc-field-group">
                    <label for="mce-EMAIL">Email Address  <span class="asterisk">*</span>
                </label>
                    <input type="email" value="" name="EMAIL" class="required email" id="mce-EMAIL">
                    <span id="mce-EMAIL-HELPERTEXT" class="helper_text"></span>
                </div>
                <div class="mc-field-group">
                    <label for="mce-FNAME">First Name  <span class="asterisk">*</span>
                </label>
                    <input type="text" value="" name="FNAME" class="required" id="mce-FNAME">
                    <span id="mce-FNAME-HELPERTEXT" class="helper_text"></span>
                </div>
                <div class="mc-field-group">
                    <label for="mce-LNAME">Last Name </label>
                    <input type="text" value="" name="LNAME" class="" id="mce-LNAME">
                    <span id="mce-LNAME-HELPERTEXT" class="helper_text"></span>
                </div>
                    <div id="mce-responses" class="clear foot">
                        <div class="response" id="mce-error-response" style="display:none"></div>
                        <div class="response" id="mce-success-response" style="display:none"></div>
                    </div>    <!-- real people should not fill this in and expect good things - do not remove this or risk form bot signups-->
                    <div style="position: absolute; left: -5000px;" aria-hidden="true"><input type="text" name="b_a1fd41e7b3b5f7b91a8994163_5644618412" tabindex="-1" value=""></div>
                        <div class="optionalParent">
                            <div class="clear foot">
                                <input type="submit" value="Subscribe" name="subscribe" id="mc-embedded-subscribe-tmp" class="button-tmp">
                                
                                <style>
                                    #mc-embedded-subscribe-tmp {clear:both; width:auto; display:block; margin:1em 0 1em 5%;}
                                    #mc_embed_signup #num-subscribers {font-size:1.1em;}
                                    #mc_embed_signup #num-subscribers span {padding:.5em; border:1px solid #ccc; margin-right:.5em; font-weight:bold;}

                                    #mc_embed_signup #mc-embedded-subscribe-form div.mce_inline_error {display:inline-block; margin:2px 0 1em 0; padding:3px; background-color:rgba(255,255,255,0.85); -webkit-border-radius: 3px; -moz-border-radius: 3px; border-radius: 3px; font-size:14px; font-weight:normal; z-index:1; color:#e85c41;}
                                    #mc_embed_signup #mc-embedded-subscribe-form input.mce_inline_error {border:2px solid #e85c41;}
                                    .button-tmp {clear:both; background-color: #aaa; border: 0 none; border-radius:4px; transition: all 0.23s ease-in-out 0s; color: #FFFFFF; cursor: pointer; display: inline-block; font-size:15px; font-weight: normal; height: 32px; line-height: 32px; margin: 0 5px 10px 0; padding: 0 22px; text-align: center; text-decoration: none; vertical-align: top; white-space: nowrap; width: fit-content; width: -moz-fit-content;}
                                    .button-tmp:hover {background-color:#777;}
                                </style>

                                <p class="brandingLogo"><a href="http://eepurl.com/h8bESL" title="Mailchimp - email marketing made easy and fun"><img src="https://eep.io/mc-cdn-images/template_images/branding_logo_text_dark_dtp.svg"></a></p>
                            </div>
                        </div>
                    </div>
                </form>
                </div>
                <script type='text/javascript' src='//s3.amazonaws.com/downloads.mailchimp.com/js/mc-validate.js'></script><script type='text/javascript'>(function($) {window.fnames = new Array(); window.ftypes = new Array();fnames[0]='EMAIL';ftypes[0]='email';fnames[1]='FNAME';ftypes[1]='text';fnames[2]='LNAME';ftypes[2]='text';fnames[3]='ADDRESS';ftypes[3]='address';fnames[4]='PHONE';ftypes[4]='phone';fnames[5]='BIRTHDAY';ftypes[5]='birthday';}(jQuery));var $mcj = jQuery.noConflict(true);</script>
                <!--End mc_embed_signup-->
                
            </div>
        </div>
    </div>
</div>
<div class="top-footer v2">
    <div class="container">
        <h1 class="heading-default v2">Top Categories & Brands</h1>
        <div class="row">
            <div class="col-md-6 col-sm-6 col-xs-12 block-left">
                <div class="block-footer">
                    <h2 class="heading-primary v2 v2">WHAT'S NEW</h2>
                    <p class="description-primary">
                        <a title="smartphone" href="#">Huawei P9</a>,&nbsp;
                        <a title="smartphone" href="#">Samsung S7</a>,&nbsp;
                        <a title="smartphone" href="#">Samsung S7 Edge</a>,&nbsp;
                        <a title="smartphone" href="#">Electric Unicycle</a>,&nbsp;
                        <a title="smartphone" href="#">Electric Scooter</a>,&nbsp;
                        <a title="smartphone" href="#">Foldable Bicycle</a>,&nbsp;
                        <a title="smartphone" href="#">OnePlus X</a>,&nbsp;
                        <a title="smartphone" href="#">Ninebot Mini Pro</a>,&nbsp;
                        <a title="smartphone" href="#">Samsung Note 5</a>,&nbsp;
                        <a title="smartphone" href="#">Samsung Edge</a>,&nbsp;
                        <a title="smartphone" href="#">Samsung S6</a>,&nbsp;
                        <a title="smartphone" href="#">Phone 6S</a>,&nbsp;
                        <a title="smartphone" href="#">iPhone 6</a>,&nbsp;
                        <a title="smartphone" href="#">Oneplus-2</a>,&nbsp;
                        <a title="smartphone" href="#">Apple Watch</a>,&nbsp;
                        <a title="smartphone" href="#">Amazon Kindle</a>
                    </p>
                </div>
                <div class="block-footer">
                    <h2 class="heading-primary v2 v2">MOBILES & TABLETS</h2>
                    <p class="description-primary">
                        <a title="smartphone" href="#">Apple</a>,&nbsp;
                        <a title="smartphone" href="#">Asus</a>,&nbsp;
                        <a title="smartphone" href="#">HTC</a>,&nbsp;
                        <a title="smartphone" href="#">Huawei</a>,&nbsp;
                        <a title="smartphone" href="#">Lenovo</a>,&nbsp;
                        <a title="smartphone" href="#">LG</a>,&nbsp;
                        <a title="smartphone" href="#">Nokia X</a>,&nbsp;
                        <a title="smartphone" href="#">Oppo</a>,&nbsp;
                        <a title="smartphone" href="#">One Plus</a>,&nbsp;
                        <a title="smartphone" href="#">Kindle</a>,&nbsp;
                        <a title="smartphone" href="#">Samsung</a>,&nbsp;
                        <a title="smartphone" href="#">Sony</a>,&nbsp;
                        <a title="smartphone" href="#">Xiaomi</a>
                    </p>
                </div>
                <div class="block-footer no-padding-bottom">
                    <h2 class="heading-primary v2">COMPUTERS & LAPTOPS</h2>
                    <p class="description-primary">
                        <a title="smartphone" href="#">Acer</a>,&nbsp;
                        <a title="smartphone" href="#">Alienware</a>,&nbsp;
                        <a title="smartphone" href="#">Asus</a>,&nbsp;
                        <a title="smartphone" href="#">Corsair</a>,&nbsp;
                        <a title="smartphone" href="#">Dell</a>,&nbsp;
                        <a title="smartphone" href="#">Lenovo</a>,&nbsp;
                        <a title="smartphone" href="#">Logitech </a>,&nbsp;
                        <a title="smartphone" href="#">MSI</a>
                        <br>
                        <a title="smartphone" href="#">Altec Lansing</a>,&nbsp;
                        <a title="smartphone" href="#">Armaggeddon</a>,&nbsp;
                        <a title="smartphone" href="#">Audio Technica</a>,&nbsp;
                        <a title="smartphone" href="#">Beats</a>,&nbsp;
                        <a title="smartphone" href="#">Belkin</a>,&nbsp;
                        <a title="smartphone" href="#">Bose</a>,&nbsp;
                        <a title="smartphone" href="#">Fitbit</a>,&nbsp;
                        <a title="smartphone" href="#">Ninteno</a>
                    </p>
                </div>
            </div>
            <div class="col-md-6 block-right">
                <div class="block-footer">
                    <h2 class="heading-primary v2">CONSUMER ELECTRONIC</h2>
                    <p class="description-primary">
                        <a title="smartphone" href="#">Altec Lansing</a>,&nbsp;
                        <a title="smartphone" href="#">Armaggeddon</a>,&nbsp;
                        <a title="smartphone" href="#">Audio Technica</a>,&nbsp;
                        <a title="smartphone" href="#">Beats</a>,&nbsp;
                        <a title="smartphone" href="#">Belkin</a>,&nbsp;
                        <a title="smartphone" href="#">Bose</a>,&nbsp;
                        <a title="smartphone" href="#">Fitbit</a>,&nbsp;
                        <a title="smartphone" href="#">Nintendo</a>,&nbsp;
                        <a title="smartphone" href="#">Panasonic</a>,&nbsp;
                        <a title="smartphone" href="#">PS4</a>,&nbsp;
                        <a title="smartphone" href="#">Sennheiser</a>
                    </p>
                </div>
                <div class="block-footer">
                    <h2 class="heading-primary v2">FASHION</h2>
                    <p class="description-primary">
                        <a title="smartphone" href="#">Birkenstock</a>,&nbsp;
                        <a title="smartphone" href="#">Coach</a>,&nbsp;
                        <a title="smartphone" href="#">Herschel</a>,&nbsp;
                        <a title="smartphone" href="#">Kate Spade</a>,&nbsp;
                        <a title="smartphone" href="#">Longchamp</a>,&nbsp;
                        <a title="smartphone" href="#">MCM</a>,&nbsp;
                        <a title="smartphone" href="#">Rayban</a>,&nbsp;
                        <a title="smartphone" href="#">Tory Burch</a>
                        <br>
                        <a title="smartphone" href="#">Canon</a>,&nbsp;
                        <a title="smartphone" href="#">Casio</a>,&nbsp;
                        <a title="smartphone" href="#">Fujifilm</a>,&nbsp;
                        <a title="smartphone" href="#">GoPro</a>,&nbsp;
                        <a title="smartphone" href="#">Instax</a>,&nbsp;
                        <a title="smartphone" href="#">Leica</a>,&nbsp;
                        <a title="smartphone" href="#">Nikon</a>,&nbsp;
                        <a title="smartphone" href="#">Olympus</a>,&nbsp;
                        <a title="smartphone" href="#">Panasonic</a>
                    </p>
                </div>
                <div class="block-footer no-padding-bottom">
                    <h2 class="heading-primary v2">HEALTH & BEAUTY</h2>
                    <p class="description-primary">
                        <a title="smartphone" href="#">Biotherm</a>,&nbsp;
                        <a title="smartphone" href="#">Clarins</a>,&nbsp;
                        <a title="smartphone" href="#">Dior</a>,&nbsp;
                        <a title="smartphone" href="#">Estee Lauder</a>,&nbsp;
                        <a title="smartphone" href="#">Etude House</a>,&nbsp;
                        <a title="smartphone" href="#">GNC</a>,&nbsp;
                        <a title="smartphone" href="#">Laneige</a>,&nbsp;
                        <a title="smartphone" href="#">Lancome</a>
                        <br>
                        <a title="smartphone" href="#">L-occitane</a>,&nbsp;
                        <a title="smartphone" href="#">Shiseido</a>,&nbsp;
                        <a title="smartphone" href="#">Shu Uemura</a>,&nbsp;
                        <a title="smartphone" href="#">Skin Food</a>,&nbsp;
                        <a title="smartphone" href="#">Herschel</a>,&nbsp;
                        <a title="smartphone" href="#">Jansport</a>,&nbsp;
                        <a title="smartphone" href="#">Samsonite</a>,&nbsp;
                        <a title="smartphone" href="#">Adidas</a>,&nbsp;
                        <a title="smartphone" href="#">Aeroline</a>,&nbsp;
                        <a title="smartphone" href="#">AIBI</a>,&nbsp;
                        <a title="smartphone" href="#">Aleoca</a>,&nbsp;
                        <a title="smartphone" href="#">Billabong</a>,&nbsp;
                        <a title="smartphone" href="#">Columbia</a>,&nbsp;
                        <a title="smartphone" href="#">Converse</a>,&nbsp;
                        <a title="smartphone" href="#">Garmin</a>,&nbsp;
                        <a title="smartphone" href="#">Nike</a>
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="copyright">
    <div class="container">
        <span>© <a href="#" title="">LocalWare</a> - All Rights Reserved.</span>
        <ul class="payment">
            <li><a href="#"><img src="<?php echo public_url() ?>site/image/paypal.png" alt="images" class="img-responsive"></a></li>
            <li><a href="#"><img src="<?php echo public_url() ?>site/image/visa.png" alt="images" class="img-responsive"></a></li>
            <li><a href="#"><img src="<?php echo public_url() ?>site/image/american.png" alt="images" class="img-responsive"></a></li>
            <li><a href="#"><img src="<?php echo public_url() ?>site/image/mastercard.png" alt="images" class="img-responsive"></a></li>
        </ul>
        <div class="clearfix"></div>
    </div>
</div>
