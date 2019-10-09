
<!--Menu koszyka (menu_basket, 108155.1)-->
<div id="menu_basket" class="{{$txt['108155::59554_001class']}}{{if $xml->getItem("basket[@count='0']")}} empty_bsket{{/if}}">
	<div>
		{{if  $xml->getItem("basket/@login")}}
			<a class="account_link link d-none d-md-inline" href="/login.php" rel="nofollow" title="{{$txt['108155::53667_001']}}">{{$txt['108155::53667_001']}}</a>
		{{else}}
			<a class="account_link link d-none d-md-inline" href="/login.php" rel="nofollow" title="{{$txt['108155::53667_001']}}">{{$txt['108155::53667_002']}}</a>
		{{/if}}
		{{$txt['108155::53667_001sep']}}
		{{if  $xml->getItem("wishes/@count")}}
			<a class="wishes_link link" href="/basketedit.php?mode=2" rel="nofollow" title="{{$txt['108155::56431_ulubione_tit']}}">
				<span class="d-none d-md-inline">{{$txt['108155::56431_ulubione']}}
					<span class="fav_count">({{$xml->getItemEscape("wishes/@count")}})</span></span>
				<span class="badge badge-important d-sm-none">{{$xml->getItemEscape("wishes/@count")}}</span></a>
		{{else}}
			<a class="wishes_link link" href="/basketedit.php?mode=2" rel="nofollow" title="{{$txt['108155::56431_ulubione_tit']}}">
				<span class="d-none d-md-inline">{{$txt['108155::56431_ulubione']}}
					<span class="fav_count">(0)</span></span></a>
		{{/if}}
	</div>
	<a href="/basketedit.php?mode=1">{{$txt['108155::53667_001befcount']}}
		<strong>{{$xml->getItem("basket/@cost_formatted")}}
			{{if  $xml->getItem("@points_used")  gt (string) 0}}
				<small>{{$txt['108155::56431_plus']}}{{$xml->getItem("basket/@points_used")}}{{$txt['108155::56431_pkt']}}</small>
			{{/if}}
			</strong>
		<span class="basket_count d-none d-md-inline">
			({{$xml->getItemEscape("basket/@count")}})</span>
		{{if  $xml->getItem("basket/@count")  gt (string) 0}}
			<span class="badge badge-important visible-tablet">{{$xml->getItem("basket/@count")}}</span>
		{{/if}}
		</a>
</div>
{{if  $xml->getItem("/shop/action/sites/@session_share_disabled")}}
	<script>
                    app_shop.vars.session_share = "{{$xml->getItemEscape("/shop/action/sites/@session_share")}}";
                    {{if  $xml->getItem("/shop/action/sites/site")}}
                    app_shop.vars.sites = [
{{foreach from=$xml->getList("/shop/action/sites/site") item=loop52}}{{if !( $loop52@iteration  == (string)1)}},{{/if}}"{{$loop52->getItemEscape("@url")}}"
{{/foreach}}
];
                    {{/if}}	</script>

{{/if}}

{{if  $xml->getItem("/shop/page/@cache_html")  == (string) 'true' }}
	<script>
                    app_shop.vars.cache_html = true;
                	</script>

{{/if}}

{{if  $xml->getItem("/shop/basket/product")}}
	{{if  $xml->getItem("/shop/page/@cache_basketwishes")}}
	{{/if}}
	{{if  $xml->getItem("/shop/page/@cache_basket")}}
	{{/if}}
{{/if}}
