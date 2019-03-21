<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8"/>
<title>Stats of: <?php echo $config['base_url'] . $data['short']; ?> | <?php echo $config['site_name']; ?></title>
<meta name="description" content="URL stats - free URL shortening and redirection service that can turn a long URL into a very short and easy to remember URL">
<meta name="keywords" content="url, short, redirect, link, url shortener, redirector, short links, seo links, free seo, free url, shorten url, small url, shorten urls, free url redirection, free small url">
<link rel="stylesheet" href="<?php echo $config['base_url']; ?>styles/<?php echo $config['shrinky_template']; ?>/stylesheets/basic.css">
<link rel="stylesheet" href="<?php echo $config['base_url']; ?>styles/<?php echo $config['shrinky_template']; ?>/stylesheets/multi.css">
<link rel="shortcut icon" href="<?php echo $config['base_url']; ?>styles/<?php echo $config['shrinky_template']; ?>/images/favicon.ico">
</head>
<body>
<div id="wrapper">
    <header>
        <h1>Stats</h1>
    </header>
	<div id="main" class="info">
        <div class="qrcode"><a href="<?php echo $config['base_url'].$data['short'];?>.qrcode?download" target="_parent" title="Download qrCode"><img src="<?php echo $config['base_url'].$data['short'];?>.qrcode?s=128" width="128" height="128" alt="qrcode"/></a></div>	
        <p style="font-size:30pt; font-weight:bold;"><?php echo $data['hits']; ?> clicks</p>
        <p><span>Url:</span> <a href="<?php echo $config['base_url'] . $data['short']; ?>"><?php echo $config['base_url'] . $data['short']; ?></a></p>
        <p><span>Created:</span> <?php echo $data['created']; ?></p>
        <p><span>Last:</span> <?php echo $data['last']; ?></p>
    </div>
    <footer>
            <p><a href="<?php echo $config['base_url']; ?>" data-tip="Go home!">Home</a> | <a href="<?php echo $config['base_url'];?>multishrink.html" class="arrow-center" data-tip="Multiple urls? use MultiShrink!">Multi</a> | <a href="<?php echo $config['base_url']; ?>stats.html" class="arrow-center" data-tip="Public stats!">Stats</a> | <a href="<?php echo $config['base_url']; ?>developer.html" class="arrow-center" data-tip="Hi Developer, use our API!" target="docu" onclick="window.open('','docu','toolbar=0,location=0,directories=0,status=yes,menubar=0,scrollbars=yes,resizable=yes,width=730,height=450,titlebar=yes')">API</a> | <a href="<?php echo $config['base_url'];?>disclaimer.html" class="arrow-center" data-tip="Read our disclaimer!"  target="docu" onclick="window.open('','docu','toolbar=0,location=0,directories=0,status=yes,menubar=0,scrollbars=yes,resizable=yes,width=730,height=350,titlebar=yes')">Disclaimer</a> | <a href="<?php echo $config['base_url'];?>privacy.html" class="arrow-center" data-tip="Read our privacy!" target="docu" onclick="window.open('','docu','toolbar=0,location=0,directories=0,status=yes,menubar=0,scrollbars=yes,resizable=yes,width=730,height=350,titlebar=yes')">Privacy</a> | <a href="<?php echo $config['base_url'];?>contact.html" class="arrow-center" data-tip="Want to contact us or to report a link?" target="docu" onclick="window.open('','docu','toolbar=0,location=0,directories=0,status=yes,menubar=0,scrollbars=yes,resizable=yes,width=730,height=350,titlebar=yes')">Contact</a> | <a href="http://cr.ma/shortener" class="arrow-center" data-tip="by Shrinky!" target="_blank">Shrinky</a></p>
        </footer>                     
</div>
</body>
</html>