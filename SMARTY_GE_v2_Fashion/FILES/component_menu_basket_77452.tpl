
<!--Menu koszyka (menu_basket, 77452.1)-->
<div id="menu_basket" class="{{$txt['77452::59554_001class']}}{{if $xml->getItem("basket[@count='0']")}} empty_bsket{{/if}}">
	<a href="/basketedit.php?mode=1">
		<span class="basket_count hidden-phone">
			({{$xml->getItemEscape("basket/@count")}})</span>{{$txt['77452::53667_001befcount']}}
		<strong>{{$xml->getItem("basket/@cost_formatted")}}
			{{if  $xml->getItem("@points_used")  gt (string) 0}}
				<small>{{$txt['77452::56431_plus']}}{{$xml->getItem("basket/@points_used")}}{{$txt['77452::56431_pkt']}}</small>
			{{/if}}
			</strong>
		{{if  $xml->getItem("basket/@count")  gt (string) 0}}
			<span class="badge badge-important visible-phone">{{$xml->getItem("basket/@count")}}</span>
		{{/if}}
		</a>
	<div>
		{{if  $xml->getItem("basket/@login")}}
			<a class="account_link link hidden-phone" href="/login.php" rel="nofollow" title="{{$txt['77452::53667_001']}}">{{$txt['77452::53667_001']}}</a>
		{{else}}
			<a class="account_link link hidden-phone" href="/login.php" rel="nofollow" title="{{$txt['77452::53667_001']}}">{{$txt['77452::53667_002']}}</a>
		{{/if}}
		{{$txt['77452::53667_001sep']}}
		{{if  $xml->getItem("wishes/@count")}}
			<a class="wishes_link link" href="/basketedit.php?mode=2" rel="nofollow" title="{{$txt['77452::56431_ulubione_tit']}}">
				<span class="hidden-phone">{{$txt['77452::56431_ulubione']}}({{$xml->getItemEscape("wishes/@count")}})</span>
				<span class="badge badge-important visible-phone">{{$xml->getItemEscape("wishes/@count")}}</span></a>
		{{else}}
			<a class="wishes_link link" href="/basketedit.php?mode=2" rel="nofollow" title="{{$txt['77452::56431_ulubione_tit']}}">
				<span class="hidden-phone">{{$txt['77452::56431_ulubione']}}(0)</span></a>
		{{/if}}
	</div>
</div>