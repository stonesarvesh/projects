<!DOCTYPE html>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<html lang="en" ng-app="leapin">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="shortcut icon" href="../../assets/ico/favicon.png">

        <title>Leapin - Find your passion</title>

        <!-- Bootstrap core CSS -->
        <link id="switch_style" href="product/css/bootstrap.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="product/css/theme.css" rel="stylesheet">
        <link href="product/css/dropzone.css" rel="stylesheet">
<!--         <link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet"> -->
        <link rel="stylesheet" type="text/css" href="product/js/fancybox/jquery.fancybox.css?v=2.1.5" media="screen" />
        <link rel="stylesheet" type="text/css" href="product/js/fancybox/helpers/jquery.fancybox-buttons.css?v=2.1.5" media="screen" />
        <link href="app/app.css" rel="stylesheet">
        <link href="lib/bootstrap-datetimepicker.min.css" rel="stylesheet">
          <!-- Custom CSS -->
    	<link href="app/heroic-features.css" rel="stylesheet">
        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
        <script src="../../assets/js/html5shiv.js"></script>
        <script src="../../assets/js/respond.min.js"></script>
        
        
        <![endif]-->
    </head>

    

<body>
	<div id="wrap">
		<div id="header">
			<tiles:insertAttribute name="header" />
		</div>
		<div id="content">
			<tiles:insertAttribute name="content" />
		</div>
	</div>
	<div id="footer">
		<tiles:insertAttribute name="footer" />
	</div>
</body>
</html>
