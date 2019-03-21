<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8"/>
<title>Shorten multiple URLs | <?php echo $config['site_name']; ?></title>
<meta name="description" content="Multi shrink - free URL shortening and redirection service that can turn a long URL into a very short and easy to remember URL">
<meta name="keywords" content="url, short, redirect, link, url shortener, redirector, short links, seo links, free seo, free url, shorten url, small url, shorten urls, free url redirection, free small url">
<link rel="stylesheet" href="<?php echo $config['base_url'];?>styles/<?php echo $config['shrinky_template']; ?>/stylesheets/basic.css">
<link rel="stylesheet" href="<?php echo $config['base_url'];?>styles/<?php echo $config['shrinky_template']; ?>/stylesheets/multi.css">
<link rel="stylesheet" href="<?php echo $config['base_url'];?>styles/<?php echo $config['shrinky_template']; ?>/stylesheets/date-picker.css">
<link rel="shortcut icon" href="<?php echo $config['base_url'];?>styles/<?php echo $config['shrinky_template']; ?>/images/favicon.ico">
</head>
<body>
<div id="wrapper">
    <header>
        <h1><a href="<?php echo $config['base_url']; ?>multishrink.html"><span style="color:#b4b4b4;">Multi</span> <span style="color:#00DDF8;">Shrink</span></a></h1>
    </header>
	<div id="main">	
            <form method="post" id="multishrink">
                <textarea name="urls" placeholder="Put multiple urls here."><?php echo $new_urls; ?></textarea>
                <input type="text" id="password" name="password" maxlength="10" placeholder="password" value="<?php echo $getPassword; ?>"/>
                <input type="number" id="uses" name="uses" min="0" max="100000" step="10" placeholder="uses" pattern="[0-9]" value="<?php echo $getUses; ?>"/>
                <input type="text" id="expire" name="expire" placeholder="expire" readonly="readonly" value="<?php echo $getExpire ? $_POST['expire'] : null; ?>"/>
                <input type="checkbox" name="private" id="private"/><label for="private">private</label>
                <input type="checkbox" name="download" id="download"/><label for="download">download</label>
                <input type="submit" class="button" value="MultiShrink!" style="float:right;"/>    
            </form>
    </div>
    <footer>
            <p><a href="<?php echo $config['base_url']; ?>" data-tip="Go home!">Home</a> | <a href="<?php echo $config['base_url'];?>multishrink.html" class="arrow-center" data-tip="Multiple urls? use MultiShrink!">Multi</a> | <a href="<?php echo $config['base_url']; ?>stats.html" class="arrow-center" data-tip="Public stats!">Stats</a> | <a href="<?php echo $config['base_url']; ?>developer.html" class="arrow-center" data-tip="Hi Developer, use our API!" target="docu" onclick="window.open('','docu','toolbar=0,location=0,directories=0,status=yes,menubar=0,scrollbars=yes,resizable=yes,width=730,height=450,titlebar=yes')">API</a> | <a href="javascript:var%20e=document.createElement('script');e.setAttribute('language','javascript');e.setAttribute('src','<?php echo $config['base_url']; ?>bookmarlet/load.js?url='+encodeURIComponent(location.href));document.body.appendChild(e);void(0);" class="arrow-center" data-tip="Drag this to your browser toolbar to get started">Bookmarlet</a> | <a href="<?php echo $config['base_url'];?>disclaimer.html" class="arrow-center" data-tip="Read our disclaimer!"  target="docu" onclick="window.open('','docu','toolbar=0,location=0,directories=0,status=yes,menubar=0,scrollbars=yes,resizable=yes,width=730,height=350,titlebar=yes')">Disclaimer</a> | <a href="<?php echo $config['base_url'];?>privacy.html" class="arrow-center" data-tip="Read our privacy!" target="docu" onclick="window.open('','docu','toolbar=0,location=0,directories=0,status=yes,menubar=0,scrollbars=yes,resizable=yes,width=730,height=350,titlebar=yes')">Privacy</a> | <a href="<?php echo $config['base_url'];?>contact.html" class="arrow-center" data-tip="Want to contact us or to report a link?" target="docu" onclick="window.open('','docu','toolbar=0,location=0,directories=0,status=yes,menubar=0,scrollbars=yes,resizable=yes,width=730,height=350,titlebar=yes')">Contact</a> </p>
        </footer>                     
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="<?php echo $config['base_url'];?>styles/<?php echo $config['shrinky_template']; ?>/js/libs/jquery-1.7.1.min.js"><\/script>')</script>
    <script src="<?php echo $config['base_url'];?>styles/<?php echo $config['shrinky_template']; ?>/js/jquery.datepick.js"></script>
    <script>
        jQuery(document).ready(function($) {
            // date picker
            $('#expire').datepick({
                minDate: +1,
                showAnim: '',
            });              
        });
    </script>
    <script>
      var _gaq=[["_setAccount","<?php echo $config['google_tracking']; ?>"],["_trackPageview"]];
      (function(d,t){var g=d.createElement(t),s=d.getElementsByTagName(t)[0];g.async=1;
      g.src=("https:"==location.protocol?"//ssl":"//www")+".google-analytics.com/ga.js";
      s.parentNode.insertBefore(g,s)}(document,"script"));
    </script>
</div>
</body>
</html>