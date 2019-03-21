<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->
<head>
    <meta charset="utf-8" />     
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /> 
    <title>Your link <?php echo $data['url']; ?> is ready now | <?php echo $config['site_name']; ?></title>
<meta name="description" content="A free URL shortening and redirection service that can turn a long URL into a very short and easy to remember URL">
<meta name="keywords" content="url, short, redirect, link, url shortener, redirector, short links, seo links, free seo, free url, shorten url, small url, shorten urls, free url redirection, free small url">
 
    <meta property="og:title" content="<?php echo $config['site_name']; ?> | <?php echo $config['base_url'] . $data['short']; ?>" />
    <meta property="og:image" content="<?php echo $config['base_url'] . $data['short']; ?>.qrcode" />
    <link rel="icon" href="<?php echo $config['base_url']; ?>styles/<?php echo $config['shrinky_template']; ?>/images/favicon.ico" type="image/ico" />
    <link rel="shortcut icon" href="<?php echo $config['base_url']; ?>styles/<?php echo $config['shrinky_template']; ?>/images/favicon.ico" />
    <link rel="stylesheet" type="text/css" href="<?php echo $config['base_url']; ?>styles/<?php echo $config['shrinky_template']; ?>/stylesheets/ads.css" />
    <link rel="stylesheet" href="<?php echo $config['base_url']; ?>styles/<?php echo $config['shrinky_template']; ?>/stylesheets/basic.css">
    <script>
      var _gaq=[["_setAccount","<?php echo $config['google_tracking']; ?>"],["_trackPageview"]];
      (function(d,t){var g=d.createElement(t),s=d.getElementsByTagName(t)[0];g.async=1;
      g.src=("https:"==location.protocol?"//ssl":"//www")+".google-analytics.com/ga.js";
      s.parentNode.insertBefore(g,s)}(document,"script"));
    </script>       
</head>
<body>
    <div id="wrapper">
    <header>

<p><a href="<?php echo $config['base_url']; ?>" title="<?php echo $config['site_name']; ?> - free url redirection and shortening"><?php echo $config['site_name']; ?></a> is a free URL forwarding service (URL redirection) allowing anyone to take any existing URL and shorten it.</p>
    		<p>Just type/paste a URL in the box below to shorten it and the short URL will forward to the long one.</p>
    		<p>You can custom your link - set password, number of uses, expire date, make it public or private and choose desired name.</p>
		    <p>Are you Developer? You can use our <a href="<?php echo $config['base_url']; ?>developer.html" class="arrow-center" data-tip="Hi Developer, use our API!" target="docu" onclick="window.open('','docu','toolbar=0,location=0,directories=0,status=yes,menubar=0,scrollbars=yes,resizable=yes,width=730,height=450,titlebar=yes')">API</a> for easy url handling.</p>

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
     <h1>Preview of Page You Want to Go</h1>
<p>This <?php echo $config['site_name']; ?> page was created to preview next site:</p>
        


<p>
<b><?php echo $data['url']; ?></b>
</p>
<p>This preview page is for security reasons, we won't redirect you to any site you don't want to go.</p>
<p>The referring site you are going to visit is not controlled by us, so please remember not to enter your private information unless you are sure this is not scam. Also be sure to download only from sites you trust and remember to always check the site's Privacy Policy first.</p>
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


    </header>


<div id="main">    	    
			<table>
  				<tbody><tr style="vertical-align:top">
    				<td style="width:300px" rowspan="3">
    					<img src="http://www.apercite.fr/api/apercite/320x200/oui/<?php echo $data['url']; ?>" alt="Preview website">
    				</td>
    			</tr>
 				<tr>
 					<td>
    					<b>Clicks:</b> <?php echo $data['hits']; ?>    				</td>
    			</tr>
    			<tr>
    				<td>
    					<p><b>Click the link below to proceed:</b></p>
    					<p><a title="Click to proceed..." target="_blank" href="<?php echo $data['url']; ?>"><?php echo $data['url']; ?></a><br></p>
    					
    				</td>
				</tr>
				<tr>
					<td colspan="3">
						<div class="ads">URL was generated by <?php echo $config['site_name']; ?> engine</div>
					</td>
				</tr>
			</tbody></table>
		</div>


    <footer>

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
				
			</div>

            <p><a href="<?php echo $config['base_url']; ?>" data-tip="Go home!">Home</a> | <a href="<?php echo $config['base_url'];?>multishrink.html" class="arrow-center" data-tip="Multiple urls? use MultiShrink!">Multi</a> | <a href="<?php echo $config['base_url']; ?>stats.html" class="arrow-center" data-tip="Public stats!">Stats</a> | <a href="<?php echo $config['base_url'];?>disclaimer.html" class="arrow-center" data-tip="Read our disclaimer!"  target="docu" onclick="window.open('','docu','toolbar=0,location=0,directories=0,status=yes,menubar=0,scrollbars=yes,resizable=yes,width=730,height=350,titlebar=yes')">Disclaimer</a> | <a href="<?php echo $config['base_url'];?>privacy.html" class="arrow-center" data-tip="Read our privacy!" target="docu" onclick="window.open('','docu','toolbar=0,location=0,directories=0,status=yes,menubar=0,scrollbars=yes,resizable=yes,width=730,height=350,titlebar=yes')">Privacy</a> | <a href="<?php echo $config['base_url'];?>contact.html" class="arrow-center" data-tip="Want to contact us or to report a link?" target="docu" onclick="window.open('','docu','toolbar=0,location=0,directories=0,status=yes,menubar=0,scrollbars=yes,resizable=yes,width=730,height=350,titlebar=yes')">Contact</a> | <a href="<?php echo $config['base_url']; ?>developer.html" class="arrow-center" data-tip="Hi Developer, use our API!" target="docu" onclick="window.open('','docu','toolbar=0,location=0,directories=0,status=yes,menubar=0,scrollbars=yes,resizable=yes,width=730,height=450,titlebar=yes')">API</a> | <a href="javascript:var%20e=document.createElement('script');e.setAttribute('language','javascript');e.setAttribute('src','<?php echo $config['base_url']; ?>bookmarlet/load.js?url='+encodeURIComponent(location.href));document.body.appendChild(e);void(0);" class="arrow-center" data-tip="Drag this to your browser toolbar to get started">Bookmarlet</a></p>
	

       </footer>                              
</div>
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