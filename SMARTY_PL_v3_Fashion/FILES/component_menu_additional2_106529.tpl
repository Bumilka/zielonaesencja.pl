
<!--Dodatkowe linki (strefa 2) (menu_additional2, 106529.1)-->
<div id="menu_categories2" class="mb-4">
	{{if  $xml->getItem("navigation/descendant::item[@ni=/shop/navigation/current/@ni]/item") and  $xml->getItem("page/@type") == (string)'search'}}
		<a {{assign "hrefAttributeTmp1" ""}}  class="menu_categories_label menu_go_up" {{if $xml->getItem("navigation/descendant::item[@ni=/shop/navigation/current/@ni]/../@link")}}{{capture name="hrefAttributeTmp1" assign="hrefAttributeTmp1"}}{{$xml->getItemEscape("navigation/descendant::item[@ni=/shop/navigation/current/@ni]/../@link")}}{{/capture}}{{else}}{{capture name="hrefAttributeTmp1" assign="hrefAttributeTmp1"}}/search.php?text=+{{/capture}}{{/if}}  href="{{$hrefAttributeTmp1}}">{{$xml->getItem("navigation/descendant::item[@ni=/shop/navigation/current/@ni]/@name")}}</a>
		<ul>
			{{foreach from=$xml->getList("navigation/descendant::item[@ni=/shop/navigation/current/@ni]/item") item=loop14}}
				<li>
					<a {{if $loop14->getItem("@link")}} href="{{$loop14->getItemEscape("@link")}}"{{/if}}{{if $loop14->getItem("@target")}} target="{{$loop14->getItemEscape("@target")}}"{{/if}}{{if $loop14->getItem("@ni") == (string) $loop14->getItem("/shop/navigation/current/@ni")}} class="active"{{/if}}>{{$loop14->getItem("@name")}}</a>
				</li>
			{{/foreach}}
		</ul>
	{{elseif  $xml->getItem("navigation/descendant::item[@ni=/shop/navigation/current/@ni]") and !( $xml->getItem("navigation/descendant::item[@ni=/shop/navigation/current/@ni]/item")) and  $xml->getItem("page/@type") == (string)'search'}}
		{{if  $xml->getItem("navigation/descendant::item[@ni=/shop/navigation/current/@ni]/../@ni")}}
			<a {{assign "hrefAttributeTmp2" ""}}  class="menu_categories_label menu_go_up" {{if $xml->getItem("navigation/descendant::item[@ni=/shop/navigation/current/@ni]/../../@link")}}{{capture name="hrefAttributeTmp2" assign="hrefAttributeTmp2"}}{{$xml->getItemEscape("navigation/descendant::item[@ni=/shop/navigation/current/@ni]/../../@link")}}{{/capture}}{{elseif $xml->getItem("navigation/descendant::item[@ni=/shop/navigation/current/@ni]/../@link")}}{{capture name="hrefAttributeTmp2" assign="hrefAttributeTmp2"}}{{$xml->getItemEscape("navigation/descendant::item[@ni=/shop/navigation/current/@ni]/../@link")}}{{/capture}}{{else}}{{capture name="hrefAttributeTmp2" assign="hrefAttributeTmp2"}}/search.php?text=+{{/capture}}{{/if}}  href="{{$hrefAttributeTmp2}}">{{$xml->getItem("navigation/descendant::item[@ni=/shop/navigation/current/@ni]/../@name")}}</a>
		{{else}}
			<a class="menu_categories_label" href="/categories.php">{{$txt['106529::n71830txt']}}</a>
		{{/if}}
		<ul>
			{{foreach from=$xml->getList("navigation/descendant::item[@ni=/shop/navigation/current/@ni]/../item") item=loop44}}
				<li>
					<a {{if $loop44->getItem("@link")}} href="{{$loop44->getItemEscape("@link")}}"{{/if}}{{if $loop44->getItem("@target")}} target="{{$loop44->getItemEscape("@target")}}"{{/if}}{{if $loop44->getItem("@ni") == (string) $loop44->getItem("/shop/navigation/current/@ni")}} class="active"{{/if}}>{{$loop44->getItem("@name")}}</a>
				</li>
			{{/foreach}}
		</ul>
	{{else}}
		<a class="menu_categories_label" href="/categories.php">{{$txt['106529::n71830txt']}}</a>
		<ul>
			{{foreach from=$xml->getList("navigation/item") item=loop61}}
				<li {{if $loop61->getItem("@ni") == (string) $loop61->getItem("/shop/navigation/current/@ni")}} class="active"{{/if}}>
					<a {{if $loop61->getItem("@link")}} href="{{$loop61->getItemEscape("@link")}}"{{/if}}{{if $loop61->getItem("@target")}} target="{{$loop61->getItemEscape("@target")}}"{{/if}}>{{$loop61->getItem("@name")}}</a>
				</li>
			{{/foreach}}
		</ul>
	{{/if}}
</div>