
<!--Dodatkowe linki (strefa 1) (menu_additional1, 106528.1)-->
<div class="setMobileGrid" data-item="#menu_navbar">
</div>
<div class="setMobileGrid" data-item="#menu_navbar3">
</div>
<div class="setMobileGrid" data-item="#menu_blog">
</div>
<div class="login_menu_block d-lg-none" id="login_menu_block">
	{{if  $xml->getItem("basket/@login")}}
		<a class="your_account_link" href="/login.php" title=" {{$txt['106528::57295_004']}} ">{{$txt['106528::57295_005']}}</a>
		<a class="order_status_link" href="/order-open.php" title=" {{$txt['106528::57295_020']}} ">{{$txt['106528::57295_021']}}</a>
		{{if ( $xml->getItem("/shop/basket/@client_id_upc")  neq (string) '') }}
			<a {{assign "hrefAttributeTmp1" ""}}  class="client_card_link"{{capture name="hrefAttributeTmp1" assign="hrefAttributeTmp1"}}##{{/capture}}{{capture name="hrefAttributeTmp1" assign="hrefAttributeTmp1"}}{{$xml->getItem("action/login/@url")}}{{/capture}}  href="{{$hrefAttributeTmp1}}">{{$txt['106528::57295_666']}}</a>
		{{/if}}
		<a class="rabates_link" href="/client-rebate.php" title=" {{$txt['106528::57295_0101']}} ">{{$txt['106528::57295_03111']}}</a>
		<a class="logout_link" href="/login.php?operation=logout" title=" {{$txt['106528::57295_010']}} ">{{$txt['106528::57295_031']}}</a>
		{{if  $xml->getItem("action/personalized_recommendations/@url")}}
			<a class="recommendation_link" href=" {{$xml->getItem("action/personalized_recommendations/@url")}} ">{{$txt['106528::57295_031_22']}}</a>
		{{/if}}
	{{else}}
		<a class="sign_in_link" href="/login.php" title=" {{$txt['106528::57295_002']}} ">{{$txt['106528::57295_012']}}</a>
		<a class="registration_link" href="/client-new.php?register" title=" {{$txt['106528::57295_001']}} ">{{$txt['106528::57295_011']}}</a>
		<a class="order_status_link" href="/order-open.php" title=" {{$txt['106528::57295_020']}} ">{{$txt['106528::57295_021']}}</a>
	{{/if}}
</div>
<div class="setMobileGrid" data-item="#menu_contact">
</div>
<div class="setMobileGrid" data-item="#menu_settings">
</div>