
<!--Menu - Drzewo 4 (menu_tree4, 106616.1)-->
{{capture name="hideAdress" assign="hideAdress"}}
	{{$txt['106616::hideAdress_62075']}}
{{/capture}}

<div {{assign "classAttributeTmp1" ""}}  id="footer_links" {{if count( $xml->getList("navigation4/item")) == (string) 1 and ( $xml->getItem("/shop/action/shop_information/@order_link_active") == (string)'y' or $xml->getItem("/shop/action/shipping_cost/@order_link_active") == (string)'y' or $xml->getItem("/shop/action/payment_methods/@order_link_active") == (string)'y' or $xml->getItem("/shop/action/terms/@order_link_active") == (string)'y' or $xml->getItem("/shop/action/private_policy/@order_link_active") == (string)'y' or $xml->getItem("/shop/action/order_cancel/@order_link_active") == (string)'y')}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}{{$txt['106616::35001_00_links_class']}}{{literal}} {{/literal}}{{$txt['106616::35001_00_links_class_four']}}{{/capture}}{{elseif count( $xml->getList("navigation4/item")) == (string) 2 and ( $xml->getItem("/shop/action/shop_information/@order_link_active") == (string)'n' and $xml->getItem("/shop/action/shipping_cost/@order_link_active") == (string)'n' and $xml->getItem("/shop/action/payment_methods/@order_link_active") == (string)'n' and $xml->getItem("/shop/action/terms/@order_link_active") == (string)'n' and $xml->getItem("/shop/action/private_policy/@order_link_active") == (string)'n' and $xml->getItem("/shop/action/order_cancel/@order_link_active") == (string)'n')}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}{{$txt['106616::35001_00_links_class']}}{{literal}} {{/literal}}{{$txt['106616::35001_00_links_class_four']}}{{/capture}}{{else}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}{{$txt['106616::35001_00_links_class']}}{{/capture}}{{/if}}  class="{{$classAttributeTmp1}}">
	<ul {{assign "classAttributeTmp2" ""}}  id="menu_orders"{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}footer_links col-md-4 col-sm-6 col-12{{/capture}}{{if count( $xml->getList("navigation4/item")) == (string) 1 and ( $xml->getItem("/shop/action/shop_information/@order_link_active") == (string)'y' or $xml->getItem("/shop/action/shipping_cost/@order_link_active") == (string)'y' or $xml->getItem("/shop/action/payment_methods/@order_link_active") == (string)'y' or $xml->getItem("/shop/action/terms/@order_link_active") == (string)'y' or $xml->getItem("/shop/action/private_policy/@order_link_active") == (string)'y' or $xml->getItem("/shop/action/order_cancel/@order_link_active") == (string)'y')}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}footer_links col-md-4 col-sm-6 col-12 orders_bg{{/capture}}{{elseif count( $xml->getList("navigation4/item")) == (string) 2 and ( $xml->getItem("/shop/action/shop_information/@order_link_active") == (string)'n' and $xml->getItem("/shop/action/shipping_cost/@order_link_active") == (string)'n' and $xml->getItem("/shop/action/payment_methods/@order_link_active") == (string)'n' and $xml->getItem("/shop/action/terms/@order_link_active") == (string)'n' and $xml->getItem("/shop/action/private_policy/@order_link_active") == (string)'n' and $xml->getItem("/shop/action/order_cancel/@order_link_active") == (string)'n')}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}footer_links col-md-4 col-sm-6 col-12 orders_bg{{/capture}}{{elseif count( $xml->getList("navigation4/item")) == (string) 0}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}footer_links col-md-4 col-sm-6 col-12 orders_bg{{/capture}}{{/if}}  class="{{$classAttributeTmp2}}">
		<li>
			<a id="menu_orders_header" class=" footer_links_label" href="{{$xml->getItemEscape("/shop/action/login/@url")}}" title="{{$txt['106616::35001_00']}}">{{$txt['106616::30042_09993_orders']}}</a>
			<ul class="footer_links_sub">
				<li id="order_status" class="menu_orders_item">{{$txt['106616::476457_order_status_icon']}}
					<a href="{{$xml->getItemEscape("/shop/action/orderOpen/@url")}}">{{$txt['106616::476457_order_status']}}</a>
				</li>
				<li id="order_status2" class="menu_orders_item">{{$txt['106616::476457_order_tracking_icon']}}
					<a href="{{$xml->getItemEscape("/shop/action/orderOpen/@url")}}">{{$txt['106616::476457_order_tracking']}}</a>
				</li>
				<li id="order_rma" class="menu_orders_item">{{$txt['106616::476457_order_rma_icon']}}
					<a href="{{$xml->getItemEscape("/shop/action/addRma/@url")}}">{{$txt['106616::476457_order_rma']}}</a>
				</li>
				<li id="order_returns" class="menu_orders_item">{{$txt['106616::476457_order_returns_icon']}}
					<a href="{{$xml->getItemEscape("/shop/action/addReturn/@url")}}">{{$txt['106616::476457_order_returns']}}</a>
				</li>
				<li id="order_exchange" class="menu_orders_item">{{$txt['106616::476457_order_exch75678ange']}}
					<a href="{{$xml->getItemEscape("/shop/action/returnExchangeLink/@url")}}">{{$txt['106616::476457_order_exchange']}}</a>
				</li>
			</ul>
		</li>
	</ul>
	<ul id="menu_account" class="footer_links col-md-4 col-sm-6 col-12">
		<li>
			<a id="menu_account_header" class=" footer_links_label" href="{{$xml->getItemEscape("/shop/action/login/@url")}}" title="{{$txt['106616::35001_00']}}">{{$txt['106616::30042_09993_account']}}</a>
			<ul class="footer_links_sub">
				{{if  $xml->getItem("basket/@login")}}
					<li id="account_register" class="menu_orders_item">{{$txt['106616::476457_acc_account_info_icon']}}
						<a href="{{$xml->getItemEscape("/shop/action/loginEdit/@url")}}">{{$txt['106616::476457_acc_account_info']}}</a>
					</li>
				{{else}}
					{{foreach from=$xml->getList("/shop/action/registration_options/wholesale") item=loop84}}
						<li id="account_register_wholesale" class="menu_orders_item">{{$txt['106616::476457_acc_register_wholesaler_icon']}}
							<a href="{{$loop84->getItemEscape("@registration_url")}}">{{$txt['106616::476457_acc_register_wholesale']}}</a>
						</li>
					{{/foreach}}
					{{foreach from=$xml->getList("/shop/action/registration_options/retail") item=loop95}}
						<li id="account_register_retail" class="menu_orders_item">{{$txt['106616::476457_acc_register_icon']}}
							<a href="{{$loop95->getItemEscape("@registration_url")}}">{{$txt['106616::476457_acc_register']}}</a>
						</li>
					{{/foreach}}
				{{/if}}
				<li id="account_orders" class="menu_orders_item">{{$txt['106616::476457_acc_orders_icon']}}
					<a href="{{$xml->getItemEscape("/shop/action/clientOrders/@url")}}">{{$txt['106616::476457_acc_orders']}}</a>
				</li>
				<li id="account_basket" class="menu_orders_item">{{$txt['106616::476457_acc_basket_icon']}}
					<a href="{{$xml->getItemEscape("/shop/action/basket/@url")}}">{{$txt['106616::476457_acc_basket']}}</a>
				</li>
				<li id="account_observed" class="menu_orders_item">{{$txt['106616::476457_acc_observed_icon']}}
					<a href="{{$xml->getItemEscape("/shop/action/observed/@url")}}">{{$txt['106616::476457_acc_observed']}}</a>
				</li>
				<li id="account_history" class="menu_orders_item">{{$txt['106616::476457_acc_history_icon']}}
					<a href="{{$xml->getItemEscape("/shop/action/clientOrders/@url")}}">{{$txt['106616::476457_acc_history']}}</a>
				</li>
				<li id="account_rebates" class="menu_orders_item">{{$txt['106616::476457_acc_rebates_icon']}}
					<a href="{{$xml->getItemEscape("/shop/action/clientRebate/@url")}}">{{$txt['106616::476457_acc_rebates']}}</a>
				</li>
				<li id="account_newsletter" class="menu_orders_item">{{$txt['106616::476457_acc_newsletter_icon']}}
					<a href="{{$xml->getItemEscape("/shop/action/newsletter/@url")}}">{{$txt['106616::476457_acc_newsletter']}}</a>
				</li>
			</ul>
		</li>
	</ul>
	{{if  $xml->getItem("/shop/action/shop_information/@order_link_active") == (string)'y' or  $xml->getItem("/shop/action/shipping_cost/@order_link_active") == (string)'y' or  $xml->getItem("/shop/action/payment_methods/@order_link_active") == (string)'y' or  $xml->getItem("/shop/action/terms/@order_link_active") == (string)'y' or  $xml->getItem("/shop/action/private_policy/@order_link_active") == (string)'y' or  $xml->getItem("/shop/action/order_cancel/@order_link_active") == (string)'y'}}
		<ul id="menu_regulations" class="footer_links col-md-4 col-sm-6 col-12">
			<li>
				<span class="footer_links_label">{{$txt['106616::74377_000']}}</span>
				<ul class="footer_links_sub">
					{{if  $xml->getItem("/shop/action/shop_information/@order_link_active") == (string)'y' and !( $xml->getItem("/shop/action/shop_information/@url")  == (string) '')}}
						<li>
							<a href="{{$xml->getItemEscape("/shop/action/shop_information/@url")}}">{{$txt['106616::74377_001']}}</a>
						</li>
					{{/if}}
					{{if  $xml->getItem("/shop/action/shipping_cost/@order_link_active") == (string)'y' and !( $xml->getItem("/shop/action/shipping_cost/@url")  == (string) '')}}
						<li>
							<a href="{{$xml->getItemEscape("/shop/action/shipping_cost/@url")}}">{{$txt['106616::74377_002']}}</a>
						</li>
					{{/if}}
					{{if  $xml->getItem("/shop/action/payment_methods/@order_link_active") == (string)'y' and !( $xml->getItem("/shop/action/payment_methods/@url")  == (string) '')}}
						<li>
							<a href="{{$xml->getItemEscape("/shop/action/payment_methods/@url")}}">{{$txt['106616::74377_003']}}</a>
						</li>
					{{/if}}
					{{if  $xml->getItem("/shop/action/terms/@order_link_active") == (string)'y' and !( $xml->getItem("/shop/action/terms/@url")  == (string) '')}}
						<li>
							<a href="{{$xml->getItemEscape("/shop/action/terms/@url")}}">{{$txt['106616::74377_004']}}</a>
						</li>
					{{/if}}
					{{if  $xml->getItem("/shop/action/private_policy/@order_link_active") == (string)'y' and !( $xml->getItem("/shop/action/private_policy/@url")  == (string) '')}}
						<li>
							<a href="{{$xml->getItemEscape("/shop/action/private_policy/@url")}}">{{$txt['106616::74377_005']}}</a>
						</li>
					{{/if}}
					{{if  $xml->getItem("/shop/action/order_cancel/@order_link_active") == (string)'y' and !( $xml->getItem("/shop/action/order_cancel/@url")  == (string) '')}}
						<li>
							<a href="{{$xml->getItemEscape("/shop/action/order_cancel/@url")}}">{{$txt['106616::74377_006']}}</a>
						</li>
					{{/if}}
				</ul>
			</li>
		</ul>
	{{/if}}
	{{if  $xml->getItem("navigation4/item")}}
		{{foreach from=$xml->getList("navigation4/item") item=loop214}}
			<ul class="footer_links col-md-4 col-sm-6 col-12" id="links_footer_{{$loop214@iteration}}">
				<li>
					{{if  $loop214->getItem("@link")}}
						{{literal}}
						<a href="{{/literal}}{{$loop214->getItemEscape("@link")}}{{literal}}" target="{{/literal}}{{$loop214->getItemEscape("@target")}}{{literal}}" title="{{/literal}}{{$loop214->getItemEscape("@name")}}{{literal}}" class="footer_links_label{{/literal}}{{literal}}" >{{/literal}}
						{{else}}
							{{literal}}
							<span {{/literal}}{{literal}} title="{{/literal}}{{$loop214->getItemEscape("@name")}}{{literal}}" class="footer_links_label{{/literal}}{{literal}}" >{{/literal}}
							{{/if}}
							{{if  $loop214->getItem("@gfx")}}
								<img alt="{{$loop214->getItem("@name")}}" src="{{$loop214->getItemEscape("@gfx")}}" {{if $loop214->getItem("@gfx_onmouseover")}} data-onmouseover="{{$loop214->getItem("@gfx_onmouseover")}}" {{/if}}></img>
							{{/if}}
							{{if !( $loop214->getItem("@gfx"))}}
								<span>{{$loop214->getItem("@name")}}</span>
							{{/if}}
							{{if  $loop214->getItem("@link")}}
								{{literal}}</a>{{/literal}}
						{{else}}
							{{literal}}</span>{{/literal}}
					{{/if}}
					{{if  $loop214->getItem("item")}}
						<ul class="footer_links_sub">
							{{foreach from=$loop214->getList("item") item=loop251}}
								<li>
									{{if  $loop251->getItem("@link")}}
										{{literal}}
										<a{{/literal}}{{literal}} href="{{/literal}}{{$loop251->getItemEscape("@link")}}{{literal}}" target="{{/literal}}{{$loop251->getItemEscape("@target")}}{{literal}}" title="{{/literal}}{{$loop251->getItemEscape("@name")}}{{literal}}" >{{/literal}}
										{{else}}
											{{literal}}
											<span{{/literal}}{{literal}} title="{{/literal}}{{literal}}" >{{/literal}}
											{{/if}}
											{{if  $loop251->getItem("@gfx")}}
												<img alt="{{$loop251->getItem("@name")}}" src="{{$loop251->getItemEscape("@gfx")}}" {{if $loop251->getItem("@gfx_onmouseover")}} data-onmouseover="{{$loop251->getItem("@gfx_onmouseover")}}" {{/if}}></img>
											{{/if}}
											{{if !( $loop251->getItem("@gfx"))}}
												<span>{{$loop251->getItem("@name")}}</span>
											{{/if}}
											{{if  $loop251->getItem("@link")}}
												{{literal}}</a>{{/literal}}
										{{else}}
											{{literal}}</span>{{/literal}}
									{{/if}}
								</li>
							{{/foreach}}
						</ul>
					{{/if}}
				</li>
			</ul>
		{{/foreach}}
		{{if  $xml->getItem("opinions/service") or  $xml->getItem("insurances/service")}}
			{{if  $xml->getItem("insurances/service")}}
				<div id="menu_insurances" class="col-md-6 col-12 mb-4">
					{{foreach from=$xml->getList("insurances/service") item=loop295}}
						<div class="menu_insurances_item">{{$loop295->getItem("sealbox_html")}}
						</div>
					{{/foreach}}
				</div>
			{{/if}}
		{{/if}}
	{{/if}}
</div>