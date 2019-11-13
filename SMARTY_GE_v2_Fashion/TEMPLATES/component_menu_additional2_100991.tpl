
<!--Dodatkowe linki (strefa 2) (menu_additional2, 100991.1)-->
{{if  $xml->getItem("navigation2")}}
	{{capture name="setNameAndGfx" assign="setNameAndGfx"}}
		{{$txt['100991::set_menu_gfx']}}
	{{/capture}}
	{{capture name="hideMenuCOP" assign="hideMenuCOP"}}
		{{$txt['100991::hide_menu_COP']}}
	{{/capture}}
	{{capture name="accordionMenu" assign="accordionMenu"}}
		{{$txt['100991::accordion_Menu']}}
	{{/capture}}
	{{if !($hideMenuCOP) or ( $hideMenuCOP and !((  $xml->getItem("page/@type")  == (string) 'basketedit') or (  $xml->getItem("page/@type") == (string)'login' and  $xml->getItem("page/login/onceorder/@display") == (string)'y') or ( (( $xml->getItem("page/@type")  == (string) 'client-new') and !( $xml->getItem("page/client-data/@register") == (string)'true') and !( $xml->getItem("page/client-data/@edit") == (string)'true'))) or (  $xml->getItem("page/@type")  == (string) 'order1') or (  $xml->getItem("page/@type")  == (string) 'order-nonstandardized') or (  $xml->getItem("page/@type")  == (string) 'pickup-sites') or (  $xml->getItem("page/@type")  == (string) 'order2') or (  $xml->getItem("page/@type")  == (string) 'client-save') or (  $xml->getItem("page/@type")  == (string) 'prepaid') or (  $xml->getItem("page/@type")  == (string) 'order-payment') or (  $xml->getItem("page/@type")  == (string) 'order-newpayment')) ) }}
		{{capture name="current_item" assign="current_item"}}
			{{$xml->getItemEscape("/shop/navigation2/current/@ni")}}
		{{/capture}}
		<div id="menu_categories2" class="menu_box">
			<h2>
				<a href="/categories.php" title="{{$txt['100991::menu_cat_labeltitle']}}">{{$txt['100991::menu_cat_labeltxt']}}</a>
			</h2>
			<div class="menu_sub_box">
				<ul class="lvl_1">
					{{foreach from=$xml->getList("navigation2/item") item=loop18}}
						<li {{if ( $loop18->getItem("@ni") == (string) $loop18->getItem("/shop/navigation/current/@ni")) or ( $loop18->getItem("item//@ni") == (string) $loop18->getItem("/shop/navigation/current/@ni"))}} class="active" {{/if}} id="ni_{{$loop18->getItemEscape("@ni")}}">
							{{if  $loop18->getItem("@link")}}
								{{literal}}
								<a href="{{/literal}}{{$loop18->getItemEscape("@link")}}{{literal}}" target="{{/literal}}{{$loop18->getItemEscape("@target")}}{{literal}}" class="{{/literal}}lvl_1 {{if $loop18->getItem("@expand") == (string)'y'}}expand {{/if}}{{if $loop18->getItem("@reload") == (string)'y'}}reload{{/if}}{{literal}}" title="{{/literal}}{{$loop18->getItemEscape("@name")}}{{literal}}" >{{/literal}}
								{{else}}
									{{literal}}
									<span {{/literal}}{{literal}} title="{{/literal}}{{$loop18->getItemEscape("@name")}}{{literal}}" class="{{/literal}}lvl_1 {{if $loop18->getItem("@expand") == (string)'y'}}expand {{/if}}{{if $loop18->getItem("@reload") == (string)'y'}}reload{{/if}}{{literal}}" >{{/literal}}
									{{/if}}
									{{if  $loop18->getItem("@gfx")}}
										<img alt="{{$loop18->getItem("@name")}}" src="{{$loop18->getItemEscape("@gfx")}}" {{if ( ( $loop18->getItem("@ni") == (string) $current_item) or ( $loop18->getItem("item/@ni") == (string) $current_item) or ( $loop18->getItem("item/item/@ni") == (string) $current_item) or ( $loop18->getItem("item/item/item/@ni") == (string) $current_item) ) and $loop18->getItem("@gfx_active")}} src="{{$loop18->getItemEscape("@gfx_active")}}" {{/if}}{{if $loop18->getItem("@gfx_onmouseover")}} data-onmouseover="{{$loop18->getItem("@gfx_onmouseover")}}" {{/if}}></img>
									{{/if}}
									{{if !( $loop18->getItem("@gfx")) or ( $loop18->getItem("@gfx") and $setNameAndGfx)}}
										<span>{{$loop18->getItem("@name")}}</span>
									{{/if}}
									{{if  $loop18->getItem("@link")}}
										{{literal}}</a>{{/literal}}
								{{else}}
									{{literal}}</span>{{/literal}}
							{{/if}}
							{{if ( $loop18->getItem("@expand")  == (string) 'y' and  $loop18->getItem("item"))  or (!( $loop18->getItem("@reload")) and  $loop18->getItem("item"))  or  (( ( $loop18->getItem("@ni")  == (string) $current_item) or ( $loop18->getItem("item/@ni")  == (string) $current_item)  or ( $loop18->getItem("item/item/@ni")  == (string) $current_item)  or ( $loop18->getItem("item/item/item/@ni")  == (string) $current_item) ) and  $loop18->getItem("item"))}}
								<ul {{if ( $loop18->getItem("@expand") == (string) 'y' and $loop18->getItem("item")) or ( ( $loop18->getItem("@ni") == (string) $current_item) or ( $loop18->getItem("item/@ni") == (string) $current_item) or ( $loop18->getItem("item/item/@ni") == (string) $current_item) or ( $loop18->getItem("item/item/item/@ni") == (string) $current_item) )}} style="display: block" {{/if}} class="lvl_2 {{if $loop18->getItem("@expand") == (string)'y'}}expand {{/if}}{{if $loop18->getItem("@reload") == (string)'y'}}reload{{/if}}">
									{{foreach from=$loop18->getList("item") item=loop68}}
										<li {{if ( $loop68->getItem("@ni") == (string) $loop68->getItem("/shop/navigation/current/@ni")) or ( $loop68->getItem("item//@ni") == (string) $loop68->getItem("/shop/navigation/current/@ni"))}} class="active" {{/if}} id="ni_{{$loop68->getItemEscape("@ni")}}">
											{{if  $loop68->getItem("@link")}}
												{{literal}}
												<a href="{{/literal}}{{$loop68->getItemEscape("@link")}}{{literal}}" class="{{/literal}}lvl_2 {{if $loop68->getItem("@expand") == (string)'y'}}expand {{/if}}{{if $loop68->getItem("@reload") == (string)'y'}}reload{{/if}}{{literal}}" target="{{/literal}}{{$loop68->getItemEscape("@target")}}{{literal}}" title="{{/literal}}{{$loop68->getItemEscape("@name")}}{{literal}}" >{{/literal}}
												{{else}}
													{{literal}}
													<span {{/literal}}{{literal}}" class="{{/literal}}lvl_2 {{if $loop68->getItem("@expand") == (string)'y'}}expand {{/if}}{{if $loop68->getItem("@reload") == (string)'y'}}reload{{/if}}{{literal}} title="{{/literal}}{{$loop68->getItemEscape("@name")}}{{literal}}" >{{/literal}}
													{{/if}}
													{{if  $loop68->getItem("@gfx")}}
														<img alt="{{$loop68->getItem("@name")}}" src="{{$loop68->getItemEscape("@gfx")}}" {{if ( ( $loop68->getItem("@ni") == (string) $current_item) or ( $loop68->getItem("item/@ni") == (string) $current_item) or ( $loop68->getItem("item/item/@ni") == (string) $current_item) or ( $loop68->getItem("item/item/item/@ni") == (string) $current_item) ) and $loop68->getItem("@gfx_active")}} src="{{$loop68->getItemEscape("@gfx_active")}}" {{/if}}{{if $loop68->getItem("@gfx_onmouseover")}} data-onmouseover="{{$loop68->getItem("@gfx_onmouseover")}}" {{/if}}></img>
													{{/if}}
													{{if !( $loop68->getItem("@gfx")) or ( $loop68->getItem("@gfx") and $setNameAndGfx)}}
														<span>{{$loop68->getItem("@name")}}</span>
													{{/if}}
													{{if  $loop68->getItem("@link")}}
														{{literal}}</a>{{/literal}}
												{{else}}
													{{literal}}</span>{{/literal}}
											{{/if}}
											{{if ( $loop68->getItem("@expand")  == (string) 'y' and  $loop68->getItem("item"))  or (!( $loop68->getItem("@reload")) and  $loop68->getItem("item"))  or  (( ( $loop68->getItem("@ni")  == (string) $current_item) or ( $loop68->getItem("item/@ni")  == (string) $current_item)  or ( $loop68->getItem("item/item/@ni")  == (string) $current_item)  or ( $loop68->getItem("item/item/item/@ni")  == (string) $current_item) ) and  $loop68->getItem("item"))}}
												<ul {{if ( $loop68->getItem("@expand") == (string) 'y' and $loop68->getItem("item")) or ( ( $loop68->getItem("@ni") == (string) $current_item) or ( $loop68->getItem("item/@ni") == (string) $current_item) or ( $loop68->getItem("item/item/@ni") == (string) $current_item) or ( $loop68->getItem("item/item/item/@ni") == (string) $current_item) )}} style="display: block" {{/if}} class="lvl_3 {{if $loop68->getItem("@expand") == (string)'y'}}expand {{/if}}{{if $loop68->getItem("@reload") == (string)'y'}}reload{{/if}}">
													{{foreach from=$loop68->getList("item") item=loop120}}
														<li {{if ( $loop120->getItem("@ni") == (string) $loop120->getItem("/shop/navigation/current/@ni")) or ( $loop120->getItem("item//@ni") == (string) $loop120->getItem("/shop/navigation/current/@ni"))}} class="active" {{/if}} id="ni_{{$loop120->getItemEscape("@ni")}}">
															{{if  $loop120->getItem("@link")}}
																{{literal}}
																<a href="{{/literal}}{{$loop120->getItemEscape("@link")}}{{literal}}" class="{{/literal}}lvl_3 {{if $loop120->getItem("@expand") == (string)'y'}}expand {{/if}}{{if $loop120->getItem("@reload") == (string)'y'}}reload{{/if}}{{literal}}" target="{{/literal}}{{$loop120->getItemEscape("@target")}}{{literal}}" title="{{/literal}}{{$loop120->getItemEscape("@name")}}{{literal}}" >{{/literal}}
																{{else}}
																	{{literal}}
																	<span {{/literal}}{{literal}}" class="{{/literal}}lvl_3 {{if $loop120->getItem("@expand") == (string)'y'}}expand {{/if}}{{if $loop120->getItem("@reload") == (string)'y'}}reload{{/if}}{{literal}} title="{{/literal}}{{$loop120->getItemEscape("@name")}}{{literal}}" >{{/literal}}
																	{{/if}}
																	{{if  $loop120->getItem("@gfx")}}
																		<img alt="{{$loop120->getItem("@name")}}" src="{{$loop120->getItemEscape("@gfx")}}" {{if ( ( $loop120->getItem("@ni") == (string) $current_item) or ( $loop120->getItem("item/@ni") == (string) $current_item) or ( $loop120->getItem("item/item/@ni") == (string) $current_item) or ( $loop120->getItem("item/item/item/@ni") == (string) $current_item) ) and $loop120->getItem("@gfx_active")}} src="{{$loop120->getItemEscape("@gfx_active")}}" {{/if}}{{if $loop120->getItem("@gfx_onmouseover")}} data-onmouseover="{{$loop120->getItem("@gfx_onmouseover")}}" {{/if}}></img>
																	{{/if}}
																	{{if !( $loop120->getItem("@gfx")) or ( $loop120->getItem("@gfx") and $setNameAndGfx)}}
																		<span>{{$loop120->getItem("@name")}}</span>
																	{{/if}}
																	{{if  $loop120->getItem("@link")}}
																		{{literal}}</a>{{/literal}}
																{{else}}
																	{{literal}}</span>{{/literal}}
															{{/if}}
															{{if ( $loop120->getItem("@expand")  == (string) 'y' and  $loop120->getItem("item"))  or (!( $loop120->getItem("@reload")) and  $loop120->getItem("item"))  or  (( ( $loop120->getItem("@ni")  == (string) $current_item) or ( $loop120->getItem("item/@ni")  == (string) $current_item)  or ( $loop120->getItem("item/item/@ni")  == (string) $current_item)  or ( $loop120->getItem("item/item/item/@ni")  == (string) $current_item) ) and  $loop120->getItem("item"))}}
																<ul {{if ( $loop120->getItem("@expand") == (string) 'y' and $loop120->getItem("item")) or ( ( $loop120->getItem("@ni") == (string) $current_item) or ( $loop120->getItem("item/@ni") == (string) $current_item) or ( $loop120->getItem("item/item/@ni") == (string) $current_item) or ( $loop120->getItem("item/item/item/@ni") == (string) $current_item) )}} style="display: block" {{/if}} class="lvl_4 {{if $loop120->getItem("@expand") == (string)'y'}}expand {{/if}}{{if $loop120->getItem("@reload") == (string)'y'}}reload{{/if}}">
																	{{foreach from=$loop120->getList("item") item=loop171}}
																		<li {{if ( $loop171->getItem("@ni") == (string) $loop171->getItem("/shop/navigation/current/@ni")) or ( $loop171->getItem("item//@ni") == (string) $loop171->getItem("/shop/navigation/current/@ni"))}} class="active" {{/if}} id="ni_{{$loop171->getItemEscape("@ni")}}">
																			{{if  $loop171->getItem("@link")}}
																				{{literal}}
																				<a href="{{/literal}}{{$loop171->getItemEscape("@link")}}{{literal}}" class="{{/literal}}lvl_4 {{if $loop171->getItem("@expand") == (string)'y'}}expand {{/if}}{{if $loop171->getItem("@reload") == (string)'y'}}reload{{/if}}{{literal}}" target="{{/literal}}{{$loop171->getItemEscape("@target")}}{{literal}}" title="{{/literal}}{{$loop171->getItemEscape("@name")}}{{literal}}" >{{/literal}}
																				{{else}}
																					{{literal}}
																					<span {{/literal}}{{literal}}" class="{{/literal}}lvl_4 {{if $loop171->getItem("@expand") == (string)'y'}}expand {{/if}}{{if $loop171->getItem("@reload") == (string)'y'}}reload{{/if}}{{literal}} title="{{/literal}}{{$loop171->getItemEscape("@name")}}{{literal}}" >{{/literal}}
																					{{/if}}
																					{{if  $loop171->getItem("@gfx")}}
																						<img alt="{{$loop171->getItem("@name")}}" src="{{$loop171->getItemEscape("@gfx")}}" {{if ( ( $loop171->getItem("@ni") == (string) $current_item) or ( $loop171->getItem("item/@ni") == (string) $current_item) or ( $loop171->getItem("item/item/@ni") == (string) $current_item) or ( $loop171->getItem("item/item/item/@ni") == (string) $current_item) ) and $loop171->getItem("@gfx_active")}} src="{{$loop171->getItemEscape("@gfx_active")}}" {{/if}}{{if $loop171->getItem("@gfx_onmouseover")}} data-onmouseover="{{$loop171->getItem("@gfx_onmouseover")}}" {{/if}}></img>
																					{{/if}}
																					{{if !( $loop171->getItem("@gfx")) or ( $loop171->getItem("@gfx") and $setNameAndGfx)}}
																						<span>{{$loop171->getItem("@name")}}</span>
																					{{/if}}
																					{{if  $loop171->getItem("@link")}}
																						{{literal}}</a>{{/literal}}
																				{{else}}
																					{{literal}}</span>{{/literal}}
																			{{/if}}
																		</li>
																	{{/foreach}}
																	{{if ( count( $loop120->getList("item"))  gt (string) 1 ) and  $loop120->getItem("@link") and  $loop120->getItem("@display_all")  == (string) 'y'}}
																		<li class="display_all">
																			<a class="display_all" href=" {{if $loop120->getItem("@display_all_link")}}{{$loop120->getItemEscape("@display_all_link")}}{{else}}{{$loop120->getItemEscape("@link")}}{{/if}} ">
																				<span class="menu_all">{{$txt['100991::56412_003']}}</span></a>
																		</li>
																	{{/if}}
																</ul>
															{{/if}}
														</li>
													{{/foreach}}
													{{if ( count( $loop68->getList("item"))  gt (string) 1 ) and  $loop68->getItem("@link") and  $loop68->getItem("@display_all")  == (string) 'y'}}
														<li class="display_all">
															<a class="display_all" href=" {{if $loop68->getItem("@display_all_link")}}{{$loop68->getItemEscape("@display_all_link")}}{{else}}{{$loop68->getItemEscape("@link")}}{{/if}} ">
																<span class="menu_all">{{$txt['100991::56412_003']}}</span></a>
														</li>
													{{/if}}
												</ul>
											{{/if}}
										</li>
									{{/foreach}}
									{{if ( count( $loop18->getList("item"))  gt (string) 1 ) and  $loop18->getItem("@link") and  $loop18->getItem("@display_all")  == (string) 'y'}}
										<li class="display_all">
											<a class="display_all" href=" {{if $loop18->getItem("@display_all_link")}}{{$loop18->getItemEscape("@display_all_link")}}{{else}}{{$loop18->getItemEscape("@link")}}{{/if}} ">
												<span class="menu_all">{{$txt['100991::56412_003']}}</span></a>
										</li>
									{{/if}}
								</ul>
							{{/if}}
						</li>
					{{/foreach}}
				</ul>
			</div>
		</div>
	{{/if}}
{{/if}}
