<!DOCTYPE html SYSTEM "about:legacy-compat">
<!--Typ strony (envelope, 10001.4)-->
{{assign var="meta_langcode_iso639" value="__IAI_TEMPLATE_LANG_639_2__"}}
{{assign var="html5_layout" value=""}}
{{capture name="asyncJS" assign="asyncJS"}}
	{{$txt['10001::asyncJS_vid']}}
{{/capture}}

{{capture name="themeColor" assign="themeColor"}}
	{{$txt['10001::themeColor_vid']}}
{{/capture}}

{{if ( $xml->getItem("action/set_render/item/@name")  == (string) 'popup') or !( $xml->getItem("action/set_render/item"))}}
	{{literal}}
	<html lang="{{/literal}}{{$xml->getItemEscape("/shop/currency/@country")}}{{literal}}" >{{/literal}}
		{{if $meta_langcode_iso639}}
			lang="{{$meta_langcode_iso639}}"
		{{/if}}
		<head>{{$txt['10001::10001_006m']|escape:'iai'}}
			{{capture name="meta_breadcrumb" assign="meta_breadcrumb"}}
				{{if ( $xml->getItem("page/@type") == (string)'search') or ( $xml->getItem("page/@type") == (string)'navigation') or ( $xml->getItem("page/@type") == (string)'projector')}}
					{{if  $xml->getItem("page/@type") == (string)'navigation'}}
						{{foreach from=$xml->getList("bc/item") item=loop16}}
							{{$loop16->getItemEscape("@title")}}|
						{{/foreach}}
					{{else}}
						{{foreach from=$xml->getList("bc/item[not(position() = last())]") item=loop20}}
							{{$loop20->getItemEscape("@title")}}|
						{{/foreach}}
					{{/if}}
				{{/if}}
			{{/capture}}
			{{capture name="meta_breadcrumb_full" assign="meta_breadcrumb_full"}}
				{{if ( $xml->getItem("page/@type") == (string)'search') or ( $xml->getItem("page/@type") == (string)'navigation') or ( $xml->getItem("page/@type") == (string)'projector')}}
					{{foreach from=$xml->getList("bc/item") item=loop29}}
						{{$loop29->getItemEscape("@title")}}|
					{{/foreach}}
				{{/if}}
			{{/capture}}
			{{capture name="meta_subcategories" assign="meta_subcategories"}}
				{{if (( $xml->getItem("page/@type") == (string)'search') or ( $xml->getItem("page/@type") == (string)'navigation') or ( $xml->getItem("page/@type") == (string)'projector')) and ( $xml->getItem("/shop/navigation/current/@ni"))}}
					{{foreach from=$xml->getList("navigation/descendant-or-self::item[@ni=/shop/navigation/current/@ni]/item") item=loop37}}
						{{$loop37->getItemEscape("@name")}},
					{{/foreach}}
				{{/if}}
			{{/capture}}
			{{capture name="meta_variable_emulate_ie" assign="meta_variable_emulate_ie"}}
				{{$txt['10001::10001_meta_emulate']}}
			{{/capture}}
			<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
			<meta http-equiv="Content-Language" content="__IAI_TEMPLATE_LANG_639_2__"/>
			{{if $meta_variable_emulate_ie}}
				<meta http-equiv="X-UA-Compatible" content="{{$meta_variable_emulate_ie}}"/>
			{{/if}}
			{{if  $xml->getItem("page/@search_title")}}
				<title>{{$xml->getItem("page/@search_title")}}</title>
			{{elseif  $xml->getItem("page/@projector_title")}}
				<title>{{$xml->getItem("page/@projector_title")}}|{{$xml->getItem("$meta_breadcrumb_full")}}{{$xml->getItem("page/@title")}}</title>
			{{else}}
				<title>{{$xml->getItem("$meta_breadcrumb")}}{{$xml->getItem("page/@title")}}
					{{if  $xml->getItem("page/@title2")}}
						|{{$xml->getItem("page/@title2")}}
					{{/if}}
					</title>
			{{/if}}
			{{if  $xml->getItem("page/@search_keywords")}}
				<meta name="keywords" content="{{$xml->getItemEscape("page/@search_keywords")}}"/>
			{{elseif  $xml->getItem("page/@projector_keywords")}}
				<meta name="keywords" content="{{$xml->getItemEscape("page/@projector_keywords")}} | {{$meta_breadcrumb_full}}{{$meta_subcategories}}{{$xml->getItemEscape("page/@keywords")}}"/>
			{{elseif !( $xml->getItem("page/@keywords") == (string)'')}}
				<meta name="keywords" content=" {{$meta_breadcrumb_full}}{{$meta_subcategories}}{{if !( $xml->getItem("page/@keywords") == (string)'') }}{{$xml->getItemEscape("page/@keywords")}}{{else}} {{$txt['10001::10001_003']}} {{/if}} "/>
			{{else}}
			{{/if}}
			{{if  $xml->getItem("page/@search_description")}}
				<meta name="description" content="{{$xml->getItemEscape("page/@search_description")}}"/>
			{{elseif  $xml->getItem("page/@projector_description")}}
				<meta name="description" content="{{$xml->getItemEscape("page/@projector_description")}} | {{$meta_breadcrumb_full}}{{$meta_subcategories}}{{$xml->getItemEscape("page/@description")}}"/>
			{{else}}
				<meta name="description" content="{{$meta_breadcrumb}}{{$meta_subcategories}}{{$xml->getItemEscape("page/@description")}}"/>
			{{/if}}
			{{$txt['10001::20002_001']}}
			<link rel="shortcut icon" href="/gfx/__IAI_TEMPLATE_LANG_639_1__/favicon.ico" />
			{{if $themeColor}}
				<meta name="theme-color" content="{{$themeColor}}"/>
				<meta name="msapplication-navbutton-color" content="{{$themeColor}}"/>
				<meta name="apple-mobile-web-app-status-bar-style" content="{{$themeColor}}"/>
			{{/if}}
			{{if $asyncJS}}
				{{if  $xml->getItem("/shop/@preview")  gt (string) 0}}
					<link rel="stylesheet" type="text/css" href="/gfx/{{$xml->getItemEscape("language/@id")}}/{{$xml->getItemEscape("/shop/@preview")}}/style.css"></link>
					<script type="text/javascript" async="async" src="/gfx/{{$xml->getItemEscape("language/@id")}}/{{$xml->getItemEscape("/shop/@preview")}}/shop.js">					</script>

				{{else}}
					<link rel="stylesheet" type="text/css" href="/gfx/{{$xml->getItemEscape("language/@id")}}/style.css?r=1570606530"></link>
					<script type="text/javascript" async="async" src="/gfx/{{$xml->getItemEscape("language/@id")}}/shop.js?r=1570606530">					</script>

				{{/if}}
			{{else}}
				{{if  $xml->getItem("/shop/@preview")  gt (string) 0}}
					<link rel="stylesheet" type="text/css" href="/gfx/{{$xml->getItemEscape("language/@id")}}/{{$xml->getItemEscape("/shop/@preview")}}/style.css"></link>
					<script type="text/javascript" src="/gfx/{{$xml->getItemEscape("language/@id")}}/{{$xml->getItemEscape("/shop/@preview")}}/shop.js">					</script>

				{{else}}
					<link rel="stylesheet" type="text/css" href="/gfx/{{$xml->getItemEscape("language/@id")}}/style.css?r=1570606530"></link>
					<script type="text/javascript" src="/gfx/{{$xml->getItemEscape("language/@id")}}/shop.js?r=1570606530">					</script>

				{{/if}}
			{{/if}}
			{{capture name="meta_variable_expires" assign="meta_variable_expires"}}
				{{$txt['10001::10001_meta_expires']}}
			{{/capture}}
			{{capture name="meta_variable_distribution" assign="meta_variable_distribution"}}
				{{$txt['10001::10001_meta_distribution']}}
			{{/capture}}
			{{capture name="meta_variable_rating" assign="meta_variable_rating"}}
				{{$txt['10001::10001_meta_rating']}}
			{{/capture}}
			{{if  $xml->getItem("/shop/page/@meta_robots")}}
				<meta name="robots" content="{{$xml->getItemEscape("/shop/page/@meta_robots")}}"/>
			{{else}}
				<meta name="robots" content="INDEX,FOLLOW"/>
			{{/if}}
			{{if !($html5_layout)}}
				{{if $meta_variable_expires}}
					<meta name="expires" content="{{$meta_variable_expires}}"/>
				{{/if}}
				{{if $meta_variable_distribution}}
					<meta name="distribution" content="{{$meta_variable_distribution}}"/>
				{{/if}}
			{{/if}}
			{{if $meta_variable_rating}}
				<meta name="rating" content="{{$meta_variable_rating}}"/>
			{{/if}}
			{{if  $xml->getItem("/shop/iai/@meta_author")}}
				<meta name="Author" content="{{$xml->getItemEscape("/shop/iai/@meta_author")}}"/>
			{{/if}}
			{{if  $xml->getItem("page/facebook_comments")}}
				<meta property="fb:admins" content="{{$xml->getItemEscape("/shop/page/facebook_comments/@admin_id")}}"/>
				<meta property="fb:app_id" content="{{$xml->getItemEscape("/shop/page/facebook_comments/@app_id")}}"/>
			{{/if}}
			<!--IAI_TEMPLATE_additional_meta_tags-->
		</head>
		{{capture name="meta_body_id" assign="meta_body_id"}}
			{{$txt['10001::10001_body_id']}}
		{{/capture}}
		{{literal}}
		<body{{/literal}}{{if $xml->getItem("action/set_render/item[@name='popup']")}}{{literal}} class="popup" {{/literal}}{{/if}}{{literal}}>{{/literal}}
			{{if $meta_body_id}}
				id="{{$meta_body_id}}"
			{{/if}}
			<!--IAI_TEMPLATE_additional_body_top_scripts-->
		{{/if}}
		{{capture name="valuepricedesc" assign="valuepricedesc"}}
			{{$txt['10001::10001_010']}}
		{{/capture}}
		{{capture name="discountpricedesc" assign="discountpricedesc"}}
			{{$txt['10001::10001_011']}}
		{{/capture}}
		{{capture name="promopricedesc" assign="promopricedesc"}}
			{{$txt['10001::10001_012']}}
		{{/capture}}
		{{capture name="detalpricedesc" assign="detalpricedesc"}}
			{{$txt['10001::10001_013']}}
		{{/capture}}
		{{capture name="rebatepricedesc" assign="rebatepricedesc"}}
			{{$txt['10001::10001_014']}}
		{{/capture}}
		{{capture name="nettopricedesc" assign="nettopricedesc"}}
			{{$txt['10001::10001_016']}}
		{{/capture}}
		{{capture name="signbeforeprice" assign="signbeforeprice"}}
			{{$txt['10001::10001_015']}}
		{{/capture}}
		{{capture name="signbetweenpricecurrency" assign="signbetweenpricecurrency"}}
			{{$txt['10001::10001_115']}}
		{{/capture}}
		{{capture name="showcomparelink" assign="showcomparelink"}}
			{{$txt['10001::10001_017']}}
		{{/capture}}
		<!--Układ graficzny (layout, 73991.2)-->
		<div id="container" class="{{$xml->getItemEscape("page/@type")}}_page {{if $xml->getItem("/shop/page/login[@shop_registration='true']")}} registration_page {{/if}} {{$txt['73991::70925_container_class']}}" itemscope="itemscope" itemtype="http://schema.org/WebPage">
			{{if !( $xml->getItem("action/set_render/item")) or ( $xml->getItem("action/set_render/item/@name")  == (string) 'head')}}
				<header class="clearfix {{$txt['73991::70925_header_class']}}">
					{{include file="component_menu_javascript_73887.tpl"}}
					{{include file="component_menu_settings_76960.tpl"}}
					{{include file="component_menu_top_74111.tpl"}}
					{{include file="component_menu_search_73954.tpl"}}
					{{include file="component_menu_basket_77452.tpl"}}
					{{include file="component_menu_categories_74009.tpl"}}
					{{include file="component_projector_stepper_67619.tpl"}}
				</header>
			{{/if}}
			<div id="layout" class="{{$txt['73991::70925_layout_class']}}">
				{{if !( $xml->getItem("action/set_render/item")) or ( $xml->getItem("action/set_render/item/@name")  == (string) 'aside')}}
					<aside {{assign "classAttributeTmp4" ""}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}span3{{/capture}}{{if $xml->getItem("page/@type") == (string) 'projector'}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}{{$txt['73991::70925_projector_a_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'search'}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}{{$txt['73991::70925_search_a_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'main'}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}{{$txt['73991::70925_main_a_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'blog-list' or $xml->getItem("page/@type") == (string) 'blog-item'}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}{{$txt['73991::70925_blog_a_class']}}{{/capture}}{{else}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}{{$txt['73991::70925_otherwise_a_class']}}{{/capture}}{{/if}}  class="{{$classAttributeTmp4}}">
						{{include file="component_menu_filter_79091.tpl"}}
						{{include file="component_menu_buttons_77612.tpl"}}
						{{include file="component_menu_additional1_76965.tpl"}}
					</aside>
				{{/if}}
				{{if !( $xml->getItem("action/set_render/item")) or ( $xml->getItem("action/set_render/item/@name")  == (string) 'content')}}
					<div {{assign "classAttributeTmp5" ""}}  id="content"{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}span9{{/capture}}{{if $xml->getItem("page[@type='projector']")}} itemscope="itemscope" itemtype="http://schema.org/Product" {{/if}}{{if $xml->getItem("page/@type") == (string) 'projector'}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}{{$txt['73991::70925_projector_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'search'}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}{{$txt['73991::70925_search_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'main'}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}{{$txt['73991::70925_main_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'navigation'}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}{{$txt['73991::70925_navigation_page_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'blog-list' or $xml->getItem("page/@type") == (string) 'blog-item'}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}{{$txt['73991::70925_blog_c_class']}}{{/capture}}{{else}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}{{$txt['73991::70925_otherwise_c_class']}}{{/capture}}{{/if}}  class="{{$classAttributeTmp5}}">
						{{include file="component_menu_order_progress_68745.tpl"}}
						{{include file="component_menu_messages_67953.tpl"}}
						<!--CMS na stronie Order1 (order1_cms, 55417.1)-->
						{{if  $xml->getItem("page/order1/text/body")}}
							<div class="n55417">
								<div {{assign "classAttributeTmp6" ""}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}n55417_sub{{/capture}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}n55417_sub cm{{/capture}}  class="{{$classAttributeTmp6}}">{{$xml->getItem("page/order1/text/body")}}
								</div>
							</div>
						{{/if}}
						<!--Wybór sposobu dostawy i płatności (order1, 98166.1)-->
						{{capture name="txt_60826_advance_a" assign="txt_60826_advance_a"}}
							{{$txt['98166::60826_advance_a']}}
						{{/capture}}
						{{capture name="wholesalerPrice2" assign="wholesalerPrice2"}}
							{{$txt['98166::63643_wholesalerPrice2']}}
						{{/capture}}
						{{capture name="txt_68313_nz" assign="txt_68313_nz"}}
							{{$txt['98166::68313_nz']}}
						{{/capture}}
						{{capture name="txt_68313_zp" assign="txt_68313_zp"}}
							{{$txt['98166::68313_zp']}}
						{{/capture}}
						{{capture name="payments_in_row" assign="payments_in_row"}}
							{{$txt['98166::63643_payments_in_row']}}
						{{/capture}}
						{{capture name="txt_68638_rpoz" assign="txt_68638_rpoz"}}
							{{$txt['98166::68638_rpoz']}}
						{{/capture}}
						{{capture name="txt_68638_mxprice" assign="txt_68638_mxprice"}}
							{{$txt['98166::68638_mxprice']}}
						{{/capture}}
						{{capture name="hours_68638" assign="hours_68638"}}
							{{$txt['98166::hours_68638']}}
						{{/capture}}
						{{capture name="immediately_txt" assign="immediately_txt"}}
							{{$txt['98166::68313_immediately']}}
						{{/capture}}
						<script type="text/javascript" class="ajaxLoad">{{if  $xml->getItem("/shop/page/order1/additional/advance/@cash_on_delivery") == (string)'true' and  $xml->getItem("/shop/page/order1/additional/advance/@prepaid") == (string)'false'}}
                    var advance_type = 'dvp';
                {{elseif  $xml->getItem("/shop/page/order1/additional/advance/@cash_on_delivery") == (string)'false' and  $xml->getItem("/shop/page/order1/additional/advance/@prepaid") == (string)'true'}}
                    var advance_type = 'prepaid';
                {{else}}
                    var advance_type = 'default';
                {{/if}}
            var advVal_prepaid = '{{$xml->getItemEscape("/shop/page/order1/additional/advance/@value")}}';
            var advVal_dvp = '{{$xml->getItemEscape("/shop/page/order1/additional/advance/@value_cod")}}';
            var advVal_mode = '{{$xml->getItemEscape("/shop/page/order1/additional/first_payment/@mode")}}';
            var currency_format = '{{$xml->getItemEscape("/shop/currency/option[@selected='true']/@currency_format")}}';
            var currency_before_value = {{$xml->getItemEscape("/shop/currency/option[@selected='true']/@currency_before_value")}};
            var currency_space = '{{$xml->getItemEscape("/shop/currency/option[@selected='true']/@currency_space")}}';
            var currency_decimal_separator = '{{$xml->getItemEscape("/shop/currency/option[@selected='true']/@currency_decimal_separator")}}';
            var currency_grouping_separator = '{{$xml->getItemEscape("/shop/currency/option[@selected='true']/@currency_grouping_separator")}}';
            var symbol = '{{$xml->getItemEscape("/shop/currency/option[@selected='true']/@symbol")}}';
            var order1_txt_dzien = '{{$txt['98166::53706_003c']}}';
            var order1_txt_dni = '{{$txt['98166::53706_003b']}}';
            var order1_txt_godz = '{{$txt['98166::53706_003godz']}}';
            var order1_txt_godz2 = '{{$hours_68638}}';
            var order1_txt_min = '{{$txt['98166::53706_003min']}}';
            var order1_txt_do24 = '{{$txt['98166::53706_003c24']}}';
            var saldo_balance_value = '{{$xml->getItemEscape("page/order1/balance/@currency_value")}}';
            var limit_balance_value = '{{$xml->getItemEscape("page/order1/balance/@currency_limit")}}';
            var limit_mode = '{{$xml->getItemEscape("page/order1/balance/@tradeCredit")}}';
            var payments_in_row = '{{$payments_in_row}}';
            var saldo_payform_hide = false;
            var saldo_limit_flag = false;
            {{if  $xml->getItem("page/order1/balance/@active") == (string)'y' and ( $xml->getItem("page/order1/balance/@currency_value")  gt (string)  $xml->getItem("/shop/basket/@total"))}}
                saldo_payform_hide = true;
            {{/if}}{{if  $xml->getItem("page/order1/balance/@limit")  gt (string) 0}}
                saldo_limit_flag = true;
            {{/if}}
            var shipping_time = '{{$xml->getItemEscape("/shop/basket/shipping_time/@days")}}';
        						</script>

						{{if  $xml->getItem("page/order1/order_calendar")}}
							<script type="text/javascript" class="ajaxLoad">
                Order1.calendar.D1 = {{$xml->getItemEscape("page/order1/order_calendar/@date_d")}};
                Order1.calendar.M1 = {{$xml->getItemEscape("page/order1/order_calendar/@date_m")}};
                Order1.calendar.Y1 = {{$xml->getItemEscape("page/order1/order_calendar/@date_y")}};
                Order1.calendar.Mindate = new Date({{$xml->getItemEscape("page/order1/order_calendar/@date_y")}},{{$xml->getItemEscape("page/order1/order_calendar/@date_m")}}-1,{{$xml->getItemEscape("page/order1/order_calendar/@date_d")}});
                Order1.calendar.Seldate = new Date({{$xml->getItemEscape("page/order1/order_calendar/@select_y")}},{{$xml->getItemEscape("page/order1/order_calendar/@select_m")}}-1,{{$xml->getItemEscape("page/order1/order_calendar/@select_d")}});
        var Holidays = {};
{{foreach from=$xml->getList("page/order1/order_calendar/holiday") item=loop310}}
                    Holidays["{{$loop310->getItemEscape("@date_d")}}_{{$loop310->getItemEscape("@date_m")}}_{{$loop310->getItemEscape("@date_y")}}"] = 1;
{{/foreach}}
        Order1.calendar.holi = 0;
                {{if  $xml->getItem("page/order1/order_calendar/holiday")}}
                Order1.calendar.holi = 1;
                {{/if}}							</script>

						{{/if}}
						<script type="text/javascript" class="ajaxLoad">
            var only_virtual = '{{$xml->getItemEscape("page/order1/@only-virtual")}}';
        						</script>

						<form method="post" class="order1_form" onsubmit="return Order1.checkForm();" action="{{$xml->getItemEscape("page/order1/formaction")}}{{if ( $xml->getItem("page/order1/formaction") == (string) 'order2.php')}}?preview=true{{/if}} ">
							<div {{assign "classAttributeTmp7" ""}}{{capture name="classAttributeTmp7" assign="classAttributeTmp7"}}order1_label{{/capture}}{{capture name="classAttributeTmp7" assign="classAttributeTmp7"}}big_label order1_label{{/capture}}  class="{{$classAttributeTmp7}}">
								{{if  $xml->getItem("page/order1/balance/@active") == (string)'y'}}
									class="big_labelorder1_labelorder1_balance"
									<span class="order1_label">{{$txt['98166::delivery_form_titlesaldo']}}</span>
								{{else}}
									<span class="order1_label">{{$txt['98166::delivery_form_title']}}</span>
								{{/if}}
							</div>
							{{if  $xml->getItem("page/order1/balance[@active='y']")}}
								<table id="order1_balance">
									<tr>
										<th>
											{{if  $xml->getItem("page/order1/balance/@limit")  == (string) 0}}
												{{$txt['98166::delivery_form_0001']}}
											{{else}}
												{{$txt['98166::delivery_form_0001a']}}
											{{/if}}
										</th>
										<th>{{$txt['98166::delivery_form_0002']}}
										</th>
										<th>{{$txt['98166::delivery_form_0003']}}
										</th>
										<th>{{$txt['98166::delivery_form_0004']}}
										</th>
									</tr>
									<tr>
										<td>{{$xml->getItemEscape("page/order1/balance/@currency_value")}}
											<span class="order1_delitem_price_currency">{{$xml->getItemEscape("/shop/currency/@name")}}</span>
										</td>
										<td id="balance_products_worth">-
										</td>
										<td id="balance_prepaid_cost">-
										</td>
										<td id="balance_total_to_pay">-
										</td>
									</tr>
								</table>
							{{/if}}
							{{if  $xml->getItem("page/order1/balance/@onlyPrepaid") == (string)'n' and  $xml->getItem("page/order1/balance/@limit")  neq (string) 0}}
								<div class="order1_balance_info">{{$txt['98166::53687_014info']}}
								</div>
							{{/if}}
							<div id="order1_delivery" {{if count( $xml->getList("page/order1/shipping/delivery")) == (string) 0}} style="display:none;" {{/if}}>
								{{if count( $xml->getList("page/order1/shipping/delivery[@type = 'prepaid' and not(@id = '100051-1') and not(@id = '100152-1')]"))  gt (string) 0}}
									<div {{assign "classAttributeTmp8" ""}}  id="order1_prepaid"{{capture name="classAttributeTmp8" assign="classAttributeTmp8"}}order1_shippings inactive_shippings{{/capture}}{{if ( $xml->getItem("page/order1/shipping/delivery[@type = 'prepaid' and @checked = 'true']") or ( $xml->getItem("/shop/page/order1/balance/@active") == (string)'y' and $xml->getItem("/shop/page/order1/balance/@onlyPrepaid") == (string)'y'))}}{{capture name="classAttributeTmp8" assign="classAttributeTmp8"}}order1_shippings{{/capture}}{{/if}}  class="{{$classAttributeTmp8}}">
										<div id="order1_prepaid_label" class="order1_delivery_label">
											<div {{assign "classAttributeTmp9" ""}}{{capture name="classAttributeTmp9" assign="classAttributeTmp9"}}order1_big_checkbox{{/capture}} onclick="Order1.chooseDeliveryMethod($(this))" {{if ( $xml->getItem("page/order1/shipping/delivery[@type = 'prepaid' and @checked = 'true']") or ( $xml->getItem("/shop/page/order1/balance/@active") == (string)'y' and $xml->getItem("/shop/page/order1/balance/@onlyPrepaid") == (string)'y'))}}{{capture name="classAttributeTmp9" assign="classAttributeTmp9"}}order1_big_checkbox checked{{/capture}}{{/if}}  class="{{$classAttributeTmp9}}">
											</div>
											{{if  $xml->getItem("page/order1/balance/@active") == (string)'y'}}
												<span {{assign "classAttributeTmp10" ""}}{{capture name="classAttributeTmp10" assign="classAttributeTmp10"}}order1_delivery_title{{/capture}}{{if ( $xml->getItem("page/order1/shipping/delivery[@type = 'prepaid' and @checked = 'true']") or ( $xml->getItem("/shop/page/order1/balance/@active") == (string)'y' and $xml->getItem("/shop/page/order1/balance/@onlyPrepaid") == (string)'y'))}}{{capture name="classAttributeTmp10" assign="classAttributeTmp10"}}order1_delivery_title active_title{{/capture}}{{/if}}   class="{{$classAttributeTmp10}}">
													{{if  $xml->getItem("page/order1/balance/@limit")  == (string) 0 and  $xml->getItem("page/order1/balance/@onlyPrepaid") == (string)'n'}}
														{{$txt['98166::53687_balance_1']}}
													{{elseif ( $xml->getItem("page/order1/balance/@limit")  == (string) 0 and  $xml->getItem("page/order1/balance/@onlyPrepaid") == (string)'y') or ( $xml->getItem("page/order1/balance/@limit")  neq (string) 0 and  $xml->getItem("page/order1/balance/@onlyPrepaid") == (string)'y' and  $xml->getItem("page/order1/balance/@tradeCredit") == (string)'n')}}
														{{$txt['98166::53687_balance_2']}}
													{{elseif  $xml->getItem("page/order1/balance/@limit")  neq (string) 0 and  $xml->getItem("page/order1/balance/@onlyPrepaid") == (string)'n'}}
														{{$txt['98166::53687_balance_3']}}
													{{elseif  $xml->getItem("page/order1/balance/@limit")  neq (string) 0 and  $xml->getItem("page/order1/balance/@onlyPrepaid") == (string)'y' and  $xml->getItem("page/order1/balance/@tradeCredit") == (string)'y'}}
														{{$txt['98166::53687_balance_4']}}
													{{/if}}
													</span>
											{{else}}
												<span {{assign "classAttributeTmp11" ""}}{{capture name="classAttributeTmp11" assign="classAttributeTmp11"}}order1_delivery_title{{/capture}}{{if ( $xml->getItem("page/order1/shipping/delivery[@type = 'prepaid' and @checked = 'true']") or ( $xml->getItem("/shop/page/order1/balance/@active") == (string)'y' and $xml->getItem("/shop/page/order1/balance/@onlyPrepaid") == (string)'y'))}}{{capture name="classAttributeTmp11" assign="classAttributeTmp11"}}order1_delivery_title active_title{{/capture}}{{/if}}   class="{{$classAttributeTmp11}}">
													{{if  $xml->getItem("page/order1/balance/@limit")  neq (string) 0 and  $xml->getItem("page/order1/balance/@tradeCredit") == (string)'y' and  $xml->getItem("page/order1/balance/@active") == (string)'n'}}
														{{$txt['98166::53687_balance_4']}}
													{{else}}
														{{$txt['98166::53687_radio2']}}
													{{/if}}
													</span>
											{{/if}}
										</div>
										<div id="order1_prepaid_legend" class="order1_delivery_legend">
											<span class="order1_legend_courier_name">{{$txt['98166::order1_legend_courier_name']}}</span>
											<span class="order1_legend_courier_time">{{$txt['98166::order1_legend_courier_time']}}</span>
											{{if !( $xml->getItem("/shop/page/order1/shipping/@hide_cost") == (string)'true')}}
												<span class="order1_legend_courier_price">{{$txt['98166::order1_legend_courier_price']}}</span>
											{{/if}}
										</div>
										{{foreach from=$xml->getList("page/order1/shipping/delivery[@type = 'prepaid' and not(@id = '100051-1') and not(@id = '100059-1') and not(@id = '100152-1')]") item=loop427}}
											<div {{assign "classAttributeTmp12" ""}}{{capture name="classAttributeTmp12" assign="classAttributeTmp12"}}order1_delitem{{/capture}} onclick="Order1.working_days([ {{foreach from=$loop427->getList("working_days/item") item=loop431}}{{if $loop431@iteration neq (string) 1}},{{/if}}{{$loop431->getItemEscape(".")|replace:'7':'0'}}{{/foreach}} ]);Order1.chooseDelivery($(this));Order1.showFields('{{$loop427->getItemEscape("@id")}}','{{$loop427->getItemEscape("@calendar")}}','{{$loop427->getItemEscape("@deliverytime")}}','1','{{$loop427->getItemEscape("@time")}}','{{if $loop427->getItem("@id") == (string) '0-1'}}{{$loop427->getItemEscape("/shop/page/order1/stocks/stock[@selected = 'selected']/@pickup_days")}}#{{$loop427->getItemEscape("/shop/page/order1/stocks/stock[@selected = 'selected']/@pickup_hours")}}#{{$loop427->getItemEscape("/shop/page/order1/stocks/stock[@selected = 'selected']/@pickup_minutes")}}#{{if $loop427->getItem("@today") == (string)'true'}}0{{else}}{{$loop427->getItemEscape("@week_day")}}{{/if}}#{{$loop427->getItemEscape("@week_amount")}}{{else}}{{$loop427->getItemEscape("@time_days")}}#{{$loop427->getItemEscape("@time_hours")}}#{{$loop427->getItemEscape("@time_minutes")}}#{{if $loop427->getItem("@today") == (string)'true'}}0{{else}}{{$loop427->getItemEscape("@week_day")}}{{/if}}#{{$loop427->getItemEscape("@week_amount")}}{{/if}}');" id="delivery_{{$loop427->getItemEscape("@id")}}" title=" {{if $loop427->getItem("@minworthreached") == (string) 'false'}}{{$txt['98166::order1_delitem_unavailable']}}{{/if}} " {{if $loop427->getItem("@checked") == (string) 'true'}}{{capture name="classAttributeTmp12" assign="classAttributeTmp12"}}order1_delitem o1selected{{/capture}}{{/if}}{{if $loop427->getItem("@minworthreached") == (string) 'false'}}{{capture name="classAttributeTmp12" assign="classAttributeTmp12"}}order1_delitem o1disabled{{/capture}} onclick="" {{/if}}  class="{{$classAttributeTmp12}}">
												<div class="order1_delitem_sub">
													<span class="order1_delitem_radio" style="display:none;">
														<input type="radio" name="shipping" class="order1_delitem_radio" value="{{$loop427->getItemEscape("@id")}}" {{if $loop427->getItem("@checked") == (string) 'true'}} checked="checked"{{/if}}{{if $loop427->getItem("@minworthreached") == (string) 'false'}} disabled="disabled"{{/if}} title="{{$loop427->getItemEscape("@comment")}}"></input></span>
													<div class="order1_delitem_header">
														{{if  $loop427->getItem("@icon")}}
															<img class="order1_delitem_icon" src="{{$loop427->getItemEscape("@icon")}}" alt="{{$loop427->getItemEscape("@name")}}" title="{{$loop427->getItemEscape("@name")}}"></img>
														{{/if}}
														<span class="order1_delitem_name">{{$loop427->getItemEscape("@name")}}
															<div class="order1_delitem_time">
																{{if  $loop427->getItem("@minworthreached")  == (string) 'false'}}
																	<span class="order1_delitem_time inactive_time">{{$txt['98166::53687_010']}}{{$loop427->getItemEscape("@minworth_formatted")}}</span>
																{{/if}}
																{{if  $loop427->getItem("@minworthreached")  == (string) 'true'}}
																	<span class="order1_delitem_time">
																		{{if  $loop427->getItem("@id")  == (string) '0-1'}}
																			{{if count( $loop427->getList("/shop/page/order1/stocks/stock"))  gt (string) 0}}
																				{{foreach from=$loop427->getList("/shop/page/order1/stocks/stock[@selected = 'selected']") item=loop472}}
																					{{if  $loop472->getItem("@undefinded_time")  == (string) 'true'}}
																						{{$txt['98166::order1_stock_time_undefined2']}}
																					{{else}}
																						{{if $immediately_txt and ( $loop472->getItem("@pickup_days")  == (string) 0) and ( $loop472->getItem("@pickup_hours")  == (string) 0) and ( $loop472->getItem("@pickup_minutes")  == (string) 0)}}
																							{{$immediately_txt}}
																						{{else}}
																							{{$txt['98166::order1_stock_time_defined']}}
																							{{if  $loop472->getItem("@pickup_days")  gt (string) 0}}
																								{{$loop472->getItemEscape("@pickup_days")}}
																								{{if  $loop472->getItem("@pickup_days")  == (string)'1'}}
																									{{$txt['98166::53706_003c']}}
																								{{else}}
																									{{$txt['98166::53706_003b']}}
																								{{/if}}
																							{{/if}}
																							{{if $hours_68638}}
																								{{if  $loop472->getItem("@pickup_hours")  gt (string) 0}}
																									{{$loop472->getItemEscape("@pickup_hours")}}
																									{{if  $loop472->getItem("@pickup_hours")  gt (string) 1}}
																										{{$hours_68638}}
																									{{else}}
																										{{$txt['98166::53706_003godz']}}
																									{{/if}}
																								{{/if}}
																							{{else}}
																								{{if  $loop472->getItem("@pickup_hours")  gt (string) 0}}
																									{{$loop472->getItemEscape("@pickup_hours")}}{{$txt['98166::53706_003godz']}}
																								{{/if}}
																							{{/if}}
																							{{if  $loop472->getItem("@pickup_minutes")  gt (string) 0}}
																								{{$loop472->getItemEscape("@pickup_minutes")}}{{$txt['98166::53706_003min']}}
																							{{/if}}
																						{{/if}}
																					{{/if}}
																				{{/foreach}}
																			{{else}}
																				{{$txt['98166::53687_0990']}}{{$txt['98166::order1_stock_time_undefined2']}}
																			{{/if}}
																		{{else}}
																			{{$txt['98166::53687_0990']}}
																			{{if ( $loop427->getItem("@deliverytime_days")  == (string) 0) and ( $loop427->getItem("@deliverytime_hours")  == (string) 0) and ( $loop427->getItem("@deliverytime_minutes")  == (string) 0)}}
																				{{$txt['98166::53687_0991a']}}
																			{{else}}
																				{{if  $loop427->getItem("@deliverytime_days")  gt (string) 0}}
																					{{$loop427->getItemEscape("@deliverytime_days")}}
																					{{if  $loop427->getItem("@deliverytime_days")  == (string)'1'}}
																						{{$txt['98166::53706_003c']}}
																					{{else}}
																						{{$txt['98166::53706_003b']}}
																					{{/if}}
																				{{/if}}
																				{{if $hours_68638}}
																					{{if  $loop427->getItem("@deliverytime_hours")  gt (string) 0}}
																						{{$loop427->getItemEscape("@deliverytime_hours")}}
																						{{if  $loop427->getItem("@deliverytime_hours")  gt (string) 1}}
																							{{$hours_68638}}
																						{{else}}
																							{{$txt['98166::53706_003godz']}}
																						{{/if}}
																					{{/if}}
																				{{else}}
																					{{if  $loop427->getItem("@deliverytime_hours")  gt (string) 0}}
																						{{$loop427->getItemEscape("@deliverytime_hours")}}{{$txt['98166::53706_003godz']}}
																					{{/if}}
																				{{/if}}
																				{{if  $loop427->getItem("@deliverytime_minutes")  gt (string) 0}}
																					{{$loop427->getItemEscape("@deliverytime_minutes")}}{{$txt['98166::53706_003min']}}
																				{{/if}}
																			{{/if}}
																		{{/if}}
																		</span>
																{{/if}}
															</div>
															<div class="order1_delitem_comment" style="display:none;" id="delivery_{{$loop427->getItemEscape("@id")}}">
															</div></span>
													</div>
													{{if !( $loop427->getItem("/shop/page/order1/shipping/@hide_cost") == (string)'true')}}
														<div class="order1_delitem_pricebox">
															{{if  $loop427->getItem("@points_enabled")  == (string) 'false'}}
																<label class="order1_delitem_price">
																	<input type="checkbox" name="" value="" checked="checked" {{if $loop427->getItem("@minworthreached") == (string) 'false'}} disabled="disabled"{{/if}}></input>{{$loop427->getItemEscape("@cost_formatted")}}
																</label>
																<label class="order1_delitem_price_point_disabled showTip_order1" title="{{$txt['98166::53687_011nopoints']}}">
																	<input class="showTip_order1" type="checkbox" disabled="disabled" title="{{$txt['98166::53687_011nopoints']}}"></input>{{$loop427->getItemEscape("@points_cost")}}{{$txt['98166::order1_form_pointsok3']}}
																</label>
															{{elseif  $loop427->getItem("@points_enabled")  == (string) 'true'}}
																<label class="order1_delitem_price">
																	<input type="checkbox" name="" value="" checked="checked" {{if $loop427->getItem("@minworthreached") == (string) 'false'}} disabled="disabled"{{/if}}></input>{{$loop427->getItemEscape("@cost_formatted")}}
																</label>
																<label class="order1_delitem_price_point">
																	<input type="checkbox" name="" value="" {{if $loop427->getItem("@minworthreached") == (string) 'false'}} disabled="disabled"{{/if}}></input>{{$loop427->getItemEscape("@points_cost")}}{{$txt['98166::order1_form_pointsok3']}}
																</label>
															{{else}}
																<span class="order1_delitem_pricetitle">{{$txt['98166::50000_001']}}</span>
																{{if  $loop427->getItem("@beforerebate_formatted") and $txt_68638_mxprice}}
																	<del class="order1_delitem_price_oldprice">{{$loop427->getItemEscape("@beforerebate_formatted")}}</del>
																{{/if}}
																<span class="order1_delitem_price" {{if $loop427->getItem("@minworthreached") == (string) 'false'}} {{$txt['98166::53687_610']}} {{elseif $loop427->getItem("@cost") gt (string) 0}}{{if $loop427->getItem("@limitfree") gt (string) 0}} title="{{$txt['98166::53687_011']}}{{$loop427->getItemEscape("@limitfree_formatted")}}{{$txt['98166::53687_012']}}"{{/if}}{{$loop427->getItemEscape("@cost_formatted")}}{{else}} {{$txt['98166::53687_014']}} {{/if}}></span>
															{{/if}}
														</div>
													{{/if}}
												</div>
											</div>
										{{/foreach}}
										<span class="order1_delivery_description">{{$txt['98166::53687_radio2b']}}</span>
										<div id="order1_calendar_info" class="order1_dvp_time_pick">
											<div class="order1_delivery_time_pick_txt_1">
												<span class="order1_delivery_time_pick">{{$txt['98166::01021_time_pick']}}
													<span class="order1_delivery_time_pick_value"></span>
													<div class="order1_delivery_time_pick_hour">
													</div></span>
											</div>
											<div class="order1_delivery_time_pick_txt_2" style="display:none;">
												<span class="order1_delivery_time_pick">{{$txt['98166::01021_time_pick2']}}
													<span class="order1_delivery_time_pick_value"></span>
													<div class="order1_delivery_time_pick_hour">
													</div></span>
											</div>
											<div class="order1_delivery_time_pick_txt_3" style="display:none;">
												<span class="order1_delivery_time_pick">{{$txt['98166::01021_time_pick4']}}
													<span class="order1_delivery_time_pick_value"></span>
													<div class="order1_delivery_time_pick_hour">
													</div></span>
											</div>
											<div class="order1_delivery_time_pick_auto" style="display:none;">
												<span class="order1_delivery_time_pick">
													<span></span>
													<span class="order1_delivery_time_pick_value"></span>
													<div class="order1_delivery_time_pick_hour">
													</div></span>
											</div>
											<div class="order1_time_pick_button">
												<a {{assign "classAttributeTmp13" ""}}{{capture name="classAttributeTmp13" assign="classAttributeTmp13"}}runTopLayerOrder{{/capture}} href="#runToplayerOrder"{{capture name="classAttributeTmp13" assign="classAttributeTmp13"}}btn-regular runTopLayerOrder{{/capture}}  class="{{$classAttributeTmp13}}">{{$txt['98166::01021_time_pick3']}}</a>
											</div>
										</div>
										<div class="order1_comment_background">
											<div class="order1_comment_text" id="order1_prepaid_comment_text">
											</div>
										</div>
									</div>
									{{if ( $xml->getItem("/shop/page/order1/balance/@active") == (string)'y' and  $xml->getItem("/shop/page/order1/balance/@onlyPrepaid") == (string)'y')}}
										<script type="text/javascript" class="ajaxLoad">
                            $('#order1_prepaid div.order1_delitem').eq(0).click();
                        										</script>

									{{/if}}
								{{/if}}
								{{if count( $xml->getList("page/order1/shipping/delivery[@type = 'dvp']"))  gt (string) 0}}
									<div {{assign "classAttributeTmp14" ""}}  id="order1_dvp"{{capture name="classAttributeTmp14" assign="classAttributeTmp14"}}order1_shippings inactive_shippings{{/capture}}{{if !( $xml->getItem("/shop/page/order1/balance/@active") == (string)'y' and $xml->getItem("/shop/page/order1/balance/@onlyPrepaid") == (string)'y')}}{{if $xml->getItem("page/order1/shipping/delivery[(@type = 'dvp') and (@checked = 'true')]")}}{{capture name="classAttributeTmp14" assign="classAttributeTmp14"}}order1_shippings{{/capture}}{{/if}}{{/if}}{{if $xml->getItem("/shop/page/order1/balance/@active") == (string)'y' and $xml->getItem("/shop/page/order1/balance/@onlyPrepaid") == (string)'y'}}{{capture name="classAttributeTmp14" assign="classAttributeTmp14"}}order1_shippings balance_disabled{{/capture}}{{/if}}  class="{{$classAttributeTmp14}}">
										<div id="order1_dvp_label" class="order1_delivery_label">
											<div {{assign "classAttributeTmp15" ""}}{{capture name="classAttributeTmp15" assign="classAttributeTmp15"}}order1_big_checkbox{{/capture}}{{if !( $xml->getItem("/shop/page/order1/balance/@active") == (string)'y' and $xml->getItem("/shop/page/order1/balance/@onlyPrepaid") == (string)'y')}} onclick="Order1.chooseDeliveryMethod($(this))" {{/if}}{{if $xml->getItem("page/order1/shipping/delivery[@type = 'dvp' and @checked = 'true']") and !( $xml->getItem("/shop/page/order1/balance/@active") == (string)'y' and $xml->getItem("/shop/page/order1/balance/@onlyPrepaid") == (string)'y')}}{{capture name="classAttributeTmp15" assign="classAttributeTmp15"}}order1_big_checkbox checked{{/capture}}{{/if}}  class="{{$classAttributeTmp15}}">
											</div>
											{{if  $xml->getItem("page/order1/balance/@active") == (string)'y'}}
												<span {{assign "classAttributeTmp16" ""}}{{capture name="classAttributeTmp16" assign="classAttributeTmp16"}}order1_delivery_title{{/capture}}{{if $xml->getItem("page/order1/shipping/delivery[@type = 'dvp' and @checked = 'true']") and !( $xml->getItem("/shop/page/order1/balance/@active") == (string)'y' and $xml->getItem("/shop/page/order1/balance/@onlyPrepaid") == (string)'y')}}{{capture name="classAttributeTmp16" assign="classAttributeTmp16"}}order1_delivery_title active_title{{/capture}}{{/if}}   class="{{$classAttributeTmp16}}">
													{{if  $xml->getItem("page/order1/balance/@limit")  == (string) 0 and  $xml->getItem("page/order1/balance/@onlyPrepaid") == (string)'n'}}
														{{$txt['98166::53687_balance_1b']}}
													{{elseif ( $xml->getItem("page/order1/balance/@limit")  == (string) 0 and  $xml->getItem("page/order1/balance/@onlyPrepaid") == (string)'y') or ( $xml->getItem("page/order1/balance/@limit")  neq (string) 0 and  $xml->getItem("page/order1/balance/@onlyPrepaid") == (string)'y' and  $xml->getItem("page/order1/balance/@tradeCredit") == (string)'n')}}
														{{$txt['98166::53687_balance_2b']}}
													{{elseif  $xml->getItem("page/order1/balance/@limit")  neq (string) 0 and  $xml->getItem("page/order1/balance/@onlyPrepaid") == (string)'n'}}
														{{$txt['98166::53687_balance_3b']}}
													{{elseif  $xml->getItem("page/order1/balance/@limit")  neq (string) 0 and  $xml->getItem("page/order1/balance/@onlyPrepaid") == (string)'y' and  $xml->getItem("page/order1/balance/@tradeCredit") == (string)'y'}}
														{{$txt['98166::53687_balance_4b']}}
													{{/if}}
													</span>
											{{else}}
												<span {{assign "classAttributeTmp17" ""}}{{capture name="classAttributeTmp17" assign="classAttributeTmp17"}}order1_delivery_title{{/capture}} id="order1_title_left" {{if $xml->getItem("page/order1/shipping/delivery[@type = 'dvp' and @checked = 'true']") and !( $xml->getItem("/shop/page/order1/balance/@active") == (string)'y' and $xml->getItem("/shop/page/order1/balance/@onlyPrepaid") == (string)'y')}}{{capture name="classAttributeTmp17" assign="classAttributeTmp17"}}order1_delivery_title active_title{{/capture}}{{/if}}  class="{{$classAttributeTmp17}}">{{$txt['98166::53687_radio1']}}</span>
											{{/if}}
										</div>
										<div id="order1_dvp_legend" class="order1_delivery_legend">
											<span class="order1_legend_courier_name">{{$txt['98166::order1_legend_courier_name']}}</span>
											<span class="order1_legend_courier_time">{{$txt['98166::order1_legend_courier_time']}}</span>
											{{if !( $xml->getItem("/shop/page/order1/shipping/@hide_cost") == (string)'true')}}
												<span class="order1_legend_courier_price">{{$txt['98166::order1_legend_courier_price']}}</span>
											{{/if}}
										</div>
										{{foreach from=$xml->getList("page/order1/shipping/delivery[@type = 'dvp' and not(@id = '100059-0') and not(@id = '100152-0')]") item=loop692}}
											<div {{assign "classAttributeTmp18" ""}}{{capture name="classAttributeTmp18" assign="classAttributeTmp18"}}order1_delitem{{/capture}}{{if !( $loop692->getItem("/shop/page/order1/balance/@active") == (string)'y' and $loop692->getItem("/shop/page/order1/balance/@onlyPrepaid") == (string)'y')}} onclick="Order1.working_days([ {{foreach from=$loop692->getList("working_days/item") item=loop697}}{{if $loop697@iteration neq (string) 1}},{{/if}}{{$loop697->getItemEscape(".")|replace:'7':'0'}}{{/foreach}} ]);Order1.chooseDelivery($(this));Order1.showFields('{{$loop692->getItemEscape("@id")}}','{{$loop692->getItemEscape("@calendar")}}','{{$loop692->getItemEscape("@deliverytime")}}', {{if (( $loop692->getItem("@type") == (string) 'dvp') and ( $loop692->getItem("/shop/page/order1/additional/advance/@cash_on_delivery") == (string)'true')) or (( $loop692->getItem("@type") == (string) 'prepaid') and ( $loop692->getItem("/shop/page/order1/additional/advance/@prepaid") == (string)'true'))}}'1','{{else}}'0','{{/if}}{{$loop692->getItemEscape("@time")}}','{{if $loop692->getItem("@id") == (string) '0-0' or $loop692->getItem("@id") == (string) '0-1'}}{{$loop692->getItemEscape("/shop/page/order1/stocks/stock[@selected = 'selected']/@pickup_days")}}#{{$loop692->getItemEscape("/shop/page/order1/stocks/stock[@selected = 'selected']/@pickup_hours")}}#{{$loop692->getItemEscape("/shop/page/order1/stocks/stock[@selected = 'selected']/@pickup_minutes")}}{{else}}{{$loop692->getItemEscape("@time_days")}}#{{$loop692->getItemEscape("@time_hours")}}#{{$loop692->getItemEscape("@time_minutes")}}#{{if $loop692->getItem("@today") == (string)'true'}}0{{else}}{{$loop692->getItemEscape("@week_day")}}{{/if}}#{{$loop692->getItemEscape("@week_amount")}}{{/if}}');" {{/if}} id="delivery_{{$loop692->getItemEscape("@id")}}" title=" {{if ( $loop692->getItem("@minworthreached") == (string) 'false') or ( $loop692->getItem("/shop/page/order1/balance/@active") == (string)'y' and $loop692->getItem("/shop/page/order1/balance/@onlyPrepaid") == (string)'y')}}{{$txt['98166::order1_delitem_unavailable']}}{{/if}} " {{if !( $loop692->getItem("/shop/page/order1/balance/@active") == (string)'y' and $loop692->getItem("/shop/page/order1/balance/@onlyPrepaid") == (string)'y')}}{{if $loop692->getItem("@checked") == (string) 'true'}}{{capture name="classAttributeTmp18" assign="classAttributeTmp18"}}order1_delitem o1selected{{/capture}}{{/if}}{{/if}}{{if ( $loop692->getItem("@minworthreached") == (string) 'false') or ( $loop692->getItem("/shop/page/order1/balance/@active") == (string)'y' and $loop692->getItem("/shop/page/order1/balance/@onlyPrepaid") == (string)'y')}}{{capture name="classAttributeTmp18" assign="classAttributeTmp18"}}order1_delitem o1disabled{{/capture}} onclick="" {{/if}}  class="{{$classAttributeTmp18}}">
												<div class="order1_delitem_sub">
													<span class="order1_delitem_radio" style="display:none;">
														<input type="radio" name="shipping" class="order1_delitem_radio" value="{{$loop692->getItemEscape("@id")}}" {{if !( $loop692->getItem("/shop/page/order1/balance/@active") == (string)'y' and $loop692->getItem("/shop/page/order1/balance/@onlyPrepaid") == (string)'y')}}{{if $loop692->getItem("@checked") == (string) 'true'}} checked="checked"{{/if}}{{/if}}{{if ( $loop692->getItem("@minworthreached") == (string) 'false') or ( $loop692->getItem("/shop/page/order1/balance/@active") == (string)'y' and $loop692->getItem("/shop/page/order1/balance/@onlyPrepaid") == (string)'y')}} disabled="disabled"{{/if}} title="{{$loop692->getItemEscape("@comment")}}"></input></span>
													<div class="order1_delitem_header">
														{{if  $loop692->getItem("@icon")}}
															<img class="order1_delitem_icon" src="{{$loop692->getItemEscape("@icon")}}" alt="{{$loop692->getItemEscape("@name")}}" title="{{$loop692->getItemEscape("@name")}}"></img>
														{{/if}}
														<span class="order1_delitem_name">{{$loop692->getItemEscape("@name")}}
															<div class="order1_delitem_time">
																{{if  $loop692->getItem("@minworthreached")  == (string) 'false'}}
																	<span class="order1_delitem_time inactive_time">{{$txt['98166::53687_010']}}{{$loop692->getItemEscape("@minworth_formatted")}}</span>
																{{/if}}
																{{if  $loop692->getItem("@minworthreached")  == (string) 'true'}}
																	<span class="order1_delitem_time">
																		{{if  $loop692->getItem("@id")  == (string) '0-0' or  $loop692->getItem("@id")  == (string) '0-1'}}
																			{{if count( $loop692->getList("/shop/page/order1/stocks/stock"))  gt (string) 0}}
																				{{foreach from=$loop692->getList("/shop/page/order1/stocks/stock[@selected = 'selected']") item=loop743}}
																					{{if  $loop743->getItem("@undefinded_time")  == (string) 'true'}}
																						{{$txt['98166::order1_stock_time_undefined2']}}
																					{{else}}
																						{{if $immediately_txt and ( $loop743->getItem("@pickup_days")  == (string) 0) and ( $loop743->getItem("@pickup_hours")  == (string) 0) and ( $loop743->getItem("@pickup_minutes")  == (string) 0)}}
																							{{$immediately_txt}}
																						{{else}}
																							{{$txt['98166::order1_stock_time_defined']}}
																							{{if  $loop743->getItem("@pickup_days")  gt (string) 0}}
																								{{$loop743->getItemEscape("@pickup_days")}}
																								{{if  $loop743->getItem("@pickup_days")  == (string)'1'}}
																									{{$txt['98166::53706_003c']}}
																								{{else}}
																									{{$txt['98166::53706_003b']}}
																								{{/if}}
																							{{/if}}
																							{{if $hours_68638}}
																								{{if  $loop743->getItem("@pickup_hours")  gt (string) 0}}
																									{{$loop743->getItemEscape("@pickup_hours")}}
																									{{if  $loop743->getItem("@pickup_hours")  gt (string) 1}}
																										{{$hours_68638}}
																									{{else}}
																										{{$txt['98166::53706_003godz']}}
																									{{/if}}
																								{{/if}}
																							{{else}}
																								{{if  $loop743->getItem("@pickup_hours")  gt (string) 0}}
																									{{$loop743->getItemEscape("@pickup_hours")}}{{$txt['98166::53706_003godz']}}
																								{{/if}}
																							{{/if}}
																							{{if  $loop743->getItem("@pickup_minutes")  gt (string) 0}}
																								{{$loop743->getItemEscape("@pickup_minutes")}}{{$txt['98166::53706_003min']}}
																							{{/if}}
																						{{/if}}
																					{{/if}}
																				{{/foreach}}
																			{{else}}
																				{{$txt['98166::53687_0990']}}{{$txt['98166::order1_stock_time_undefined2']}}
																			{{/if}}
																		{{else}}
																			{{$txt['98166::53687_0990']}}
																			{{if ( $loop692->getItem("@deliverytime_days")  == (string) 0) and ( $loop692->getItem("@deliverytime_hours")  == (string) 0) and ( $loop692->getItem("@deliverytime_minutes")  == (string) 0)}}
																				{{$txt['98166::53687_0991a']}}
																			{{else}}
																				{{if  $loop692->getItem("@deliverytime_days")  gt (string) 0}}
																					{{$loop692->getItemEscape("@deliverytime_days")}}
																					{{if  $loop692->getItem("@deliverytime_days")  == (string)'1'}}
																						{{$txt['98166::53706_003c']}}
																					{{else}}
																						{{$txt['98166::53706_003b']}}
																					{{/if}}
																				{{/if}}
																				{{if $hours_68638}}
																					{{if  $loop692->getItem("@deliverytime_hours")  gt (string) 0}}
																						{{$loop692->getItemEscape("@deliverytime_hours")}}
																						{{if  $loop692->getItem("@deliverytime_hours")  gt (string) 1}}
																							{{$hours_68638}}
																						{{else}}
																							{{$txt['98166::53706_003godz']}}
																						{{/if}}
																					{{/if}}
																				{{else}}
																					{{if  $loop692->getItem("@deliverytime_hours")  gt (string) 0}}
																						{{$loop692->getItemEscape("@deliverytime_hours")}}{{$txt['98166::53706_003godz']}}
																					{{/if}}
																				{{/if}}
																				{{if  $loop692->getItem("@deliverytime_minutes")  gt (string) 0}}
																					{{$loop692->getItemEscape("@deliverytime_minutes")}}{{$txt['98166::53706_003min']}}
																				{{/if}}
																			{{/if}}
																		{{/if}}
																		</span>
																{{/if}}
															</div>
															<div class="order1_delitem_comment" style="display:none;" id="delivery_{{$loop692->getItemEscape("@id")}}">
															</div></span>
													</div>
													{{if !( $loop692->getItem("/shop/page/order1/shipping/@hide_cost") == (string)'true')}}
														<div class="order1_delitem_pricebox">
															{{if  $loop692->getItem("@points_enabled")  == (string) 'false'}}
																<label class="order1_delitem_price">
																	<input type="checkbox" name="" value="" checked="checked"/>{{$loop692->getItemEscape("@cost_formatted")}}
																</label>
																<label class="order1_delitem_price_point_disabled showTip_order1" title="{{$txt['98166::53687_011nopoints']}}">
																	<input class="showTip_order1" type="checkbox" disabled="disabled" title="{{$txt['98166::53687_011nopoints']}}"></input>{{$loop692->getItemEscape("@points_cost")}}{{$txt['98166::order1_form_pointsok3']}}
																</label>
															{{elseif  $loop692->getItem("@points_enabled")  == (string) 'true'}}
																<label class="order1_delitem_price">
																	<input type="checkbox" name="" value="" checked="checked"/>{{$loop692->getItemEscape("@cost_formatted")}}
																</label>
																<label class="order1_delitem_price_point">
																	<input type="checkbox" name="" value=""/>{{$loop692->getItemEscape("@points_cost")}}{{$txt['98166::order1_form_pointsok3']}}
																</label>
															{{else}}
																<span class="order1_delitem_pricetitle">{{$txt['98166::50000_001']}}</span>
																{{if  $loop692->getItem("@beforerebate_formatted") and $txt_68638_mxprice}}
																	<del class="order1_delitem_price_oldprice">{{$loop692->getItemEscape("@beforerebate_formatted")}}</del>
																{{/if}}
																<span class="order1_delitem_price" {{if $loop692->getItem("@minworthreached") == (string) 'false'}} {{$txt['98166::53687_610']}} {{elseif $loop692->getItem("@cost") gt (string) 0}}{{if $loop692->getItem("@limitfree") gt (string) 0}} title="{{$txt['98166::53687_011']}}{{$loop692->getItemEscape("@limitfree_formatted")}}{{$txt['98166::53687_012']}}"{{/if}}{{$loop692->getItemEscape("@cost_formatted")}}{{else}} {{$txt['98166::53687_014']}} {{/if}}></span>
															{{/if}}
														</div>
													{{/if}}
												</div>
											</div>
										{{/foreach}}
										<span class="order1_delivery_description">{{$txt['98166::53687_radio1b']}}</span>
										<div id="order1_dvp_calendar_info" class="order1_dvp_time_pick" {{if !( $xml->getItem("/shop/page/order1/balance/@active") == (string)'y' and $xml->getItem("/shop/page/order1/balance/@onlyPrepaid") == (string)'y')}} style="display:none;" {{/if}}>
											<div class="order1_delivery_time_pick_txt_1">
												<span class="order1_delivery_time_pick">{{$txt['98166::01021_time_pick']}}
													<span class="order1_delivery_time_pick_value"></span>
													<div class="order1_delivery_time_pick_hour">
													</div></span>
											</div>
											<div class="order1_delivery_time_pick_txt_2" style="display:none;">
												<span class="order1_delivery_time_pick">{{$txt['98166::01021_time_pick2']}}
													<span class="order1_delivery_time_pick_value"></span>
													<div class="order1_delivery_time_pick_hour">
													</div></span>
											</div>
											<div class="order1_delivery_time_pick_txt_3" style="display:none;">
												<span class="order1_delivery_time_pick">{{$txt['98166::01021_time_pick4']}}
													<span class="order1_delivery_time_pick_value"></span>
													<div class="order1_delivery_time_pick_hour">
													</div></span>
											</div>
											<div class="order1_delivery_time_pick_auto" style="display:none;">
												<span class="order1_delivery_time_pick">
													<span></span>
													<span class="order1_delivery_time_pick_value"></span>
													<div class="order1_delivery_time_pick_hour">
													</div></span>
											</div>
											<div class="order1_time_pick_button">
												<a {{assign "classAttributeTmp13" ""}}{{capture name="classAttributeTmp13" assign="classAttributeTmp13"}}runTopLayerOrder{{/capture}} href="#runToplayerOrder"{{capture name="classAttributeTmp13" assign="classAttributeTmp13"}}btn-regular runTopLayerOrder{{/capture}}  class="{{$classAttributeTmp13}}">{{$txt['98166::01021_time_pick3']}}</a>
											</div>
										</div>
										<div class="order1_comment_background">
											<div class="order1_comment_text" id="order1_dvp_comment_text">
											</div>
										</div>
									</div>
								{{/if}}
							</div>
							<div id="order1_calendar_wrapper" style="display:none;">
								<div id="order1_calendar_standard" style="display:none;">
									<div {{assign "classAttributeTmp7" ""}}{{capture name="classAttributeTmp7" assign="classAttributeTmp7"}}order1_label{{/capture}}{{capture name="classAttributeTmp7" assign="classAttributeTmp7"}}big_label order1_label{{/capture}}  class="{{$classAttributeTmp7}}">
										<span class="order1_label">{{$txt['98166::order1_stock_calendar_title']}}</span>
									</div>
									<div class="calendar_date_selects_wrapper">
										<div class="order1_date" id="calendar_date_select_1" onclick="Order1.chooseDate($(this));" title="{{$txt['98166::order1_date_hovertext']}}">
											<div class="order1_date_sub">
												<input name="calendar_select_date" type="radio" class="order1_radio" style="display:none;"></input>
												<span class="order1_date_day"></span>
												<span class="order1_date_month"></span>
											</div>
										</div>
										<div class="order1_date" id="calendar_date_select_2" onclick="Order1.chooseDate($(this));" title="{{$txt['98166::order1_date_hovertext']}}">
											<div class="order1_date_sub">
												<input name="calendar_select_date" type="radio" class="order1_radio" style="display:none;"></input>
												<span class="order1_date_day"></span>
												<span class="order1_date_month"></span>
											</div>
										</div>
										<div class="order1_date" id="calendar_date_select_3" onclick="Order1.chooseDate($(this));" title="{{$txt['98166::order1_date_hovertext']}}">
											<div class="order1_date_sub">
												<input name="calendar_select_date" type="radio" class="order1_radio" style="display:none;"></input>
												<span class="order1_date_day"></span>
												<span class="order1_date_month"></span>
											</div>
										</div>
										<div class="order1_date" id="calendar_date_select_4" onclick="Order1.chooseDate($(this));" title="{{$txt['98166::order1_date_hovertext']}}">
											<div class="order1_date_sub">
												<input name="calendar_select_date" type="radio" class="order1_radio" style="display:none;"></input>
												<span class="order1_date_day"></span>
												<span class="order1_date_month"></span>
											</div>
										</div>
										<div class="order1_date" id="calendar_date_select_5" onclick="Order1.chooseDate($(this));" title="{{$txt['98166::order1_date_hovertext']}}">
											<div class="order1_date_sub">
												<input name="calendar_select_date" type="radio" class="order1_radio" style="display:none;"></input>
												<span class="order1_date_day"></span>
												<span class="order1_date_month"></span>
											</div>
										</div>
										<div class="order1_date" id="calendar_date_select_6" onclick="Order1.chooseDate($(this));" title="{{$txt['98166::order1_date_hovertext']}}">
											<div class="order1_date_sub">
												<input name="calendar_select_date" type="radio" class="order1_radio" style="display:none;"></input>
												<span class="order1_date_day"></span>
												<span class="order1_date_month"></span>
											</div>
										</div>
										<div class="order1_date" id="calendar_date_select_7" onclick="Order1.chooseDate($(this));" title="{{$txt['98166::order1_date_hovertext']}}">
											<div class="order1_date_sub">
												<input name="calendar_select_date" type="radio" class="order1_radio" style="display:none;"></input>
												<span class="order1_date_day"></span>
												<span class="order1_date_month"></span>
											</div>
										</div>
										<div class="order1_date" id="calendar_date_select_8" title="{{$txt['98166::order1_date_hovercalendar']}}">
											<div class="order1_date_sub">
												<span class="order1_date_calendartxt">{{$txt['98166::order1_date_choose_other_day']}}</span>
											</div>
											<div id="order1_calbind">
											</div>
										</div>
										<div class="clearBoth">
										</div>
									</div>
								</div>
								{{if  $xml->getItem("page/order1/deliverytime_own[@use='true']")}}
									<div id="order1_calendar_deliveryown" style="display:none;">
										<div {{assign "classAttributeTmp7" ""}}{{capture name="classAttributeTmp7" assign="classAttributeTmp7"}}order1_label{{/capture}}{{capture name="classAttributeTmp7" assign="classAttributeTmp7"}}big_label order1_label{{/capture}}  class="{{$classAttributeTmp7}}">
											<span class="order1_label">{{$txt['98166::order1_stock_calendar_title']}}</span>
										</div>
										{{foreach from=$xml->getList("page/order1/deliverytime_own/date") item=loop999}}
											<div {{assign "classAttributeTmp22" ""}}{{capture name="classAttributeTmp22" assign="classAttributeTmp22"}}order1_date{{/capture}} onclick="Order1.chooseDate($(this));" {{if $loop999->getItem("@selected") == (string) 'true'}}{{capture name="classAttributeTmp22" assign="classAttributeTmp22"}}order1_date o1selecteddate{{/capture}}{{/if}}{{if $loop999@iteration == (string) 1}} id="calendar_dateown_select" {{/if}} title="{{$txt['98166::order1_date_hovertext']}}"  class="{{$classAttributeTmp22}}">
												<div class="order1_date_sub">
													<input name="calendar_select_date" type="radio" class="order1_radio" value="{{$loop999->getItemEscape("@date")}}" {{if $loop999->getItem("@selected") == (string) 'true'}} checked="checked" {{/if}}></input>
													<span class="order1_date_day">{{$loop999->getItemEscape("@day")}}</span>
													<span class="order1_date_month">
														{{if  $loop999->getItem("@month")  == (string) 1}}
															{{$txt['98166::30000_013']}}
														{{elseif  $loop999->getItem("@month")  == (string) 2}}
															{{$txt['98166::30000_014']}}
														{{elseif  $loop999->getItem("@month")  == (string) 3}}
															{{$txt['98166::30000_015']}}
														{{elseif  $loop999->getItem("@month")  == (string) 4}}
															{{$txt['98166::30000_016']}}
														{{elseif  $loop999->getItem("@month")  == (string) 5}}
															{{$txt['98166::30000_017']}}
														{{elseif  $loop999->getItem("@month")  == (string) 6}}
															{{$txt['98166::30000_018']}}
														{{elseif  $loop999->getItem("@month")  == (string) 7}}
															{{$txt['98166::30000_019']}}
														{{elseif  $loop999->getItem("@month")  == (string) 8}}
															{{$txt['98166::30000_020']}}
														{{elseif  $loop999->getItem("@month")  == (string) 9}}
															{{$txt['98166::30000_021']}}
														{{elseif  $loop999->getItem("@month")  == (string) 10}}
															{{$txt['98166::30000_022']}}
														{{elseif  $loop999->getItem("@month")  == (string) 11}}
															{{$txt['98166::30000_023']}}
														{{elseif  $loop999->getItem("@month")  == (string) 12}}
															{{$txt['98166::30000_024']}}
														{{/if}}
														</span>
												</div>
											</div>
										{{/foreach}}
									</div>
								{{/if}}
								<div id="calendar_select_hour_div">
									<span>{{$txt['98166::53687_019']}}</span>
									<input type="text" name="calendar_select_hour" class="order1_text" MAXLENGTH="50"/>
								</div>
							</div>
							<input type="hidden" name="calendar_select_active" id="calendar_select_active" value="0"/>
							<div id="order1_payform" class="clearfix" {{if ( $xml->getItem("page/order1/shipping/delivery[@checked='true']/@type") == (string) 'dvp') and !( $xml->getItem("/shop/page/order1/additional/advance/@cash_on_delivery") == (string)'true')}} style="display:none" {{/if}}>
								{{if  $xml->getItem("/shop/page/order1/additional/advance/@value")}}
									<div id="advance_value">{{$txt['98166::53687_zaliczka']}}{{$txt['98166::53687_zaliczka2']}}
									</div>
								{{/if}}
								<div {{assign "classAttributeTmp23" ""}}{{assign "styleAttributeTmp1" ""}}  id="order1_payform_label_advance"{{capture name="classAttributeTmp23" assign="classAttributeTmp23"}}order1_label{{/capture}}{{capture name="classAttributeTmp23" assign="classAttributeTmp23"}}big_label order1_label{{/capture}}{{capture name="styleAttributeTmp1" assign="styleAttributeTmp1"}}display:none{{/capture}}{{if ( $xml->getItem("page/order1/shipping/delivery[@checked='true']/@type") == (string) 'dvp') and ( $xml->getItem("/shop/page/order1/additional/advance/@cash_on_delivery") == (string)'true')}}{{capture name="styleAttributeTmp1" assign="styleAttributeTmp1"}}display:block{{/capture}}{{/if}}{{if ( $xml->getItem("page/order1/shipping/delivery[@checked='true']/@type") == (string) 'prepaid') and ( $xml->getItem("/shop/page/order1/additional/advance/@prepaid") == (string)'true')}}{{capture name="styleAttributeTmp1" assign="styleAttributeTmp1"}}display:block{{/capture}}{{/if}}  style="{{$styleAttributeTmp1}}"  class="{{$classAttributeTmp23}}">
									<span class="order1_label">{{$txt['98166::53687_016payment_advance']}}</span>
								</div>
								<div {{assign "classAttributeTmp24" ""}}{{assign "styleAttributeTmp2" ""}}  id="order1_payform_label_order"{{capture name="classAttributeTmp24" assign="classAttributeTmp24"}}order1_label{{/capture}}{{capture name="classAttributeTmp24" assign="classAttributeTmp24"}}big_label order1_label{{/capture}}{{if $xml->getItem("/shop/page/order1/additional/advance")}}{{if !(( $xml->getItem("page/order1/shipping/delivery[@checked='true']/@type") == (string) 'dvp') and ( $xml->getItem("/shop/page/order1/additional/advance/@cash_on_delivery") == (string)'false') and $xml->getItem("/shop/page/order1/prepaid_methods"))}}{{capture name="styleAttributeTmp2" assign="styleAttributeTmp2"}}display:none{{/capture}}{{/if}}{{if !(( $xml->getItem("page/order1/shipping/delivery[@checked='true']/@type") == (string) 'prepaid') and ( $xml->getItem("/shop/page/order1/additional/advance/@prepaid") == (string)'false') and $xml->getItem("/shop/page/order1/prepaid_methods"))}}{{capture name="styleAttributeTmp2" assign="styleAttributeTmp2"}}display:none{{/capture}}{{/if}}{{/if}}  style="{{$styleAttributeTmp2}}"  class="{{$classAttributeTmp24}}">
									<span class="order1_label">{{$txt['98166::53687_016platnsc']}}</span>
								</div>
								<div class="order1_payitems_wrapper" {{if !( $xml->getItem("/shop/page/order1/prepaid_methods"))}} style="display: none;" {{/if}}>
									{{foreach from=$xml->getList("/shop/page/order1/prepaid_methods/item") item=loop1077}}
										<div {{assign "classAttributeTmp25" ""}}{{capture name="classAttributeTmp25" assign="classAttributeTmp25"}}order1_payment{{/capture}} onclick="Order1.choosePayment($(this));{{if $loop1077->getItem("/shop/page/order1/prepaid_methods/item[@id='2']")}}{{if $loop1077->getItem("@id") == (string)'2'}}Order1.showBon();{{else}}Order1.hideBon();{{/if}}{{/if}}"{{capture name="classAttributeTmp25" assign="classAttributeTmp25"}}order1_payment {{if $loop1077->getItem("@checked") == (string) 'true'}} o1selectedpay{{/if}}{{if $loop1077->getItem("@hideForCod") == (string) 'y'}} hideForCod{{/if}}{{/capture}} title="{{$txt['98166::order1_payment_onclicktext']}}" id="payment_{{$loop1077->getItemEscape("@id")}}" data-payment_name="{{$loop1077->getItemEscape("@name")}}"  class="{{$classAttributeTmp25}}">
											<div class="order1_payment_sub">
												<input name="payform_id" type="radio" class="order1_radio" value="{{$loop1077->getItemEscape("@id")}}" {{if $loop1077->getItem("@checked") == (string)'true'}} checked="checked" {{/if}}></input>
												<span class="order1_payment_header">{{$loop1077->getItem("@name")}}</span>
												{{if  $loop1077->getItem("@icon")  neq (string) ''}}
													<img class="order1_payment_icon" src="{{$loop1077->getItemEscape("@icon")}}" alt="{{$loop1077->getItemEscape("@name")}}"></img>
												{{/if}}
												{{if  $loop1077->getItem("@discount_percent") and  $loop1077->getItem("@discount_percent")  gt (string) 0 and $txt_68313_nz}}
													<small>
														-{{$loop1077->getItem("@discount_percent")}}%{{$loop1077->getItem("$txt_68313_nz")}}</small>
												{{/if}}
												<div class="order1_payment_description" id="description_{{$loop1077->getItemEscape("@id")}}">
													{{if  $loop1077->getItem("@description")}}
														{{$loop1077->getItem("@description")}}
														{{if ( $loop1077->getItem("@id")  == (string) '28') and ( $loop1077->getItem("@allProducts")  == (string) '0')}}
															<span class="order1_payment_lukaswarning">{{$txt['98166::installmentDialog_alertlukas']}}</span>
														{{/if}}
													{{/if}}
													{{if  $loop1077->getItem("@id")  == (string) '2'}}
														<div class="order1_bon" {{if ( $loop1077->getItem("page/order1/prepaid_methods/item[@id = '2']/@checked") == (string) 'true')}} style="display:block;"{{/if}}>
															{{if ( $loop1077->getItem("page/order1/prepaid_methods/item[@id = '2']/@checked")  == (string) 'true') and ( $loop1077->getItem("page/order1/shipping/delivery[@checked = 'true' and @type = 'prepaid']"))}}
																<script type="text/javascript" class="ajaxLoad">Order1.setFlag(0);																</script>

															{{/if}}
															<label for="order1_bon" class="order1_bon">{{$txt['98166::order1_bon']}}
															</label>
															<input type="text" class="order1_bon" name="voucher_id_copy" id="order1_bon_copy" onkeyup="Order1.validateBon()"/>
														</div>
													{{/if}}
												</div>
											</div>
										</div>
									{{/foreach}}
									{{if $txt_68313_zp}}
										<div class="order1_payment" onclick="Order1.choosePayment($(this));Order1.hideBon();" title="{{$txt['98166::order1_payment_onclicktext']}}" id="payment_later">
											<div class="order1_payment_sub">
												<input name="payform_id" type="radio" class="order1_radio" value="" {{if !( $xml->getItem("/shop/page/order1/prepaid_methods"))}} checked="checked" {{/if}}></input>
												<span class="order1_payment_header">{{$txt_68313_zp}}</span>
												<img id="order1_payment_icon_later" class="order1_payment_icon" src="/gfx/__IAI_TEMPLATE_LANG_639_1__/payment_later.png?r=1570606529" alt="{{$txt_68313_zp}}"></img>
												<div class="order1_payment_description" id="description_later">{{$txt['98166::order1_payment_later_desription']}}
												</div>
											</div>
										</div>
									{{/if}}
								</div>
							</div>
							<script type="text/javascript" class="ajaxLoad">
                //    window.WrapMatch($('div.order1_payment'), {{$payments_in_row}}, 'order1_payment_wrapper clearfix');
                //    $('div.order1_payment_wrapper').append('
<div class="description_box"></div>');
            							</script>

							<script type="text/javascript" class="ajaxLoad">Order1.working_days([
{{foreach from=$xml->getList("page/order1/shipping/delivery[@checked='true']/working_days/item") item=loop1155}}{{if  $loop1155@iteration   neq (string) 1}},{{/if}}{{$loop1155->getItemEscape(".")|replace:'7':'0'}}{{/foreach}}
]);Order1.showFields('{{$xml->getItemEscape("page/order1/shipping/delivery[@checked='true']/@id")}}','{{$xml->getItemEscape("page/order1/shipping/delivery[@checked='true']/@calendar")}}','{{$xml->getItemEscape("page/order1/shipping/delivery[@checked='true']/@deliverytime")}}', {{if (( $xml->getItem("page/order1/shipping/delivery[@checked='true']/@type")  == (string) 'dvp') and ( $xml->getItem("/shop/page/order1/additional/advance/@cash_on_delivery") == (string)'true')) or ( $xml->getItem("page/order1/shipping/delivery[@checked='true']/@type")  == (string) 'prepaid')}}'1','{{else}}'0','{{/if}}{{$xml->getItemEscape("page/order1/shipping/delivery[@checked='true']/@time")}}','{{$xml->getItemEscape("page/order1/shipping/delivery[@checked='true']/@deliverytime_days")}}#{{$xml->getItemEscape("page/order1/shipping/delivery[@checked='true']/@deliverytime_hours")}}#{{$xml->getItemEscape("page/order1/shipping/delivery[@checked='true']/@deliverytime_minutes")}}#{{if  $xml->getItem("page/order1/shipping/delivery[@checked='true']/@today") == (string)'true'}}0{{else}}{{$xml->getItemEscape("page/order1/shipping/delivery[@checked='true']/@week_day")}}{{/if}}#{{$xml->getItemEscape("page/order1/shipping/delivery[@checked='true']/@week_amount")}}');							</script>

							<input type="hidden" value="0" name="shipping_for_points"/>
							{{if  $xml->getItem("/shop/page/order1/insurance_products/item[@service='TrustedShops']")}}
								<div id="insurance_products_order1" style="padding: 10px 0;">
									<div id="tsInnerBox" style="text-align: left; border: 1px solid rgb(102, 102, 102); overflow: hidden; padding: 0 10px 15px; color: rgb(102, 102, 102); margin: 0pt auto;">
										<div id="tsName" style="font-weight: bold; padding: 10px; border-left: 6px solid rgb(102, 102, 102); margin: -5px 0 15px -10px">{{$xml->getItem("/shop/page/order1/insurance_products/item[@service='TrustedShops']/@name")}}
										</div>
										<div style="clear:both;">
										</div>
										<div id="tsSeal" style="float: left; padding-right: 20px; padding-left: 15px;padding-bottom:20px;">
											<a target="_blank" href="{{$xml->getItemEscape("/shop/page/order1/insurance_products/item[@service='TrustedShops']/@icon_target")}}">
												<img src="{{$xml->getItemEscape("/shop/page/order1/insurance_products/item[@service='TrustedShops']/@icon_src")}}" title="{{$xml->getItemEscape("/shop/page/order1/insurance_products/item[@service='TrustedShops']/@icon_title")}}"></img></a>
										</div>
										<div id="tsCheck" style="padding-bottom: 10px;">
											<label>
												<input type="checkbox" name="add_insurance" value="true" style="margin-right: 6px;" {{if $xml->getItem("/shop/page/order1/insurance_products/item[@service='TrustedShops']/@checked") == (string) 'true'}} checked="checked" {{/if}}></input>{{$xml->getItem("/shop/page/order1/insurance_products/item[@service='TrustedShops']/@product_desc")}}
											</label>
										</div>
										<div id="tsText">{{$xml->getItem("/shop/page/order1/insurance_products/item[@service='TrustedShops']/@description")}}
										</div>
									</div>
								</div>
							{{/if}}
							<div class="basketedit_summary">
								<div class="basketedit_summary_sub">
									<input type="hidden" name="preview" value="true"/>
									<div class="basketedit_summary_left">
										{{if  $xml->getItem("/shop/client_data/client_balance/limit/@value")  gt (string) '0'}}
											<div class="basketedit_limit_section">
												<div class="basketedit_product_summary">
													<label>{{$txt['98166::53706_001a_limit']}}
													</label>
													<strong class="limit_total">{{$xml->getItemEscape("/shop/client_data/client_balance/limit/@value_formatted")}}</strong>
												</div>
												<div class="basketedit_product_summary">
													<label>{{$txt['98166::53706_001a_limit_touse']}}
													</label>
													<strong class="limit_touse">{{$xml->getItemEscape("/shop/client_data/client_balance/limit/@to_use_formatted")}}</strong>
												</div>
											</div>
										{{/if}}
										{{if ( $xml->getItem("page/basket-details/summary/points/@debit")) and ( $xml->getItem("page/basket-details/summary/points/@debit")  gt (string) 0)}}
											<div class="basketedit_summary_debit">{{$txt['98166::basketedit_summary_points_gain1']}}
												<b>{{$xml->getItemEscape("page/basket-details/summary/points/@debit")}}
													<span>{{$txt['98166::basketedit_points_pts']}}</span></b>{{$txt['98166::basketedit_summary_points_gain2']}}
												{{if  $xml->getItem("/shop/basket/@client_points")  neq (string) '0'}}
													{{$txt['98166::basketedit_points_info1']}}
													<b>{{$xml->getItemEscape("/shop/basket/@client_points")}}
														<span>{{$txt['98166::basketedit_points_pts']}}</span></b>{{$txt['98166::basketedit_dot']}}
												{{/if}}
											</div>
										{{/if}}
									</div>
									<div class="basketedit_summary_right">
										<div class="basketedit_calculations">
											<div class="basketedit_product_summary">
												<label>{{$txt['98166::53706_001a']}}
												</label>
												<strong class="worth_value">{{$xml->getItemEscape("/shop/page/basket-details/summary/money/@beforerebate_formatted")}}</strong>
											</div>
											<div class="basketedit_product_summary">
												<label>{{$txt['98166::53706_001a_kosztprzesylki']}}
												</label>
												<strong {{assign "classAttributeTmp26" ""}}{{capture name="classAttributeTmp26" assign="classAttributeTmp26"}}shipping_value{{/capture}}{{capture name="classAttributeTmp26" assign="classAttributeTmp26"}}shipping_value plus_sign{{/capture}}  class="{{$classAttributeTmp26}}">--</strong>
											</div>
											<div class="basketedit_product_summary">
												<label>{{$txt['98166::53706_001a_kosztformyplatnosci']}}
												</label>
												<strong {{assign "classAttributeTmp27" ""}}{{capture name="classAttributeTmp27" assign="classAttributeTmp27"}}paymentcost_value{{/capture}}{{capture name="classAttributeTmp27" assign="classAttributeTmp27"}}paymentcost_value plus_sign{{/capture}}  class="{{$classAttributeTmp27}}">--</strong>
											</div>
											<div class="basketedit_product_summary">
												<label>{{$txt['98166::53706_001a_kosztubezpieczenia']}}
												</label>
												<strong {{assign "classAttributeTmp28" ""}}{{capture name="classAttributeTmp28" assign="classAttributeTmp28"}}insurance_value{{/capture}}{{capture name="classAttributeTmp28" assign="classAttributeTmp28"}}insurance_value plus_sign{{/capture}}  class="{{$classAttributeTmp28}}">--</strong>
											</div>
											<div class="basketedit_rabats_summary">
												<label>{{$txt['98166::53706_001b']}}
												</label>
												<strong class="total_rebate minus_sign">--</strong>
											</div>
											{{if  $xml->getItem("/shop/client_data/client_balance/balance/@is_selected_and_allowed_order") == (string)'true' and  $xml->getItem("/shop/client_data/client_balance/balance[@is_selected_and_allowed_order='true']/@value")  neq (string) 0}}
												<div class="basketedit_product_summary">
													<label>{{$txt['98166::53706_001a_saldo']}}
													</label>
													<strong {{assign "classAttributeTmp29" ""}}{{capture name="classAttributeTmp29" assign="classAttributeTmp29"}}saldo_value{{/capture}}{{capture name="classAttributeTmp29" assign="classAttributeTmp29"}}saldo_value minus_sign{{/capture}}  class="{{$classAttributeTmp29}}">{{$xml->getItemEscape("/shop/client_data/client_balance/balance[@is_selected_and_allowed_order='true']/@currency_value_formatted")}}</strong>
												</div>
											{{/if}}
											<div style="clear:both">
											</div>
										</div>
										<div class="basketedit_total_summary">
											<label>{{$txt['98166::53706_001c']}}
											</label>
											{{if ( $xml->getItem("/shop/basket/@wholesaler")  == (string) 'true') and !($wholesalerPrice2)}}
												<strong class="topay_value">{{$xml->getItemEscape("/shop/page/basket-details/summary/money/@total_formatted")}}{{$txt['98166::53833_netto']}}</strong>
											{{else}}
												<strong class="topay_value">{{$xml->getItemEscape("/shop/page/basket-details/summary/money/@total_formatted")}}</strong>
											{{/if}}
											{{if ( $xml->getItem("basket/@points_used")) and ( $xml->getItem("basket/@points_used")  neq (string) 0)}}
												<b>{{$txt['98166::53833_andpts']}}
													<span>{{$xml->getItemEscape("basket/@points_used")}}{{$txt['98166::53833_justpts']}}</span></b>
											{{/if}}
										</div>
										{{if $txt_68638_rpoz}}
											<div style="clear:both">
											</div>
											<div class="basketedit_product_summary prepaid_discount_wrapper">
												<label>{{$txt_68638_rpoz}}
													<span id="discount_paiment_name"></span>{{$txt['98166::53833_odr']}}
												</label>
												<strong {{assign "classAttributeTmp30" ""}}{{capture name="classAttributeTmp30" assign="classAttributeTmp30"}}prepaid_discount_value{{/capture}}{{capture name="classAttributeTmp30" assign="classAttributeTmp30"}}prepaid_discount_value minus_sign{{/capture}}  class="{{$classAttributeTmp30}}">--</strong>
											</div>
										{{/if}}
										{{if $txt_60826_advance_a and ( $xml->getItem("/shop/page/order1/additional/advance/@value")  gt (string) 0)}}
											<div {{assign "styleAttributeTmp3" ""}}  class="basketedit_product_summary advance"{{capture name="styleAttributeTmp3" assign="styleAttributeTmp3"}}display: none;{{/capture}}{{if (( $xml->getItem("page/order1/shipping/delivery[@checked='true']/@type") == (string) 'dvp') and ( $xml->getItem("/shop/page/order1/additional/advance/@cash_on_delivery") == (string)'true')) or (( $xml->getItem("page/order1/shipping/delivery[@checked='true']/@type") == (string) 'prepaid') and ( $xml->getItem("/shop/page/order1/additional/advance/@prepaid") == (string)'true'))}}{{capture name="styleAttributeTmp3" assign="styleAttributeTmp3"}}display: block;{{/capture}}{{/if}}  style="{{$styleAttributeTmp3}}">
												<label>{{$txt['98166::60826_advance_a']}}
												</label>
												<strong class="advance_value">--</strong>
											</div>
										{{/if}}
									</div>
									<div class="basketedit_summary_buttons table_display">
										<div class="btn_wrapper">
											{{if count( $xml->getList("page/order1/wrappers/wrapper"))}}
												{{if !( $xml->getItem("page/order1/formaction")  == (string) 'order2.php') and !( $xml->getItem("page/order1/formaction")  == (string) 'order2.php?preview=true')}}
													<label class="wrappers_order" for="display_wrappers">
														<input type="checkbox" class="bg_53687" name="display_wrappers" value="true" id="display_wrappers"/>{{$txt['98166::53687_13123']}}
													</label>
												{{/if}}
											{{/if}}
										</div>
										{{if  $xml->getItem("/shop/basket/delivery_time/@days") and !( $xml->getItem("basket/@shipping_undefined")  == (string) 'true')}}
											<div class="basketedit_summary_shipment_time">
												{{capture name="wys_1_68242" assign="wys_1_68242"}}
													{{$txt['98166::53706_00wys_1']}}
												{{/capture}}
												{{if $wys_1_68242 and ( $xml->getItem("/shop/basket/shipping_time/@week_amount")  == (string) 0) and ( $xml->getItem("/shop/basket/shipping_time/@hours")  == (string) 0) and ( $xml->getItem("/shop/basket/shipping_time/@minutes")  == (string) 0)}}
													<div class="shipping_time_order1">{{$txt['98166::53706_00wys_0']}}
														{{if  $xml->getItem("/shop/basket/shipping_time/@today")  == (string) 'true'}}
															{{$txt['98166::53706_00wys_1']}}
														{{elseif  $xml->getItem("/shop/basket/shipping_time/@week_day")  == (string) 1}}
															{{$txt['98166::53706_00wys_2']}}
														{{elseif  $xml->getItem("/shop/basket/shipping_time/@week_day")  == (string) 2}}
															{{$txt['98166::53706_00wys_3']}}
														{{elseif  $xml->getItem("/shop/basket/shipping_time/@week_day")  == (string) 3}}
															{{$txt['98166::53706_00wys_4']}}
														{{elseif  $xml->getItem("/shop/basket/shipping_time/@week_day")  == (string) 4}}
															{{$txt['98166::53706_00wys_5']}}
														{{elseif  $xml->getItem("/shop/basket/shipping_time/@week_day")  == (string) 5}}
															{{$txt['98166::53706_00wys_6']}}
														{{elseif  $xml->getItem("/shop/basket/shipping_time/@week_day")  == (string) 6}}
															{{$txt['98166::53706_00wys_7']}}
														{{elseif  $xml->getItem("/shop/basket/shipping_time/@week_day")  == (string) 7}}
															{{$txt['98166::53706_00wys_8']}}
														{{/if}}
													</div>
												{{/if}}
												<span class="order1_delivery_time_pick_txt_1" style="display:none;">{{$txt['98166::01021_time_pick']}}</span>
												<span class="order1_delivery_time_pick_txt_2" style="display:none;">{{$txt['98166::01021_time_pick2']}}</span>
												<span class="order1_delivery_time_pick_txt_3" style="display:none;">{{$txt['98166::01021_time_pick4']}}</span>
												<span class="order1_delivery_time_pick_txt_4" style="display:none;">{{$txt['98166::01021_time_pick5']}}</span>
												<span class="order1_delivery_time_pick_txt_auto" style="display:none;"></span>
												<b>
													{{if ( $xml->getItem("/shop/basket/delivery_time/@days")  == (string) 0) and ( $xml->getItem("/shop/basket/delivery_time/@hours")  == (string) 0) and ( $xml->getItem("/shop/basket/delivery_time/@minutes")  == (string) 0)}}
														{{$txt['98166::53706_003c24']}}
													{{else}}
														{{if  $xml->getItem("/shop/basket/delivery_time/@days")  gt (string) 0}}
															{{$xml->getItemEscape("/shop/basket/delivery_time/@days")}}
															{{if  $xml->getItem("/shop/basket/delivery_time/@days")  == (string)'1'}}
																{{$txt['98166::53706_003c']}}
															{{else}}
																{{$txt['98166::53706_003b']}}
															{{/if}}
														{{/if}}
														{{if $hours_68638}}
															{{if  $xml->getItem("/shop/basket/delivery_time/@hours")  gt (string) 0}}
																{{$xml->getItemEscape("/shop/basket/delivery_time/@hours")}}
																{{if  $xml->getItem("/shop/basket/delivery_time/@hours")  gt (string) 1}}
																	{{$hours_68638}}
																{{else}}
																	{{$txt['98166::53706_003godz']}}
																{{/if}}
															{{/if}}
														{{else}}
															{{if  $xml->getItem("/shop/basket/delivery_time/@hours")  gt (string) 0}}
																{{$xml->getItemEscape("/shop/basket/delivery_time/@hours")}}{{$txt['98166::53706_003godz']}}
															{{/if}}
														{{/if}}
														{{if  $xml->getItem("/shop/basket/delivery_time/@minutes")  gt (string) 0}}
															{{$xml->getItemEscape("/shop/basket/delivery_time/@minutes")}}{{$txt['98166::53706_003min']}}
														{{/if}}
													{{/if}}
													</b>
											</div>
										{{/if}}
										<div class="btn_wrapper">
											<button {{assign "classAttributeTmp31" ""}}{{capture name="classAttributeTmp31" assign="classAttributeTmp31"}}order1_button{{/capture}} type="submit"{{capture name="classAttributeTmp31" assign="classAttributeTmp31"}}btn-large order1_button btn_arrow{{/capture}}{{if ( $xml->getItem("page/order1/prepaid_methods/item[@id = '2']/@checked") == (string) 'true') and ( $xml->getItem("page/order1/shipping/delivery[@checked = 'true' and @type = 'prepaid']"))}}{{capture name="classAttributeTmp31" assign="classAttributeTmp31"}}btn-large order1_button order1_idle btn_arrow{{/capture}}{{/if}}  class="{{$classAttributeTmp31}}">{{$txt['98166::53687_018']}}
											</button>
										</div>
									</div>
								</div>
							</div>
						</form>
						<script type="text/javascript" class="ajaxLoad">{{if  $xml->getItem("page/order1/order_calendar")}}
                $(document).ready(function(){init_order1_calendar();});
            {{/if}}
            $(function(){order1_init();})
            var client_data_uses_vat = '{{$xml->getItemEscape("/shop/client_data/@uses_vat")}}';
        						</script>

						<div id="alert_cover" class="projector_alert_55916" style="display:none" onclick="Alertek.hide_alert();">NIEDASIE
						</div>
					</div>
				{{/if}}
			</div>
		</div>
		{{if !( $xml->getItem("action/set_render/item")) or ( $xml->getItem("action/set_render/item/@name")  == (string) 'footer')}}
			<footer class="{{$txt['73991::70925_footer_class']}}">
				{{include file="component_menu_newsletter_77432.tpl"}}
				{{include file="component_menu_tree4_84206.tpl"}}
				{{include file="component_menu_banners2_77615.tpl"}}
				{{include file="component_menu_footer_77616.tpl"}}
				{{include file="component_menu_calendar_61932.tpl"}}
				{{include file="component_menu_tooltip_59581.tpl"}}
				{{include file="component_menu_notice_63739.tpl"}}
				{{include file="component_menu_instalment_72808.tpl"}}
				{{include file="component_menu_dynamically_added_content_79549.tpl"}}
			</footer>
		{{/if}}
		<script type="text/javascript">
                  app_shop.runApp();
            		</script>

		{{if ( $xml->getItem("action/set_render/item/@name")  == (string) 'popup') or !( $xml->getItem("action/set_render/item"))}}
			<!--IAI_TEMPLATE_additional_body_scripts-->{{literal}}
		</body>
	</html>{{/literal}}
{{/if}}
