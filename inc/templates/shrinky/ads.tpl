<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->
<head>
    <meta charset="utf-8" />     
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /> 
    <title>Your link <?php echo $data['url']; ?> is ready now | <?php echo $config['site_name']; ?></title>
    <meta name="description" content="<?php echo $data['url']; ?> - free URL shortening and redirection service that can turn a long URL into a very short and easy to remember URL">
    <meta name="keywords" content="url, short, redirect, link, url shortener, redirector, short links, seo links, free seo, free url, shorten url, small url, shorten urls, free url redirection, free small url">
    <meta name="author" content="<?php echo $config['site_name']; ?>" /> 
    <meta property="og:title" content="<?php echo $config['site_name']; ?> | <?php echo $config['base_url'] . $data['short']; ?>" />
    <meta property="og:image" content="<?php echo $config['base_url'] . $data['short']; ?>.qrcode" />
    <meta property="og:image" content="<?php echo $config['base_url'] . $data['short']; ?>.qrcode" />
    <link rel="icon" href="<?php echo $config['base_url']; ?>styles/<?php echo $config['shrinky_template']; ?>/images/favicon.ico" type="image/ico" />
    <link rel="shortcut icon" href="<?php echo $config['base_url']; ?>images/favicon.ico" />
    <link rel="stylesheet" type="text/css" href="<?php echo $config['base_url']; ?>styles/<?php echo $config['shrinky_template']; ?>/stylesheets/ads.css" />
    <script>
      var _gaq=[["_setAccount","<?php echo $config['google_tracking']; ?>"],["_trackPageview"]];
      (function(d,t){var g=d.createElement(t),s=d.getElementsByTagName(t)[0];g.async=1;
      g.src=("https:"==location.protocol?"//ssl":"//www")+".google-analytics.com/ga.js";
      s.parentNode.insertBefore(g,s)}(document,"script"));
    </script>       
</head>
<body>
    <header>
        <h1><a href="<?php echo $config['base_url']; ?>" target="_blank"><span style="color:#b4b4b4;"><?php echo $config['site_name']; ?></span></a></h1>
        <span class="info">Shortening urls like no other</span>
        <button type="button" id="continue" class="button red">Loading...</button>
    </header>
    <iframe scrolling="auto" src="<?php echo $ads_url; ?>" frameborder="0" allowtransparency="true"></iframe>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="<?php echo $config['base_url']; ?>styles/<?php echo $config['shrinky_template']; ?>/js/libs/jquery-1.7.1.min.js"><\/script>')</script>
    <script src="<?php echo $config['base_url']; ?>styles/<?php echo $config['shrinky_template']; ?>/js/jquery.countTo.js"></script>
    <script>
    jQuery(document).ready(function ($) {
        $('#continue').countTo({
            interval: 1000,
            startNumber: 10,
            endNumber: 0,
            onLoop: function (self, current, loop) {
                $(self).text('Wait: ' + current);
            },
            onFinish: function (self, current, loop) {
                self.removeClass('red').addClass('green');
                $(self).html('continue').on('click', function () {
                    top.location = '<?php echo htmlspecialchars_decode($data['url'], ENT_NOQUOTES );?>';
                });
            }
        });
    });
    </script>
</body>
</html>