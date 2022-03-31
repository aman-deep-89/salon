<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
@include('layouts.partials.head')
@yield('style_sheets')
<!--//Metis Menu -->
</head> 
<body class="cbp-spmenu-push">
	<div class="main-content">
		@include('layouts.partials.sidebar')		
		@include('layouts.partials.header')		
		<!-- main content start-->
		<div id="page-wrapper">
			<div class="main-page">
				@yield('content')
			</div>
		</div>
		<!--footer-->
		@include('layouts.partials.footer')
        <!--//footer-->
	</div>
	@include('layouts.partials.footer_scripts')
	@yield('scripts')
</body>
</html>