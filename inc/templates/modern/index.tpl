<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->
<head>
	<meta charset="utf-8">
	<title><?php echo $config['site_name']; ?> | Free URL shortening and redirection service</title>
	<meta name="description" content="A free URL shortening and redirection service that can turn a long URL into a very short and easy to remember URL">
    <meta name="keywords" content="url, short, redirect, link, url shortener, redirector, short links, seo links, free seo, free url, shorten url, small url, shorten urls, free url redirection, free small url">
	
    <link rel="alternate" type="application/rss+xml" title="Latest Urls" href="<?php echo $is_admin ? $config['base_url'].'feed.rss?token='.$config['token']:$config['base_url'].'feed.rss'; ?>" />
    <link rel="stylesheet" href="styles/<?php echo $config['shrinky_template']; ?>/stylesheets/basic.css">
    <link rel="stylesheet" href="styles/<?php echo $config['shrinky_template']; ?>/stylesheets/app.css">
    <link rel="stylesheet" href="styles/<?php echo $config['shrinky_template']; ?>/stylesheets/date-picker.css">
	<!--[if lt IE 9]>
		<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
	<link rel="shortcut icon" href="styles/<?php echo $config['shrinky_template']; ?>/images/favicon.ico">
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
		</header>
        <div id="main" role="main">
            <div id="info"><p style="<?php echo $show_error; ?>"><?php echo $error; ?></p></div>
            <form action="<?php echo $config['base_url'];?>API/write/post" method="post" id="mainform" autocomplete="off">
            <div id="qrCode">
                <div class="qrTooltip" style="<?php echo $qrcode; ?>"></div>
            </div>            
                <input type="text" id="url" name="url" value="<?php echo $value; ?>" placeholder="write or paste an url"/>
                <input type="submit" id="submit" class="button submit normal" value="shrink" name="submit">
		
		<br> <br><div id="options-wrapper" class="row">
		<ul id="options">
		<li><a href="#" id="custom_link" class="arrow-center" data-tip="Want to use a custom url?">options</a></li>
		</ul></div>
                <div id="tools">
                    <input type="text" class="inputaData" id="custom" name="custom" maxlength="60" placeholder="optional custom name"/>
                    <input type="text" class="inputaData" id="password" name="password" maxlength="10" placeholder="password"/>
                    <input type="number" class="inputaData" id="uses" name="uses" min="0" max="100000" step="10" placeholder="uses" pattern="[0-9]"/>
                    <input type="text" class="inputaData" id="expire" name="expire" placeholder="expire" readonly="readonly"/>
                    <span class="checkbox unchecked">
                        <label>public</label>
                        <input type="checkbox" name="private" id="private"/>
                    </span>                
                </div>
            </form>

        </div>


        <footer>
<br>
<div class="ads">

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

</div>


<div class="footertext">
				<p><b>WARNING:</b> Using this service for spam or any other illegal activity is <b>STRICTLY PROHIBITED</b>!</p>
				<p>We have served <?php echo $total_urls;?> urls and served <?php echo $total_hits;?> total clicks with <?php echo $today_urls;?> new urls today.</p>
			</div>

            <p><a href="<?php echo $config['base_url']; ?>" data-tip="Go home!">Home</a> | <a href="<?php echo $config['base_url'];?>multishrink.html" class="arrow-center" data-tip="Multiple urls? use MultiShrink!">Multi</a> | <a href="<?php echo $config['base_url']; ?>stats.html" class="arrow-center" data-tip="Public stats!">Stats</a> | <a href="<?php echo $config['base_url'];?>disclaimer.html" class="arrow-center" data-tip="Read our disclaimer!"  target="docu" onclick="window.open('','docu','toolbar=0,location=0,directories=0,status=yes,menubar=0,scrollbars=yes,resizable=yes,width=730,height=350,titlebar=yes')">Disclaimer</a> | <a href="<?php echo $config['base_url'];?>privacy.html" class="arrow-center" data-tip="Read our privacy!" target="docu" onclick="window.open('','docu','toolbar=0,location=0,directories=0,status=yes,menubar=0,scrollbars=yes,resizable=yes,width=730,height=350,titlebar=yes')">Privacy</a> | <a href="<?php echo $config['base_url'];?>contact.html" class="arrow-center" data-tip="Want to contact us or to report a link?" target="docu" onclick="window.open('','docu','toolbar=0,location=0,directories=0,status=yes,menubar=0,scrollbars=yes,resizable=yes,width=730,height=350,titlebar=yes')">Contact</a> | <a href="<?php echo $config['base_url']; ?>developer.html" class="arrow-center" data-tip="Hi Developer, use our API!" target="docu" onclick="window.open('','docu','toolbar=0,location=0,directories=0,status=yes,menubar=0,scrollbars=yes,resizable=yes,width=730,height=450,titlebar=yes')">API</a> | <a href="javascript:var%20e=document.createElement('script');e.setAttribute('language','javascript');e.setAttribute('src','<?php echo $config['base_url']; ?>bookmarlet/load.js?url='+encodeURIComponent(location.href));document.body.appendChild(e);void(0);" class="arrow-center" data-tip="Drag this to your browser toolbar to get started">Bookmarlet</a></p>




       </footer>            
    </div><!-- wrapper -->
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="styles/<?php echo $config['shrinky_template']; ?>/js/libs/jquery-1.7.1.min.js"><\/script>')</script>
    <script src="styles/<?php echo $config['shrinky_template']; ?>/js/jquery.datepick.js"></script>
    <script src="styles/<?php echo $config['shrinky_template']; ?>/js/script.min.js"></script>
    <script>
      var _gaq=[["_setAccount","<?php echo $config['google_tracking']; ?>"],["_trackPageview"]];
      (function(d,t){var g=d.createElement(t),s=d.getElementsByTagName(t)[0];g.async=1;
      g.src=("https:"==location.protocol?"//ssl":"//www")+".google-analytics.com/ga.js";
      s.parentNode.insertBefore(g,s)}(document,"script"));
    </script>
</body>
</html>