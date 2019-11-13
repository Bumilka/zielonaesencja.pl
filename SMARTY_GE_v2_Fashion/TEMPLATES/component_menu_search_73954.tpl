
<!--Szybkie wyszukiwanie (menu_search, 73954.1)-->
<form action="search.php" method="get" id="menu_search" class="{{$txt['73954::59554_001class']}}">
	<div>
		<input id="menu_search_text" type="text" name="text" class="catcomplete" {{if $xml->getItem("/shop/page/search_params/text")}} value="{{$xml->getItemEscape("/shop/page/search_params/text/@value")}}" {{else}} placeholder="{{$txt['73954::59554_001a']}}" {{/if}}></input>
	</div>
	<button type="submit">{{$txt['73954::59554_004']}}
	</button>
	<a href="/searching.php" title="{{$txt['73954::59554_004title']}}">{{$txt['73954::59554_004link']}}</a>
</form>