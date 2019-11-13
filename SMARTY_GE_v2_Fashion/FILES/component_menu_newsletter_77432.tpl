
<!--Newsletter (menu_newsletter, 77432.1)-->
<div class="menu_newsletter clearfix" id="menu_newsletter">
	<form action="settings.php" method="post" class="row">
		<input id="mailing_action" name="mailing_action" value="add" type="hidden"/>
		<div class="newsletter_title leftpadding col-md-3 col-sm-12 hidden-phone">
			<strong>{{$txt['77432::53817_000']}}</strong>
			<span>{{$txt['77432::33013_nabie']}}</span>
		</div>
		<div class="col-md-6 col-sm-9 hidden-phone">
			<input name="mailing_email" type="text" placeholder="{{$txt['77432::33013_002bb']}}"></input>
			<input name="mailing_name" type="text" placeholder="{{$txt['77432::33013_002bc']}}"></input>
			<button type="submit" class="btn add_newsletter" title="{{$txt['77432::33013_006']}}">{{$txt['77432::33013_003']}}
			</button>
		</div>
		<div class="col-md-3 col-sm-3 col-xs-12 remove_link">
			<a href="/newsletter.php" class="btn-link remove_newsletter" title="{{$txt['77432::33013_007']}}">{{$txt['77432::33013_004']}}</a>
		</div>
	</form>
</div>