
<!--Szybkie wyszukiwanie (menu_search, 106472.1)-->
<form action="/search.php" method="get" id="menu_search" class="col-md-4" {{if $xml->getItem("/shop/action/search/@url")}} action="{{$xml->getItemEscape("/shop/action/search/@url")}}"{{/if}}>
	<label class="d-md-none">
		<i class="icon-search"/>
	</label>
	<div>
		<div class="form-group">
			<input id="menu_search_text" type="text" name="text" class="catcomplete" placeholder="{{$txt['106472::59554_001a']}}" {{if $xml->getItem("/shop/page/search_params/text")}} value="{{$xml->getItemEscape("/shop/page/search_params/text/@value")}}" {{/if}}></input>
		</div>
		<button type="submit" >{{$txt['106472::59554_004']}}
		</button>
		<a {{assign "hrefAttributeTmp1" ""}}{{capture name="hrefAttributeTmp1" assign="hrefAttributeTmp1"}}/searching.php{{/capture}}{{if $xml->getItem("/shop/action/searching/@url")}}{{capture name="hrefAttributeTmp1" assign="hrefAttributeTmp1"}}{{$xml->getItemEscape("/shop/action/searching/@url")}}{{/capture}}{{/if}} title="{{$txt['106472::59554_004title']}}"  href="{{$hrefAttributeTmp1}}">{{$txt['106472::59554_004link']}}</a>
	</div>
</form>