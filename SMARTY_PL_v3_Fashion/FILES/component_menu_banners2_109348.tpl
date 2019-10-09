
<!--Bannery sekcji 2 (menu_banners2, 109348.1)-->
{{if count( $xml->getList("commercial_banner2/link"))}}
	<section id="menu_banners2" >
		{{foreach from=$xml->getList("commercial_banner2/link") item=loop5}}
			<div class="menu_button_wrapper">
				{{if !( $loop5->getItem("html"))}}
					{{if  $loop5->getItem("@href")}}
						<a {{assign "targetAttributeTmp1" ""}}{{capture name="targetAttributeTmp1" assign="targetAttributeTmp1"}}_self{{/capture}}{{if $loop5->getItem("@target")}}{{capture name="targetAttributeTmp1" assign="targetAttributeTmp1"}}{{$loop5->getItemEscape("@target")}}{{/capture}}{{/if}} href="{{$loop5->getItemEscape("@href")}}" {{if $loop5->getItem("text")}} title="{{$loop5->getItemEscape("text")}}"{{/if}}  target="{{$targetAttributeTmp1}}">
							{{if  $loop5->getItem("image") or  $loop5->getItem("image_desktop") or  $loop5->getItem("image_tablet") or  $loop5->getItem("image_mobile")}}
								<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/loader.gif?r=1570606968" alt="{{$loop5->getItemEscape("text")}}" src="{{$loop5->getItemEscape("image/@src")}}" {{if $loop5->getItem("image_desktop") or $loop5->getItem("image_tablet") or $loop5->getItem("image_mobile")}} class="rwd-src" {{/if}}{{if $loop5->getItem("image/@src")}} src="{{$loop5->getItemEscape("image/@src")}}" {{/if}}{{if $loop5->getItem("image_desktop/@src")}} data-src_desktop="{{$loop5->getItemEscape("image_desktop/@src")}}" {{/if}}{{if $loop5->getItem("image_tablet/@src")}} data-src_tablet="{{$loop5->getItemEscape("image_tablet/@src")}}" {{/if}}{{if $loop5->getItem("image_mobile/@src")}} data-src_mobile="{{$loop5->getItemEscape("image_mobile/@src")}}" {{/if}}></img>
							{{else}}
								{{$loop5->getItem("text")}}
							{{/if}}
							</a>
					{{else}}
						{{if  $loop5->getItem("image") or  $loop5->getItem("image_desktop") or  $loop5->getItem("image_tablet") or  $loop5->getItem("image_mobile")}}
							<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/loader.gif?r=1570606968" alt="{{$loop5->getItemEscape("text")}}" src="{{$loop5->getItemEscape("image/@src")}}" {{if $loop5->getItem("image_desktop") or $loop5->getItem("image_tablet") or $loop5->getItem("image_mobile")}} class="rwd-src" {{/if}}{{if $loop5->getItem("image/@src")}} src="{{$loop5->getItemEscape("image/@src")}}" {{/if}}{{if $loop5->getItem("image_desktop/@src")}} data-src_desktop="{{$loop5->getItemEscape("image_desktop/@src")}}" {{/if}}{{if $loop5->getItem("image_tablet/@src")}} data-src_tablet="{{$loop5->getItemEscape("image_tablet/@src")}}" {{/if}}{{if $loop5->getItem("image_mobile/@src")}} data-src_mobile="{{$loop5->getItemEscape("image_mobile/@src")}}" {{/if}}></img>
						{{else}}
							{{$loop5->getItem("text")}}
						{{/if}}
					{{/if}}
				{{else}}
					{{$loop5->getItem("html")}}
				{{/if}}
			</div>
		{{/foreach}}
	</section>
{{/if}}
