
<!--Menu powiadomienia (menu_notice, 107640.1)-->
{{if  $xml->getItem("/shop/order_edit/@order_number")}}
	{{if  $xml->getItem("/shop/action_alert") or  $xml->getItem("/shop/page/projector/product/exchange/@exchange_id") or ( $xml->getItem("/shop/page/@type")  == (string) 'order2') or ( $xml->getItem("/shop/page/@type")  == (string) 'order-wrappers')}}
		<div id="menu_preloader" class="menu_preolader_1">
			{{if  $xml->getItem("/shop/action_alert/@type")  == (string) 'order_edit'}}
				<div id="menu_notice">
					<h2>{{$txt['107640::menu_notice_1']}}
					</h2>
					<strong>{{$txt['107640::menu_notice_order_edit']}}</strong>
					<div class="menu_notice_button">
						<button onclick="$('#dialog_close').click();" class="btn-small menu_notice_button">{{$txt['107640::menu_notice_order_edit_button']}}
						</button>
					</div>
					<div class="clearboth">
					</div>
				</div>
			{{elseif  $xml->getItem("/shop/action_alert/@type")  == (string) 'order_edit_auction'}}
				<div id="menu_notice">
					<h2>{{$txt['107640::order_edit_auction_1']}}
					</h2>
					<strong>{{$txt['107640::menu_notice_order_edit_auction']}}</strong>
					<div class="menu_notice_button">
						<button onclick="$('#dialog_close').click();" class="btn-small menu_notice_button">{{$txt['107640::menu_notice_order_edit_auction_button']}}
						</button>
					</div>
					<div class="clearboth">
					</div>
				</div>
			{{elseif  $xml->getItem("/shop/action_alert/@type")  == (string) 'order1'}}
				<div id="menu_notice">
					<h2>{{$txt['107640::order_order1_1']}}
					</h2>
					<strong>{{$txt['107640::menu_notice_order1']}}</strong>
					<div class="menu_notice_button">
						<button onclick="$('#dialog_close').click();" class="btn-small menu_notice_button">{{$txt['107640::menu_notice_order_order1_button']}}
						</button>
					</div>
					<div class="clearboth">
					</div>
				</div>
			{{elseif  $xml->getItem("/shop/page/@type")  == (string) 'order2'}}
				<div id="menu_notice">
					<h2>{{$txt['107640::order_order2_1']}}
					</h2>
					<strong>{{$txt['107640::menu_notice_order2']}}</strong>
					<div class="menu_notice_button">
						<button onclick="$('#dialog_close').click();" class="btn-small menu_notice_button">{{$txt['107640::menu_notice_order_order2_button']}}
						</button>
					</div>
					<div class="clearboth">
					</div>
				</div>
			{{elseif  $xml->getItem("/shop/page/@type")  == (string) 'order-wrappers'}}
				<div id="menu_notice">
					<h2>{{$txt['107640::order_order-wrappers_1']}}
					</h2>
					<strong>{{$txt['107640::menu_notice_order-wrappers']}}</strong>
					<div class="menu_notice_button">
						<button onclick="$('#dialog_close').click();" class="btn-small menu_notice_button">{{$txt['107640::menu_notice_order_order-wrappers_button']}}
						</button>
					</div>
					<div class="clearboth">
					</div>
				</div>
			{{elseif  $xml->getItem("/shop/action_alert/@type")  == (string) 'add_basket'}}
				<div id="menu_notice">
					<h2>{{$txt['107640::order_add_basket_1']}}
					</h2>
					<strong>{{$txt['107640::menu_notice_add_basket']}}</strong>
					<div class="menu_notice_button">
						<button onclick="$('#dialog_close').click();" class="btn-small menu_notice_button">{{$txt['107640::menu_notice_order_add_basket_button']}}
						</button>
					</div>
					<div class="clearboth">
					</div>
				</div>
			{{elseif  $xml->getItem("/shop/action_alert/@type")  == (string) 'change_basket'}}
				<div id="menu_notice">
					<h2>{{$txt['107640::order_change_basket_1']}}
					</h2>
					<strong>{{$txt['107640::menu_notice_change_basket']}}</strong>
					<div class="menu_notice_button">
						<button onclick="$('#dialog_close').click();" class="btn-small menu_notice_button">{{$txt['107640::menu_notice_order_change_basket_button']}}
						</button>
					</div>
					<div class="clearboth">
					</div>
				</div>
			{{elseif  $xml->getItem("page/projector/product/exchange/@exchange_id")}}
				<div id="menu_notice">
					<h2>{{$txt['107640::order_projctor_1']}}
					</h2>
					<strong>{{$txt['107640::menu_notice_projctor']}}</strong>
					<div class="menu_notice_button">
						<button onclick="$('#dialog_close').click();" class="btn-small menu_notice_button">{{$txt['107640::menu_notice_order_projctor_button']}}
						</button>
					</div>
					<div class="clearboth">
					</div>
				</div>
			{{/if}}
		</div>
	{{/if}}
{{/if}}

{{if  $xml->getItem("/shop/page/@type")  == (string) 'search' and (( $xml->getItem("/shop/page/sameday/@couriers_available")  == (string) 'true' and  $xml->getItem("/shop/page/sameday/@client_localized")  == (string) 'false') or ( $xml->getItem("/shop/page/nextday/@couriers_available")  == (string) 'true' and  $xml->getItem("/shop/page/nextday/@client_localized")  == (string) 'false'))}}
	<div id="xpress_toplayer">
		<div class="header_wrapper col-md-12">
			<h2>{{$txt['107640::547547_localization']}}
			</h2>
		</div>
		<div id="xpress_zipcode">
			<p class="col-md-12">{{$txt['107640::46475543_zipcode']}}
			</p>
			<div class="form-group">
				<div class="has-feedback has-required col-md-12 col-xs-12">
					<input id="xpress_zipcode" class="form-control validate" name="client_zipcode" data-validation="client_zipcode" data-validation-url="/ajax/client-new.php?validAjax=true" data-serialize="data-region" value="" required="required" type="text" data-region="client_region=1143020003" placeholder="{{$txt['107640::4656546_zipcode']}}"></input>
					<span class="form-control-feedback"></span>
				</div>
			</div>
			<div class="xpress_button_sub col-md-12">
				<a id="xpress_zipcode_submit" class="btn-small">{{$txt['107640::647457_ok']}}</a>
			</div>
			<p class="col-md-12">{{$txt['107640::464743424_geolocation1']}}
			</p>
			<div class="xpress_button_sub col-md-12">
				<a id="xpress_zipcode_geolocation" class="btn-small">{{$txt['107640::46346747_geolocation2']}}</a>
			</div>
		</div>
	</div>
	<div id="xpress_toplayer_error">
		<div class="header_wrapper col-md-12">
			<h2>{{$txt['107640::547547_localization']}}
			</h2>
		</div>
		<div id="xpress_zipcode">
			<p class="col-md-12">{{$txt['107640::46475543_notavailable1']}}
			</p>
			<p class="col-md-12">{{$txt['107640::46475543_notavailable2']}}
			</p>
			<div class="xpress_button_sub col-md-12">
				<a id="express_close_dialog" href="#" class="btn-small">{{$txt['107640::647457_ok']}}</a>
			</div>
		</div>
	</div>
{{/if}}

{{if  $xml->getItem("/shop/page[@type='prepaid']")}}
	<div id="menu_preloader" class="menu_preolader_2">
		<div id="menu_notice">
			<h2>{{$txt['107640::order_prepaid_1']}}
			</h2>
			<strong>{{$txt['107640::menu_notice_prepaid']}}</strong>
			<div class="menu_notice_button">
				<button {{assign "classAttributeTmp1" ""}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}prepaid_cancel{{/capture}} onclick="$('#dialog_close').click();"{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}btn-small prepaid_cancel{{/capture}}  class="{{$classAttributeTmp1}}">{{$txt['107640::menu_notice_prepaid_button1']}}
				</button>
				<button {{assign "classAttributeTmp2" ""}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}prepaid_confirm{{/capture}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}btn-small prepaid_confirm{{/capture}}  class="{{$classAttributeTmp2}}">{{$txt['107640::menu_notice_prepaid_button2']}}
				</button>
			</div>
			<div class="clearboth">
			</div>
		</div>
	</div>
{{/if}}
