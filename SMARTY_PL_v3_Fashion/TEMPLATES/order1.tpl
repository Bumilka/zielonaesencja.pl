<!DOCTYPE html SYSTEM "about:legacy-compat">
<!--Typ strony (envelope, 107421.1)-->
{{assign var="meta_langcode_iso639" value="__IAI_TEMPLATE_LANG_639_2__"}}
{{assign var="html5_layout" value=""}}
{{capture name="asyncJS" assign="asyncJS"}}
	{{$txt['107421::asyncJS_vid']}}
{{/capture}}

{{capture name="themeColor" assign="themeColor"}}
	{{$txt['107421::themeColor_vid']}}
{{/capture}}

{{if ( $xml->getItem("action/set_render/item/@name")  == (string) 'popup') or !( $xml->getItem("action/set_render/item"))}}
	{{literal}}
	<html lang="{{/literal}}{{$xml->getItemEscape("/shop/currency/@country")}}{{literal}}" >{{/literal}}
		{{if $meta_langcode_iso639}}
			lang="{{$meta_langcode_iso639}}"
		{{/if}}
		<head>{{$txt['107421::10001_006m']|escape:'iai'}}
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
				{{$txt['107421::10001_meta_emulate']}}
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
				<meta name="keywords" content=" {{$meta_breadcrumb_full}}{{$meta_subcategories}}{{if !( $xml->getItem("page/@keywords") == (string)'') }}{{$xml->getItemEscape("page/@keywords")}}{{else}} {{$txt['107421::10001_003']}} {{/if}} "/>
			{{else}}
			{{/if}}
			{{if  $xml->getItem("page/@search_description")}}
				<meta name="description" content="{{$xml->getItemEscape("page/@search_description")}}"/>
			{{elseif  $xml->getItem("page/@projector_description")}}
				<meta name="description" content="{{$xml->getItemEscape("page/@projector_description")}} | {{$meta_breadcrumb_full}}{{$meta_subcategories}}{{$xml->getItemEscape("page/@description")}}"/>
			{{else}}
				<meta name="description" content="{{$meta_breadcrumb}}{{$meta_subcategories}}{{$xml->getItemEscape("page/@description")}}"/>
			{{/if}}
			{{$txt['107421::20002_001']}}
			<link rel="shortcut icon" href="/gfx/__IAI_TEMPLATE_LANG_639_1__/favicon.ico" />
			{{if $themeColor}}
				<meta name="theme-color" content="{{$themeColor}}"/>
				<meta name="msapplication-navbutton-color" content="{{$themeColor}}"/>
				<meta name="apple-mobile-web-app-status-bar-style" content="{{$themeColor}}"/>
			{{/if}}
			{{if $asyncJS}}
				{{if  $xml->getItem("/shop/@preview")  gt (string) 0}}
					<link rel="stylesheet" type="text/css" href="/gfx/{{$xml->getItemEscape("language/@id")}}/{{$xml->getItemEscape("/shop/@preview")}}/style.css"></link>
				{{else}}
					<link rel="stylesheet" type="text/css" href="/gfx/{{$xml->getItemEscape("language/@id")}}/style.css?r=1570606968"></link>
				{{/if}}
			{{else}}
				{{if  $xml->getItem("/shop/@preview")  gt (string) 0}}
					<link rel="stylesheet" type="text/css" href="/gfx/{{$xml->getItemEscape("language/@id")}}/{{$xml->getItemEscape("/shop/@preview")}}/style.css"></link>
				{{else}}
					<link rel="stylesheet" type="text/css" href="/gfx/{{$xml->getItemEscape("language/@id")}}/style.css?r=1570606968"></link>
				{{/if}}
			{{/if}}
			{{capture name="meta_variable_expires" assign="meta_variable_expires"}}
				{{$txt['107421::10001_meta_expires']}}
			{{/capture}}
			{{capture name="meta_variable_distribution" assign="meta_variable_distribution"}}
				{{$txt['107421::10001_meta_distribution']}}
			{{/capture}}
			{{capture name="meta_variable_rating" assign="meta_variable_rating"}}
				{{$txt['107421::10001_meta_rating']}}
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
			<script type="text/javascript">
                        var app_shop = {
                            urls: {
                                prefix: 'data="/gfx/'.replace('data="', '') + '{{$xml->getItemEscape("language/@id")}}/'
                            },
                            vars: {},
                            txt: {},
                            fn: {},
                            fnrun: {},
                            files: []
                        };
                    			</script>

			{{if !( $xml->getItem("/shop/page/@type")  == (string) 'main')}}
				{{if  $xml->getItem("/shop/@preview")  gt (string) 0}}
					<script type="text/javascript" src="/gfx/{{$xml->getItemEscape("language/@id")}}/{{$xml->getItemEscape("/shop/@preview")}}/shop.js">					</script>

				{{else}}
					<script type="text/javascript" src="/gfx/{{$xml->getItemEscape("language/@id")}}/shop.js?r=1570606968">					</script>

				{{/if}}
			{{/if}}
			<script type="text/javascript" src="/gfx/{{$xml->getItemEscape("language/@id")}}/order1.js.gzip?r=1570606968">			</script>

		</head>
		{{capture name="meta_body_id" assign="meta_body_id"}}
			{{$txt['107421::10001_body_id']}}
		{{/capture}}
		{{literal}}
		<body{{/literal}}{{if $xml->getItem("action/set_render/item[@name='popup']")}}{{literal}} class="popup" {{/literal}}{{/if}}{{literal}}>{{/literal}}
			{{if $meta_body_id}}
				id="{{$meta_body_id}}"
			{{/if}}
			<!--IAI_TEMPLATE_additional_body_top_scripts-->
		{{/if}}
		{{capture name="valuepricedesc" assign="valuepricedesc"}}
			{{$txt['107421::10001_010']}}
		{{/capture}}
		{{capture name="discountpricedesc" assign="discountpricedesc"}}
			{{$txt['107421::10001_011']}}
		{{/capture}}
		{{capture name="promopricedesc" assign="promopricedesc"}}
			{{$txt['107421::10001_012']}}
		{{/capture}}
		{{capture name="detalpricedesc" assign="detalpricedesc"}}
			{{$txt['107421::10001_013']}}
		{{/capture}}
		{{capture name="rebatepricedesc" assign="rebatepricedesc"}}
			{{$txt['107421::10001_014']}}
		{{/capture}}
		{{capture name="nettopricedesc" assign="nettopricedesc"}}
			{{$txt['107421::10001_016']}}
		{{/capture}}
		{{capture name="signbeforeprice" assign="signbeforeprice"}}
			{{$txt['107421::10001_015']}}
		{{/capture}}
		{{capture name="signbetweenpricecurrency" assign="signbetweenpricecurrency"}}
			{{$txt['107421::10001_115']}}
		{{/capture}}
		{{capture name="showcomparelink" assign="showcomparelink"}}
			{{$txt['107421::10001_017']}}
		{{/capture}}
		<script type="text/javascript">
                var script = document.createElement('script');
                script.type = 'text/javascript';
                script.src = app_shop.urls.prefix + 'envelope.js';
                document.getElementsByTagName('body')[0].insertBefore(script, document.getElementsByTagName('body')[0].firstChild);
            		</script>

		<!--Układ graficzny (layout, 107419.1)-->
		<div id="container" class="{{$xml->getItemEscape("page/@type")}}_page {{if $xml->getItem("/shop/page/login[@shop_registration='true']")}}registration_page {{/if}}{{$txt['107419::70925_container_class']}}">
			{{if !( $xml->getItem("action/set_render/item")) or ( $xml->getItem("action/set_render/item/@name")  == (string) 'head')}}
				<header class="clearfix {{$txt['107419::70925_header_class']}}{{if count( $xml->getList("commercial_banner/link")) gt (string) 0}} commercial_banner{{/if}}">
					{{include file="component_menu_javascript_107349.tpl"}}
					{{include file="component_menu_settings_106470.tpl"}}
					{{include file="component_menu_top_106526.tpl"}}
					{{include file="component_menu_search_106472.tpl"}}
					{{include file="component_menu_basket_108155.tpl"}}
					{{include file="component_menu_categories_106527.tpl"}}
					{{include file="component_projector_stepper_106590.tpl"}}
				</header>
			{{/if}}
			<div id="layout" class="{{$txt['107419::70925_layout_class']}}">
				{{if !( $xml->getItem("action/set_render/item")) or ( $xml->getItem("action/set_render/item/@name")  == (string) 'aside')}}
					<aside {{assign "classAttributeTmp5" ""}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}span3{{/capture}}{{if $xml->getItem("page/@type") == (string) 'projector'}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}{{$txt['107419::70925_projector_a_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'search'}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}{{$txt['107419::70925_search_a_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'main'}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}{{$txt['107419::70925_main_a_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'blog-item'}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}{{$txt['107419::70925_blog_item_a_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'blog-list'}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}{{$txt['107419::70925_blog_list_a_class']}}{{/capture}}{{else}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}{{$txt['107419::70925_otherwise_a_class']}}{{/capture}}{{/if}}  class="{{$classAttributeTmp5}}">
						{{include file="component_menu_additional1_106528.tpl"}}
					</aside>
				{{/if}}
				{{if !( $xml->getItem("action/set_render/item")) or ( $xml->getItem("action/set_render/item/@name")  == (string) 'content')}}
					<div {{assign "classAttributeTmp6" ""}}  id="content"{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}span9{{/capture}}{{if $xml->getItem("page/@type") == (string) 'projector'}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}{{$txt['107419::70925_projector_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'search'}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}{{$txt['107419::70925_search_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'main'}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}{{$txt['107419::70925_main_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'navigation'}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}{{$txt['107419::70925_navigation_page_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'blog-list'}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}{{$txt['107419::70925_blog_list_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'blog-item'}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}{{$txt['107419::70925_blog_item_c_class']}}{{/capture}}{{else}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}{{$txt['107419::70925_otherwise_c_class']}}{{/capture}}{{/if}}  class="{{$classAttributeTmp6}}">
						{{include file="component_menu_order_progress_106607.tpl"}}
						{{include file="component_menu_messages_106608.tpl"}}
						<!--CMS na stronie Order1 (order1_cms, 55417.1)-->
						{{if  $xml->getItem("page/order1/text/body")}}
							<div class="n55417">
								<div {{assign "classAttributeTmp7" ""}}{{capture name="classAttributeTmp7" assign="classAttributeTmp7"}}n55417_sub{{/capture}}{{capture name="classAttributeTmp7" assign="classAttributeTmp7"}}n55417_sub cm{{/capture}}  class="{{$classAttributeTmp7}}">{{$xml->getItem("page/order1/text/body")}}
								</div>
							</div>
						{{/if}}
						<!--Wybór sposobu dostawy i płatności (order1, 107711.1)-->
						{{capture name="giftcard_enable" assign="giftcard_enable"}}
							{{$txt['107711::53687_018_gc1']}}
						{{/capture}}
						{{capture name="txt_60826_advance_a" assign="txt_60826_advance_a"}}
							{{$txt['107711::60826_advance_a']}}
						{{/capture}}
						{{capture name="wholesalerPrice2" assign="wholesalerPrice2"}}
							{{$txt['107711::63643_wholesalerPrice2']}}
						{{/capture}}
						{{capture name="txt_68313_nz" assign="txt_68313_nz"}}
							{{$txt['107711::68313_nz']}}
						{{/capture}}
						{{capture name="txt_68313_zp" assign="txt_68313_zp"}}
							{{$txt['107711::68313_zp']}}
						{{/capture}}
						{{capture name="payments_in_row" assign="payments_in_row"}}
							{{$txt['107711::63643_payments_in_row']}}
						{{/capture}}
						{{capture name="txt_68638_rpoz" assign="txt_68638_rpoz"}}
							{{$txt['107711::68638_rpoz']}}
						{{/capture}}
						{{capture name="txt_68638_mxprice" assign="txt_68638_mxprice"}}
							{{$txt['107711::68638_mxprice']}}
						{{/capture}}
						{{capture name="hours_68638" assign="hours_68638"}}
							{{$txt['107711::hours_68638']}}
						{{/capture}}
						{{capture name="immediately_txt" assign="immediately_txt"}}
							{{$txt['107711::68313_immediately']}}
						{{/capture}}
						<script class="ajaxLoad">{{if  $xml->getItem("/shop/page/order1/additional/advance/@cash_on_delivery") == (string)'true' and  $xml->getItem("/shop/page/order1/additional/advance/@prepaid") == (string)'false'}}
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
            var order1_txt_dzien = '{{$txt['107711::53706_003c']}}';
            var order1_txt_dni = '{{$txt['107711::53706_003b']}}';
            var order1_txt_godz = '{{$txt['107711::53706_003godz']}}';
            var order1_txt_godz2 = '{{$hours_68638}}';
            var order1_txt_min = '{{$txt['107711::53706_003min']}}';
            var order1_txt_do24 = '{{$txt['107711::53706_003c24']}}';
            var saldo_balance_value = '{{$xml->getItemEscape("page/order1/balance/@currency_value")}}';
            var limit_balance_value = '{{$xml->getItemEscape("page/order1/balance/@currency_limit")}}';
            var limit_mode = 'n'
            {{if !( $xml->getItem("page/order1/balance/@allowChoosePaymentType")  == (string) 'y')}}
                limit_mode = '{{$xml->getItemEscape("page/order1/balance/@tradeCredit")}}';
            {{/if}}
            var payments_in_row = '{{$payments_in_row}}';
            var saldo_payform_hide = false;
            var saldo_limit_flag = false;
            {{if  $xml->getItem("page/order1/balance/@active") == (string)'y' and ( $xml->getItem("page/order1/balance/@currency_value")  gt (string)  $xml->getItem("/shop/basket/@total"))}}
                saldo_payform_hide = true;
            {{/if}}{{if  $xml->getItem("page/order1/balance/@limit")  gt (string) 0}}
                saldo_limit_flag = true;
            {{/if}}
            var shipping_time = '{{$xml->getItemEscape("/shop/basket/shipping_time/@days")}}';
            app_shop.vars.Order1 = {}
        						</script>

						{{if  $xml->getItem("page/order1/order_calendar")}}
							<script class="ajaxLoad">
                app_shop.vars.Order1.calendar = {};
                app_shop.vars.Order1.calendar.D1 = {{$xml->getItemEscape("page/order1/order_calendar/@date_d")}};
                app_shop.vars.Order1.calendar.M1 = {{$xml->getItemEscape("page/order1/order_calendar/@date_m")}};
                app_shop.vars.Order1.calendar.Y1 = {{$xml->getItemEscape("page/order1/order_calendar/@date_y")}};
                app_shop.vars.Order1.calendar.Mindate = new Date({{$xml->getItemEscape("page/order1/order_calendar/@date_y")}},{{$xml->getItemEscape("page/order1/order_calendar/@date_m")}}-1,{{$xml->getItemEscape("page/order1/order_calendar/@date_d")}});
                app_shop.vars.Order1.calendar.Seldate = new Date({{$xml->getItemEscape("page/order1/order_calendar/@select_y")}},{{$xml->getItemEscape("page/order1/order_calendar/@select_m")}}-1,{{$xml->getItemEscape("page/order1/order_calendar/@select_d")}});
        var Holidays = {};
{{foreach from=$xml->getList("page/order1/order_calendar/holiday") item=loop323}}
                    Holidays["{{$loop323->getItemEscape("@date_d")}}_{{$loop323->getItemEscape("@date_m")}}_{{$loop323->getItemEscape("@date_y")}}"] = 1;
{{/foreach}}
        app_shop.vars.Order1.calendar.holi = 0;
                {{if  $xml->getItem("page/order1/order_calendar/holiday")}}
                app_shop.vars.Order1.calendar.holi = 1;
                {{/if}}							</script>

						{{/if}}
						<script class="ajaxLoad">
            var only_virtual = '{{$xml->getItemEscape("page/order1/@only-virtual")}}';
        						</script>

						<form method="post" class="order1_form" onsubmit="return Order1.checkForm();" action="{{$xml->getItemEscape("page/order1/formaction")}}{{if ( $xml->getItem("page/order1/formaction") == (string) 'order2.php')}}?preview=true{{/if}} ">
							<div {{assign "classAttributeTmp8" ""}}{{capture name="classAttributeTmp8" assign="classAttributeTmp8"}}order1_label{{/capture}}{{capture name="classAttributeTmp8" assign="classAttributeTmp8"}}big_label order1_label{{/capture}}  class="{{$classAttributeTmp8}}">
								{{if  $xml->getItem("page/order1/balance/@active") == (string)'y'}}
									class="big_labelorder1_labelorder1_balance"
									<span class="order1_label">{{$txt['107711::delivery_form_titlesaldo']}}</span>
								{{else}}
									<span class="order1_label">{{$txt['107711::delivery_form_title']}}</span>
								{{/if}}
							</div>
							{{if  $xml->getItem("page/order1/balance[@active='y']")}}
								<table id="order1_balance">
									<tr>
										<th>
											{{if  $xml->getItem("page/order1/balance/@limit")  == (string) 0}}
												{{$txt['107711::delivery_form_0001']}}
											{{else}}
												{{$txt['107711::delivery_form_0001a']}}
											{{/if}}
										</th>
										<th>{{$txt['107711::delivery_form_0002']}}
										</th>
										<th>{{$txt['107711::delivery_form_0003']}}
										</th>
										<th>{{$txt['107711::delivery_form_0004']}}
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
								<div class="order1_balance_info">{{$txt['107711::53687_014info']}}
								</div>
							{{/if}}
							<div id="order1_delivery" {{if count( $xml->getList("page/order1/shipping/delivery")) == (string) 0}} style="display:none;" {{/if}}>
								<div id="order1_mobile_switcher" class="d-sm-none">
									{{if count( $xml->getList("page/order1/shipping/delivery[@type = 'prepaid']"))  gt (string) 0}}
										<a href="#order1_prepaid" {{if ( $xml->getItem("page/order1/shipping/delivery[@type = 'prepaid' and @checked = 'true']")) or (!( $xml->getItem("page/order1/shipping/delivery[@type = 'prepaid' and @checked = 'true']")) and !( $xml->getItem("page/order1/shipping/delivery[@type = 'dvp' and @checked = 'true']")))}} class="active" {{/if}}>{{$txt['107711::53687_balance_3']}}</a>
									{{/if}}
									{{if count( $xml->getList("page/order1/shipping/delivery[@type = 'dvp']"))  gt (string) 0}}
										<a href="#order1_dvp" {{if ( $xml->getItem("page/order1/shipping/delivery[@type = 'dvp' and @checked = 'true']"))}} class="active" {{/if}}>{{$txt['107711::53687_balance_3b']}}</a>
									{{/if}}
								</div>
								{{if count( $xml->getList("page/order1/shipping/delivery[@type = 'prepaid']"))  gt (string) 0}}
									<div {{assign "classAttributeTmp9" ""}}  id="order1_prepaid"{{capture name="classAttributeTmp9" assign="classAttributeTmp9"}}order1_shippings inactive_shippings{{/capture}}{{if ( $xml->getItem("page/order1/shipping/delivery[@type = 'prepaid' and @checked = 'true']") or ( $xml->getItem("/shop/page/order1/balance/@active") == (string)'y' and $xml->getItem("/shop/page/order1/balance/@onlyPrepaid") == (string)'y'))}}{{capture name="classAttributeTmp9" assign="classAttributeTmp9"}}order1_shippings {{if ( $xml->getItem("page/order1/shipping/delivery[@type = 'prepaid' and @checked = 'true']")) or (!( $xml->getItem("page/order1/shipping/delivery[@type = 'prepaid' and @checked = 'true']")) and !( $xml->getItem("page/order1/shipping/delivery[@type = 'dvp' and @checked = 'true']")))}} active {{/if}}{{/capture}}{{/if}}  class="{{$classAttributeTmp9}}">
										{{if  $xml->getItem("page/order1/balance[@allowChoosePaymentType='y']")}}
											<input type="radio" name="chosenPayment" value="tradeCredit" checked="checked" style="display:none;"/>
											<input type="radio" name="chosenPayment" value="prepaid" style="display:none;"/>
										{{/if}}
										<div id="order1_prepaid_label" class="order1_delivery_label">
											<div {{assign "classAttributeTmp10" ""}}{{capture name="classAttributeTmp10" assign="classAttributeTmp10"}}order1_big_checkbox{{/capture}} onclick="Order1.chooseDeliveryMethod($(this))" {{if ( $xml->getItem("page/order1/shipping/delivery[@type = 'prepaid' and @checked = 'true']") or ( $xml->getItem("/shop/page/order1/balance/@active") == (string)'y' and $xml->getItem("/shop/page/order1/balance/@onlyPrepaid") == (string)'y'))}}{{capture name="classAttributeTmp10" assign="classAttributeTmp10"}}order1_big_checkbox checked{{/capture}}{{/if}}  class="{{$classAttributeTmp10}}">
											</div>
											{{if  $xml->getItem("page/order1/balance/@active") == (string)'y'}}
												<span {{assign "classAttributeTmp11" ""}}{{capture name="classAttributeTmp11" assign="classAttributeTmp11"}}order1_delivery_title{{/capture}}{{if ( $xml->getItem("page/order1/shipping/delivery[@type = 'prepaid' and @checked = 'true']") or ( $xml->getItem("/shop/page/order1/balance/@active") == (string)'y' and $xml->getItem("/shop/page/order1/balance/@onlyPrepaid") == (string)'y'))}}{{capture name="classAttributeTmp11" assign="classAttributeTmp11"}}order1_delivery_title active_title{{/capture}}{{/if}}   class="{{$classAttributeTmp11}}">
													{{if  $xml->getItem("page/order1/balance/@limit")  == (string) 0 and  $xml->getItem("page/order1/balance/@onlyPrepaid") == (string)'n'}}
														{{$txt['107711::53687_balance_1']}}
													{{elseif ( $xml->getItem("page/order1/balance/@limit")  == (string) 0 and  $xml->getItem("page/order1/balance/@onlyPrepaid") == (string)'y') or ( $xml->getItem("page/order1/balance/@limit")  neq (string) 0 and  $xml->getItem("page/order1/balance/@onlyPrepaid") == (string)'y' and  $xml->getItem("page/order1/balance/@tradeCredit") == (string)'n')}}
														{{$txt['107711::53687_balance_2']}}
													{{elseif  $xml->getItem("page/order1/balance/@limit")  neq (string) 0 and  $xml->getItem("page/order1/balance/@onlyPrepaid") == (string)'n'}}
														{{$txt['107711::53687_balance_3']}}
													{{elseif  $xml->getItem("page/order1/balance/@limit")  neq (string) 0 and  $xml->getItem("page/order1/balance/@onlyPrepaid") == (string)'y' and  $xml->getItem("page/order1/balance/@tradeCredit") == (string)'y'}}
														{{$txt['107711::53687_balance_4']}}
													{{/if}}
													</span>
											{{else}}
												<span {{assign "classAttributeTmp12" ""}}{{capture name="classAttributeTmp12" assign="classAttributeTmp12"}}order1_delivery_title{{/capture}}{{if ( $xml->getItem("page/order1/shipping/delivery[@type = 'prepaid' and @checked = 'true']") or ( $xml->getItem("/shop/page/order1/balance/@active") == (string)'y' and $xml->getItem("/shop/page/order1/balance/@onlyPrepaid") == (string)'y'))}}{{capture name="classAttributeTmp12" assign="classAttributeTmp12"}}order1_delivery_title active_title{{/capture}}{{/if}}   class="{{$classAttributeTmp12}}">
													{{if  $xml->getItem("page/order1/balance/@limit")  neq (string) 0 and  $xml->getItem("page/order1/balance/@tradeCredit") == (string)'y' and  $xml->getItem("page/order1/balance/@active") == (string)'n' and !( $xml->getItem("page/order1/balance/@allowChoosePaymentType") == (string)'y')}}
														{{$txt['107711::53687_balance_4']}}
													{{else}}
														{{$txt['107711::53687_radio2']}}
													{{/if}}
													</span>
											{{/if}}
										</div>
										<div id="order1_prepaid_legend" class="order1_delivery_legend">
											<span class="order1_legend_courier_name">{{$txt['107711::order1_legend_courier_name']}}</span>
											<span class="order1_legend_courier_time">{{$txt['107711::order1_legend_courier_time']}}</span>
											{{if !( $xml->getItem("/shop/page/order1/shipping/@hide_cost") == (string)'true')}}
												<span class="order1_legend_courier_price">{{$txt['107711::order1_legend_courier_price']}}</span>
											{{/if}}
										</div>
										{{foreach from=$xml->getList("page/order1/shipping/delivery[@type = 'prepaid']") item=loop470}}
											<div {{assign "classAttributeTmp13" ""}}{{capture name="classAttributeTmp13" assign="classAttributeTmp13"}}order1_delitem{{/capture}}{{if $loop470->getItem("@sameday") == (string)'true'}} data-sameday="true" {{/if}} onclick="Order1.working_days([ {{foreach from=$loop470->getList("working_days/item") item=loop477}}{{if $loop477@iteration neq (string) 1}},{{/if}}{{$loop477->getItemEscape(".")|replace:'7':'0'}}{{/foreach}} ]);Order1.chooseDelivery($(this));Order1.showFields('{{$loop470->getItemEscape("@id")}}','{{if $loop470->getItem("@sameday") == (string) 'true'}}n{{else}}{{$loop470->getItemEscape("@calendar")}}{{/if}}','{{$loop470->getItemEscape("@deliverytime")}}','1','{{$loop470->getItemEscape("@time")}}','{{if $loop470->getItem("@id") == (string) '0-1'}}{{$loop470->getItemEscape("/shop/page/order1/stocks/stock[@selected = 'selected']/@pickup_days")}}#{{$loop470->getItemEscape("/shop/page/order1/stocks/stock[@selected = 'selected']/@pickup_hours")}}#{{$loop470->getItemEscape("/shop/page/order1/stocks/stock[@selected = 'selected']/@pickup_minutes")}}#{{if $loop470->getItem("@today") == (string)'true'}}0{{else}}{{$loop470->getItemEscape("@week_day")}}{{/if}}#{{$loop470->getItemEscape("@week_amount")}}{{else}}{{$loop470->getItemEscape("@time_days")}}#{{$loop470->getItemEscape("@time_hours")}}#{{$loop470->getItemEscape("@time_minutes")}}#{{if $loop470->getItem("@today") == (string)'true'}}0{{else}}{{$loop470->getItemEscape("@week_day")}}{{/if}}#{{$loop470->getItemEscape("@week_amount")}}{{/if}}');" id="delivery_{{$loop470->getItemEscape("@id")}}" title=" {{if $loop470->getItem("@minworthreached") == (string) 'false'}}{{$txt['107711::order1_delitem_unavailable']}}{{/if}} " {{if $loop470->getItem("@checked") == (string) 'true'}}{{capture name="classAttributeTmp13" assign="classAttributeTmp13"}}order1_delitem o1selected{{/capture}}{{/if}}{{if $loop470->getItem("@minworthreached") == (string) 'false'}}{{capture name="classAttributeTmp13" assign="classAttributeTmp13"}}order1_delitem o1disabled{{/capture}} onclick="" {{/if}}  class="{{$classAttributeTmp13}}">
												<div class="order1_delitem_sub">
													<span class="order1_delitem_radio" style="display:none;">
														<input type="radio" name="shipping" class="order1_delitem_radio" value="{{$loop470->getItemEscape("@id")}}" {{if $loop470->getItem("@checked") == (string) 'true'}} checked="checked"{{/if}}{{if $loop470->getItem("@minworthreached") == (string) 'false'}} disabled="disabled"{{/if}} title="{{$loop470->getItemEscape("@comment")}}"></input></span>
													<div class="order1_delitem_header">
														{{if  $loop470->getItem("@id")  == (string) '93-1'}}
															<img class="order1_delitem_icon" src="/gfx/__IAI_TEMPLATE_LANG_639_1__/online_delivery.png?r=1570606968" alt="{{$loop470->getItemEscape("@name")}}" title="{{$loop470->getItemEscape("@name")}}"></img>
														{{else}}
															{{if  $loop470->getItem("@icon")}}
																<img class="order1_delitem_icon" src="{{$loop470->getItemEscape("@icon")}}" alt="{{$loop470->getItemEscape("@name")}}" title="{{$loop470->getItemEscape("@name")}}"></img>
															{{/if}}
														{{/if}}
														<span class="order1_delitem_name">{{$loop470->getItemEscape("@name")}}
															{{if !( $loop470->getItem("@sameday") == (string)'true')}}
																<div class="order1_delitem_time">
																	{{if  $loop470->getItem("@minworthreached")  == (string) 'false'}}
																		<span class="order1_delitem_time inactive_time">{{$txt['107711::53687_010']}}{{$loop470->getItemEscape("@minworth_formatted")}}</span>
																	{{/if}}
																	{{if  $loop470->getItem("@minworthreached")  == (string) 'true'}}
																		<span class="order1_delitem_time">
																			{{if  $loop470->getItem("@id")  == (string) '0-1'}}
																				{{if count( $loop470->getList("/shop/page/order1/stocks/stock"))  gt (string) 0}}
																					{{foreach from=$loop470->getList("/shop/page/order1/stocks/stock[@selected = 'selected']") item=loop526}}
																						{{if  $loop526->getItem("@undefinded_time")  == (string) 'true'}}
																							{{$txt['107711::order1_stock_time_undefined2']}}
																						{{else}}
																							{{if $immediately_txt and ( $loop526->getItem("@pickup_days")  == (string) 0) and ( $loop526->getItem("@pickup_hours")  == (string) 0) and ( $loop526->getItem("@pickup_minutes")  == (string) 0)}}
																								{{$immediately_txt}}
																							{{else}}
																								{{$txt['107711::order1_stock_time_defined']}}
																								{{if  $loop526->getItem("@pickup_days")  gt (string) 0}}
																									{{$loop526->getItemEscape("@pickup_days")}}
																									{{if  $loop526->getItem("@pickup_days")  == (string)'1'}}
																										{{$txt['107711::53706_003c']}}
																									{{else}}
																										{{$txt['107711::53706_003b']}}
																									{{/if}}
																								{{/if}}
																								{{if $hours_68638}}
																									{{if  $loop526->getItem("@pickup_hours")  gt (string) 0}}
																										{{$loop526->getItemEscape("@pickup_hours")}}
																										{{if  $loop526->getItem("@pickup_hours")  gt (string) 1}}
																											{{$hours_68638}}
																										{{else}}
																											{{$txt['107711::53706_003godz']}}
																										{{/if}}
																									{{/if}}
																								{{else}}
																									{{if  $loop526->getItem("@pickup_hours")  gt (string) 0}}
																										{{$loop526->getItemEscape("@pickup_hours")}}{{$txt['107711::53706_003godz']}}
																									{{/if}}
																								{{/if}}
																								{{if  $loop526->getItem("@pickup_minutes")  gt (string) 0}}
																									{{$loop526->getItemEscape("@pickup_minutes")}}{{$txt['107711::53706_003min']}}
																								{{/if}}
																							{{/if}}
																						{{/if}}
																					{{/foreach}}
																				{{else}}
																					{{$txt['107711::53687_0990']}}{{$txt['107711::order1_stock_time_undefined2']}}
																				{{/if}}
																			{{else}}
																				{{$txt['107711::53687_0990']}}
																				{{if ( $loop470->getItem("@deliverytime_days")  == (string) 0) and ( $loop470->getItem("@deliverytime_hours")  == (string) 0) and ( $loop470->getItem("@deliverytime_minutes")  == (string) 0)}}
																					{{$txt['107711::53687_0991a']}}
																				{{else}}
																					{{if  $loop470->getItem("@deliverytime_days")  gt (string) 0}}
																						{{$loop470->getItemEscape("@deliverytime_days")}}
																						{{if  $loop470->getItem("@deliverytime_days")  == (string)'1'}}
																							{{$txt['107711::53706_003c']}}
																						{{else}}
																							{{$txt['107711::53706_003b']}}
																						{{/if}}
																					{{/if}}
																					{{if $hours_68638}}
																						{{if  $loop470->getItem("@deliverytime_hours")  gt (string) 0}}
																							{{$loop470->getItemEscape("@deliverytime_hours")}}
																							{{if  $loop470->getItem("@deliverytime_hours")  gt (string) 1}}
																								{{$hours_68638}}
																							{{else}}
																								{{$txt['107711::53706_003godz']}}
																							{{/if}}
																						{{/if}}
																					{{else}}
																						{{if  $loop470->getItem("@deliverytime_hours")  gt (string) 0}}
																							{{$loop470->getItemEscape("@deliverytime_hours")}}{{$txt['107711::53706_003godz']}}
																						{{/if}}
																					{{/if}}
																					{{if  $loop470->getItem("@deliverytime_minutes")  gt (string) 0}}
																						{{$loop470->getItemEscape("@deliverytime_minutes")}}{{$txt['107711::53706_003min']}}
																					{{/if}}
																				{{/if}}
																			{{/if}}
																			</span>
																	{{/if}}
																</div>
															{{/if}}
															<div class="order1_delitem_comment" style="display:none;" id="delivery_{{$loop470->getItemEscape("@id")}}">
															</div></span>
													</div>
													{{if !( $loop470->getItem("/shop/page/order1/shipping/@hide_cost") == (string)'true')}}
														<div class="order1_delitem_pricebox">
															{{if  $loop470->getItem("@points_enabled")  == (string) 'false'}}
																<label class="order1_delitem_price">
																	<input type="checkbox" name="" value="" checked="checked" {{if $loop470->getItem("@minworthreached") == (string) 'false'}} disabled="disabled"{{/if}}></input>{{$loop470->getItemEscape("@cost_formatted")}}
																</label>
																<label class="order1_delitem_price_point_disabled showTip_order1" title="{{$txt['107711::53687_011nopoints']}}">
																	<input class="showTip_order1" type="checkbox" disabled="disabled" title="{{$txt['107711::53687_011nopoints']}}"></input>{{$loop470->getItemEscape("@points_cost")}}{{$txt['107711::order1_form_pointsok3']}}
																</label>
															{{elseif  $loop470->getItem("@points_enabled")  == (string) 'true'}}
																<label class="order1_delitem_price">
																	<input type="checkbox" name="" value="" checked="checked" {{if $loop470->getItem("@minworthreached") == (string) 'false'}} disabled="disabled"{{/if}}></input>{{$loop470->getItemEscape("@cost_formatted")}}
																</label>
																<label class="order1_delitem_price_point">
																	<input type="checkbox" name="" value="" {{if $loop470->getItem("@minworthreached") == (string) 'false'}} disabled="disabled"{{/if}}></input>{{$loop470->getItemEscape("@points_cost")}}{{$txt['107711::order1_form_pointsok3']}}
																</label>
															{{else}}
																<span class="order1_delitem_pricetitle">{{$txt['107711::50000_001']}}</span>
																{{if  $loop470->getItem("@beforerebate_formatted") and $txt_68638_mxprice}}
																	<del class="order1_delitem_price_oldprice">{{$loop470->getItemEscape("@beforerebate_formatted")}}</del>
																{{/if}}
																<span class="order1_delitem_price" {{if $loop470->getItem("@minworthreached") == (string) 'false'}} {{$txt['107711::53687_610']}} {{elseif $loop470->getItem("@cost") gt (string) 0}}{{if $loop470->getItem("@limitfree") gt (string) 0}} title="{{$txt['107711::53687_011']}}{{$loop470->getItemEscape("@limitfree_formatted")}}{{$txt['107711::53687_012']}}"{{/if}}{{$loop470->getItemEscape("@cost_formatted")}}{{else}} {{$txt['107711::53687_014']}} {{/if}}></span>
															{{/if}}
														</div>
													{{/if}}
												</div>
											</div>
										{{/foreach}}
										<span class="order1_delivery_description">{{$txt['107711::53687_radio2b']}}</span>
										<div id="order1_calendar_info" class="order1_dvp_time_pick" {{if $xml->getItem("/shop/basket/delay_time[@unknown_delivery_time='true']")}} style="display:none;" {{/if}}>
											<div class="order1_delivery_time_pick_txt_1">
												<span class="order1_delivery_time_pick">{{$txt['107711::01021_time_pick']}}
													<span class="order1_delivery_time_pick_value"></span>
													<div class="order1_delivery_time_pick_hour">
													</div></span>
											</div>
											<div class="order1_delivery_time_pick_txt_2" style="display:none;">
												<span class="order1_delivery_time_pick">{{$txt['107711::01021_time_pick2']}}
													<span class="order1_delivery_time_pick_value"></span>
													<div class="order1_delivery_time_pick_hour">
													</div></span>
											</div>
											<div class="order1_delivery_time_pick_txt_3" style="display:none;">
												<span class="order1_delivery_time_pick">{{$txt['107711::01021_time_pick4']}}
													<span class="order1_delivery_time_pick_value"></span>
													<div class="order1_delivery_time_pick_hour">
													</div></span>
											</div>
											<div class="order1_delivery_time_pick_auto" style="display:none;">
												<span class="order1_delivery_time_pick">
													<span></span>
													<span class="order1_delivery_time_pick_value"></span>
													<span class="order1_delivery_time_pick_de"></span>
													<div class="order1_delivery_time_pick_hour">
													</div></span>
											</div>
											<div class="order1_time_pick_button">
												<a {{assign "classAttributeTmp14" ""}}{{capture name="classAttributeTmp14" assign="classAttributeTmp14"}}runTopLayerOrder{{/capture}} href="#runToplayerOrder"{{capture name="classAttributeTmp14" assign="classAttributeTmp14"}}btn-regular runTopLayerOrder{{/capture}}  class="{{$classAttributeTmp14}}">{{$txt['107711::01021_time_pick3']}}</a>
											</div>
										</div>
										<div class="order1_comment_background">
											<div class="order1_comment_text" id="order1_prepaid_comment_text">
											</div>
										</div>
									</div>
								{{/if}}
								{{if count( $xml->getList("page/order1/shipping/delivery[@type = 'dvp']"))  gt (string) 0}}
									<div {{assign "classAttributeTmp15" ""}}  id="order1_dvp"{{capture name="classAttributeTmp15" assign="classAttributeTmp15"}}order1_shippings inactive_shippings{{/capture}}{{if !( $xml->getItem("/shop/page/order1/balance/@active") == (string)'y' and $xml->getItem("/shop/page/order1/balance/@onlyPrepaid") == (string)'y')}}{{if $xml->getItem("page/order1/shipping/delivery[(@type = 'dvp') and (@checked = 'true')]")}}{{capture name="classAttributeTmp15" assign="classAttributeTmp15"}} order1_shippings {{if ( $xml->getItem("page/order1/shipping/delivery[@type = 'dvp' and @checked = 'true']"))}} active {{/if}}{{/capture}}{{/if}}{{/if}}{{if $xml->getItem("/shop/page/order1/balance/@active") == (string)'y' and $xml->getItem("/shop/page/order1/balance/@onlyPrepaid") == (string)'y'}}{{capture name="classAttributeTmp15" assign="classAttributeTmp15"}}order1_shippings balance_disabled{{/capture}}{{/if}}  class="{{$classAttributeTmp15}}">
										<div id="order1_dvp_label" class="order1_delivery_label">
											<div {{assign "classAttributeTmp16" ""}}{{capture name="classAttributeTmp16" assign="classAttributeTmp16"}}order1_big_checkbox{{/capture}}{{if !( $xml->getItem("/shop/page/order1/balance/@active") == (string)'y' and $xml->getItem("/shop/page/order1/balance/@onlyPrepaid") == (string)'y')}} onclick="Order1.chooseDeliveryMethod($(this))" {{/if}}{{if $xml->getItem("page/order1/shipping/delivery[@type = 'dvp' and @checked = 'true']") and !( $xml->getItem("/shop/page/order1/balance/@active") == (string)'y' and $xml->getItem("/shop/page/order1/balance/@onlyPrepaid") == (string)'y')}}{{capture name="classAttributeTmp16" assign="classAttributeTmp16"}}order1_big_checkbox checked{{/capture}}{{/if}}  class="{{$classAttributeTmp16}}">
											</div>
											{{if  $xml->getItem("page/order1/balance/@active") == (string)'y'}}
												<span {{assign "classAttributeTmp17" ""}}{{capture name="classAttributeTmp17" assign="classAttributeTmp17"}}order1_delivery_title{{/capture}}{{if $xml->getItem("page/order1/shipping/delivery[@type = 'dvp' and @checked = 'true']") and !( $xml->getItem("/shop/page/order1/balance/@active") == (string)'y' and $xml->getItem("/shop/page/order1/balance/@onlyPrepaid") == (string)'y')}}{{capture name="classAttributeTmp17" assign="classAttributeTmp17"}}order1_delivery_title active_title{{/capture}}{{/if}}   class="{{$classAttributeTmp17}}">
													{{if  $xml->getItem("page/order1/balance/@limit")  == (string) 0 and  $xml->getItem("page/order1/balance/@onlyPrepaid") == (string)'n'}}
														{{$txt['107711::53687_balance_1b']}}
													{{elseif ( $xml->getItem("page/order1/balance/@limit")  == (string) 0 and  $xml->getItem("page/order1/balance/@onlyPrepaid") == (string)'y') or ( $xml->getItem("page/order1/balance/@limit")  neq (string) 0 and  $xml->getItem("page/order1/balance/@onlyPrepaid") == (string)'y' and  $xml->getItem("page/order1/balance/@tradeCredit") == (string)'n')}}
														{{$txt['107711::53687_balance_2b']}}
													{{elseif  $xml->getItem("page/order1/balance/@limit")  neq (string) 0 and  $xml->getItem("page/order1/balance/@onlyPrepaid") == (string)'n'}}
														{{$txt['107711::53687_balance_3b']}}
													{{elseif  $xml->getItem("page/order1/balance/@limit")  neq (string) 0 and  $xml->getItem("page/order1/balance/@onlyPrepaid") == (string)'y' and  $xml->getItem("page/order1/balance/@tradeCredit") == (string)'y'}}
														{{$txt['107711::53687_balance_4b']}}
													{{/if}}
													</span>
											{{else}}
												<span {{assign "classAttributeTmp18" ""}}{{capture name="classAttributeTmp18" assign="classAttributeTmp18"}}order1_delivery_title{{/capture}} id="order1_title_left" {{if $xml->getItem("page/order1/shipping/delivery[@type = 'dvp' and @checked = 'true']") and !( $xml->getItem("/shop/page/order1/balance/@active") == (string)'y' and $xml->getItem("/shop/page/order1/balance/@onlyPrepaid") == (string)'y')}}{{capture name="classAttributeTmp18" assign="classAttributeTmp18"}}order1_delivery_title active_title{{/capture}}{{/if}}  class="{{$classAttributeTmp18}}">{{$txt['107711::53687_radio1']}}</span>
											{{/if}}
										</div>
										<div id="order1_dvp_legend" class="order1_delivery_legend">
											<span class="order1_legend_courier_name">{{$txt['107711::order1_legend_courier_name']}}</span>
											<span class="order1_legend_courier_time">{{$txt['107711::order1_legend_courier_time']}}</span>
											{{if !( $xml->getItem("/shop/page/order1/shipping/@hide_cost") == (string)'true')}}
												<span class="order1_legend_courier_price">{{$txt['107711::order1_legend_courier_price']}}</span>
											{{/if}}
										</div>
										{{foreach from=$xml->getList("page/order1/shipping/delivery[@type = 'dvp']") item=loop751}}
											<div {{assign "classAttributeTmp19" ""}}{{capture name="classAttributeTmp19" assign="classAttributeTmp19"}}order1_delitem{{/capture}}{{if $loop751->getItem("@sameday") == (string)'true'}} data-sameday="true" {{/if}}{{if !( $loop751->getItem("/shop/page/order1/balance/@active") == (string)'y' and $loop751->getItem("/shop/page/order1/balance/@onlyPrepaid") == (string)'y')}} onclick="Order1.working_days([ {{foreach from=$loop751->getList("working_days/item") item=loop759}}{{if $loop759@iteration neq (string) 1}},{{/if}}{{$loop759->getItemEscape(".")|replace:'7':'0'}}{{/foreach}} ]);Order1.chooseDelivery($(this));Order1.showFields('{{$loop751->getItemEscape("@id")}}','{{if $loop751->getItem("@sameday") == (string) 'true'}}n{{else}}{{$loop751->getItemEscape("@calendar")}}{{/if}}','{{$loop751->getItemEscape("@deliverytime")}}', {{if (( $loop751->getItem("@type") == (string) 'dvp') and ( $loop751->getItem("/shop/page/order1/additional/advance/@cash_on_delivery") == (string)'true')) or (( $loop751->getItem("@type") == (string) 'prepaid') and ( $loop751->getItem("/shop/page/order1/additional/advance/@prepaid") == (string)'true'))}}'1','{{else}}'0','{{/if}}{{$loop751->getItemEscape("@time")}}','{{if $loop751->getItem("@id") == (string) '0-0' or $loop751->getItem("@id") == (string) '0-1'}}{{$loop751->getItemEscape("/shop/page/order1/stocks/stock[@selected = 'selected']/@pickup_days")}}#{{$loop751->getItemEscape("/shop/page/order1/stocks/stock[@selected = 'selected']/@pickup_hours")}}#{{$loop751->getItemEscape("/shop/page/order1/stocks/stock[@selected = 'selected']/@pickup_minutes")}}{{else}}{{$loop751->getItemEscape("@time_days")}}#{{$loop751->getItemEscape("@time_hours")}}#{{$loop751->getItemEscape("@time_minutes")}}#{{if $loop751->getItem("@today") == (string)'true'}}0{{else}}{{$loop751->getItemEscape("@week_day")}}{{/if}}#{{$loop751->getItemEscape("@week_amount")}}{{/if}}');" {{/if}} id="delivery_{{$loop751->getItemEscape("@id")}}" title=" {{if ( $loop751->getItem("@minworthreached") == (string) 'false') or ( $loop751->getItem("/shop/page/order1/balance/@active") == (string)'y' and $loop751->getItem("/shop/page/order1/balance/@onlyPrepaid") == (string)'y')}}{{$txt['107711::order1_delitem_unavailable']}}{{/if}} " {{if !( $loop751->getItem("/shop/page/order1/balance/@active") == (string)'y' and $loop751->getItem("/shop/page/order1/balance/@onlyPrepaid") == (string)'y')}}{{if $loop751->getItem("@checked") == (string) 'true'}}{{capture name="classAttributeTmp19" assign="classAttributeTmp19"}}order1_delitem o1selected{{/capture}}{{/if}}{{/if}}{{if ( $loop751->getItem("@minworthreached") == (string) 'false') or ( $loop751->getItem("/shop/page/order1/balance/@active") == (string)'y' and $loop751->getItem("/shop/page/order1/balance/@onlyPrepaid") == (string)'y')}}{{capture name="classAttributeTmp19" assign="classAttributeTmp19"}}order1_delitem o1disabled{{/capture}} onclick="" {{/if}}  class="{{$classAttributeTmp19}}">
												<div class="order1_delitem_sub">
													<span class="order1_delitem_radio" style="display:none;">
														<input type="radio" name="shipping" class="order1_delitem_radio" value="{{$loop751->getItemEscape("@id")}}" {{if !( $loop751->getItem("/shop/page/order1/balance/@active") == (string)'y' and $loop751->getItem("/shop/page/order1/balance/@onlyPrepaid") == (string)'y')}}{{if $loop751->getItem("@checked") == (string) 'true'}} checked="checked"{{/if}}{{/if}}{{if ( $loop751->getItem("@minworthreached") == (string) 'false') or ( $loop751->getItem("/shop/page/order1/balance/@active") == (string)'y' and $loop751->getItem("/shop/page/order1/balance/@onlyPrepaid") == (string)'y')}} disabled="disabled"{{/if}} title="{{$loop751->getItemEscape("@comment")}}"></input></span>
													<div class="order1_delitem_header">
														{{if  $loop751->getItem("@icon")}}
															<img class="order1_delitem_icon" src="{{$loop751->getItemEscape("@icon")}}" alt="{{$loop751->getItemEscape("@name")}}" title="{{$loop751->getItemEscape("@name")}}"></img>
														{{/if}}
														<span class="order1_delitem_name">{{$loop751->getItemEscape("@name")}}
															{{if !( $loop751->getItem("@sameday") == (string)'true')}}
																<div class="order1_delitem_time">
																	{{if  $loop751->getItem("@minworthreached")  == (string) 'false'}}
																		<span class="order1_delitem_time inactive_time">{{$txt['107711::53687_010']}}{{$loop751->getItemEscape("@minworth_formatted")}}</span>
																	{{/if}}
																	{{if  $loop751->getItem("@minworthreached")  == (string) 'true'}}
																		<span class="order1_delitem_time">
																			{{if  $loop751->getItem("@id")  == (string) '0-0' or  $loop751->getItem("@id")  == (string) '0-1'}}
																				{{if count( $loop751->getList("/shop/page/order1/stocks/stock"))  gt (string) 0}}
																					{{foreach from=$loop751->getList("/shop/page/order1/stocks/stock[@selected = 'selected']") item=loop806}}
																						{{if  $loop806->getItem("@undefinded_time")  == (string) 'true'}}
																							{{$txt['107711::order1_stock_time_undefined2']}}
																						{{else}}
																							{{if $immediately_txt and ( $loop806->getItem("@pickup_days")  == (string) 0) and ( $loop806->getItem("@pickup_hours")  == (string) 0) and ( $loop806->getItem("@pickup_minutes")  == (string) 0)}}
																								{{$immediately_txt}}
																							{{else}}
																								{{$txt['107711::order1_stock_time_defined']}}
																								{{if  $loop806->getItem("@pickup_days")  gt (string) 0}}
																									{{$loop806->getItemEscape("@pickup_days")}}
																									{{if  $loop806->getItem("@pickup_days")  == (string)'1'}}
																										{{$txt['107711::53706_003c']}}
																									{{else}}
																										{{$txt['107711::53706_003b']}}
																									{{/if}}
																								{{/if}}
																								{{if $hours_68638}}
																									{{if  $loop806->getItem("@pickup_hours")  gt (string) 0}}
																										{{$loop806->getItemEscape("@pickup_hours")}}
																										{{if  $loop806->getItem("@pickup_hours")  gt (string) 1}}
																											{{$hours_68638}}
																										{{else}}
																											{{$txt['107711::53706_003godz']}}
																										{{/if}}
																									{{/if}}
																								{{else}}
																									{{if  $loop806->getItem("@pickup_hours")  gt (string) 0}}
																										{{$loop806->getItemEscape("@pickup_hours")}}{{$txt['107711::53706_003godz']}}
																									{{/if}}
																								{{/if}}
																								{{if  $loop806->getItem("@pickup_minutes")  gt (string) 0}}
																									{{$loop806->getItemEscape("@pickup_minutes")}}{{$txt['107711::53706_003min']}}
																								{{/if}}
																							{{/if}}
																						{{/if}}
																					{{/foreach}}
																				{{else}}
																					{{$txt['107711::53687_0990']}}{{$txt['107711::order1_stock_time_undefined2']}}
																				{{/if}}
																			{{else}}
																				{{$txt['107711::53687_0990']}}
																				{{if ( $loop751->getItem("@deliverytime_days")  == (string) 0) and ( $loop751->getItem("@deliverytime_hours")  == (string) 0) and ( $loop751->getItem("@deliverytime_minutes")  == (string) 0)}}
																					{{$txt['107711::53687_0991a']}}
																				{{else}}
																					{{if  $loop751->getItem("@deliverytime_days")  gt (string) 0}}
																						{{$loop751->getItemEscape("@deliverytime_days")}}
																						{{if  $loop751->getItem("@deliverytime_days")  == (string)'1'}}
																							{{$txt['107711::53706_003c']}}
																						{{else}}
																							{{$txt['107711::53706_003b']}}
																						{{/if}}
																					{{/if}}
																					{{if $hours_68638}}
																						{{if  $loop751->getItem("@deliverytime_hours")  gt (string) 0}}
																							{{$loop751->getItemEscape("@deliverytime_hours")}}
																							{{if  $loop751->getItem("@deliverytime_hours")  gt (string) 1}}
																								{{$hours_68638}}
																							{{else}}
																								{{$txt['107711::53706_003godz']}}
																							{{/if}}
																						{{/if}}
																					{{else}}
																						{{if  $loop751->getItem("@deliverytime_hours")  gt (string) 0}}
																							{{$loop751->getItemEscape("@deliverytime_hours")}}{{$txt['107711::53706_003godz']}}
																						{{/if}}
																					{{/if}}
																					{{if  $loop751->getItem("@deliverytime_minutes")  gt (string) 0}}
																						{{$loop751->getItemEscape("@deliverytime_minutes")}}{{$txt['107711::53706_003min']}}
																					{{/if}}
																				{{/if}}
																			{{/if}}
																			</span>
																	{{/if}}
																</div>
															{{/if}}
															<div class="order1_delitem_comment" style="display:none;" id="delivery_{{$loop751->getItemEscape("@id")}}">
															</div></span>
													</div>
													{{if !( $loop751->getItem("/shop/page/order1/shipping/@hide_cost") == (string)'true')}}
														<div class="order1_delitem_pricebox">
															{{if  $loop751->getItem("@points_enabled")  == (string) 'false'}}
																<label class="order1_delitem_price">
																	<input type="checkbox" name="" value="" checked="checked"/>{{$loop751->getItemEscape("@cost_formatted")}}
																</label>
																<label class="order1_delitem_price_point_disabled showTip_order1" title="{{$txt['107711::53687_011nopoints']}}">
																	<input class="showTip_order1" type="checkbox" disabled="disabled" title="{{$txt['107711::53687_011nopoints']}}"></input>{{$loop751->getItemEscape("@points_cost")}}{{$txt['107711::order1_form_pointsok3']}}
																</label>
															{{elseif  $loop751->getItem("@points_enabled")  == (string) 'true'}}
																<label class="order1_delitem_price">
																	<input type="checkbox" name="" value="" checked="checked"/>{{$loop751->getItemEscape("@cost_formatted")}}
																</label>
																<label class="order1_delitem_price_point">
																	<input type="checkbox" name="" value=""/>{{$loop751->getItemEscape("@points_cost")}}{{$txt['107711::order1_form_pointsok3']}}
																</label>
															{{else}}
																<span class="order1_delitem_pricetitle">{{$txt['107711::50000_001']}}</span>
																{{if  $loop751->getItem("@beforerebate_formatted") and $txt_68638_mxprice}}
																	<del class="order1_delitem_price_oldprice">{{$loop751->getItemEscape("@beforerebate_formatted")}}</del>
																{{/if}}
																<span class="order1_delitem_price" {{if $loop751->getItem("@minworthreached") == (string) 'false'}} {{$txt['107711::53687_610']}} {{elseif $loop751->getItem("@cost") gt (string) 0}}{{if $loop751->getItem("@limitfree") gt (string) 0}} title="{{$txt['107711::53687_011']}}{{$loop751->getItemEscape("@limitfree_formatted")}}{{$txt['107711::53687_012']}}"{{/if}}{{$loop751->getItemEscape("@cost_formatted")}}{{else}} {{$txt['107711::53687_014']}} {{/if}}></span>
															{{/if}}
														</div>
													{{/if}}
												</div>
											</div>
										{{/foreach}}
										<span class="order1_delivery_description">{{$txt['107711::53687_radio1b']}}</span>
										<div {{assign "styleAttributeTmp1" ""}}  id="order1_dvp_calendar_info" class="order1_dvp_time_pick" {{if $xml->getItem("/shop/basket/delay_time[@unknown_delivery_time='true']")}}{{capture name="styleAttributeTmp1" assign="styleAttributeTmp1"}}display:none;{{/capture}}{{/if}}{{if !( $xml->getItem("/shop/page/order1/balance/@active") == (string)'y' and $xml->getItem("/shop/page/order1/balance/@onlyPrepaid") == (string)'y')}}{{capture name="styleAttributeTmp1" assign="styleAttributeTmp1"}}display:none;{{/capture}}{{/if}}  style="{{$styleAttributeTmp1}}">
											<div class="order1_delivery_time_pick_txt_1">
												<span class="order1_delivery_time_pick">{{$txt['107711::01021_time_pick']}}
													<span class="order1_delivery_time_pick_value"></span>
													<div class="order1_delivery_time_pick_hour">
													</div></span>
											</div>
											<div class="order1_delivery_time_pick_txt_2" style="display:none;">
												<span class="order1_delivery_time_pick">{{$txt['107711::01021_time_pick2']}}
													<span class="order1_delivery_time_pick_value"></span>
													<div class="order1_delivery_time_pick_hour">
													</div></span>
											</div>
											<div class="order1_delivery_time_pick_txt_3" style="display:none;">
												<span class="order1_delivery_time_pick">{{$txt['107711::01021_time_pick4']}}
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
												<a {{assign "classAttributeTmp14" ""}}{{capture name="classAttributeTmp14" assign="classAttributeTmp14"}}runTopLayerOrder{{/capture}} href="#runToplayerOrder"{{capture name="classAttributeTmp14" assign="classAttributeTmp14"}}btn-regular runTopLayerOrder{{/capture}}  class="{{$classAttributeTmp14}}">{{$txt['107711::01021_time_pick3']}}</a>
											</div>
										</div>
										<div class="order1_comment_background">
											<div class="order1_comment_text" id="order1_dvp_comment_text">
											</div>
										</div>
									</div>
								{{/if}}
							</div>
							{{if  $xml->getItem("/shop/page/order1/shipping/delivery[@sameday='true']")}}
								<div id="order1_calendar_wrapper" class="sameday_date_wrapper" style="display:none;">
									<a id="show_sameday_dates" href="#showSameday" class="btn-large">{{$txt['107711::4363467_choosedate']}}</a>
									<span>{{$txt['107711::464773_sameday_required']}}</span>
									<div id="sameday_date_sub">
									</div>
								</div>
							{{/if}}
							<div id="order1_calendar_wrapper" style="display:none;">
								<div id="order1_calendar_standard" style="display:none;">
									<div {{assign "classAttributeTmp8" ""}}{{capture name="classAttributeTmp8" assign="classAttributeTmp8"}}order1_label{{/capture}}{{capture name="classAttributeTmp8" assign="classAttributeTmp8"}}big_label order1_label{{/capture}}  class="{{$classAttributeTmp8}}">
										<span class="order1_label">{{$txt['107711::order1_stock_calendar_title']}}</span>
									</div>
									<div class="calendar_date_selects_wrapper">
										<div class="order1_date" id="calendar_date_select_1" onclick="Order1.chooseDate($(this));" title="{{$txt['107711::order1_date_hovertext']}}">
											<div class="order1_date_sub">
												<input name="calendar_select_date" type="radio" class="order1_radio" style="display:none;"></input>
												<span class="order1_date_day"></span>
												<span class="order1_date_month"></span>
											</div>
										</div>
										<div class="order1_date" id="calendar_date_select_2" onclick="Order1.chooseDate($(this));" title="{{$txt['107711::order1_date_hovertext']}}">
											<div class="order1_date_sub">
												<input name="calendar_select_date" type="radio" class="order1_radio" style="display:none;"></input>
												<span class="order1_date_day"></span>
												<span class="order1_date_month"></span>
											</div>
										</div>
										<div class="order1_date" id="calendar_date_select_3" onclick="Order1.chooseDate($(this));" title="{{$txt['107711::order1_date_hovertext']}}">
											<div class="order1_date_sub">
												<input name="calendar_select_date" type="radio" class="order1_radio" style="display:none;"></input>
												<span class="order1_date_day"></span>
												<span class="order1_date_month"></span>
											</div>
										</div>
										<div class="order1_date" id="calendar_date_select_4" onclick="Order1.chooseDate($(this));" title="{{$txt['107711::order1_date_hovertext']}}">
											<div class="order1_date_sub">
												<input name="calendar_select_date" type="radio" class="order1_radio" style="display:none;"></input>
												<span class="order1_date_day"></span>
												<span class="order1_date_month"></span>
											</div>
										</div>
										<div class="order1_date" id="calendar_date_select_5" onclick="Order1.chooseDate($(this));" title="{{$txt['107711::order1_date_hovertext']}}">
											<div class="order1_date_sub">
												<input name="calendar_select_date" type="radio" class="order1_radio" style="display:none;"></input>
												<span class="order1_date_day"></span>
												<span class="order1_date_month"></span>
											</div>
										</div>
										<div class="order1_date" id="calendar_date_select_6" onclick="Order1.chooseDate($(this));" title="{{$txt['107711::order1_date_hovertext']}}">
											<div class="order1_date_sub">
												<input name="calendar_select_date" type="radio" class="order1_radio" style="display:none;"></input>
												<span class="order1_date_day"></span>
												<span class="order1_date_month"></span>
											</div>
										</div>
										<div class="order1_date" id="calendar_date_select_7" onclick="Order1.chooseDate($(this));" title="{{$txt['107711::order1_date_hovertext']}}">
											<div class="order1_date_sub">
												<input name="calendar_select_date" type="radio" class="order1_radio" style="display:none;"></input>
												<span class="order1_date_day"></span>
												<span class="order1_date_month"></span>
											</div>
										</div>
										<div class="order1_date" id="calendar_date_select_8" title="{{$txt['107711::order1_date_hovercalendar']}}">
											<div class="order1_date_sub">
												<span class="order1_date_calendartxt">{{$txt['107711::order1_date_choose_other_day']}}</span>
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
										<div {{assign "classAttributeTmp8" ""}}{{capture name="classAttributeTmp8" assign="classAttributeTmp8"}}order1_label{{/capture}}{{capture name="classAttributeTmp8" assign="classAttributeTmp8"}}big_label order1_label{{/capture}}  class="{{$classAttributeTmp8}}">
											<span class="order1_label">{{$txt['107711::order1_stock_calendar_title']}}</span>
										</div>
										{{foreach from=$xml->getList("page/order1/deliverytime_own/date") item=loop1075}}
											<div {{assign "classAttributeTmp23" ""}}{{capture name="classAttributeTmp23" assign="classAttributeTmp23"}}order1_date{{/capture}} onclick="Order1.chooseDate($(this));" {{if $loop1075->getItem("@selected") == (string) 'true'}}{{capture name="classAttributeTmp23" assign="classAttributeTmp23"}}order1_date o1selecteddate{{/capture}}{{/if}}{{if $loop1075@iteration == (string) 1}} id="calendar_dateown_select" {{/if}} title="{{$txt['107711::order1_date_hovertext']}}"  class="{{$classAttributeTmp23}}">
												<div class="order1_date_sub">
													<input name="calendar_select_date" type="radio" class="order1_radio" value="{{$loop1075->getItemEscape("@date")}}" {{if $loop1075->getItem("@selected") == (string) 'true'}} checked="checked" {{/if}}></input>
													<span class="order1_date_day">{{$loop1075->getItemEscape("@day")}}</span>
													<span class="order1_date_month">
														{{if  $loop1075->getItem("@month")  == (string) 1}}
															{{$txt['107711::30000_013']}}
														{{elseif  $loop1075->getItem("@month")  == (string) 2}}
															{{$txt['107711::30000_014']}}
														{{elseif  $loop1075->getItem("@month")  == (string) 3}}
															{{$txt['107711::30000_015']}}
														{{elseif  $loop1075->getItem("@month")  == (string) 4}}
															{{$txt['107711::30000_016']}}
														{{elseif  $loop1075->getItem("@month")  == (string) 5}}
															{{$txt['107711::30000_017']}}
														{{elseif  $loop1075->getItem("@month")  == (string) 6}}
															{{$txt['107711::30000_018']}}
														{{elseif  $loop1075->getItem("@month")  == (string) 7}}
															{{$txt['107711::30000_019']}}
														{{elseif  $loop1075->getItem("@month")  == (string) 8}}
															{{$txt['107711::30000_020']}}
														{{elseif  $loop1075->getItem("@month")  == (string) 9}}
															{{$txt['107711::30000_021']}}
														{{elseif  $loop1075->getItem("@month")  == (string) 10}}
															{{$txt['107711::30000_022']}}
														{{elseif  $loop1075->getItem("@month")  == (string) 11}}
															{{$txt['107711::30000_023']}}
														{{elseif  $loop1075->getItem("@month")  == (string) 12}}
															{{$txt['107711::30000_024']}}
														{{/if}}
														</span>
												</div>
											</div>
										{{/foreach}}
									</div>
								{{/if}}
								<div id="calendar_select_hour_div">
									<span>{{$txt['107711::53687_019']}}</span>
									<input type="text" name="calendar_select_hour" class="order1_text" MAXLENGTH="50"/>
								</div>
							</div>
							<input type="hidden" name="calendar_select_active" id="calendar_select_active" value="0"/>
							<div id="order1_payform" class="clearfix" {{if ( $xml->getItem("page/order1/shipping/delivery[@checked='true']/@type") == (string) 'dvp') and !( $xml->getItem("/shop/page/order1/additional/advance/@cash_on_delivery") == (string)'true')}} style="display:none" {{/if}}>
								{{if  $xml->getItem("/shop/page/order1/additional/advance/@value")}}
									<div id="advance_value">{{$txt['107711::53687_zaliczka']}}{{$txt['107711::53687_zaliczka2']}}
									</div>
								{{/if}}
								<div {{assign "classAttributeTmp24" ""}}{{assign "styleAttributeTmp2" ""}}  id="order1_payform_label_advance"{{capture name="classAttributeTmp24" assign="classAttributeTmp24"}}order1_label{{/capture}}{{capture name="classAttributeTmp24" assign="classAttributeTmp24"}}big_label order1_label{{/capture}}{{capture name="styleAttributeTmp2" assign="styleAttributeTmp2"}}display:none{{/capture}}{{if ( $xml->getItem("page/order1/shipping/delivery[@checked='true']/@type") == (string) 'dvp') and ( $xml->getItem("/shop/page/order1/additional/advance/@cash_on_delivery") == (string)'true')}}{{capture name="styleAttributeTmp2" assign="styleAttributeTmp2"}}display:block{{/capture}}{{/if}}{{if ( $xml->getItem("page/order1/shipping/delivery[@checked='true']/@type") == (string) 'prepaid') and ( $xml->getItem("/shop/page/order1/additional/advance/@prepaid") == (string)'true')}}{{capture name="styleAttributeTmp2" assign="styleAttributeTmp2"}}display:block{{/capture}}{{/if}}  style="{{$styleAttributeTmp2}}"  class="{{$classAttributeTmp24}}">
									<span class="order1_label">{{$txt['107711::53687_016payment_advance']}}</span>
								</div>
								<div {{assign "classAttributeTmp25" ""}}{{assign "styleAttributeTmp3" ""}}  id="order1_payform_label_order"{{capture name="classAttributeTmp25" assign="classAttributeTmp25"}}order1_label{{/capture}}{{capture name="classAttributeTmp25" assign="classAttributeTmp25"}}big_label order1_label{{/capture}}{{if $xml->getItem("/shop/page/order1/additional/advance")}}{{if !(( $xml->getItem("page/order1/shipping/delivery[@checked='true']/@type") == (string) 'dvp') and ( $xml->getItem("/shop/page/order1/additional/advance/@cash_on_delivery") == (string)'false') and $xml->getItem("/shop/page/order1/prepaid_methods"))}}{{capture name="styleAttributeTmp3" assign="styleAttributeTmp3"}}display:none{{/capture}}{{/if}}{{if !(( $xml->getItem("page/order1/shipping/delivery[@checked='true']/@type") == (string) 'prepaid') and ( $xml->getItem("/shop/page/order1/additional/advance/@prepaid") == (string)'false') and $xml->getItem("/shop/page/order1/prepaid_methods"))}}{{capture name="styleAttributeTmp3" assign="styleAttributeTmp3"}}display:none{{/capture}}{{/if}}{{/if}}  style="{{$styleAttributeTmp3}}"  class="{{$classAttributeTmp25}}">
									<span class="order1_label">{{$txt['107711::53687_016platnsc']}}</span>
								</div>
								<div class="order1_payitems_wrapper mb-4" {{if !( $xml->getItem("/shop/page/order1/prepaid_methods"))}} style="display: none;" {{/if}}>
									{{if  $xml->getItem("/shop/page/order1/groupList/item")}}
										{{foreach from=$xml->getList("/shop/page/order1/groupList/item") item=loop1154}}
											{{capture name="groupID" assign="groupID"}}
												{{$loop1154->getItemEscape("@id")}}
											{{/capture}}
											{{if  $loop1154->getItem("/shop/page/order1/prepaid_methods/item[@group = $groupID]")}}
												<div {{assign "classAttributeTmp26" ""}}{{capture name="classAttributeTmp26" assign="classAttributeTmp26"}}payments_group{{/capture}}{{if $loop1154->getItem("/shop/page/order1/prepaid_methods/item[@group = $groupID]/@checked") == (string) 'true'}}{{capture name="classAttributeTmp26" assign="classAttributeTmp26"}}payments_group group_open{{/capture}}{{/if}} id="{{$loop1154->getItemEscape("@id")}}_payment"  class="{{$classAttributeTmp26}}">
													{{if  $loop1154->getItem("@id")  == (string) 'simple_transfer'}}
														<input value="110" type="radio" name="payform_id" class="hidden_input" {{if !( $loop1154->getItem("/shop/page/order1/balance/@active") == (string)'y' and $loop1154->getItem("/shop/page/order1/balance/@onlyPrepaid") == (string)'y')}}{{if $loop1154->getItem("/shop/page/order1/prepaid_methods/item[@group = $groupID]/@checked") == (string) 'true'}} checked="checked" {{/if}}{{/if}}></input>
													{{/if}}
													{{if  $loop1154->getItem("@id")  == (string) 'blik'}}
														<input value="177" type="radio" name="payform_id" class="hidden_input" {{if !( $loop1154->getItem("/shop/page/order1/balance/@active") == (string)'y' and $loop1154->getItem("/shop/page/order1/balance/@onlyPrepaid") == (string)'y')}}{{if $loop1154->getItem("/shop/page/order1/prepaid_methods/item[@group = $groupID]/@checked") == (string) 'true'}} checked="checked" {{/if}}{{/if}}></input>
													{{/if}}
													<input type="radio" name="selected_group" class="selected_group" id="{{$loop1154->getItemEscape("@id")}}_input" {{if !( $loop1154->getItem("/shop/page/order1/balance/@active") == (string)'y' and $loop1154->getItem("/shop/page/order1/balance/@onlyPrepaid") == (string)'y')}}{{if $loop1154->getItem("/shop/page/order1/prepaid_methods/item[@group = $groupID]/@checked") == (string) 'true'}} checked="checked" {{/if}}{{/if}}></input>
													<label class="payments_group_sub_content">
														<span class="prepaid_payment_group_name">{{$loop1154->getItemEscape("@name")}}</span>
														<span class="payments_sub_container">
															<span class="payments_icon_container">
																{{if  $loop1154->getItem("@id")  == (string) 'transfer'}}
																	<img class="payment_icon" src="/gfx/__IAI_TEMPLATE_LANG_639_1__/transfer_payment.png?r=1570606968" alt="{{$loop1154->getItemEscape("@name")}}"></img>
																{{elseif  $loop1154->getItem("@id")  == (string) 'blik'}}
																	<img class="payment_icon" src="/gfx/__IAI_TEMPLATE_LANG_639_1__/blik_payment.png?r=1570606968" alt="{{$loop1154->getItemEscape("@name")}}"></img>
																{{elseif  $loop1154->getItem("@id")  == (string) 'installment'}}
																	<img class="payment_icon" src="/gfx/__IAI_TEMPLATE_LANG_639_1__/installment_payment.png?r=1570606968" alt="{{$loop1154->getItemEscape("@name")}}"></img>
																{{elseif  $loop1154->getItem("@id")  == (string) 'card'}}
																	<img class="payment_icon" src="/gfx/__IAI_TEMPLATE_LANG_639_1__/card_payment.png?r=1570606968" alt="{{$loop1154->getItemEscape("@name")}}"></img>
																{{elseif  $loop1154->getItem("@id")  == (string) 'simple_transfer'}}
																	<img class="payment_icon" src="/gfx/__IAI_TEMPLATE_LANG_639_1__/simple-transfer_payment.png?r=1570606968" alt="{{$loop1154->getItemEscape("@name")}}"></img>
																{{/if}}
																</span>
															{{if !( $loop1154->getItem("@id")  == (string) 'blik' or  $loop1154->getItem("@id")  == (string) 'simple_transfer')}}
																<span class="expand_button">{{$txt['107711::532423_expandicon']}}</span>
															{{/if}}
															</span>
													</label>
													{{if  $loop1154->getItem("/shop/page/order1/prepaid_methods/item[@group = $groupID]") and !( $loop1154->getItem("@id")  == (string) 'blik')  and !( $loop1154->getItem("@id")  == (string) 'simple_transfer')}}
														<div class="payment_content">
															<a class="close_popup_payment" href="#close">
																x</a>
															{{foreach from=$loop1154->getList("/shop/page/order1/prepaid_methods/item[@group = {{$groupID}}]") item=loop1231}}
																<div class="prepaid_payment" id="payment_{{$loop1231->getItemEscape("@id")}}" title="{{$txt['107711::order1_payment_onclicktext']}}">
																	<input name="payform_id" type="radio" class="orderdetails_radio" value="{{$loop1231->getItemEscape("@id")}}" id="payform_{{$loop1231->getItemEscape("@id")}}" {{if !( $loop1231->getItem("/shop/page/order1/balance/@active") == (string)'y' and $loop1231->getItem("/shop/page/order1/balance/@onlyPrepaid") == (string)'y')}}{{if $loop1231->getItem("@checked") == (string)'true'}} checked="checked" {{/if}}{{/if}}></input>
																	<label class="prepaid_payment_sub" for="payform_{{$loop1231->getItemEscape("@id")}}">
																		{{if  $loop1231->getItem("@id")  == (string) '190'}}
																			<input value="" type="hidden" name="voucher_id" disabled="disabled" style="display:none;"/>
																			<input value="" type="hidden" name="pin_value" disabled="disabled" style="display:none;"/>
																		{{/if}}
																		{{if  $loop1231->getItem("@id")  == (string) '2'}}
																			<input value="" type="text" name="voucher_id" disabled="disabled" style="display:none;"/>
																		{{/if}}
																		<span class="prepaid_payment_header">{{$loop1231->getItem("@name")}}</span>
																		{{if  $loop1231->getItem("@icon")  neq (string) ''}}
																			<img class="prepaid_payment_icon" src="{{$loop1231->getItemEscape("@icon")}}" alt="{{$loop1231->getItemEscape("@name")}}"></img>
																		{{/if}}
																	</label>
																	{{if  $loop1231->getItem("@description") and !( $loop1231->getItem("@description")  == (string) ' ')}}
																		<div class="prepaid_payment_description" id="description_{{$loop1231->getItemEscape("@id")}}">
																			{{if  $loop1231->getItem("@description") and !( $loop1231->getItem("@description")  == (string) ' ')}}
																				{{$loop1231->getItem("@description")}}
																				{{if ( $loop1231->getItem("@id")  == (string) '28') and ( $loop1231->getItem("@allProducts")  == (string) '0')}}
																					<span class="order1_payment_lukaswarning">{{$txt['107711::installmentDialog_alertlukas']}}</span>
																				{{/if}}
																			{{/if}}
																		</div>
																	{{/if}}
																</div>
															{{/foreach}}
														</div>
													{{/if}}
												</div>
											{{/if}}
										{{/foreach}}
									{{/if}}
								</div>
							</div>
							<script class="ajaxLoad">
                app_shop.vars.Order1.working_days_arr = [
{{foreach from=$xml->getList("page/order1/shipping/delivery[@checked='true']/working_days/item") item=loop1288}}{{if  $loop1288@iteration   neq (string) 1}},{{/if}}{{$loop1288->getItemEscape(".")|replace:'7':'0'}}{{/foreach}}
];app_shop.vars.Order1.showFields_arr = ['{{$xml->getItemEscape("page/order1/shipping/delivery[@checked='true']/@id")}}','{{if  $xml->getItem("@sameday")  == (string) 'true'}}n{{else}}{{$xml->getItemEscape("page/order1/shipping/delivery[@checked='true']/@calendar")}}{{/if}}','{{$xml->getItemEscape("page/order1/shipping/delivery[@checked='true']/@deliverytime")}}', {{if (( $xml->getItem("page/order1/shipping/delivery[@checked='true']/@type")  == (string) 'dvp') and ( $xml->getItem("/shop/page/order1/additional/advance/@cash_on_delivery") == (string)'true')) or ( $xml->getItem("page/order1/shipping/delivery[@checked='true']/@type")  == (string) 'prepaid')}}'1','{{else}}'0','{{/if}}{{$xml->getItemEscape("page/order1/shipping/delivery[@checked='true']/@time")}}','{{$xml->getItemEscape("page/order1/shipping/delivery[@checked='true']/@deliverytime_days")}}#{{$xml->getItemEscape("page/order1/shipping/delivery[@checked='true']/@deliverytime_hours")}}#{{$xml->getItemEscape("page/order1/shipping/delivery[@checked='true']/@deliverytime_minutes")}}#{{if  $xml->getItem("page/order1/shipping/delivery[@checked='true']/@today") == (string)'true'}}0{{else}}{{$xml->getItemEscape("page/order1/shipping/delivery[@checked='true']/@week_day")}}{{/if}}#{{$xml->getItemEscape("page/order1/shipping/delivery[@checked='true']/@week_amount")}}'];
            							</script>

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
							{{if  $xml->getItem("/shop/basket/delay_time[@unknown_delivery_time='true']")}}
								<div class="unknown_delivery_time">{{$txt['107711::95210_001a']}}
									<div>{{$txt['107711::95210_001']}}
										<a target="_blank" href="{{$xml->getItemEscape("/shop/contact/link/@url")}}">{{$txt['107711::95210_002']}}</a>
									</div>
								</div>
							{{/if}}
							<div class="basketedit_summary_container">
								<div class="basketedit_summary">
									<div class="basketedit_summary_sub">
										<input type="hidden" name="preview" value="true"/>
										<div class="basketedit_summary_left">
											{{if  $xml->getItem("/shop/client_data/client_balance/limit/@value")  gt (string) '0'}}
												<div class="basketedit_limit_section">
													<div class="basketedit_product_summary">
														<label>{{$txt['107711::53706_001a_limit']}}
														</label>
														<strong class="limit_total">{{$xml->getItemEscape("/shop/client_data/client_balance/limit/@value_formatted")}}</strong>
													</div>
													<div class="basketedit_product_summary">
														<label>{{$txt['107711::53706_001a_limit_touse']}}
														</label>
														<strong class="limit_touse">{{$xml->getItemEscape("/shop/client_data/client_balance/limit/@to_use_formatted")}}</strong>
													</div>
												</div>
											{{/if}}
											{{if ( $xml->getItem("page/basket-details/summary/points/@debit")) and ( $xml->getItem("page/basket-details/summary/points/@debit")  gt (string) 0)}}
												<div class="basketedit_summary_debit">{{$txt['107711::basketedit_summary_points_gain1']}}
													<b>{{$xml->getItemEscape("page/basket-details/summary/points/@debit")}}
														<span>{{$txt['107711::basketedit_points_pts']}}</span></b>{{$txt['107711::basketedit_summary_points_gain2']}}
													{{if  $xml->getItem("/shop/basket/@client_points")  neq (string) '0'}}
														{{$txt['107711::basketedit_points_info1']}}
														<b>{{$xml->getItemEscape("/shop/basket/@client_points")}}
															<span>{{$txt['107711::basketedit_points_pts']}}</span></b>{{$txt['107711::basketedit_dot']}}
													{{/if}}
												</div>
											{{/if}}
										</div>
										<div class="basketedit_summary_right">
											<div class="basketedit_calculations">
												<div class="basketedit_product_summary">
													<label>{{$txt['107711::53706_001a']}}
													</label>
													<strong class="worth_value">{{$xml->getItemEscape("/shop/page/basket-details/summary/money/@beforerebate_formatted")}}</strong>
												</div>
												<div class="basketedit_product_summary">
													<label>{{$txt['107711::53706_001a_kosztprzesylki']}}
													</label>
													<strong {{assign "classAttributeTmp27" ""}}{{capture name="classAttributeTmp27" assign="classAttributeTmp27"}}shipping_value{{/capture}}{{capture name="classAttributeTmp27" assign="classAttributeTmp27"}}shipping_value plus_sign{{/capture}}  class="{{$classAttributeTmp27}}">--</strong>
												</div>
												<div class="basketedit_product_summary">
													<label>{{$txt['107711::53706_001a_kosztformyplatnosci']}}
													</label>
													<strong {{assign "classAttributeTmp28" ""}}{{capture name="classAttributeTmp28" assign="classAttributeTmp28"}}paymentcost_value{{/capture}}{{capture name="classAttributeTmp28" assign="classAttributeTmp28"}}paymentcost_value plus_sign{{/capture}}  class="{{$classAttributeTmp28}}">--</strong>
												</div>
												<div class="basketedit_product_summary">
													<label>{{$txt['107711::53706_001a_kosztubezpieczenia']}}
													</label>
													<strong {{assign "classAttributeTmp29" ""}}{{capture name="classAttributeTmp29" assign="classAttributeTmp29"}}insurance_value{{/capture}}{{capture name="classAttributeTmp29" assign="classAttributeTmp29"}}insurance_value plus_sign{{/capture}}  class="{{$classAttributeTmp29}}">--</strong>
												</div>
												<div class="basketedit_rabats_summary">
													<label>{{$txt['107711::53706_001b']}}
													</label>
													<strong class="total_rebate minus_sign">--</strong>
												</div>
												{{if  $xml->getItem("/shop/client_data/client_balance/balance/@is_selected_and_allowed_order") == (string)'true' and  $xml->getItem("/shop/client_data/client_balance/balance[@is_selected_and_allowed_order='true']/@value")  neq (string) 0}}
													<div class="basketedit_product_summary">
														<label>{{$txt['107711::53706_001a_saldo']}}
														</label>
														<strong {{assign "classAttributeTmp30" ""}}{{capture name="classAttributeTmp30" assign="classAttributeTmp30"}}saldo_value{{/capture}}{{capture name="classAttributeTmp30" assign="classAttributeTmp30"}}saldo_value minus_sign{{/capture}}  class="{{$classAttributeTmp30}}">{{$xml->getItemEscape("/shop/client_data/client_balance/balance[@is_selected_and_allowed_order='true']/@currency_value_formatted")}}</strong>
													</div>
												{{/if}}
												<div style="clear:both">
												</div>
											</div>
											<div class="basketedit_total_summary">
												<label>{{$txt['107711::53706_001c']}}
												</label>
												{{if ( $xml->getItem("/shop/basket/@wholesaler")  == (string) 'true') and !($wholesalerPrice2)}}
													<strong class="topay_value">{{$xml->getItemEscape("/shop/page/basket-details/summary/money/@total_formatted")}}{{$txt['107711::53833_netto']}}</strong>
												{{else}}
													<strong class="topay_value">{{$xml->getItemEscape("/shop/page/basket-details/summary/money/@total_formatted")}}</strong>
												{{/if}}
												{{if ( $xml->getItem("basket/@points_used")) and ( $xml->getItem("basket/@points_used")  neq (string) 0)}}
													<b>{{$txt['107711::53833_andpts']}}
														<span>{{$xml->getItemEscape("basket/@points_used")}}{{$txt['107711::53833_justpts']}}</span></b>
												{{/if}}
											</div>
											{{if $txt_68638_rpoz}}
												<div style="clear:both">
												</div>
												<div class="basketedit_product_summary prepaid_discount_wrapper">
													<label>{{$txt_68638_rpoz}}
														<span id="discount_paiment_name"></span>{{$txt['107711::53833_odr']}}
													</label>
													<strong {{assign "classAttributeTmp31" ""}}{{capture name="classAttributeTmp31" assign="classAttributeTmp31"}}prepaid_discount_value{{/capture}}{{capture name="classAttributeTmp31" assign="classAttributeTmp31"}}prepaid_discount_value minus_sign{{/capture}}  class="{{$classAttributeTmp31}}">--</strong>
												</div>
											{{/if}}
											{{if $txt_60826_advance_a and ( $xml->getItem("/shop/page/order1/additional/advance/@value")  gt (string) 0)}}
												<div {{assign "styleAttributeTmp4" ""}}  class="basketedit_product_summary advance"{{capture name="styleAttributeTmp4" assign="styleAttributeTmp4"}}display: none;{{/capture}}{{if (( $xml->getItem("page/order1/shipping/delivery[@checked='true']/@type") == (string) 'dvp') and ( $xml->getItem("/shop/page/order1/additional/advance/@cash_on_delivery") == (string)'true')) or (( $xml->getItem("page/order1/shipping/delivery[@checked='true']/@type") == (string) 'prepaid') and ( $xml->getItem("/shop/page/order1/additional/advance/@prepaid") == (string)'true'))}}{{capture name="styleAttributeTmp4" assign="styleAttributeTmp4"}}display: block;{{/capture}}{{/if}}  style="{{$styleAttributeTmp4}}">
													<label>{{$txt['107711::60826_advance_a']}}
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
															<input type="checkbox" class="bg_53687" name="display_wrappers" value="true" id="display_wrappers"/>{{$txt['107711::53687_13123']}}
														</label>
													{{/if}}
												{{/if}}
											</div>
											{{if  $xml->getItem("/shop/basket/delivery_time/@days") and !( $xml->getItem("basket/@shipping_undefined")  == (string) 'true')}}
												<div {{assign "classAttributeTmp32" ""}}{{capture name="classAttributeTmp32" assign="classAttributeTmp32"}}basketedit_summary_shipment_time{{/capture}}{{if $xml->getItem("/shop/basket/delay_time[@unknown_delivery_time='true']")}}{{capture name="classAttributeTmp32" assign="classAttributeTmp32"}}basketedit_summary_shipment_time hide{{/capture}}{{/if}}  class="{{$classAttributeTmp32}}">
													{{capture name="wys_1_68242" assign="wys_1_68242"}}
														{{$txt['107711::53706_00wys_1']}}
													{{/capture}}
													{{if $wys_1_68242 and ( $xml->getItem("/shop/basket/shipping_time/@week_amount")  == (string) 0) and ( $xml->getItem("/shop/basket/shipping_time/@hours")  == (string) 0) and ( $xml->getItem("/shop/basket/shipping_time/@minutes")  == (string) 0)}}
														<div class="shipping_time_order1">{{$txt['107711::53706_00wys_0']}}
															{{if  $xml->getItem("/shop/basket/shipping_time/@today")  == (string) 'true'}}
																{{$txt['107711::53706_00wys_1']}}
															{{elseif  $xml->getItem("/shop/basket/shipping_time/@week_day")  == (string) 1}}
																{{$txt['107711::53706_00wys_2']}}
															{{elseif  $xml->getItem("/shop/basket/shipping_time/@week_day")  == (string) 2}}
																{{$txt['107711::53706_00wys_3']}}
															{{elseif  $xml->getItem("/shop/basket/shipping_time/@week_day")  == (string) 3}}
																{{$txt['107711::53706_00wys_4']}}
															{{elseif  $xml->getItem("/shop/basket/shipping_time/@week_day")  == (string) 4}}
																{{$txt['107711::53706_00wys_5']}}
															{{elseif  $xml->getItem("/shop/basket/shipping_time/@week_day")  == (string) 5}}
																{{$txt['107711::53706_00wys_6']}}
															{{elseif  $xml->getItem("/shop/basket/shipping_time/@week_day")  == (string) 6}}
																{{$txt['107711::53706_00wys_7']}}
															{{elseif  $xml->getItem("/shop/basket/shipping_time/@week_day")  == (string) 7}}
																{{$txt['107711::53706_00wys_8']}}
															{{/if}}
														</div>
													{{/if}}
													<span class="order1_delivery_time_pick_txt_1" style="display:none;">{{$txt['107711::01021_time_pick']}}</span>
													<span class="order1_delivery_time_pick_txt_2" style="display:none;">{{$txt['107711::01021_time_pick2']}}</span>
													<span class="order1_delivery_time_pick_txt_3" style="display:none;">{{$txt['107711::01021_time_pick4']}}</span>
													<span class="order1_delivery_time_pick_txt_4" style="display:none;">{{$txt['107711::01021_time_pick5']}}</span>
													<span class="order1_delivery_time_pick_txt_auto" style="display:none;"></span>
													<b>
														{{if ( $xml->getItem("/shop/basket/delivery_time/@days")  == (string) 0) and ( $xml->getItem("/shop/basket/delivery_time/@hours")  == (string) 0) and ( $xml->getItem("/shop/basket/delivery_time/@minutes")  == (string) 0)}}
															{{$txt['107711::53706_003c24']}}
														{{else}}
															{{if  $xml->getItem("/shop/basket/delivery_time/@days")  gt (string) 0}}
																{{$xml->getItemEscape("/shop/basket/delivery_time/@days")}}
																{{if  $xml->getItem("/shop/basket/delivery_time/@days")  == (string)'1'}}
																	{{$txt['107711::53706_003c']}}
																{{else}}
																	{{$txt['107711::53706_003b']}}
																{{/if}}
															{{/if}}
															{{if $hours_68638}}
																{{if  $xml->getItem("/shop/basket/delivery_time/@hours")  gt (string) 0}}
																	{{$xml->getItemEscape("/shop/basket/delivery_time/@hours")}}
																	{{if  $xml->getItem("/shop/basket/delivery_time/@hours")  gt (string) 1}}
																		{{$hours_68638}}
																	{{else}}
																		{{$txt['107711::53706_003godz']}}
																	{{/if}}
																{{/if}}
															{{else}}
																{{if  $xml->getItem("/shop/basket/delivery_time/@hours")  gt (string) 0}}
																	{{$xml->getItemEscape("/shop/basket/delivery_time/@hours")}}{{$txt['107711::53706_003godz']}}
																{{/if}}
															{{/if}}
															{{if  $xml->getItem("/shop/basket/delivery_time/@minutes")  gt (string) 0}}
																{{$xml->getItemEscape("/shop/basket/delivery_time/@minutes")}}{{$txt['107711::53706_003min']}}
															{{/if}}
														{{/if}}
														</b>
												</div>
											{{/if}}
											<div class="btn_wrapper">
												<button {{assign "classAttributeTmp33" ""}}{{capture name="classAttributeTmp33" assign="classAttributeTmp33"}}order1_button{{/capture}} type="submit"{{capture name="classAttributeTmp33" assign="classAttributeTmp33"}}btn-large order1_button btn_arrow{{/capture}}{{if ( $xml->getItem("page/order1/prepaid_methods/item[@id = '2']/@checked") == (string) 'true') and ( $xml->getItem("page/order1/shipping/delivery[@checked = 'true' and @type = 'prepaid']"))}}{{capture name="classAttributeTmp33" assign="classAttributeTmp33"}}btn-large order1_button btn_arrow{{/capture}}{{/if}}  class="{{$classAttributeTmp33}}">{{$txt['107711::53687_018']}}
												</button>
											</div>
										</div>
									</div>
								</div>
							</div>
						</form>
						{{if  $xml->getItem("/shop/page/order1/prepaid_methods/item[@id = '190']")}}
							<div id="giftcard_data" class="order1_giftcard_form_wrapp" style="display: none;">
								<div class="order1_giftcard_form" id="giftcard_form">
									<span class="big_label">{{$txt['107711::53687_018_gc1']}}</span>
									<p>{{$txt['107711::53687_018_gc2']}}
									</p>
									<div class="giftcard_status">
										<div>
											<strong/>
											<small/>
										</div>
									</div>
									<div class="giftcard_inputs">
										<div class="form-group">
											<label class="control-label col-12 col-sm-2">{{$txt['107711::53687_018_gc3']}}
											</label>
											<div class="has-feedback col-12 col-sm-12 has-required">
												<input class="form-control" value="" name="voucher_id" type="text" placeholder="{{$txt['107711::53687_018_gc3a']}}"></input>
												<span class="form-control-feedback"></span>
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-12 col-sm-2">{{$txt['107711::53687_018_gc4']}}
											</label>
											<div class="has-feedback col-12 col-sm-12 has-required">
												<input class="form-control" value="" name="pin_value" type="password" placeholder="{{$txt['107711::53687_018_gc4a']}}"></input>
												<span class="form-control-feedback"></span>
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-12 col-sm-2"/>
										<div class="col-12 col-sm-8">
											<button class="btn-large col-12">{{$txt['107711::53687_018_gc5']}}
											</button>
										</div>
									</div>
								</div>
							</div>
						{{/if}}
						{{if  $xml->getItem("/shop/page/order1/prepaid_methods/item[@id = '2']")}}
							<div id="voucher_data" class="order1_voucher_form_wrapp" style="display: none;">
								<div class="order1_giftcard_form" id="voucher_form">
									<span class="big_label">{{$txt['107711::53687_018_vouc1']}}</span>
									<p>{{$txt['107711::53687_018_vouc2']}}
									</p>
									<div class="giftcard_status">
										<div>
											<strong/>
											<small/>
										</div>
									</div>
									<div class="giftcard_inputs">
										<div class="form-group">
											<label for="order1_voucher" class="control-label col-12 col-sm-2">{{$txt['107711::474574_order1_voucher']}}
											</label>
											<div class="has-feedback col-12 col-sm-12 has-required">
												<input class="form-control" name="voucher_id" type="text" minlength="10"/>
												<span class="form-control-feedback"></span>
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-12 col-sm-2"/>
										<div class="col-12 col-sm-8">
											<button class="btn-large col-12">{{$txt['107711::53687_018_gc5_voucher']}}
											</button>
										</div>
									</div>
									<small>{{$txt['107711::654645_voucher_info2']}}</small>
								</div>
							</div>
						{{/if}}
						<script class="ajaxLoad">
            var client_data_uses_vat = '{{$xml->getItemEscape("/shop/client_data/@uses_vat")}}';
        						</script>

						<div id="alert_cover" class="projector_alert_55916" style="display:none" onclick="Alertek.hide_alert();">
							NIEDASIE
						</div>
					</div>
				{{/if}}
			</div>
		</div>
		{{if !( $xml->getItem("action/set_render/item")) or ( $xml->getItem("action/set_render/item/@name")  == (string) 'footer')}}
			<footer class="{{$txt['107419::70925_footer_class']}}">
				{{include file="component_menu_tree4_106616.tpl"}}
				{{include file="component_menu_contact_106454.tpl"}}
				{{include file="component_menu_footer_106456.tpl"}}
				{{include file="component_menu_banners2_109348.tpl"}}
				{{include file="component_menu_tooltip_108066.tpl"}}
				{{include file="component_menu_calendar_107960.tpl"}}
				{{include file="component_menu_instalment_108070.tpl"}}
				{{include file="component_menu_structured_data_108021.tpl"}}
				{{include file="component_menu_notice_107640.tpl"}}
				{{include file="component_menu_dynamically_added_content_106830.tpl"}}
			</footer>
		{{/if}}
		{{if  $xml->getItem("/shop/page[@type='main']")}}
			{{if  $xml->getItem("/shop/@preview")  gt (string) 0}}
				<script type="text/javascript" src="/gfx/{{$xml->getItemEscape("language/@id")}}/{{$xml->getItemEscape("/shop/@preview")}}/shop.js">				</script>

			{{else}}
				<script type="text/javascript" src="/gfx/{{$xml->getItemEscape("language/@id")}}/shop.js?r=1570606968">				</script>

			{{/if}}
		{{/if}}
		<script>
                  app_shop.runApp();
            		</script>

		{{if  $xml->getItem("/shop/page/seolink_with_language_directory")}}
		{{/if}}
		{{if ( $xml->getItem("action/set_render/item/@name")  == (string) 'popup') or !( $xml->getItem("action/set_render/item"))}}
			<!--IAI_TEMPLATE_additional_body_scripts-->{{literal}}
		</body>
	</html>{{/literal}}
{{/if}}
