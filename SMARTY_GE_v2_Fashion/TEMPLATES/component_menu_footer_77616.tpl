
<!--Stopka (menu_footer, 77616.1)-->
<div {{assign "classAttributeTmp1" ""}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}n60972_main{{/capture}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}n60972_main {{$txt['77616::59554_001class']}}{{/capture}}  class="{{$classAttributeTmp1}}">
	<div class="n60972_main_s">
		{{if count( $xml->getList("commercial_banner2/link"))}}
			<div class="platnosci_54388">
				{{foreach from=$xml->getList("commercial_banner2/link") item=loop8}}
					{{if !( $loop8->getItem("html"))}}
						{{if  $loop8->getItem("@href")}}
							<a {{assign "targetAttributeTmp2" ""}}{{capture name="targetAttributeTmp2" assign="targetAttributeTmp2"}}_self{{/capture}}{{if $loop8->getItem("@target")}}{{capture name="targetAttributeTmp2" assign="targetAttributeTmp2"}}{{$loop8->getItemEscape("@target")}}{{/capture}}{{/if}} href="{{$loop8->getItemEscape("@href")}}" {{if $loop8->getItem("text")}} title="{{$loop8->getItemEscape("text")}}"{{/if}}  target="{{$targetAttributeTmp2}}">
								{{if  $loop8->getItem("image") or  $loop8->getItem("image_desktop") or  $loop8->getItem("image_tablet") or  $loop8->getItem("image_mobile")}}
									<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/loader.gif?r=1570606529" alt="{{$loop8->getItemEscape("text")}}" src="{{$loop8->getItemEscape("image/@src")}}" {{if $loop8->getItem("image_desktop") or $loop8->getItem("image_tablet") or $loop8->getItem("image_mobile")}} class="rwd-src" {{/if}}{{if $loop8->getItem("image/@src")}} src="{{$loop8->getItemEscape("image/@src")}}" {{/if}}{{if $loop8->getItem("image_desktop/@src")}} data-src_desktop="{{$loop8->getItemEscape("image_desktop/@src")}}" {{/if}}{{if $loop8->getItem("image_tablet/@src")}} data-src_tablet="{{$loop8->getItemEscape("image_tablet/@src")}}" {{/if}}{{if $loop8->getItem("image_mobile/@src")}} data-src_mobile="{{$loop8->getItemEscape("image_mobile/@src")}}" {{/if}}></img>
								{{else}}
									{{$loop8->getItem("text")}}
								{{/if}}
								</a>
						{{else}}
							{{if  $loop8->getItem("image") or  $loop8->getItem("image_desktop") or  $loop8->getItem("image_tablet") or  $loop8->getItem("image_mobile")}}
								<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/loader.gif?r=1570606529" alt="{{$loop8->getItemEscape("text")}}" src="{{$loop8->getItemEscape("image/@src")}}" {{if $loop8->getItem("image_desktop") or $loop8->getItem("image_tablet") or $loop8->getItem("image_mobile")}} class="rwd-src" {{/if}}{{if $loop8->getItem("image/@src")}} src="{{$loop8->getItemEscape("image/@src")}}" {{/if}}{{if $loop8->getItem("image_desktop/@src")}} data-src_desktop="{{$loop8->getItemEscape("image_desktop/@src")}}" {{/if}}{{if $loop8->getItem("image_tablet/@src")}} data-src_tablet="{{$loop8->getItemEscape("image_tablet/@src")}}" {{/if}}{{if $loop8->getItem("image_mobile/@src")}} data-src_mobile="{{$loop8->getItemEscape("image_mobile/@src")}}" {{/if}}></img>
							{{else}}
								{{$loop8->getItem("text")}}
							{{/if}}
						{{/if}}
					{{else}}
						{{$loop8->getItem("html")}}
					{{/if}}
				{{/foreach}}
			</div>
		{{/if}}
		{{if  $xml->getItem("/shop/iai/@button_src")}}
			{{if  $xml->getItem("/shop/iai/@is_mobile_application")  == (string) 'yes'}}
				<span class="n53399_iailogo">
					<img class="n53399_iailogo" src="{{$xml->getItemEscape("/shop/iai/@button_src")}}" alt="{{$xml->getItemEscape("/shop/iai/@button_text")}}"></img></span>
			{{else}}
				<a {{assign "targetAttributeTmp3" ""}}  class="n53399_iailogo"{{capture name="targetAttributeTmp3" assign="targetAttributeTmp3"}}_blank{{/capture}}{{if $xml->getItem("/shop/iai/@button_target")}}{{capture name="targetAttributeTmp3" assign="targetAttributeTmp3"}}{{$xml->getItemEscape("/shop/iai/@button_target")}}{{/capture}}{{/if}} href="{{$xml->getItemEscape("/shop/iai/@button_link")}}" title="{{$xml->getItemEscape("/shop/iai/@button_text")}}"  target="{{$targetAttributeTmp3}}">
					<img class="n53399_iailogo" src="{{$xml->getItemEscape("/shop/iai/@button_src")}}" alt="{{$xml->getItemEscape("/shop/iai/@button_text")}}"></img></a>
			{{/if}}
		{{/if}}
	</div>
	<div class="footer_additions" id="n58182_footer_additions">
		<span class="footer_comments">{{$txt['77616::56648_text']}}</span>
	</div>
</div>
<div class="rwdswicher">
	<a href="#" class="rs-link" data-always-visible="false" data-link-desktop="{{$txt['77616::00001']}}" data-link-responsive="{{$txt['77616::00002']}}"></a>
</div>