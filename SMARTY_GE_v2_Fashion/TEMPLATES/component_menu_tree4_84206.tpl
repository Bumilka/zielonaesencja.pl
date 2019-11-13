
<!--Menu - Drzewo 4 (menu_tree4, 84206.1)-->
{{capture name="setMenuGfx_links_footer" assign="setMenuGfx_links_footer"}}
	{{$txt['84206::set_menu_gfx_links_footer']}}
{{/capture}}

<div id="footer_links" class="row clearfix">
	<div id="footer_links_sub" class="col-md-9 col-sm-12">
		{{if  $xml->getItem("navigation4/item")}}
			<div class="row">
				{{foreach from=$xml->getList("navigation4/item") item=loop11}}
					<ul class="footer_links col-md-4 col-xs-12" id="links_footer_{{$loop11@iteration}}">
						<li>
							{{if  $loop11->getItem("@link")}}
								<a {{assign "onmouseoutAttributeTmp1" ""}}  href="{{$loop11->getItemEscape("@link")}}" {{if $loop11->getItem("@target")}} target="{{$loop11->getItemEscape("@target")}}" {{/if}}{{if ( $loop11->getItem("@gfx") or $loop11->getItem("@gfx_active")) and $loop11->getItem("@gfx_onmouseover")}} onmouseover="$(this).children('img').attr('src','{{$loop11->getItemEscape("@gfx_onmouseover")}}');" {{if $loop11->getItem("@gfx_active")}}{{capture name="onmouseoutAttributeTmp1" assign="onmouseoutAttributeTmp1"}}$(this).children('img').attr('src','{{$loop11->getItemEscape("@gfx")}}');{{/capture}}{{else}}{{capture name="onmouseoutAttributeTmp1" assign="onmouseoutAttributeTmp1"}}$(this).children('img').attr('src','{{$loop11->getItemEscape("@gfx")}}');{{/capture}}{{/if}}{{/if}}  onmouseout="{{$onmouseoutAttributeTmp1}}">
									{{if  $loop11->getItem("@gfx") or  $loop11->getItem("@gfx_active")}}
										{{if $setMenuGfx_links_footer}}
											<img alt="{{$loop11->getItem("@name")}}" {{if (( $loop11->getItem("@ni")) == (string) ( $loop11->getItem("/shop/navigation/current/@ni"))) or (( $loop11->getItem("item/@ni")) == (string) ( $loop11->getItem("/shop/navigation/current/@ni"))) or (( $loop11->getItem("item/item/@ni")) == (string) ( $loop11->getItem("/shop/navigation/current/@ni"))) or (( $loop11->getItem("item/item/item/@ni")) == (string) ( $loop11->getItem("/shop/navigation/current/@ni")))}} src="{{$loop11->getItemEscape("@gfx_active")}}" {{else}} src="{{$loop11->getItemEscape("@gfx")}}" {{/if}}></img>
											<span>{{$loop11->getItem("@name")}}</span>
										{{else}}
											<img alt="{{$loop11->getItem("@name")}}" {{if (( $loop11->getItem("@ni")) == (string) ( $loop11->getItem("/shop/navigation/current/@ni"))) or (( $loop11->getItem("item/@ni")) == (string) ( $loop11->getItem("/shop/navigation/current/@ni"))) or (( $loop11->getItem("item/item/@ni")) == (string) ( $loop11->getItem("/shop/navigation/current/@ni"))) or (( $loop11->getItem("item/item/item/@ni")) == (string) ( $loop11->getItem("/shop/navigation/current/@ni")))}} src="{{$loop11->getItemEscape("@gfx_active")}}" {{else}} src="{{$loop11->getItemEscape("@gfx")}}" {{/if}}></img>
										{{/if}}
									{{else}}
										{{$loop11->getItem("@name")}}
									{{/if}}
									</a>
							{{else}}
								<span {{assign "onmouseoutAttributeTmp2" ""}}{{if ( $loop11->getItem("@gfx") or $loop11->getItem("@gfx_active")) and $loop11->getItem("@gfx_onmouseover")}} onmouseover="$(this).children('img').attr('src','{{$loop11->getItemEscape("@gfx_onmouseover")}}');" {{if $loop11->getItem("@gfx_active")}}{{capture name="onmouseoutAttributeTmp2" assign="onmouseoutAttributeTmp2"}}$(this).children('img').attr('src','{{$loop11->getItemEscape("@gfx")}}');{{/capture}}{{else}}{{capture name="onmouseoutAttributeTmp2" assign="onmouseoutAttributeTmp2"}}$(this).children('img').attr('src','{{$loop11->getItemEscape("@gfx")}}');{{/capture}}{{/if}}{{/if}}  onmouseout="{{$onmouseoutAttributeTmp2}}">
									{{if  $loop11->getItem("@gfx") or  $loop11->getItem("@gfx_active")}}
										{{if $setMenuGfx_links_footer}}
											<img alt="{{$loop11->getItem("@name")}}" {{if (( $loop11->getItem("@ni")) == (string) ( $loop11->getItem("/shop/navigation/current/@ni"))) or (( $loop11->getItem("item/@ni")) == (string) ( $loop11->getItem("/shop/navigation/current/@ni"))) or (( $loop11->getItem("item/item/@ni")) == (string) ( $loop11->getItem("/shop/navigation/current/@ni"))) or (( $loop11->getItem("item/item/item/@ni")) == (string) ( $loop11->getItem("/shop/navigation/current/@ni")))}} src="{{$loop11->getItemEscape("@gfx_active")}}" {{else}} src="{{$loop11->getItemEscape("@gfx")}}" {{/if}}></img>
											<span>{{$loop11->getItem("@name")}}</span>
										{{else}}
											<img alt="{{$loop11->getItem("@name")}}" {{if (( $loop11->getItem("@ni")) == (string) ( $loop11->getItem("/shop/navigation/current/@ni"))) or (( $loop11->getItem("item/@ni")) == (string) ( $loop11->getItem("/shop/navigation/current/@ni"))) or (( $loop11->getItem("item/item/@ni")) == (string) ( $loop11->getItem("/shop/navigation/current/@ni"))) or (( $loop11->getItem("item/item/item/@ni")) == (string) ( $loop11->getItem("/shop/navigation/current/@ni")))}} src="{{$loop11->getItemEscape("@gfx_active")}}" {{else}} src="{{$loop11->getItemEscape("@gfx")}}" {{/if}}></img>
										{{/if}}
									{{else}}
										{{$loop11->getItem("@name")}}
									{{/if}}
									</span>
							{{/if}}
							{{if  $loop11->getItem("item")}}
								<ul class="footer_links_sub">
									{{foreach from=$loop11->getList("item") item=loop94}}
										<li {{if $loop94->getItem("@gfx")}} class="link_gfx" {{/if}}>
											{{if  $loop94->getItem("@link")}}
												<a {{assign "onmouseoutAttributeTmp3" ""}}  href="{{$loop94->getItemEscape("@link")}}" {{if $loop94->getItem("@target")}} target="{{$loop94->getItemEscape("@target")}}" {{/if}}{{if ( $loop94->getItem("@gfx") or $loop94->getItem("@gfx_active")) and $loop94->getItem("@gfx_onmouseover")}} onmouseover="$(this).children('img').attr('src','{{$loop94->getItemEscape("@gfx_onmouseover")}}');" {{if $loop94->getItem("@gfx_active")}}{{capture name="onmouseoutAttributeTmp3" assign="onmouseoutAttributeTmp3"}}$(this).children('img').attr('src','{{$loop94->getItemEscape("@gfx")}}');{{/capture}}{{else}}{{capture name="onmouseoutAttributeTmp3" assign="onmouseoutAttributeTmp3"}}$(this).children('img').attr('src','{{$loop94->getItemEscape("@gfx")}}');{{/capture}}{{/if}}{{/if}}  onmouseout="{{$onmouseoutAttributeTmp3}}">
													{{if  $loop94->getItem("@gfx") or  $loop94->getItem("@gfx_active")}}
														{{if $setMenuGfx_links_footer}}
															<img alt="{{$loop94->getItem("@name")}}" {{if (( $loop94->getItem("@ni")) == (string) ( $loop94->getItem("/shop/navigation/current/@ni"))) or (( $loop94->getItem("item/@ni")) == (string) ( $loop94->getItem("/shop/navigation/current/@ni"))) or (( $loop94->getItem("item/item/@ni")) == (string) ( $loop94->getItem("/shop/navigation/current/@ni"))) or (( $loop94->getItem("item/item/item/@ni")) == (string) ( $loop94->getItem("/shop/navigation/current/@ni")))}} src="{{$loop94->getItemEscape("@gfx_active")}}" {{else}} src="{{$loop94->getItemEscape("@gfx")}}" {{/if}}></img>
															<span>{{$loop94->getItem("@name")}}</span>
														{{else}}
															<img alt="{{$loop94->getItem("@name")}}" {{if (( $loop94->getItem("@ni")) == (string) ( $loop94->getItem("/shop/navigation/current/@ni"))) or (( $loop94->getItem("item/@ni")) == (string) ( $loop94->getItem("/shop/navigation/current/@ni"))) or (( $loop94->getItem("item/item/@ni")) == (string) ( $loop94->getItem("/shop/navigation/current/@ni"))) or (( $loop94->getItem("item/item/item/@ni")) == (string) ( $loop94->getItem("/shop/navigation/current/@ni")))}} src="{{$loop94->getItemEscape("@gfx_active")}}" {{else}} src="{{$loop94->getItemEscape("@gfx")}}" {{/if}}></img>
														{{/if}}
													{{else}}
														{{$loop94->getItem("@name")}}
													{{/if}}
													</a>
											{{else}}
												<span {{assign "onmouseoutAttributeTmp4" ""}}{{if ( $loop94->getItem("@gfx") or $loop94->getItem("@gfx_active")) and $loop94->getItem("@gfx_onmouseover")}} onmouseover="$(this).children('img').attr('src','{{$loop94->getItemEscape("@gfx_onmouseover")}}');" {{if $loop94->getItem("@gfx_active")}}{{capture name="onmouseoutAttributeTmp4" assign="onmouseoutAttributeTmp4"}}$(this).children('img').attr('src','{{$loop94->getItemEscape("@gfx")}}');{{/capture}}{{else}}{{capture name="onmouseoutAttributeTmp4" assign="onmouseoutAttributeTmp4"}}$(this).children('img').attr('src','{{$loop94->getItemEscape("@gfx")}}');{{/capture}}{{/if}}{{/if}}  onmouseout="{{$onmouseoutAttributeTmp4}}">
													{{if  $loop94->getItem("@gfx") or  $loop94->getItem("@gfx_active")}}
														{{if $setMenuGfx_links_footer}}
															<img alt="{{$loop94->getItem("@name")}}" {{if (( $loop94->getItem("@ni")) == (string) ( $loop94->getItem("/shop/navigation/current/@ni"))) or (( $loop94->getItem("item/@ni")) == (string) ( $loop94->getItem("/shop/navigation/current/@ni"))) or (( $loop94->getItem("item/item/@ni")) == (string) ( $loop94->getItem("/shop/navigation/current/@ni"))) or (( $loop94->getItem("item/item/item/@ni")) == (string) ( $loop94->getItem("/shop/navigation/current/@ni")))}} src="{{$loop94->getItemEscape("@gfx_active")}}" {{else}} src="{{$loop94->getItemEscape("@gfx")}}" {{/if}}></img>
															<span>{{$loop94->getItem("@name")}}</span>
														{{else}}
															<img alt="{{$loop94->getItem("@name")}}" {{if (( $loop94->getItem("@ni")) == (string) ( $loop94->getItem("/shop/navigation/current/@ni"))) or (( $loop94->getItem("item/@ni")) == (string) ( $loop94->getItem("/shop/navigation/current/@ni"))) or (( $loop94->getItem("item/item/@ni")) == (string) ( $loop94->getItem("/shop/navigation/current/@ni"))) or (( $loop94->getItem("item/item/item/@ni")) == (string) ( $loop94->getItem("/shop/navigation/current/@ni")))}} src="{{$loop94->getItemEscape("@gfx_active")}}" {{else}} src="{{$loop94->getItemEscape("@gfx")}}" {{/if}}></img>
														{{/if}}
													{{else}}
														{{$loop94->getItem("@name")}}
													{{/if}}
													</span>
											{{/if}}
										</li>
									{{/foreach}}
								</ul>
							{{/if}}
						</li>
					</ul>
				{{/foreach}}
				{{if  $xml->getItem("opinions/service") or  $xml->getItem("insurances/service")}}
					<div class="col-md-4 col-xs-12">
						{{if  $xml->getItem("insurances/service")}}
							<div id="menu_insurances">
								{{foreach from=$xml->getList("insurances/service") item=loop188}}
									<div class="menu_insurances_item">{{$loop188->getItem("sealbox_html")}}
									</div>
								{{/foreach}}
							</div>
						{{/if}}
					</div>
				{{/if}}
			</div>
		{{/if}}
	</div>
	<div class="menu_contact_wrapper col-md-3 col-sm-12">
		<ul id="menu_contact" class="footer_links">
			<li class="contact_label">
				<span>{{$txt['84206::30042_094']}}</span>
			</li>
			{{if  $xml->getItem("/shop/contact/contact_nodes/node[@type='phone'][1]")}}
				<li class="contact_phone">
					<a href="{{$xml->getItemEscape("/shop/contact/contact_nodes/node[@type='phone'][1]/@link")}}">{{$xml->getItemEscape("/shop/contact/contact_nodes/node[@type='phone'][1]/@value")}}</a>
				</li>
			{{/if}}
			{{if  $xml->getItem("/shop/contact/contact_nodes/node[@type='text'][1]")}}
				<li class="contact_text">
					<span>{{$xml->getItemEscape("/shop/contact/contact_nodes/node[@type='text'][1]/@value")}}</span>
				</li>
			{{/if}}
			{{if  $xml->getItem("/shop/contact/contact_nodes/node[@type='mail'][1]")}}
				<li class="contact_title">
					<h2 class="contact_mail">
						<span>{{$txt['84206::30042_ema']}}</span>
					</h2>
				</li>
				<li class="contact_mail">
					<a href="{{$xml->getItemEscape("/shop/contact/contact_nodes/node[@type='mail'][1]/@link")}}">{{$xml->getItemEscape("/shop/contact/contact_nodes/node[@type='mail'][1]/@value")}}</a>
				</li>
			{{/if}}
			<li class="contact_more visible-phone">
				<a href="/contact.php">{{$txt['84206::74377_link_more']}}</a>
			</li>
		</ul>
	</div>
</div>