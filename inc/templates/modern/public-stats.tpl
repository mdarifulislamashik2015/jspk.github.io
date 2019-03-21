<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8"/>
<title>Public URLs stats | <?php echo $config['site_name']; ?></title>
<meta name="description" content="A free URL shortening and redirection service that can turn a long URL into a very short and easy to remember URL">
<meta name="keywords" content="url, short, redirect, link, url shortener, redirector, short links, seo links, free seo, free url, shorten url, small url, shorten urls, free url redirection, free small url">

<link rel="stylesheet" href="<?php echo $config['base_url']; ?>styles/<?php echo $config['shrinky_template']; ?>/stylesheets/basic.css">
<link rel="stylesheet" href="<?php echo $config['base_url']; ?>styles/<?php echo $config['shrinky_template']; ?>/stylesheets/stats.css">
<link rel="shortcut icon" href="<?php echo $config['base_url']; ?>styles/<?php echo $config['shrinky_template']; ?>/images/favicon.ico">
</head>
<body>
<div id="wrapper">
    <header>

<div id="branding" class="row">
<h1 class="logo">
<a href="<?php echo $config['base_url']; ?>"><?php echo $config['site_name']; ?></a>
</h1>
<p class="tagline">Free URL forwarding service (URL redirection) allowing anyone to take any existing URL and shorten it</p>
<p class="tagline">You can custom your link - set password, number of uses, expire date, make it public or private and choose desired name</p>
</div>
<p class="headerads">


<script type="text/javascript">
google_ad_client = "<?php echo $config['google_adsense']; ?>";
google_ad_width = 728;
google_ad_height = 90;
google_ad_format = "728x90_as";
google_ad_type = "text";
google_ad_channel = "";
google_color_border = "000000";
google_color_bg = "FFFFFF";
google_color_link = "6296CA";
google_color_text = "000000";
google_color_url = "000000";
</script>
<script type="text/javascript" src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
</script>


</p>
        <h1>Public Stats</h1>
        <h2>Total Urls: <?php echo $total_urls;?> | Total Hits: <?php echo $total_hits;?> | Today Hits: <?php echo $today_urls;?> </h2>
    </header>
	<div id="main" class="info">
        <ul class="urls">
        <li class="info"><span class="url">Short url</a><span><span class="hits">Hits</span></li>
<?php
    if ($urls){ 
        foreach($urls as $item){
            echo '<li class="normal">';
            echo '<span class="url"><a href="'.$config['base_url'].$item['short'].'/stats" data-tip="'.$item['url'].'">'.$config['base_url'].$item['short'].'</a></span>';
            echo '<span class="social"><div class="button facebook" data-tip="Share in facebook"></div><div class="button twitter" data-tip="Share in twitter"></div><div class="button googleplus" data-tip="Share in google+"></div></span>';
            echo '<span class="hits">'.$item['hits'].'</span>';
            echo '</li>';
        }
    }
?>            
        </ul>
        <?php echo $pager->render(); ?>
    </div>
    <footer>
        <div class="footertext">
				<p><b>WARNING:</b> Using this service for spam or any other illegal activity is <b>STRICTLY PROHIBITED</b>!</p>
				<p>We have served <?php echo $total_urls;?> urls and served <?php echo $total_hits;?> total clicks with <?php echo $today_urls;?> new urls today.</p>
			</div>

            <p><a href="<?php echo $config['base_url']; ?>" data-tip="Go home!">Home</a> | <a href="<?php echo $config['base_url'];?>multishrink.html" class="arrow-center" data-tip="Multiple urls? use MultiShrink!">Multi</a> | <a href="<?php echo $config['base_url']; ?>stats.html" class="arrow-center" data-tip="Public stats!">Stats</a> | <a href="<?php echo $config['base_url'];?>disclaimer.html" class="arrow-center" data-tip="Read our disclaimer!"  target="docu" onclick="window.open('','docu','toolbar=0,location=0,directories=0,status=yes,menubar=0,scrollbars=yes,resizable=yes,width=730,height=350,titlebar=yes')">Disclaimer</a> | <a href="<?php echo $config['base_url'];?>privacy.html" class="arrow-center" data-tip="Read our privacy!" target="docu" onclick="window.open('','docu','toolbar=0,location=0,directories=0,status=yes,menubar=0,scrollbars=yes,resizable=yes,width=730,height=350,titlebar=yes')">Privacy</a> | <a href="<?php echo $config['base_url'];?>contact.html" class="arrow-center" data-tip="Want to contact us or to report a link?" target="docu" onclick="window.open('','docu','toolbar=0,location=0,directories=0,status=yes,menubar=0,scrollbars=yes,resizable=yes,width=730,height=350,titlebar=yes')">Contact</a> | <a href="<?php echo $config['base_url']; ?>developer.html" class="arrow-center" data-tip="Hi Developer, use our API!" target="docu" onclick="window.open('','docu','toolbar=0,location=0,directories=0,status=yes,menubar=0,scrollbars=yes,resizable=yes,width=730,height=450,titlebar=yes')">API</a> | <a href="javascript:var%20e=document.createElement('script');e.setAttribute('language','javascript');e.setAttribute('src','<?php echo $config['base_url']; ?>bookmarlet/load.js?url='+encodeURIComponent(location.href));document.body.appendChild(e);void(0);" class="arrow-center" data-tip="Drag this to your browser toolbar to get started">Bookmarlet</a> | <a href="http://cr.ma/shortener" class="arrow-center" data-tip="by Shrinky!" target="_blank">Shrinky</a></p>



       </footer>                     
</div>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="styles/<?php echo $config['shrinky_template']; ?>/js/libs/jquery-1.7.1.min.js"><\/script>')</script>
    <script src="styles/<?php echo $config['shrinky_template']; ?>/js/stats.js"></script>
    <script>
      var _gaq=[["_setAccount","<?php echo $config['google_tracking']; ?>"],["_trackPageview"]];
      (function(d,t){var g=d.createElement(t),s=d.getElementsByTagName(t)[0];g.async=1;
      g.src=("https:"==location.protocol?"//ssl":"//www")+".google-analytics.com/ga.js";
      s.parentNode.insertBefore(g,s)}(document,"script"));
    </script>
</body>
</html>