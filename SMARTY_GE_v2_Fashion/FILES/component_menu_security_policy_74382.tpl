
<!--Polityka bezpieczeństwa (menu_security_policy, 74382.1)-->
{{if (  $xml->getItem("page/@type")  == (string) 'basketedit') or (  $xml->getItem("page/@type") == (string)'login' and  $xml->getItem("page/login/onceorder/@display") == (string)'y') or ( (( $xml->getItem("page/@type")  == (string) 'client-new') and !( $xml->getItem("page/client-data/@edit") == (string)'true') )) or (  $xml->getItem("page/@type")  == (string) 'order1') or (  $xml->getItem("page/@type")  == (string) 'order-nonstandardized') or (  $xml->getItem("page/@type")  == (string) 'pickup-sites') or (  $xml->getItem("page/@type")  == (string) 'order2') or (  $xml->getItem("page/@type")  == (string) 'client-save') or (  $xml->getItem("page/@type")  == (string) 'prepaid') or (  $xml->getItem("page/@type")  == (string) 'order-payment') or (  $xml->getItem("page/@type")  == (string) 'order-newpayment')}}
	<div id="menu_security_policy" class="menu_box">
		<h2>{{$txt['74382::menu_security_policy_01']}}
		</h2>
		<div class="menu_sub_box">
			<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/iai_security.png?r=1570606529" alt="iai-security"/>
			<p>{{$txt['74382::menu_security_policy_02']}}
			</p>
			{{if  $xml->getItem("/shop/action/shop_information/@order_link_active") == (string)'y' or  $xml->getItem("/shop/action/shipping_cost/@order_link_active") == (string)'y' or  $xml->getItem("/shop/action/payment_methods/@order_link_active") == (string)'y' or  $xml->getItem("/shop/action/terms/@order_link_active") == (string)'y' or  $xml->getItem("/shop/action/private_policy/@order_link_active") == (string)'y' or  $xml->getItem("/shop/action/order_cancel/@order_link_active") == (string)'y'}}
				<p>{{$txt['74382::basketedit_policy1']}}
					<a target="_blank" href="{{$xml->getItemEscape("/shop/action/terms/@url")}}">{{$txt['74382::basketedit_policy2']}}</a>{{$txt['74382::basketedit_policy3']}}
					<a target="_blank" href="{{$xml->getItemEscape("/shop/action/private_policy/@url")}}">{{$txt['74382::basketedit_policy4']}}</a>{{$txt['74382::basketedit_policy5']}}
					<a target="_blank" href="{{$xml->getItemEscape("/shop/action/order_cancel/@url")}}">{{$txt['74382::basketedit_policy6']}}</a>{{$txt['74382::basketedit_policy7']}}
				</p>
				<p>{{$txt['74382::basketedit_policy8']}}
					<a target="_blank" href="{{$xml->getItemEscape("/shop/action/shop_information/@url")}}">{{$txt['74382::basketedit_policy9']}}</a>{{$txt['74382::basketedit_policy3a']}}
					<a target="_blank" href="{{$xml->getItemEscape("/shop/action/shipping_cost/@url")}}">{{$txt['74382::basketedit_policy10']}}</a>{{$txt['74382::basketedit_policy11']}}
					<a target="_blank" href="{{$xml->getItemEscape("/shop/action/payment_methods/@url")}}">{{$txt['74382::basketedit_policy12']}}</a>{{$txt['74382::basketedit_policy13']}}
				</p>
			{{/if}}
		</div>
	</div>
{{/if}}
