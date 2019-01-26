<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Kitabxana</title>
	<link rel="stylesheet" type="text/css" href="/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="/css/stil.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	@yield('css')
</head>
<body>
	<img src="/images/1.jpg" width="100%" height="290">
	<div style="background: #B3FFFF; height: 40px;">
		<div class="menu">
			<table>
				<tr>
					@admin('super')
						<td><b><a href="/kitabxana/create">Kitab yukle</a></b></td>
					@endadmin
					<td><b><a href="/kitabxana">Kitabxana</a></b></td>
					<td><b><a href="/muzakire">Müzakirə</a></b></td>
				</tr>
			</table>
		</div>
    </div>
<div style="margin-top: 15px">
    @yield('content')
</div>

	<script type="text/javascript" src="/js/js.js"></script>
	@yield('js')
</body>
</html>