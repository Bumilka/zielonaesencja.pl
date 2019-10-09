
<!--Górne menu (menu_top, 106526.1)-->
<div id="logo" class="col-md-4 d-flex align-items-center" {{if $xml->getItem("mask/top2/link/image/@src") and ( $xml->getItem("mask/top2/link/image/@width") gt (string)1 or $xml->getItem("mask/top2/link/image/@height") gt (string) 1)}} data-bg="{{$xml->getItemEscape("mask/top2/link/image/@src")}}"{{/if}}>
	<a href="{{$xml->getItemEscape("/shop/mask/top/link/@href")}}" target="{{$xml->getItemEscape("/shop/mask/top/link/@target")}}">
		{{if  $xml->getItem("/shop/mask/top/link/image/@src")}}
			<img src="{{$xml->getItemEscape("/shop/mask/top/link/image/@src")}}" alt="{{$xml->getItemEscape("/shop/mask/top/link/description")}}" width="{{$xml->getItemEscape("mask/top/link/image/@width")}}" height="{{$xml->getItemEscape("mask/top/link/image/@height")}}"></img>
		{{/if}}
		</a>
</div>
{{if  $xml->getItem("/shop/mask/@rwd_pc")}}
	{{if  $xml->getItem("/shop/mask/@rwd_tablet")}}
	{{/if}}
	{{if  $xml->getItem("/shop/mask/@rwd_smartphone")}}
	{{/if}}
{{/if}}
