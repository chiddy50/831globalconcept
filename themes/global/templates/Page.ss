<!DOCTYPE html>
<html lang="en">
    <head>
        <% base_tag %>
		<title>
        <% if $MetaTitle %>
        $MetaTitle
        <% else %>
        $Title
        <% end_if %> &raquo; $SiteConfig.Title</title>
        <meta charset="utf-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
        $MetaTags(false)
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/colors/blue.css">
        <link rel="stylesheet" href="css/owl.carousel.css">
        <link rel="stylesheet" href="css/owl.transitions.css">
        <link rel="stylesheet" href="css/animate.min.css">
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <%-- <link rel="shortcut icon" href="images/favicon.ico"> --%>
    </head>
    <body>
        <div class="wrapper">
            <% include Banner %>
            $Layout
            <% if $Form %>
            $Form
            <% end_if %>
            <% include Footer %>
        </div>
		<script src="js/jquery-1.10.2.min.js"></script>
		<script src="js/jquery-migrate-1.2.1.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="http://maps.google.com/maps/api/js?key=AIzaSyDDZJO4F0d17RnFoi1F2qtw4wn6Wcaqxao&amp;sensor=false&amp;language=en"></script>		<script src="js/gmap3.min.js"></script>
		<script src="js/bootstrap-hover-dropdown.min.js"></script>
		<script src="js/owl.carousel.min.js"></script>
		<script src="js/css_browser_selector.min.js"></script>
		<script src="js/echo.min.js"></script>
		<script src="js/jquery.easing-1.3.min.js"></script>
		<script src="js/bootstrap-slider.min.js"></script>
	    <script src="js/jquery.raty.min.js"></script>
	    <script src="js/jquery.prettyPhoto.min.js"></script>
	    <script src="js/jquery.customSelect.min.js"></script>
	    <script src="js/wow.min.js"></script>
        <script src="js/buttons.js"></script>
		<script src="js/scripts.js"></script>
    </body>
</html>
