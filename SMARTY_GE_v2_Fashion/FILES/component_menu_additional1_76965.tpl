
<!--Dodatkowe linki (strefa 1) (menu_additional1, 76965.1)-->
<div class="login_menu_block visible-phone" id="login_menu_block">
	{{if  $xml->getItem("basket/@login")}}
		<div class="login_welcome_message">{{$txt['76965::zalogowany_welcome_message']}}
			<span>{{$xml->getItem("basket/@login")}}</span>
		</div>
		<a class="your_account_link" href="/login.php" title=" {{$txt['76965::57295_004']}} ">{{$txt['76965::57295_005']}}</a>
		<a class="order_status_link" href="/order-open.php" title=" {{$txt['76965::57295_020']}} ">{{$txt['76965::57295_021']}}</a>
		<a class="rabates_link" href="/client-rebate.php" title=" {{$txt['76965::57295_0101']}} ">{{$txt['76965::57295_03111']}}</a>
		<a class="logout_link" href="/login.php?operation=logout" title=" {{$txt['76965::57295_010']}} ">{{$txt['76965::57295_031']}}</a>
		{{if  $xml->getItem("action/personalized_recommendations/@url")}}
			<a class="recommendation_link" href=" {{$xml->getItem("action/personalized_recommendations/@url")}} ">{{$txt['76965::57295_031_22']}}</a>
		{{/if}}
	{{else}}
		<a class="sign_in_link" href="/login.php" title=" {{$txt['76965::57295_002']}} ">{{$txt['76965::57295_012']}}</a>
		<a class="registration_link" href="/client-new.php?register" title=" {{$txt['76965::57295_001']}} ">{{$txt['76965::57295_011']}}</a>
		<a class="order_status_link" href="/order-open.php" title=" {{$txt['76965::57295_020']}} ">{{$txt['76965::57295_021']}}</a>
	{{/if}}
	{{if  $xml->getItem("/shop/action/shop_information/@order_link_active") == (string)'y' and !( $xml->getItem("/shop/action/shop_information/@url")  == (string) '')}}
		<a href="{{$xml->getItemEscape("/shop/action/shop_information/@url")}}">{{$txt['76965::74377_001']}}</a>
	{{/if}}
	{{if  $xml->getItem("/shop/action/shipping_cost/@order_link_active") == (string)'y' and !( $xml->getItem("/shop/action/shipping_cost/@url")  == (string) '')}}
		<a href="{{$xml->getItemEscape("/shop/action/shipping_cost/@url")}}">{{$txt['76965::74377_002']}}</a>
	{{/if}}
	{{if  $xml->getItem("/shop/action/payment_methods/@order_link_active") == (string)'y' and !( $xml->getItem("/shop/action/payment_methods/@url")  == (string) '')}}
		<a href="{{$xml->getItemEscape("/shop/action/payment_methods/@url")}}">{{$txt['76965::74377_003']}}</a>
	{{/if}}
	{{if  $xml->getItem("/shop/action/terms/@order_link_active") == (string)'y' and !( $xml->getItem("/shop/action/terms/@url")  == (string) '')}}
		<a href="{{$xml->getItemEscape("/shop/action/terms/@url")}}">{{$txt['76965::74377_004']}}</a>
	{{/if}}
	{{if  $xml->getItem("/shop/action/private_policy/@order_link_active") == (string)'y' and !( $xml->getItem("/shop/action/private_policy/@url")  == (string) '')}}
		<a href="{{$xml->getItemEscape("/shop/action/private_policy/@url")}}">{{$txt['76965::74377_005']}}</a>
	{{/if}}
	{{if  $xml->getItem("/shop/action/order_cancel/@order_link_active") == (string)'y' and !( $xml->getItem("/shop/action/order_cancel/@url")  == (string) '')}}
		<a href="{{$xml->getItemEscape("/shop/action/order_cancel/@url")}}">{{$txt['76965::74377_006']}}</a>
	{{/if}}
</div>