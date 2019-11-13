
<!--Buttony reklamowe (menu_buttons, 77612.1)-->
{{if count( $xml->getList("commercial_button/link"))}}
	<div id="menu_buttons">
		{{foreach from=$xml->getList("commercial_button/link") item=loop6}}
			<div class="menu_button_wrapper">
				{{if !( $loop6->getItem("html"))}}
					{{if  $loop6->getItem("@href")}}
						<a {{assign "targetAttributeTmp1" ""}}{{capture name="targetAttributeTmp1" assign="targetAttributeTmp1"}}_self{{/capture}}{{if $loop6->getItem("@target")}}{{capture name="targetAttributeTmp1" assign="targetAttributeTmp1"}}{{$loop6->getItemEscape("@target")}}{{/capture}}{{/if}} href="{{$loop6->getItemEscape("@href")}}" {{if $loop6->getItem("text")}} title="{{$loop6->getItemEscape("text")}}"{{/if}}  target="{{$targetAttributeTmp1}}">
							{{if  $loop6->getItem("image") or  $loop6->getItem("image_desktop") or  $loop6->getItem("image_tablet") or  $loop6->getItem("image_mobile")}}
								<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/loader.gif?r=1570606529" alt="{{$loop6->getItemEscape("text")}}" src="{{$loop6->getItemEscape("image/@src")}}" {{if $loop6->getItem("image_desktop") or $loop6->getItem("image_tablet") or $loop6->getItem("image_mobile")}} class="rwd-src" {{/if}}{{if $loop6->getItem("image/@src")}} src="{{$loop6->getItemEscape("image/@src")}}" {{/if}}{{if $loop6->getItem("image_desktop/@src")}} data-src_desktop="{{$loop6->getItemEscape("image_desktop/@src")}}" {{/if}}{{if $loop6->getItem("image_tablet/@src")}} data-src_tablet="{{$loop6->getItemEscape("image_tablet/@src")}}" {{/if}}{{if $loop6->getItem("image_mobile/@src")}} data-src_mobile="{{$loop6->getItemEscape("image_mobile/@src")}}" {{/if}}></img>
							{{else}}
								{{$loop6->getItem("text")}}
							{{/if}}
							</a>
					{{else}}
						{{if  $loop6->getItem("image") or  $loop6->getItem("image_desktop") or  $loop6->getItem("image_tablet") or  $loop6->getItem("image_mobile")}}
							<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/loader.gif?r=1570606529" alt="{{$loop6->getItemEscape("text")}}" src="{{$loop6->getItemEscape("image/@src")}}" {{if $loop6->getItem("image_desktop") or $loop6->getItem("image_tablet") or $loop6->getItem("image_mobile")}} class="rwd-src" {{/if}}{{if $loop6->getItem("image/@src")}} src="{{$loop6->getItemEscape("image/@src")}}" {{/if}}{{if $loop6->getItem("image_desktop/@src")}} data-src_desktop="{{$loop6->getItemEscape("image_desktop/@src")}}" {{/if}}{{if $loop6->getItem("image_tablet/@src")}} data-src_tablet="{{$loop6->getItemEscape("image_tablet/@src")}}" {{/if}}{{if $loop6->getItem("image_mobile/@src")}} data-src_mobile="{{$loop6->getItemEscape("image_mobile/@src")}}" {{/if}}></img>
						{{else}}
							{{$loop6->getItem("text")}}
						{{/if}}
					{{/if}}
				{{else}}
					{{$loop6->getItem("html")}}
				{{/if}}
			</div>
		{{/foreach}}
	</div>
{{/if}}
