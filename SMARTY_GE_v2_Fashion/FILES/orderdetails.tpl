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
					<aside {{assign "classAttributeTmp1" ""}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}span3{{/capture}}{{if $xml->getItem("page/@type") == (string) 'projector'}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}{{$txt['73991::70925_projector_a_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'search'}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}{{$txt['73991::70925_search_a_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'main'}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}{{$txt['73991::70925_main_a_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'blog-list' or $xml->getItem("page/@type") == (string) 'blog-item'}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}{{$txt['73991::70925_blog_a_class']}}{{/capture}}{{else}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}{{$txt['73991::70925_otherwise_a_class']}}{{/capture}}{{/if}}  class="{{$classAttributeTmp1}}">
						{{include file="component_menu_filter_79091.tpl"}}
						{{include file="component_menu_buttons_77612.tpl"}}
						{{include file="component_menu_additional1_76965.tpl"}}
					</aside>
				{{/if}}
				{{if !( $xml->getItem("action/set_render/item")) or ( $xml->getItem("action/set_render/item/@name")  == (string) 'content')}}
					<div {{assign "classAttributeTmp2" ""}}  id="content"{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}span9{{/capture}}{{if $xml->getItem("page[@type='projector']")}} itemscope="itemscope" itemtype="http://schema.org/Product" {{/if}}{{if $xml->getItem("page/@type") == (string) 'projector'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['73991::70925_projector_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'search'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['73991::70925_search_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'main'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['73991::70925_main_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'navigation'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['73991::70925_navigation_page_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'blog-list' or $xml->getItem("page/@type") == (string) 'blog-item'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['73991::70925_blog_c_class']}}{{/capture}}{{else}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['73991::70925_otherwise_c_class']}}{{/capture}}{{/if}}  class="{{$classAttributeTmp2}}">
						{{include file="component_menu_order_progress_68745.tpl"}}
						{{include file="component_menu_messages_67953.tpl"}}
						<!--CMS na stronę przedpłat (orderdetails_cms, 58341.1)-->
						{{if  $xml->getItem("page/prepaid/text/body")  neq (string) ''}}
							<div {{assign "classAttributeTmp3" ""}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}orderdetails_cms{{/capture}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}orderdetails_cms cm{{/capture}}  class="{{$classAttributeTmp3}}">
								<div class="orderdetails_cms_sub">{{$xml->getItem("page/prepaid/text/body")}}
								</div>
							</div>
						{{/if}}
						<!--Informacje o zamówieniu (orderdetails_info, 63959.1)-->
						{{capture name="txt_60826_advance_a" assign="txt_60826_advance_a"}}
							{{$txt['63959::60826_advance_a']}}
						{{/capture}}
						{{capture name="setSerialNumber" assign="setSerialNumber"}}
							{{$txt['63959::57649_setSerialNumber']}}
						{{/capture}}
						<div id="orderdetails_info">
							{{if  $xml->getItem("page/prepaid/payback/@id")  neq (string) ''}}
								{{if  $xml->getItem("page/prepaid/details[@msg='order']")}}
									<div class="orderdetails_info_msg">{{$txt['63959::prepaid001']}}
										{{if $setSerialNumber}}
											{{$xml->getItemEscape("page/prepaid/details/@orderid")}}
										{{else}}
											{{$xml->getItemEscape("page/prepaid/details/@id")}}
										{{/if}}
										{{$txt['63959::prepaid002']}}
										{{if  $xml->getItem("page/prepaid/details[@prepaidstatus='c']")}}
											{{$txt['63959::prepaid002c']}}
										{{/if}}
									</div>
								{{/if}}
								{{if  $xml->getItem("page/prepaid/details[@msg='confirm']")}}
									<div class="orderdetails_info_confirm">{{$txt['63959::prepaid005']}}
									</div>
								{{/if}}
								<table class="new_orderdetails_info">
									<tr>
										<td class="new_orderdetails_info" colspan="3">
											<h2 class="big_label">{{$txt['63959::prepaid006']}}
												<strong>
													{{if $setSerialNumber}}
														{{$xml->getItemEscape("page/prepaid/details/@orderid")}}
													{{else}}
														{{$xml->getItemEscape("page/prepaid/details/@id")}}
													{{/if}}
													</strong>
												<span class="new_orderdetails_info_date_sub">{{$txt['63959::prepaid007']}}{{$xml->getItemEscape("page/prepaid/details/@datetime")}}</span>
											</h2>
										</td>
									</tr>
									<tr>
										<td class="new_orderdetails_info_col">
											<h3>{{$txt['63959::prepaid_066s']}}
											</h3>
											<h4 class="new_orderdetails_status">
												{{if ( $xml->getItem("page/prepaid/details/@wykonane")  == (string) 'n')}}
													{{$txt['63959::prepaid161']}}
												{{elseif ( $xml->getItem("page/prepaid/details/@wykonane")  == (string) 't')}}
													{{$txt['63959::prepaid162']}}
												{{elseif ( $xml->getItem("page/prepaid/details/@wykonane")  == (string) 'i')}}
													{{$txt['63959::prepaid163']}}
												{{elseif ( $xml->getItem("page/prepaid/details/@wykonane")  == (string) 's')}}
													{{$txt['63959::prepaid164']}}
												{{elseif ( $xml->getItem("page/prepaid/details/@wykonane")  == (string) 'o')}}
													{{$txt['63959::prepaid165']}}
												{{elseif ( $xml->getItem("page/prepaid/details/@wykonane")  == (string) 'p')}}
													{{$txt['63959::prepaid166']}}
												{{elseif ( $xml->getItem("page/prepaid/details/@wykonane")  == (string) 'h')}}
													{{$txt['63959::prepaid166N']}}
												{{elseif ( $xml->getItem("page/prepaid/details/@wykonane")  == (string) 'w')}}
													{{$txt['63959::prepaid166w']}}
												{{elseif ( $xml->getItem("page/prepaid/details/@wykonane")  == (string) 'd')}}
													{{$txt['63959::prepaid166d']}}
												{{elseif ( $xml->getItem("page/prepaid/details/@wykonane")  == (string) 'z')}}
													{{$txt['63959::prepaid167']}}
												{{elseif ( $xml->getItem("page/prepaid/details/@wykonane")  == (string) 'k')}}
													{{$txt['63959::prepaid168']}}
												{{elseif ( $xml->getItem("page/prepaid/details/@wykonane")  == (string) 'r')}}
													{{$txt['63959::prepaid169']}}
												{{elseif ( $xml->getItem("page/prepaid/details/@wykonane")  == (string) 'j')}}
													{{$txt['63959::prepaid169d']}}
												{{elseif ( $xml->getItem("page/prepaid/details/@wykonane")  == (string) 'l')}}
													{{$txt['63959::prepaid169l']}}
												{{elseif ( $xml->getItem("page/prepaid/details/@wykonane")  == (string) 'a')}}
													{{$txt['63959::prepaid169l0']}}
												{{elseif ( $xml->getItem("page/prepaid/details/@wykonane")  == (string) 'b')}}
													{{$txt['63959::prepaid169l0p']}}
												{{/if}}
											</h4>
										</td>
										<td class="new_orderdetails_info_col2">
											<h3>{{$txt['63959::prepaid_066']}}
											</h3>
											<h4 id="new_orderdetails_currencycost">
												<span>{{$txt['63959::prepaid008w']}}</span>
												<b>{{$xml->getItemEscape("page/prepaid/details/@currencycost_formatted")}}</b>
											</h4>
											{{if  $xml->getItem("page/prepaid/details/@deliveryid")  neq (string) '47'}}
												<h4 id="new_orderdetails_currency_additional_cost">
													<span>{{$txt['63959::prepaid011do']}}</span>
													<b>{{$xml->getItemEscape("page/prepaid/details/@currency_additional_cost_formatted")}}</b>
												</h4>
												<h4 class="new_orderdetails_info_total" id="new_orderdetails_currencytotal">
													<span>{{$txt['63959::prepaid011']}}</span>
													<b>{{$xml->getItemEscape("page/prepaid/details/@currencytotal_formatted")}}
														{{if  $xml->getItem("/shop/page/prepaid/points/@display")}}
															<span>{{$txt['63959::prepaid913plus']}}{{$xml->getItemEscape("/shop/page/prepaid/points/@order_cost")}}{{$txt['63959::50000_004pkt']}}</span>
														{{/if}}
														</b>
													{{if  $xml->getItem("/shop/page/prepaid/points/@display")}}
														<small>{{$txt['63959::prepaid915na']}}{{$xml->getItemEscape("/shop/page/prepaid/points/@client_points")}}{{$txt['63959::prepaid915pkt']}}</small>
													{{/if}}
												</h4>
											{{/if}}
											{{if $txt_60826_advance_a and ( $xml->getItem("/shop/page/prepaid/details/@advance")  gt (string) 0)}}
												<h4 id="new_orderdetails_advance">
													<span>{{$txt['63959::60826_advance_a']}}</span>
													<b>{{$xml->getItemEscape("/shop/page/prepaid/details/@advance_formatted")}}</b>
												</h4>
											{{/if}}
										</td>
									</tr>
									<tr>
										<td class="new_orderdetails_info_col3">
											{{if !( $xml->getItem("page/prepaid/status_explanation")  == (string) '')}}
												<a href="#show_status_explanation" data-tablet-class="btn-small" data-mobile-class="btn-small" class="show_status show_status_explanation">{{$txt['63959::prepaid021']}}</a>
												<div style="display:none;">{{$xml->getItem("page/prepaid/status_explanation")}}
												</div>
											{{/if}}
										</td>
										<td class="new_orderdetails_info_col4">
											{{if  $xml->getItem("page/prepaid/order[@payment_info='true']")}}
												<a href="#payment_status_explanation" data-tablet-class="btn-small" data-mobile-class="btn-small" class="show_status show_status_explanation">{{$txt['63959::prepaid044']}}</a>
												<div style="display:none;">{{$xml->getItem("page/prepaid/payment_status_explanation")}}
												</div>
											{{/if}}
										</td>
									</tr>
								</table>
								{{if  $xml->getItem("/shop/page/prepaid/insurance_forms/trusted_shops") or  $xml->getItem("/shop/page/prepaid/opinions_forms/trusted_shops/raiting_action")}}
									<div id="insurance_products_orderdetails" style="text-align:left;clear:both;padding: 0 0 15px;">
										<table class="insurance_products_orderdetails">
											<tr>
												{{if  $xml->getItem("/shop/page/prepaid/insurance_forms/trusted_shops")}}
													<td class="tsInnerBox">
														<div id="tsInnerBox" style="border: 1px solid rgb(102, 102, 102); overflow: hidden; color: rgb(102, 102, 102); margin: 0pt auto; padding: 10px;">
															<div id="tsSeal" style="float: left; padding-right: 20px;">
																<form method="post" target="_blank" action="{{$xml->getItemEscape("/shop/page/prepaid/insurance_forms/trusted_shops/icon_form/@action")}}">{{$xml->getItem("/shop/page/prepaid/insurance_forms/trusted_shops/icon_form/hidden_params")}}
																	<input type="image" src="{{$xml->getItemEscape("/shop/page/prepaid/insurance_forms/trusted_shops/icon_form/@icon_src")}}" title="{{$xml->getItemEscape("/shop/page/prepaid/insurance_forms/trusted_shops/icon_form/@title")}}"></input>
																</form>
															</div>
															<div id="tsText">
																<form method="post" target="_blank" action="{{$xml->getItemEscape("/shop/page/prepaid/insurance_forms/trusted_shops/registration_form/@action")}}">{{$xml->getItem("/shop/page/prepaid/insurance_forms/trusted_shops/registration_form/hidden_params")}}
																	<p style="line-height: 1.4; font-weight: bold; min-height: 58px;">{{$xml->getItem("/shop/page/prepaid/insurance_forms/trusted_shops/registration_form/@descryption")}}
																	</p>
																	<button type="submit" style="background: none repeat scroll 0% 0% transparent; border: medium none; cursor: pointer; font-weight: bold; padding: 0pt; margin: 0pt;">{{$xml->getItem("/shop/page/prepaid/insurance_forms/trusted_shops/registration_form/@button")}}
																	</button>
																</form>
															</div>
														</div>
													</td>
												{{/if}}
												{{if  $xml->getItem("/shop/page/prepaid/opinions_forms/trusted_shops/raiting_action")}}
													<td class="orderdetails_info_opinions">
														<a {{assign "classAttributeTmp4" ""}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}orderdetails_info_opinions{{/capture}} target="_blank" {{if !( $xml->getItem("/shop/page/prepaid/insurance_forms/trusted_shops"))}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}orderdetails_info_opinions orderdetails_info_opinions_small{{/capture}}{{/if}} title="{{$txt['63959::prepaid064_tr']}}" href="{{$xml->getItemEscape("/shop/page/prepaid/opinions_forms/trusted_shops/raiting_action")}}"  class="{{$classAttributeTmp4}}">{{$txt['63959::prepaid064_tr2']}}</a>
													</td>
												{{/if}}
											</tr>
										</table>
									</div>
								{{/if}}
								<div class="new_orderdetails_info_buttons">
									{{if ( $xml->getItem("page/prepaid/cancellink/@active") == (string)'y') and !( $xml->getItem("page/prepaid/order/@payment_paid"))}}
										<a {{assign "classAttributeTmp5" ""}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}orderdetails_info_cancel{{/capture}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}btn-small orderdetails_info_cancel{{/capture}} onclick="return confirm('{{$txt['63959::prepaid170']}}')" title="{{$txt['63959::prepaid171']}}" href="{{$xml->getItemEscape("page/prepaid/cancellink/@link")}}"  class="{{$classAttributeTmp5}}">{{$txt['63959::prepaid063']}}</a>
										<script type="text/javascript">
            var txt_orderdetails_info_message = '{{$txt['63959::prepaid170']}}';
        										</script>

									{{/if}}
									{{if  $xml->getItem("page/prepaid/editlink[@active='y']")}}
										<a {{assign "classAttributeTmp6" ""}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}orderdetails_info_edit{{/capture}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}btn-small orderdetails_info_edit{{/capture}} title="{{$txt['63959::prepaid172edit']}}" href="{{$xml->getItemEscape("page/prepaid/editlink/@link")}}"  class="{{$classAttributeTmp6}}">{{$txt['63959::prepaid064edit']}}</a>
									{{/if}}
									{{if  $xml->getItem("page/prepaid/confirmlink/@link")}}
										<a {{assign "classAttributeTmp7" ""}}{{capture name="classAttributeTmp7" assign="classAttributeTmp7"}}orderdetails_info_resend{{/capture}}{{capture name="classAttributeTmp7" assign="classAttributeTmp7"}}btn-small orderdetails_info_resend{{/capture}} title="{{$txt['63959::prepaid172']}}" href="{{$xml->getItemEscape("page/prepaid/confirmlink/@link")}}"  class="{{$classAttributeTmp7}}">{{$txt['63959::prepaid064']}}</a>
									{{/if}}
								</div>
								{{if  $xml->getItem("page/prepaid/confirmlink/@link")}}
									<p class="orderdetails_info_confirm">{{$txt['63959::prepaid065']}}
									</p>
								{{/if}}
							{{/if}}
							<script type="text/javascript">        
    var txt_62619_plus =  '{{$txt['63959::prepaid913plus']}}';
    var txt_62619_pkt = '{{$txt['63959::50000_004pkt']}}';
    var txt_62619_na_swoim_koncie_masz = '{{$txt['63959::prepaid915na']}}';
   init_orderdetails_info()
							</script>

						</div>
						<!--Formularz płatności (orderdetails_payform, 78789.1)-->
						{{capture name="prepaidzt_txt" assign="prepaidzt_txt"}}
							{{$txt['78789::prepaidrt']}}
						{{/capture}}
						{{capture name="prepaidrt_txt" assign="prepaidrt_txt"}}
							{{$txt['78789::prepaidzt']}}
						{{/capture}}
						{{if ($prepaidrt_txt and  $xml->getItem("/shop/page/prepaid/actions/return/@url")) or ($prepaidzt_txt and  $xml->getItem("/shop/page/prepaid/actions/rma/@url"))}}
							<div {{assign "classAttributeTmp8" ""}}{{capture name="classAttributeTmp8" assign="classAttributeTmp8"}}actions_return_rma{{/capture}}{{capture name="classAttributeTmp8" assign="classAttributeTmp8"}}actions_return_rma {{$txt['78789::prepaiclass1']}}{{/capture}}  class="{{$classAttributeTmp8}}">
								{{if $prepaidrt_txt and  $xml->getItem("/shop/page/prepaid/actions/return/@url")}}
									<div {{assign "classAttributeTmp9" ""}}{{capture name="classAttributeTmp9" assign="classAttributeTmp9"}}actions_return{{/capture}}{{capture name="classAttributeTmp9" assign="classAttributeTmp9"}}actions_return {{$txt['78789::prepaiclass2']}}{{/capture}}  class="{{$classAttributeTmp9}}">
										<div {{assign "classAttributeTmp10" ""}}{{capture name="classAttributeTmp10" assign="classAttributeTmp10"}}actions_return_sub{{/capture}}{{capture name="classAttributeTmp10" assign="classAttributeTmp10"}}actions_return_sub {{$txt['78789::prepaiclass2_sub']}}{{/capture}}  class="{{$classAttributeTmp10}}">
											<h3>{{$txt['78789::prepalin_001']}}
											</h3>
											<div>
												<img alt="returns" src="/gfx/__IAI_TEMPLATE_LANG_639_1__/returns_action.png?r=1570606529"/>
												<span>{{$txt['78789::prepalin_002']}}</span>
											</div>
											<a class="btn-small" title="{{$txt['78789::prepairtds']}}" href="{{$xml->getItemEscape("/shop/page/prepaid/actions/return/@url")}}">{{$prepaidrt_txt}}</a>
										</div>
									</div>
								{{/if}}
								{{if $prepaidzt_txt and  $xml->getItem("/shop/page/prepaid/actions/rma/@url")}}
									<div {{assign "classAttributeTmp11" ""}}{{capture name="classAttributeTmp11" assign="classAttributeTmp11"}}actions_rma{{/capture}}{{capture name="classAttributeTmp11" assign="classAttributeTmp11"}}actions_rma {{$txt['78789::prepaiclass3']}}{{/capture}}  class="{{$classAttributeTmp11}}">
										<div {{assign "classAttributeTmp12" ""}}{{capture name="classAttributeTmp12" assign="classAttributeTmp12"}}actions_rma_sub{{/capture}}{{capture name="classAttributeTmp12" assign="classAttributeTmp12"}}actions_rma_sub {{$txt['78789::prepaiclass3_sub']}}{{/capture}}  class="{{$classAttributeTmp12}}">
											<h3>{{$txt['78789::prepalin_003']}}
											</h3>
											<div>
												<img alt="rma" src="/gfx/__IAI_TEMPLATE_LANG_639_1__/rma_action.png?r=1570606529"/>
												<span>{{$txt['78789::prepalin_004']}}</span>
											</div>
											<a class="btn-small" title="{{$txt['78789::prepaidztds']}}" href="{{$xml->getItemEscape("/shop/page/prepaid/actions/rma/@url")}}">{{$prepaidzt_txt}}</a>
										</div>
									</div>
								{{/if}}
							</div>
						{{/if}}
						<!--Płatności do zamówienia (orderdetails_payments, 80255.1)-->
						{{capture name="payments_in_row" assign="payments_in_row"}}
							{{$txt['80255::63643_payments_in_row']}}
						{{/capture}}
						<div id="orderdetails_payments" style="display:none;">
							{{if  $xml->getItem("page/prepaid/prepaid_history/item")}}
								style="display:block;"
								<h2 class="big_label">{{$txt['80255::prepaid068']}}
								</h2>
								<table>
									{{foreach from=$xml->getList("page/prepaid/prepaid_history/item") item=loop525}}
										<tr>
											<td class="icon" rowspan="2">
												{{if  $loop525->getItem("@icon")}}
													<img src="{{$loop525->getItemEscape("@icon")}}" alt="{{$loop525->getItemEscape("@payment_name")}}"></img>
												{{/if}}
											</td>
											<td class="date add_td">
												{{if  $loop525->getItem("dates/date_add/@date")}}
													{{$loop525->getItemEscape("dates/date_add/@date")}}
												{{/if}}
											</td>
											<td class="status add_td">
												{{if  $loop525->getItem("amount/@mark") == (string)'negativ'}}
													{{$txt['80255::prepaid0011a']}}
												{{else}}
													{{$txt['80255::prepaid0011']}}
												{{/if}}
												{{if  $loop525->getItem("@payment_id") == (string)'27'}}
													{{$txt['80255::prepaid0011_saldo']}}
												{{elseif  $loop525->getItem("@payment_id") == (string)'38'}}
													{{$txt['80255::prepaid0011_kredyt']}}
												{{else}}
													{{$loop525->getItemEscape("@payment_name")}}
												{{/if}}
												{{if  $loop525->getItem("amount/@mark") == (string)'negativ'}}
													{{$txt['80255::prepaid0012a']}}{{$txt['80255::prepaid0013a']}}
												{{else}}
													{{$txt['80255::prepaid0012']}}{{$txt['80255::prepaid0013']}}
												{{/if}}
												{{$loop525->getItemEscape("amount/order_currency/@value_formatted")}}
												{{if !( $loop525->getItem("amount/client_currency/@currencysign")  == (string)  $loop525->getItem("amount/order_currency/@currencysign"))}}
													<i>{{$txt['80255::prepaid_1002']}}{{$loop525->getItemEscape("amount/client_currency/@value_formatted")}}{{$txt['80255::prepaid_10003']}}</i>
												{{/if}}
												{{$txt['80255::prepaid0014']}}
												{{if  $loop525->getItem("@status")  == (string) 'n'}}
													{{if  $loop525->getItem("@automatic_booking")  == (string) '1'}}
														{{$txt['80255::prepaid0016']}}
													{{/if}}
													{{if !( $loop525->getItem("amount/@mark") == (string)'negativ')}}
														{{if  $loop525->getItem("additional_info/data")}}
															{{if  $loop525->getItem("@other_payments") == (string) 'true'}}
																{{$txt['80255::prepaid0019']}}
															{{else}}
																{{$txt['80255::prepaid0021']}}
															{{/if}}
															<table class="orderdetails_transfer">
																<tr>
																	<td>
																		<span>{{$txt['80255::prepaid126']}}</span>
																	</td>
																	<td>
																		<strong>{{$loop525->getItemEscape("additional_info/data/@receiver")}}</strong>
																	</td>
																</tr>
																<tr>
																	<td>
																		<span>{{$txt['80255::prepaid127']}}</span>
																	</td>
																	<td>
																		<strong>{{$loop525->getItemEscape("additional_info/data/@account")}}</strong>
																	</td>
																</tr>
																{{if  $loop525->getItem("additional_info/data/@bankname")  neq (string) ''}}
																	<tr>
																		<td>
																			<span>{{$txt['80255::prepaid127b']}}</span>
																		</td>
																		<td>
																			<strong>{{$loop525->getItemEscape("additional_info/data/@bankname")}}</strong>
																		</td>
																	</tr>
																{{/if}}
																{{if  $loop525->getItem("additional_info/data/@swift_bic")  neq (string) ''}}
																	<tr>
																		<td>
																			<span>{{$txt['80255::prepaid127swift']}}</span>
																		</td>
																		<td>
																			<strong>{{$loop525->getItemEscape("additional_info/data/@swift_bic")}}</strong>
																		</td>
																	</tr>
																{{/if}}
																<tr>
																	<td>
																		<span>{{$txt['80255::prepaid128']}}</span>
																	</td>
																	<td>
																		<strong>{{$loop525->getItemEscape("additional_info/data/@title")}}</strong>
																	</td>
																</tr>
																<tr>
																	<td>
																		<span>{{$txt['80255::prepaid130']}}</span>
																	</td>
																	<td>
																		<strong>{{$loop525->getItemEscape("amount/order_currency/@value_formatted")}}
																			{{if !( $loop525->getItem("amount/client_currency/@currencysign")  == (string)  $loop525->getItem("amount/order_currency/@currencysign"))}}
																				<i>{{$txt['80255::prepaid_1002']}}{{$loop525->getItemEscape("amount/client_currency/@value_formatted")}}{{$txt['80255::prepaid_10003']}}</i>
																			{{/if}}
																			</strong>
																	</td>
																</tr>
															</table>
														{{/if}}
														{{if  $loop525->getItem("../@other_payments") == (string) 'true' and  $loop525->getItem("../@retry_payment")  == (string) 'false'}}
															{{$txt['80255::prepaid0020a']}}
															<div style="clear: both;">
															</div>
															<a class="selectAnotherPayment btn-small" href="{{$loop525->getItemEscape("@cancel_link")}}">{{$txt['80255::prepaid0019a']}}</a>
														{{elseif  $loop525->getItem("../@other_payments") == (string) 'true' and  $loop525->getItem("../@retry_payment")  == (string) 'true'}}
															{{$txt['80255::prepaid0017']}}
															{{if  $loop525->getItem("/shop/page/prepaid_methods/item")}}
																{{$txt['80255::prepaid0020']}}
															{{/if}}
															<div style="clear: both;">
															</div>
															<a {{assign "hrefAttributeTmp18" ""}}{{capture name="hrefAttributeTmp18" assign="hrefAttributeTmp18"}}#make_payment{{/capture}} class="sendAjaxLink btn-small"{{capture name="hrefAttributeTmp18" assign="hrefAttributeTmp18"}}{{$loop525->getItemEscape("@pay_link")}}{{/capture}}  href="{{$hrefAttributeTmp18}}">{{$txt['80255::prepaid0018']}}</a>
															<a class="selectAnotherPayment btn-small" href="{{$loop525->getItemEscape("@cancel_link")}}">{{$txt['80255::prepaid0019a']}}</a>
														{{/if}}
													{{/if}}
												{{/if}}
											</td>
										</tr>
										<tr>
											<td class="date canceled_td" {{if $loop525->getItem("@payment_id") == (string)'27'}} style="display:none" {{/if}} >
												{{if  $loop525->getItem("dates/date_canceled/@date")}}
													{{$loop525->getItemEscape("dates/date_canceled/@date")}}
												{{/if}}
												{{if  $loop525->getItem("dates/date_confirm/@date")}}
													{{$loop525->getItemEscape("dates/date_confirm/@date")}}
												{{/if}}
											</td>
											<td class="status canceled_td" {{if $loop525->getItem("@payment_id") == (string)'27'}} style="display:none" {{/if}} >
												{{if !( $loop525->getItem("@status")  == (string) 'n')}}
													{{if  $loop525->getItem("dates/date_canceled/@date")}}
														{{$txt['80255::prepaid0015']}}
													{{/if}}
													{{if  $loop525->getItem("dates/date_confirm/@date")}}
														{{if  $loop525->getItem("amount/@mark") == (string)'negativ'}}
															{{$txt['80255::prepaid0015b']}}
														{{else}}
															{{$txt['80255::prepaid0015a']}}
														{{/if}}
													{{/if}}
												{{/if}}
											</td>
										</tr>
									{{/foreach}}
								</table>
							{{/if}}
						</div>
						{{if  $xml->getItem("page/prepaid/details/@paymentstatus")  neq (string) 'g'}}
							{{if  $xml->getItem("/shop/page/prepaid_methods/item")}}
								<div id="orderdetails_prepaid_methods" style="display:none;">
									<form action="/order-newpayment.php" method="post" id="order1_payform" action="/order-newpayment.php?order={{$xml->getItemEscape("/shop/page/prepaid/details/@id")}}" {{if $xml->getItem("/shop/page/prepaid/details/@paymentlink")}} action="{{$xml->getItemEscape("/shop/page/prepaid/details/@paymentlink")}}" {{/if}}>
										<div class="order1_payitems_wrapper">
											{{foreach from=$xml->getList("/shop/page/prepaid_methods/item") item=loop690}}
												{{if ( $loop690@iteration  % $payments_in_row)  == (string) 1}}
													{{literal}}
													<div class="order1_payment_wrapper" >{{/literal}}
													{{/if}}
													<div {{assign "classAttributeTmp13" ""}}{{capture name="classAttributeTmp13" assign="classAttributeTmp13"}}order1_payment{{/capture}} id="payment_{{$loop690->getItemEscape("@id")}}" title="{{$txt['80255::order1_payment_onclicktext']}}" {{if $loop690->getItem("@checked") == (string) 'true'}}{{capture name="classAttributeTmp13" assign="classAttributeTmp13"}}order1_payment o1selectedpay{{/capture}}{{/if}}  class="{{$classAttributeTmp13}}">
														<div class="order1_payment_sub">
															<input name="payform_id" type="radio" class="orderdetails_radio" value="{{$loop690->getItemEscape("@id")}}" {{if $loop690->getItem("@checked") == (string)'true'}} checked="checked" {{/if}}></input>
															<span class="order1_payment_header">{{$loop690->getItem("@name")}}</span>
															{{if  $loop690->getItem("@icon")  neq (string) ''}}
																<img class="order1_payment_icon" src="{{$loop690->getItemEscape("@icon")}}" alt="{{$loop690->getItemEscape("@name")}}"></img>
															{{/if}}
															<div class="order1_payment_description" id="description_{{$loop690->getItemEscape("@id")}}">
																{{if  $loop690->getItem("@description")}}
																	{{$loop690->getItem("@description")}}
																	{{if ( $loop690->getItem("@id")  == (string) '28') and ( $loop690->getItem("@allProducts")  == (string) '0')}}
																		<span class="order1_payment_lukaswarning">{{$txt['80255::installmentDialog_alertlukas']}}</span>
																	{{/if}}
																{{/if}}
																{{if  $loop690->getItem("@id")  == (string) '2'}}
																	<div class="orderdetails_bon">
																		<label for="order1_bon" class="orderdetails_bon">{{$txt['80255::order1_bon']}}
																		</label>
																		<input type="text" class="orderdetails_bon" name="voucher_id_copy" id="order1_bon_copy"/>
																	</div>
																{{/if}}
															</div>
														</div>
													</div>
													{{if ( $loop690@iteration  % $payments_in_row)  == (string) 0 or  $loop690@iteration  == (string) $loop690@total }}
														<div class="description_box">
														</div>{{literal}}
													</div>{{/literal}}
												{{/if}}
											{{/foreach}}
										</div>
										<div class="chooseMethodPaymentButton">
											{{if  $xml->getItem("page/prepaid/prepaid_history[@show_payment_button='true']")}}
												{{if  $xml->getItem("page/prepaid/prepaid_history/@currencysum")}}
													<p>{{$txt['80255::prepaiddoopl']}}
														<b>{{$xml->getItemEscape("page/prepaid/prepaid_history/@sum_formatted")}}
															{{if !( $xml->getItem("page/prepaid/prepaid_history/@currencysign")  == (string)  $xml->getItem("page/prepaid/prepaid_history/@ordercurrencysign"))}}
																<i>{{$txt['80255::prepaid_1002']}}{{$xml->getItemEscape("page/prepaid/prepaid_history/@currencysum_formatted")}}{{$txt['80255::prepaid_10003']}}</i>
															{{/if}}
															</b>
													</p>
												{{/if}}
											{{/if}}
											<button {{assign "classAttributeTmp14" ""}}  type="submit"{{capture name="classAttributeTmp14" assign="classAttributeTmp14"}}chooseMethodPayment{{/capture}}{{capture name="classAttributeTmp14" assign="classAttributeTmp14"}}btn-large chooseMethodPayment{{/capture}}  class="{{$classAttributeTmp14}}">{{$txt['80255::prepaid068szap']}}
											</button>
										</div>
									</form>
								</div>
							{{/if}}
							<div class="chooseMethodPaymentButton2" {{if $xml->getItem("page/prepaid/prepaid_history[@show_payment_button='false']")}} style="display:none;" {{/if}}>
								{{if  $xml->getItem("page/prepaid/prepaid_history/@currencysum")}}
									<p>{{$txt['80255::prepaiddoopl']}}
										<b>{{$xml->getItemEscape("page/prepaid/prepaid_history/@sum_formatted")}}
											{{if !( $xml->getItem("page/prepaid/prepaid_history/@currencysign")  == (string)  $xml->getItem("page/prepaid/prepaid_history/@ordercurrencysign"))}}
												<i>{{$txt['80255::prepaid_1002']}}{{$xml->getItemEscape("page/prepaid/prepaid_history/@currencysum_formatted")}}{{$txt['80255::prepaid_10003']}}</i>
											{{/if}}
											</b>
									</p>
								{{/if}}
								<a {{assign "classAttributeTmp15" ""}}{{capture name="classAttributeTmp15" assign="classAttributeTmp15"}}chooseMethodPayment2{{/capture}}{{capture name="classAttributeTmp15" assign="classAttributeTmp15"}}btn-large chooseMethodPayment2{{/capture}} href="/order-newpayment.php?order={{$xml->getItemEscape("/shop/page/prepaid/details/@id")}}{{if !( $xml->getItem("/shop/page/prepaid/payback/@key") == (string) '')}}&#160;amp;key={{$xml->getItemEscape("/shop/page/prepaid/payback/@key")}}{{/if}}"  class="{{$classAttributeTmp15}}">{{$txt['80255::prepaid068szapa']}}</a>
							</div>
						{{/if}}
						<script type="text/javascript">
    var orderID = '{{$xml->getItem("/shop/page/prepaid/details/@id")}}'; 
    var orderKey = '{{$xml->getItem("/shop/page/prepaid/payback/@key")}}'; 
    orderdetails_payments_init();
    {{if  $xml->getItem("page/prepaid/prepaid_history/item[position()=last()]/@first_pay")  == (string) 'true'}}{{if  $xml->getItem("page/prepaid/prepaid_history/item[position()=last()]/@pay_link")}}
            orderdetails_payments.getOrderPayment('{{$xml->getItem("page/prepaid/prepaid_history/item[position()=last()]/@pay_link")}}{{literal}}&#160;ajax=true');{{/literal}}{{/if}}{{/if}}						</script>

						{{if  $xml->getItem("/shop/page/payments_static/item/@id")  == (string) '25' or  $xml->getItem("/shop/page/payments_static/embeded_card_form")}}
							<div id="orderdetails_payments_payment_card">
								<div class="payment_card_sub">
									<div class="payment_card_info" id="payment_card_info_static">{{$txt['80255::payment_card_info']}}
									</div>
									{{if  $xml->getItem("/shop/page/payments_static/embeded_card_form") and (( $xml->getItem("/shop/page/payments_static/embeded_card_form/payform/headermessage") and  $xml->getItem("/shop/page/payments_static/embeded_card_form/payform/headermessage")  neq (string) '') or ( $xml->getItem("/shop/page/payments_static/embeded_card_form/payform/headerlogo") and  $xml->getItem("/shop/page/payments_static/embeded_card_form/payform/headerlogo")  neq (string) ''))}}
										<div class="payment_head_info" style="display: none;">
											{{if  $xml->getItem("/shop/page/payments_static/embeded_card_form/payform/headermessage") and  $xml->getItem("/shop/page/payments_static/embeded_card_form/payform/headermessage")  neq (string) ''}}
												<div class="payment_headermessage">{{$xml->getItem("/shop/page/payments_static/embeded_card_form/payform/headermessage")}}
												</div>
											{{/if}}
											{{if  $xml->getItem("/shop/page/payments_static/embeded_card_form/payform/headerlogo") and  $xml->getItem("/shop/page/payments_static/embeded_card_form/payform/headerlogo")  neq (string) ''}}
												<div class="payment_headerlogo">
													<img src="{{$xml->getItemEscape("/shop/page/payments_static/embeded_card_form/payform/headerlogo")}}"></img>
												</div>
											{{/if}}
										</div>
									{{/if}}
									<form class="payment_card" action="{{$xml->getItemEscape("/shop/page/payments_static/*/payform/@action")}}" method="{{$xml->getItemEscape("/shop/page/payments_static/*/payform/@method")}}">
										{{foreach from=$xml->getList("/shop/page/payments_static/*[last()]/payform/item") item=loop805}}
											{{if  $loop805->getItem("@name")  == (string) 'creditCard[system]'}}
												<div class="payment_card_formel cc_wrapper">
													<label for="credit_card_system" class="payment_card_formel">{{$txt['80255::payment_card_formlab1']}}
													</label>
													<div id="credit_card_system" class="clear_data">
														{{foreach from=$loop805->getList("option") item=loop812}}
															<label>
																<input type="radio" class="validate required" data-serialize="#credit_card_system input" value="{{$loop812->getItemEscape("@value")}}" name="{{$loop812->getItemEscape("../@name")}}"></input>
																<div>
																	<img src="{{$loop812->getItemEscape("@data-img")}}" alt="{{$loop812->getItemEscape("@label")}}"></img>
																	<span>{{$loop812->getItemEscape("@label")}}</span>
																</div>
															</label>
														{{/foreach}}
													</div>
													<span class="payment_card_need">
														<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/need.gif?r=1570606529" class="payment_card_nedd_img" alt="{{$txt['80255::payment_card_need']}}" title="{{$txt['80255::n57692_010b']}}"></img>
														<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/correct.png?r=1570606529" class="payment_card_correct_img" style="display:none;"/>
														<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/incorrect.png?r=1570606529" class="payment_card_wrong_img" style="display:none;"/>
														<span class="payment_card_help">
															<span class="payment_card_help2">{{$txt['80255::payment_card_help1']}}</span></span></span>
												</div>
											{{elseif  $loop805->getItem("@name")  == (string) 'creditCard[number]'}}
												<div class="payment_card_formel cc_wrapper">
													<label for="credit_card_number" class="payment_card_formel">{{$txt['80255::payment_card_formlab2']}}
													</label>
													<input type="text" id="credit_card_number" class="validate required" data-serialize="#credit_card_number" name="{{$loop805->getItemEscape("@name")}}" {{if $loop805->getItem("@value") neq (string) ''}} value="{{$loop805->getItemEscape("@value")}}" {{/if}}></input>
													<span class="payment_card_need">
														<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/need.gif?r=1570606529" class="payment_card_nedd_img" alt="{{$txt['80255::payment_card_need']}}" title="{{$txt['80255::n57692_010b']}}"></img>
														<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/correct.png?r=1570606529" class="payment_card_correct_img" style="display:none;"/>
														<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/incorrect.png?r=1570606529" class="payment_card_wrong_img" style="display:none;"/>
														<span class="payment_card_help">
															<span class="payment_card_help2"></span></span></span>
												</div>
											{{elseif  $loop805->getItem("@name")  == (string) 'creditCard[endDateMonth]'}}
												<div class="payment_card_formel cc_wrapper">
													<label for="credit_card_month" class="payment_card_formel">{{$txt['80255::payment_card_formlab3']}}
													</label>
													<input type="text" id="credit_card_month" class="validate required" data-serialize="#credit_card_month, #credit_card_year" name="{{$loop805->getItemEscape("@name")}}" {{if $loop805->getItem("@value") neq (string) ''}} value="{{$loop805->getItemEscape("@value")}}" {{/if}}></input>
													<span class="payment_card_expire">{{$txt['80255::payment_card_expireslash']}}</span>
													<input type="text" id="credit_card_year" class="validate required" data-serialize="#credit_card_month, #credit_card_year" name="{{$loop805->getItemEscape("/shop/page/payments_static/*/payform/item[@name = 'creditCard[endDateYear]']/@name")}}" value="{{$loop805->getItemEscape("/shop/page/payments_static/*/payform/item[@name = 'creditCard[endDateYear]']/@value")}}"></input>
													<span class="payment_card_need">
														<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/need.gif?r=1570606529" class="payment_card_nedd_img" alt="{{$txt['80255::payment_card_need']}}" title="{{$txt['80255::n57692_010b']}}"></img>
														<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/correct.png?r=1570606529" class="payment_card_correct_img" style="display:none;"/>
														<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/incorrect.png?r=1570606529" class="payment_card_wrong_img" style="display:none;"/>
														<span class="payment_card_help">
															<span class="payment_card_help2"></span></span></span>
												</div>
												<div class="payment_card_datedesc">{{$txt['80255::payment_card_datedesc']}}
												</div>
											{{elseif  $loop805->getItem("@name")  == (string) 'creditCard[securityCode]'}}
												<div class="payment_card_formel cc_wrapper">
													<label for="credit_card_code" class="payment_card_formel">{{$txt['80255::payment_card_formlab4']}}
													</label>
													<input type="text" id="credit_card_code" class="validate required" data-serialize="#credit_card_code" name="{{$loop805->getItemEscape("@name")}}" {{if $loop805->getItem("@value") neq (string) ''}} value="{{$loop805->getItemEscape("@value")}}" {{/if}}></input>
													<span class="payment_card_need">
														<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/need.gif?r=1570606529" class="payment_card_nedd_img" alt="{{$txt['80255::payment_card_need']}}" title="{{$txt['80255::n57692_010b']}}"></img>
														<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/correct.png?r=1570606529" class="payment_card_correct_img" style="display:none;"/>
														<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/incorrect.png?r=1570606529" class="payment_card_wrong_img" style="display:none;"/>
														<span class="payment_card_help">
															<span class="payment_card_help2"></span></span></span>
												</div>
											{{elseif  $loop805->getItem("@name")  == (string) 'creditCard[name]'}}
												<div class="payment_card_formel cc_wrapper">
													<label for="credit_card_name" class="payment_card_formel">{{$txt['80255::payment_card_formlab5']}}
													</label>
													<input type="text" id="credit_card_name" class="validate required" data-serialize="#credit_card_name" name="{{$loop805->getItemEscape("@name")}}" {{if $loop805->getItem("@value") neq (string) ''}} value="{{$loop805->getItemEscape("@value")}}" {{/if}}></input>
													<span class="payment_card_need">
														<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/need.gif?r=1570606529" class="payment_card_nedd_img" alt="{{$txt['80255::payment_card_need']}}" title="{{$txt['80255::n57692_010b']}}"></img>
														<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/correct.png?r=1570606529" class="payment_card_correct_img" style="display:none;"/>
														<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/incorrect.png?r=1570606529" class="payment_card_wrong_img" style="display:none;"/>
														<span class="payment_card_help">
															<span class="payment_card_help2"></span></span></span>
												</div>
											{{elseif  $loop805->getItem("@name")  == (string) 'payment'}}
												<input id="credit_card_payment" type="hidden" name="{{$loop805->getItemEscape("@name")}}" {{if $loop805->getItem("@value") neq (string) ''}} value="{{$loop805->getItemEscape("@value")}}" {{/if}}></input>
											{{elseif  $loop805->getItem("@name")  == (string) 'payformid'}}
												<input id="credit_card_payformid" type="hidden" name="{{$loop805->getItemEscape("@name")}}" {{if $loop805->getItem("@value") neq (string) ''}} value="{{$loop805->getItemEscape("@value")}}" {{/if}}></input>
											{{/if}}
										{{/foreach}}
										<div id="credit_card_agree" class="clear_data cc_wrapper">
										</div>
										<div id="credit_card_submit" class="credit_card_submit">
											<button class="credit_card_submit" type="submit" title="{{$txt['80255::credit_card_submittitle']}}">{{$txt['80255::credit_card_submit_txt']}}
											</button>
										</div>
										<div id="credit_card_buttons" class="clear_data cc_wrapper">
										</div>
									</form>
								</div>
							</div>
						{{/if}}
						<div id="alert_cover" class="projector_alert_55916" style="display:none" onclick="Alertek.hide_alert();">
						</div>
						<!--Prepaid - płtności i dostawa (lista) (prepaid_payment_and_delivery_list, 68173.1)-->
						<script type="text/javascript">
            var only_virtual = '{{$xml->getItemEscape("page/prepaid/order/@only-virtual")}}';
        						</script>

						<div id="prepaid_delivery_list">
							<h2 class="big_label">
								{{if  $xml->getItem("/shop/page/insurance_product")}}
									{{$txt['68173::deliv51066abis']}}
								{{else}}
									{{$txt['68173::53790_001b']}}
								{{/if}}
							</h2>
							<table>
								<tr>
									<td class="prepaid_delivery_list_image">
										<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/shipping_icon.png?r=1570606529" {{if $xml->getItem("page/shipping/delivery[@checked='true']/@icon")}} src="{{$xml->getItemEscape("page/shipping/delivery[@checked='true']/@icon")}}" {{/if}} alt="{{$xml->getItemEscape("page/shipping/delivery[@checked='true']/@name")}}"></img>
									</td>
									<td class="prepaid_delivery_list_name">
										<h3>{{$txt['68173::53790_001dos']}}
											<strong>{{$xml->getItemEscape("page/shipping/delivery[@checked='true']/@name")}}</strong>
										</h3>
										<small>
											{{if  $xml->getItem("page/shipping/delivery[@checked='true']/@points_cost")  gt (string) 0}}
												{{$txt['68173::prepaid018op']}}
												<span>{{$xml->getItemEscape("page/shipping/delivery[@checked='true']/@points_cost")}}{{$txt['68173::53790_001pkt']}}</span>
											{{elseif  $xml->getItem("page/shipping/delivery[@checked='true']/@cost")  gt (string) 0}}
												{{$txt['68173::prepaid018op']}}
												<span>{{$xml->getItemEscape("page/shipping/delivery[@checked='true']/@cost_formatted")}}
													{{if !( $xml->getItem("page/prepaid/details/@currencysign") == (string)  $xml->getItem("page/prepaid/details/@ordercurrencysign"))}}
														<i>{{$txt['68173::prepaid_1002']}}{{$xml->getItemEscape("page/shipping/delivery[@checked='true']/@currencycost_formatted")}}{{$txt['68173::prepaid_10003']}}</i>
													{{/if}}
													</span>
											{{elseif 0}}
												{{$txt['68173::prepaid018del']}}
											{{else}}
											{{/if}}
											</small>
										{{if  $xml->getItem("page/prepaid/details/@select_date_additional")  neq (string) ''}}
											<p>
												<strong>{{$txt['68173::prepaid_date_comment']}}</strong>{{$xml->getItemEscape("page/prepaid/details/@select_date_additional")}}
											</p>
										{{/if}}
									</td>
									<td class="prepaid_delivery_list_info">
										<ul>
											{{if  $xml->getItem("page/prepaid/details[@delivery='true']")}}
												<li>
													<strong>{{$txt['68173::prepaid016']}}</strong>
													{{if !( $xml->getItem("page/prepaid/details/@cancelationpath")) and !( $xml->getItem("page/prepaid/details/@cancelable")  == (string) 'yes')}}
														{{$xml->getItemEscape("page/prepaid/details/@dispatchid")}}
													{{else}}
														-
													{{/if}}
												</li>
												{{if  $xml->getItem("page/prepaid/details/@link_tracking")  neq (string) ''}}
													<li>
														<strong>{{$txt['68173::prepaid017']}}</strong>
														<a target="_blank" href="{{$xml->getItemEscape("page/prepaid/details/@link_tracking")}}">{{$txt['68173::prepaid018']}}</a>
													</li>
												{{/if}}
											{{/if}}
											{{if  $xml->getItem("page/prepaid/dispatch/@date_sent")  neq (string) ''}}
												{{if  $xml->getItem("page/prepaid/details/@deliveryid")  == (string) '0'}}
													<li>
														<strong>{{$txt['68173::prepaid023M']}}</strong>{{$xml->getItemEscape("page/prepaid/dispatch/@date_sent")}}
													</li>
												{{else}}
													<li>
														<strong>{{$txt['68173::prepaid022M']}}</strong>{{$xml->getItemEscape("page/prepaid/dispatch/@date_sent")}}
													</li>
													{{if  $xml->getItem("page/prepaid/dispatch/@date_delivery")}}
														<li>
															<strong>{{$txt['68173::prepaid022']}}</strong>{{$xml->getItemEscape("page/prepaid/dispatch/@date_delivery")}}
															{{if  $xml->getItem("page/prepaid/dispatch/@delivery_range")  neq (string) ''}}
																{{$txt['68173::prepaid022N']}}{{$xml->getItemEscape("page/prepaid/dispatch/@delivery_range")}}
															{{/if}}
														</li>
													{{/if}}
												{{/if}}
											{{/if}}
											{{if  $xml->getItem("page/prepaid/details/@select_date")  neq (string) ''}}
												<li>
													<strong>
														{{if  $xml->getItem("page/stock")}}
															{{$txt['68173::prepaid_date_stock']}}
														{{else}}
															{{$txt['68173::prepaid_date_notstock']}}
														{{/if}}
														</strong>{{$xml->getItemEscape("page/prepaid/details/@select_date")}}
												</li>
											{{/if}}
										</ul>
									</td>
								</tr>
								{{if  $xml->getItem("/shop/page/prepaid/prepaid_history/item/@status")  == (string) 'n'}}
									{{foreach from=$xml->getList("/shop/page/prepaid/prepaid_history/item[@status = 'n']") item=loop1102}}
										<tr class="payment_form_item">
											<td class="prepaid_delivery_list_image">
												<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/prepaid_method_icon.png?r=1570606529" {{if $loop1102->getItem("@icon")}} src="{{$loop1102->getItemEscape("@icon")}}" {{/if}} alt="{{$loop1102->getItemEscape("@payment_name")}}"></img>
											</td>
											<td class="prepaid_delivery_list_name" colspan="2">
												<h3>{{$txt['68173::53790_001frm']}}
													<strong>{{$loop1102->getItemEscape("@payment_name")}}</strong>
												</h3>
												<small>
													{{if  $loop1102->getItem("amount/order_currency/@payform_cost")  gt (string) 0}}
														{{$txt['68173::prepaid018op']}}
														<span>{{$loop1102->getItemEscape("amount/order_currency/@payform_cost_formatted")}}
															{{if !( $loop1102->getItem("amount/client_currency/@currencysign")  == (string)  $loop1102->getItem("amount/order_currency/@currencysign"))}}
																<i>{{$txt['68173::prepaid_1002']}}{{$loop1102->getItemEscape("amount/client_currency/@payform_cost_formatted")}}{{$txt['68173::prepaid_10003']}}</i>
															{{/if}}
															</span>
													{{/if}}
													</small>
											</td>
										</tr>
									{{/foreach}}
								{{elseif !(!( $xml->getItem("page/prepaid_methods/item[@checked='true']")) and !( $xml->getItem("page/prepaid/details/@paymentstatus")  == (string) 'g') and !( $xml->getItem("page/prepaid/details/@paymentstatus")  == (string) 'tc'))}}
									<tr>
										<td class="prepaid_delivery_list_image">
											<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/prepaid_method_icon.png?r=1570606529" {{if $xml->getItem("/shop/page/prepaid/prepaid_history/item[position() = last()]/@icon")}} src="{{$xml->getItemEscape("/shop/page/prepaid/prepaid_history/item[position() = last()]/@icon")}}" {{/if}} alt="{{$xml->getItemEscape("page/prepaid_methods/item[@checked='true']/@name")}}"></img>
										</td>
										<td class="prepaid_delivery_list_name" colspan="2">
											<h3>{{$txt['68173::53790_001frm']}}
												<strong>
													{{if  $xml->getItem("page/prepaid/details/@paymentstatus")  == (string) 'g'}}
														{{$txt['68173::prepaid018N']}}
													{{elseif  $xml->getItem("page/prepaid/details/@paymentstatus")  == (string) 'tc'}}
														{{$txt['68173::prepaid018kredyt']}}
													{{else}}
														{{$xml->getItemEscape("page/prepaid_methods/item[@checked='true']/@name")}}
													{{/if}}
													</strong>
											</h3>
											<small>
												{{if  $xml->getItem("/shop/page/shipping/delivery/@id") == (string)'0-1' and  $xml->getItem("page/stock/@stock_id")}}
													{{$txt['68173::order2_info_deliverymethod_dvpz2']}}
												{{elseif  $xml->getItem("page/prepaid/details/@paymentstatus")  == (string) 'g'}}
													{{$txt['68173::prepaid018a']}}
												{{elseif  $xml->getItem("page/prepaid/details/@paymentstatus")  == (string) 'tc'}}
												{{else}}
													{{if  $xml->getItem("page/prepaid/details/@currencycost")  gt (string) 0}}
														{{$txt['68173::prepaid018op']}}
														<span>{{$xml->getItemEscape("page/prepaid/details/@payform_cost_formatted")}}
															{{if !( $xml->getItem("page/prepaid/details/@currencysign") == (string)  $xml->getItem("page/prepaid/details/@ordercurrencysign"))}}
																<i>{{$txt['68173::prepaid_1002']}}{{$xml->getItemEscape("page/prepaid/details/@currency_payform_cost_formatted")}}{{$txt['68173::prepaid_10003']}}</i>
															{{/if}}
															</span>
													{{/if}}
												{{/if}}
												</small>
										</td>
									</tr>
								{{/if}}
								{{if  $xml->getItem("/shop/page/insurance_product")}}
									<tr>
										<td class="prepaid_delivery_list_image">
											<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/insurance_icon.png?r=1570606529" alt="insurance_icon"></img>
										</td>
										<td class="prepaid_delivery_list_name">
											<h3>{{$txt['68173::53790_001ts']}}
												<strong>{{$xml->getItemEscape("/shop/page/insurance_product/@service")}}</strong>
											</h3>
											<small>
												{{if  $xml->getItem("/shop/page/insurance_product/@price_gross")  gt (string) 0}}
													{{$txt['68173::prepaid018op']}}
													<span>
														{{if $signbeforeprice  == (string) 'true'}}
															{{$xml->getItemEscape("/shop/page/insurance_product/@currency")}}{{$signbetweenpricecurrency}}
														{{/if}}
														{{$xml->getItemEscape("/shop/page/insurance_product/@price_gross")}}
														{{if $signbeforeprice  == (string) 'false'}}
															{{$signbetweenpricecurrency}}{{$xml->getItemEscape("/shop/page/insurance_product/@currency")}}
														{{/if}}
														</span>
												{{/if}}
												</small>
										</td>
										<td class="prepaid_delivery_list_info">
											<ul>
												<li>
													{{if  $xml->getItem("/shop/page/insurance_product/@status")  == (string) 'unconfirmed'}}
														{{$txt['68173::53790_001stat']}}
													{{elseif  $xml->getItem("/shop/page/insurance_product/@status")  == (string) 'confirmed'}}
														{{$txt['68173::53790_001stat1']}}
													{{/if}}
												</li>
											</ul>
										</td>
									</tr>
								{{/if}}
								<tr style="display:none" id="prepaid_item_copy">
									<td class="prepaid_delivery_list_image">
										<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/prepaid_method_icon.png?r=1570606529" alt="."></img>
									</td>
									<td class="prepaid_delivery_list_name" colspan="2">
										<h3>{{$txt['68173::53790_001frm']}}
											<strong></strong>
										</h3>
										<small>
											{{if  $xml->getItem("amount/order_currency/@payform_cost")  gt (string) 0}}
												{{$txt['68173::prepaid018op']}}
												<span></span>
											{{/if}}
											</small>
									</td>
								</tr>
							</table>
						</div>
						<!--Szczegóły zamówienia - adres (prepaid_address, 76655.1)-->
						<div {{assign "classAttributeTmp16" ""}}{{capture name="classAttributeTmp16" assign="classAttributeTmp16"}}n57857_label{{/capture}}{{capture name="classAttributeTmp16" assign="classAttributeTmp16"}}n57857_label big_label{{/capture}}  class="{{$classAttributeTmp16}}">
							<div class="n57857_label_sub">
								<span class="n57857_label">{{$txt['76655::n53907_000']}}</span>
							</div>
						</div>
						<div class="n57857_address">
							<div class="n57857_address_sub">
								<div class="n53907" id="n57857_address_left">
									<div class="n57857_item">
										<h3 class="n57857">{{$txt['76655::n53907_001bi']}}
										</h3>
										{{if  $xml->getItem("page/client/billing_address/@firm")  neq (string) ''}}
											{{$xml->getItemEscape("page/client/billing_address/@firm")}}
											<br/>
										{{/if}}
										{{if !( $xml->getItem("page/client/billing_address/@firm"))}}
											{{$xml->getItemEscape("page/client/billing_address/@firstname")}}{{literal}}{{/literal}}{{$xml->getItemEscape("page/client/billing_address/@lastname")}}
											<br/>
										{{/if}}
										{{$xml->getItemEscape("page/client/billing_address/@street")}}
										<br/>{{$xml->getItemEscape("page/client/billing_address/@zipcode")}}{{literal}}{{/literal}}{{$xml->getItemEscape("page/client/billing_address/@city")}}{{literal}}{{/literal}}(
										{{if  $xml->getItem("page/client/billing_address/@province")}}
											{{$xml->getItemEscape("page/client/billing_address/@province")}}{{literal}},{{/literal}}
										{{/if}}
										{{$xml->getItemEscape("page/client/billing_address/@country_long")}})
										<br/>
										{{if  $xml->getItem("page/client/billing_address/@nip")  neq (string) ''}}
											{{$txt['76655::n53907_xx00b']}}{{$xml->getItemEscape("page/client/billing_address/@nip")}}
											<br/>
										{{/if}}
										{{if ( $xml->getItem("page/client/@phone1")) and !( $xml->getItem("page/client/@phone1")  == (string) '')}}
											{{$txt['76655::53907_650']}}{{$xml->getItemEscape("page/client/@phone1")}}
											<br/>
										{{/if}}
										{{if ( $xml->getItem("page/client/@email")) and !( $xml->getItem("page/client/@email")  == (string) '')}}
											{{$txt['76655::53907_651']}}{{$xml->getItemEscape("page/client/@email")}}
											<br/>
										{{/if}}
									</div>
								</div>
								<div class="n53907">
									{{if  $xml->getItem("page/stock")}}
										<div class="n57857_item">
											<h3 class="n57857">{{$txt['76655::n53907_001ap']}}
											</h3>
											<span class="prepaid_stock_name">{{$xml->getItemEscape("page/stock/@name")}}</span>
											<br/>{{$xml->getItemEscape("page/stock/@street")}}
											<br/>{{$xml->getItemEscape("page/stock/@zipcode")}}{{literal}}{{/literal}}{{$xml->getItemEscape("page/stock/@city")}}{{literal}}{{/literal}}({{$xml->getItemEscape("page/stock/@country")}})
											<br/>
											{{if  $xml->getItem("page/stock/@mail")  neq (string) ''}}
												<span class="prepaid_stock_contact_item">{{$txt['76655::prepaid_stock_contact_mail']}}
													<a href="mailto:{{$xml->getItemEscape("page/stock/@mail")}}">{{$xml->getItemEscape("page/stock/@mail")}}</a></span>
												<br/>
											{{/if}}
											{{if  $xml->getItem("page/stock/@phone")  neq (string) ''}}
												<span class="prepaid_stock_contact_item">{{$txt['76655::prepaid_stock_contact_phone']}}
													<span>{{$xml->getItemEscape("page/stock/@phone")}}</span></span>
												<br/>
											{{/if}}
											{{if  $xml->getItem("page/stock/@fax")  neq (string) ''}}
												<span class="prepaid_stock_contact_item">{{$txt['76655::prepaid_stock_contact_fax']}}
													<span>{{$xml->getItemEscape("page/stock/@fax")}}</span></span>
												<br/>
											{{/if}}
											{{if  $xml->getItem("page/stock/@gg")  neq (string) ''}}
												<span class="prepaid_stock_contact_item">{{$txt['76655::prepaid_stock_contact_gg']}}
													<a href="gg:{{$xml->getItemEscape("page/stock/@gg")}}">{{$xml->getItemEscape("page/stock/@gg")}}</a></span>
												<br/>
											{{/if}}
											{{if  $xml->getItem("page/stock/@skype")  neq (string) ''}}
												<span class="prepaid_stock_contact_item">{{$txt['76655::prepaid_stock_contact_skype']}}
													<a target="_blank" href="callto://{{$xml->getItemEscape("page/stock/@skype")}}">{{$xml->getItemEscape("page/stock/@skype")}}</a></span>
												<br/>
											{{/if}}
											<div class="prepaid_stock_link">
												<a class="prepaid_stock_link" href="{{$xml->getItemEscape("page/stock/@link")}}">{{$txt['76655::prepaid_stock_link_txt']}}</a>
											</div>
										</div>
									{{else}}
										<div class="n57857_item">
											<h3 class="n57857">{{$txt['76655::n53907_001do']}}
											</h3>
											{{if  $xml->getItem("page/client/shipping_address/@additional")  neq (string) ''}}
												{{$xml->getItemEscape("page/client/shipping_address/@additional")}}
												<br/>
											{{/if}}
											{{$xml->getItemEscape("page/client/shipping_address/@firstname")}}{{literal}}{{/literal}}{{$xml->getItemEscape("page/client/shipping_address/@lastname")}}
											<br/>{{$xml->getItemEscape("page/client/shipping_address/@street")}}
											<br/>{{$xml->getItemEscape("page/client/shipping_address/@zipcode")}}{{literal}}{{/literal}}{{$xml->getItemEscape("page/client/shipping_address/@city")}}{{literal}}{{/literal}}(
											{{if  $xml->getItem("page/client/shipping_address/@province")}}
												{{$xml->getItemEscape("page/client/shipping_address/@province")}}{{literal}},{{/literal}}
											{{/if}}
											{{$xml->getItemEscape("page/client/shipping_address/@country_long")}})
											<br/>
											{{if ( $xml->getItem("page/client/shipping_address/@phone")) and !( $xml->getItem("page/client/shipping_address/@phone")  == (string) '')}}
												{{$txt['76655::53907_650']}}{{$xml->getItemEscape("page/client/shipping_address/@phone")}}
												<br/>
											{{/if}}
										</div>
									{{/if}}
								</div>
								<div class="n53907" id="n57857_address_right">
									<div class="n57857_item">
										<h3 class="n57857">{{$txt['76655::n53907_001kont']}}
										</h3>{{$xml->getItemEscape("page/client/shipping_address/@firstname")}}{{literal}}{{/literal}}{{$xml->getItemEscape("page/client/shipping_address/@lastname")}}
										<br/>{{$xml->getItemEscape("page/client/shipping_address/@street")}}
										<br/>{{$xml->getItemEscape("page/client/shipping_address/@zipcode")}}{{literal}}{{/literal}}{{$xml->getItemEscape("page/client/shipping_address/@city")}}(
										{{if  $xml->getItem("page/client/shipping_address/@province")}}
											{{$xml->getItemEscape("page/client/shipping_address/@province")}}{{literal}},{{/literal}}
										{{/if}}
										{{$xml->getItemEscape("page/client/shipping_address/@country_long")}})
										<br/>
										{{if  $xml->getItem("page/client/shipping_address/@phone") and  $xml->getItem("page/client/shipping_address/@phone")  neq (string) ''}}
											{{$txt['76655::53907_650']}}{{$xml->getItemEscape("page/client/shipping_address/@phone")}}
											<br/>
										{{/if}}
									</div>
								</div>
								{{if  $xml->getItem("page/prepaid/details/@remarks")}}
									<div class="n53907_remarks">
										<div class="n57857_item">
											<h3 class="n57857">{{$txt['76655::n53907_002']}}
											</h3>{{$xml->getItemEscape("page/prepaid/details/@remarks")}}
										</div>
									</div>
								{{/if}}
								{{if  $xml->getItem("page/prepaid/details/@deliverer_note")}}
									<div class="n53907_remarks">
										<div class="n57857_item">
											<h3 class="n57857">{{$txt['76655::n53907_002a']}}
											</h3>{{$xml->getItemEscape("page/prepaid/details/@deliverer_note")}}
										</div>
									</div>
								{{/if}}
							</div>
						</div>
						<!--Lista zamówionych produktów (prepaid_order_products, 74435.1)-->
						{{capture name="setIconLarge" assign="setIconLarge"}}
							{{$txt['74435::57664_setIconLarge']}}
						{{/capture}}
						<script type="text/javascript">
      var client_files_link = '{{$xml->getItemEscape("/shop/client_files/@link_to_download")}}';
    						</script>

						<div id="prepaid_order_products">
							<h2 class="big_label">{{$txt['74435::53790_001b']}}
							</h2>
							<table>
								{{foreach from=$xml->getList("page/ordered_products/product") item=loop1420}}
									<tr {{if $loop1420@iteration == (string) $loop1420@total }} class="prepaid_order_item_last"{{/if}}>
										<td class="order_product_image">
											{{if  $loop1420->getItem("@link")}}
												<a href="{{$loop1420->getItemEscape("@link")}}">
													{{if $setIconLarge}}
														<img alt="Szczegoly" src="{{$loop1420->getItemEscape("icon")}}" alt="{{$loop1420->getItemEscape("@name")}}"></img>
													{{else}}
														<img alt="Szczegoly" src="{{$loop1420->getItemEscape("iconsmall")}}" alt="{{$loop1420->getItemEscape("@name")}}"></img>
													{{/if}}
													</a>
											{{else}}
												{{if $setIconLarge}}
													<img alt="Szczegoly" src="{{$loop1420->getItemEscape("icon")}}" alt="{{$loop1420->getItemEscape("@name")}}"></img>
												{{else}}
													<img alt="Szczegoly" src="{{$loop1420->getItemEscape("iconsmall")}}" alt="{{$loop1420->getItemEscape("@name")}}"></img>
												{{/if}}
											{{/if}}
										</td>
										<td class="order_product_info">
											<h3>
												{{if  $loop1420->getItem("@link")}}
													<a class="product_name" href="{{$loop1420->getItemEscape("@link")}}" title="{{$loop1420->getItemEscape("@name")}}">{{$loop1420->getItemEscape("@name")}}</a>
												{{else}}
													{{$loop1420->getItemEscape("@name")}}
												{{/if}}
											</h3>
											<ul>
												{{if  $loop1420->getItem("version")}}
													<li>
														<span>{{$loop1420->getItemEscape("version/@name")}}:</span>{{$loop1420->getItemEscape("version/@product_name")}}
													</li>
												{{/if}}
												{{if !( $loop1420->getItem("@size_id")  == (string) 'uniw')}}
													<li>
														<span>{{$txt['74435::50001_004']}}</span>{{$loop1420->getItemEscape("@size_desc")}}
													</li>
												{{/if}}
												{{if !( $loop1420->getItem("@code")  == (string)'')}}
													<li>
														<span>{{$txt['74435::50001_99']}}</span>{{$loop1420->getItemEscape("@code")}}
													</li>
												{{/if}}
												{{if  $loop1420->getItem("serial_number")}}
													<li>
														{{if count( $loop1420->getList("serial_number/number"))  == (string) 1}}
															<span>{{$txt['74435::50001_99num']}}</span>
														{{else}}
															<span>{{$txt['74435::50001_99num2']}}</span>
														{{/if}}
														{{foreach from=$loop1420->getList("serial_number/number") item=loop1515}}
															{{$loop1515->getItemEscape("@value")}}
															{{if !( $loop1515@iteration  == (string) $loop1515@total )}}
																{{$txt['74435::50001_99prz']}}
															{{/if}}
														{{/foreach}}
													</li>
												{{/if}}
												{{if  $loop1420->getItem("@quantity")  gt (string) '1'}}
													<li>
														<span>{{$txt['74435::n56465_099_pkt']}}</span>
														{{if  $loop1420->getItem("@forpoints") == (string)'true'}}
															{{$loop1420->getItemEscape("@points_sum")}}{{$txt['74435::53790_901']}}({{$loop1420->getItemEscape("@points")}}{{$txt['74435::53790_901']}}{{$txt['74435::53790_007']}}{{literal}}{{/literal}}{{$loop1420->getItemEscape("@unit_s")}}{{$txt['74435::53790_007b']}}
														{{else}}
															{{$loop1420->getItemEscape("@bruttoworth_formatted")}}({{$loop1420->getItemEscape("@detalprice_formatted")}}{{$txt['74435::53790_007']}}{{literal}}{{/literal}}{{$loop1420->getItemEscape("@unit_s")}}{{$txt['74435::53790_007b']}}
														{{/if}}
													</li>
												{{else}}
													<li>
														<span>{{$txt['74435::n56465_099_pkt']}}</span>
														{{if  $loop1420->getItem("@gratis") == (string)'y'}}
															{{$txt['74435::53790_901g']}}
														{{elseif  $loop1420->getItem("@forpoints") == (string)'true'}}
															{{$loop1420->getItemEscape("@points")}}{{$txt['74435::53790_901']}}
														{{else}}
															{{$loop1420->getItemEscape("@detalprice_formatted")}}
														{{/if}}
													</li>
												{{/if}}
												<li>
													<span>{{$txt['74435::n56465_099b']}}</span>{{$loop1420->getItemEscape("@quantity")}}{{literal}}{{/literal}}
													{{if  $loop1420->getItem("@quantity")  gt (string) '1'}}
														{{$loop1420->getItemEscape("@unit")}}
													{{else}}
														{{$loop1420->getItemEscape("@unit_s")}}
													{{/if}}
												</li>
												{{if  $loop1420->getItem("comment")}}
													<div class="comment_cont">
														<span class="comment_label">{{$txt['74435::51000_022comment']}}</span>
														<div class="comment_content">{{$loop1420->getItemEscape("comment")}}
														</div>
													</div>
												{{/if}}
												{{if  $loop1420->getItem("@product_type")  == (string) 'product_bundle'}}
													<div class="productslist_product_bundle">
														<b>{{$txt['74435::50001_z001']}}</b>
														{{foreach from=$loop1420->getList("bundled/product") item=loop1586}}
															<span>{{$loop1586->getItemEscape("@name")}}
																{{if !( $loop1586->getItem("@size_id")  == (string) 'uniw') or (( $loop1586->getItem("version")) and (!( $loop1586->getItem("version/@product_name") == (string)'')))}}
																	{{$txt['74435::50001_z002']}}
																	{{if !( $loop1586->getItem("@size_id")  == (string) 'uniw')}}
																		{{$txt['74435::50001_004']}}{{$loop1586->getItemEscape("@size_desc")}}
																	{{/if}}
																	{{if !( $loop1586->getItem("@size_id")  == (string) 'uniw') and (( $loop1586->getItem("version")) and (!( $loop1586->getItem("version/@product_name") == (string)'')))}}
																		{{$txt['74435::50001_z003']}}
																	{{/if}}
																	{{if ( $loop1586->getItem("version")) and (!( $loop1586->getItem("version/@product_name") == (string)''))}}
																		{{$loop1586->getItemEscape("version/@name")}}:{{$loop1586->getItemEscape("version/@product_name")}}
																	{{/if}}
																	{{$txt['74435::50001_z004']}}
																{{/if}}
																</span>
														{{/foreach}}
													</div>
												{{/if}}
												{{if  $loop1420->getItem("order_files/file")}}
													<li>
														<span class="filename">{{$txt['74435::51000_f_01']}}</span>
														<div class="order2_fileslist">
															{{foreach from=$loop1420->getList("order_files/file") item=loop1605}}
																<div>
																	<span>{{$loop1605->getItemEscape("@file")}}</span>
																	{{if  $loop1605->getItem("@path")}}
																		{{$txt['74435::order2_change_delivery_left']}}
																		<a {{assign "hrefAttributeTmp19" ""}}  class="previewFile"{{capture name="hrefAttributeTmp19" assign="hrefAttributeTmp19"}}#previewFile{{/capture}}{{if $loop1605->getItem("@preview") == (string) 'true'}} rel="{{$loop1605->getItemEscape("@path")}}" {{else}}{{capture name="hrefAttributeTmp19" assign="hrefAttributeTmp19"}}{{$loop1605->getItemEscape("@path")}}{{/capture}} target="_blank" {{/if}}  href="{{$hrefAttributeTmp19}}">{{$txt['74435::51000_f_02']}}</a>{{$txt['74435::order2_change_delivery_right']}}
																	{{/if}}
																</div>
															{{/foreach}}
														</div>
													</li>
												{{/if}}
												{{if  $loop1420->getItem("@product_type")  == (string) 'product_virtual'}}
													<li>
														<span class="only_virtual_info">{{$txt['74435::67199_onlyvirtual_1']}}
															<a class="only_virtual_info_link" href="{{$loop1420->getItemEscape("/shop/client_files/@link_to_download")}}">{{$txt['74435::67199_onlyvirtual_link']}}</a>{{$txt['74435::67199_onlyvirtual_2']}}</span>
													</li>
												{{/if}}
											</ul>
										</td>
									</tr>
								{{/foreach}}
							</table>
						</div>
						<!--Dokumenty do zamówienia (prepaid_documents, 54116.1)-->
						{{if count( $xml->getList("page/prepaid/documents/document"))  gt (string) 0}}
							<div {{assign "classAttributeTmp17" ""}}{{capture name="classAttributeTmp17" assign="classAttributeTmp17"}}n54116_label{{/capture}}{{capture name="classAttributeTmp17" assign="classAttributeTmp17"}}n54116_label big_label{{/capture}}  class="{{$classAttributeTmp17}}">
								<div class="n54116_label_sub">
									<span class="n54116_label">{{$txt['54116::54116_1']}}</span>
								</div>
							</div>
							<div class="n55542_main_outline">
								<div class="n55542_main">
									<ul class="n54116_list">
										{{foreach from=$xml->getList("page/prepaid/documents/document") item=loop1661}}
											<li class="n54116_item">
												<a class="n54116_item" target="_blank" title="{{$txt['54116::54116_2']}}" href="{{$loop1661->getItemEscape("@link")}}">{{$loop1661->getItemEscape("@id")}}</a>
											</li>
										{{/foreach}}
									</ul>
								</div>
							</div>
						{{/if}}
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
