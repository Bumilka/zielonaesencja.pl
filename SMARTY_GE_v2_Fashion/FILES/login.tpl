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
						{{include file="component_menu_messages_67953.tpl"}}
						<!--Tekst powitalny (login-welcome, 57653.1)-->
						{{if ( $xml->getItem("page/@type")  == (string) 'login') and ( $xml->getItem("page/login/@type") == (string)'ok') and !( $xml->getItem("page/login/response"))}}
							<div class="n57653_main">
								<h1 {{assign "classAttributeTmp3" ""}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}n57653{{/capture}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}n57653 big_label{{/capture}}  class="{{$classAttributeTmp3}}">{{$txt['57653::57653_001']}}{{$xml->getItemEscape("page/login/client/name/@firstname")}}
								</h1>
								<span class="n57653">{{$txt['57653::57653_002']}}</span>
							</div>
							<div class="n57653_sub">
								<div class="n57653_welcometext">{{$txt['57653::57653_003']}}
								</div>
							</div>
						{{/if}}
						<!--Strona konta (login, 79426.1)-->
						{{if ( $xml->getItem("page/@type")  == (string) 'login') and ( $xml->getItem("page/login/@type") == (string)'ok') and !( $xml->getItem("page/login/response"))}}
							{{capture name="iconsorders" assign="iconsorders"}}
								{{$txt['79426::68242_icons-orders']}}
							{{/capture}}
							{{capture name="iconsproducts" assign="iconsproducts"}}
								{{$txt['79426::68242_icons-products']}}
							{{/capture}}
							{{capture name="iconsprofit" assign="iconsprofit"}}
								{{$txt['79426::68242_icons-profit']}}
							{{/capture}}
							{{capture name="iconseditdata" assign="iconseditdata"}}
								{{$txt['79426::68242_icons-editdata']}}
							{{/capture}}
							{{capture name="iconsreturns" assign="iconsreturns"}}
								{{$txt['79426::68242_icons-returns']}}
							{{/capture}}
							{{capture name="iconsrma" assign="iconsrma"}}
								{{$txt['79426::68242_icons-rma']}}
							{{/capture}}
							{{capture name="iconspoints" assign="iconspoints"}}
								{{$txt['79426::68242_icons-points']}}
							{{/capture}}
							{{capture name="iconsaffiliate" assign="iconsaffiliate"}}
								{{$txt['79426::68242_icons-affiliate']}}
							{{/capture}}
							<div id="login_menu" class="{{$txt['79426::prepaiclass1']}}">
								{{if  $xml->getItem("/shop/page/actions/orders_opened/@url") or  $xml->getItem("/shop/page/actions/orders_closed/@url")}}
									<div {{assign "classAttributeTmp4" ""}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}login_menu{{/capture}} id="orders_login"{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}login_menu {{$txt['79426::prepaiclass2']}}{{/capture}}  class="{{$classAttributeTmp4}}">
										<div {{assign "classAttributeTmp5" ""}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}login_menu_sub{{/capture}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}login_menu_sub {{$txt['79426::prepaiclass2_sub']}}{{/capture}}  class="{{$classAttributeTmp5}}">
											<h3>{{$txt['79426::40005_005']}}
											</h3>
											<div>
												{{if $iconsorders}}
													<i class="{{$iconsorders}}"></i>
												{{else}}
													<img alt="orders" src="/gfx/__IAI_TEMPLATE_LANG_639_1__/orders.png?r=1570606529"/>
												{{/if}}
												<span>{{$txt['79426::log_zam1']}}</span>
											</div>
											{{if ( $xml->getItem("page/login/client_balance/balance/@value")  gt (string) 0) or ( $xml->getItem("page/login/client_balance/limit/@value")  gt (string) 0)}}
												<div {{assign "classAttributeTmp6" ""}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}balance_section{{/capture}}{{if $xml->getItem("page/login/client_balance/balance/@value") gt (string) 0 and $xml->getItem("page/login/client_balance/limit/@value") gt (string) 0}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}balance_section twosect{{/capture}}{{/if}}  class="{{$classAttributeTmp6}}">
													{{if  $xml->getItem("page/login/client_balance/balance/@value")  gt (string) 0}}
														<div class="login_point_count">
															<span>{{$txt['79426::40005_016_saldo']}}</span>
															<strong>{{$xml->getItemEscape("page/login/client_balance/balance/@value")}}{{$signbetweenpricecurrency}}{{$xml->getItemEscape("page/login/client_balance/balance/@currency_sign")}}</strong>
														</div>
													{{/if}}
													{{if  $xml->getItem("page/login/client_balance/limit/@value")  gt (string) 0}}
														<div class="login_point_count">
															<span>{{$txt['79426::40005_016_credit']}}</span>
															<strong>{{$xml->getItemEscape("/shop/client_data/client_balance/limit/@to_use_formatted")}}</strong>
														</div>
													{{/if}}
												</div>
											{{/if}}
											<a {{assign "classAttributeTmp7" ""}}{{capture name="classAttributeTmp7" assign="classAttributeTmp7"}}btn-small{{/capture}}{{if $xml->getItem("page/login/orders/display/@unfinished") == (string) 0}}{{capture name="classAttributeTmp7" assign="classAttributeTmp7"}}btn-small disabled{{/capture}} onclick="return false" {{/if}} href="{{$xml->getItemEscape("/shop/page/actions/orders_opened/@url")}}"  class="{{$classAttributeTmp7}}">{{$txt['79426::40005_006ne']}}</a>
											<a {{assign "classAttributeTmp8" ""}}{{capture name="classAttributeTmp8" assign="classAttributeTmp8"}}btn-small{{/capture}}{{if $xml->getItem("page/login/orders/display/@finished") == (string) 0}}{{capture name="classAttributeTmp8" assign="classAttributeTmp8"}}btn-small disabled{{/capture}} onclick="return false" {{/if}} href="{{$xml->getItemEscape("/shop/page/actions/orders_closed/@url")}}"  class="{{$classAttributeTmp8}}">{{$txt['79426::40005_008']}}</a>
										</div>
									</div>
								{{/if}}
								{{if  $xml->getItem("/shop/page/actions/products_wishes/@url") or  $xml->getItem("/shop/page/actions/products_requests/@url")}}
									<div {{assign "classAttributeTmp9" ""}}{{capture name="classAttributeTmp9" assign="classAttributeTmp9"}}login_menu{{/capture}} id="products_login"{{capture name="classAttributeTmp9" assign="classAttributeTmp9"}}login_menu {{$txt['79426::prepaiclass2']}}{{/capture}}  class="{{$classAttributeTmp9}}">
										<div {{assign "classAttributeTmp5" ""}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}login_menu_sub{{/capture}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}login_menu_sub {{$txt['79426::prepaiclass2_sub']}}{{/capture}}  class="{{$classAttributeTmp5}}">
											<h3>{{$txt['79426::40005_015']}}
											</h3>
											<div>
												{{if $iconsproducts}}
													<i class="{{$xml->getItem("$iconsproducts")}}"></i>
												{{else}}
													<img alt="products" src="/gfx/__IAI_TEMPLATE_LANG_639_1__/products.png?r=1570606529"/>
												{{/if}}
												<span>{{$txt['79426::log_prod1']}}</span>
											</div>
											<a {{assign "classAttributeTmp11" ""}}{{capture name="classAttributeTmp11" assign="classAttributeTmp11"}}btn-small{{/capture}}{{if !( $xml->getItem("/shop/page/actions/products_wishes/@url"))}}{{capture name="classAttributeTmp11" assign="classAttributeTmp11"}}btn-small disabled{{/capture}} onclick="return false" {{/if}} href="{{$xml->getItemEscape("/shop/page/actions/products_wishes/@url")}}"  class="{{$classAttributeTmp11}}">{{$txt['79426::40005_016']}}</a>
											<a {{assign "classAttributeTmp12" ""}}{{capture name="classAttributeTmp12" assign="classAttributeTmp12"}}btn-small{{/capture}}{{if !( $xml->getItem("/shop/page/actions/products_requests/@url"))}}{{capture name="classAttributeTmp12" assign="classAttributeTmp12"}}btn-small disabled{{/capture}} onclick="return false" {{/if}} href="{{$xml->getItemEscape("/shop/page/actions/products_requests/@url")}}"  class="{{$classAttributeTmp12}}">{{$txt['79426::40005_326']}}</a>
										</div>
									</div>
								{{/if}}
								<div {{assign "classAttributeTmp13" ""}}{{capture name="classAttributeTmp13" assign="classAttributeTmp13"}}login_menu{{/capture}} id="client_cards"{{capture name="classAttributeTmp13" assign="classAttributeTmp13"}}login_menu {{$txt['79426::prepaiclass2']}}{{/capture}}  class="{{$classAttributeTmp13}}">
									<div {{assign "classAttributeTmp5" ""}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}login_menu_sub{{/capture}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}login_menu_sub {{$txt['79426::prepaiclass2_sub']}}{{/capture}}  class="{{$classAttributeTmp5}}">
										<h3>{{$txt['79426::40005_323']}}
										</h3>
										<div>
											{{if $iconsprofit}}
												<i class="{{$xml->getItem("$iconsprofit")}}"></i>
											{{else}}
												<img alt="profit" src="/gfx/__IAI_TEMPLATE_LANG_639_1__/profity.png?r=1570606529"/>
											{{/if}}
											<span>{{$txt['79426::log_rebate1']}}</span>
										</div>
										<a class="btn-small" href="/client-rebate.php">{{$txt['79426::40005_324A']}}</a>
									</div>
								</div>
								{{if  $xml->getItem("/shop/page/actions/client_edit/@url")}}
									<div {{assign "classAttributeTmp15" ""}}{{capture name="classAttributeTmp15" assign="classAttributeTmp15"}}login_menu{{/capture}} id="dane_login"{{capture name="classAttributeTmp15" assign="classAttributeTmp15"}}login_menu {{$txt['79426::prepaiclass2']}}{{/capture}}  class="{{$classAttributeTmp15}}">
										<div {{assign "classAttributeTmp5" ""}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}login_menu_sub{{/capture}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}login_menu_sub {{$txt['79426::prepaiclass2_sub']}}{{/capture}}  class="{{$classAttributeTmp5}}">
											<h3>
												{{if  $xml->getItem("/shop/client_files/@to_download")  == (string) 'true'}}
													{{$txt['79426::40005_010']}}
												{{else}}
													{{$txt['79426::40005_010s']}}
												{{/if}}
											</h3>
											<div>
												{{if $iconseditdata}}
													<i class="{{$xml->getItem("$iconseditdata")}}"></i>
												{{else}}
													<img alt="editdata" src="/gfx/__IAI_TEMPLATE_LANG_639_1__/editdata.png?r=1570606529"/>
												{{/if}}
												<span>{{$txt['79426::log_dane1']}}</span>
											</div>
											{{if  $xml->getItem("/shop/client_files[@to_download='true']")}}
												<a class="btn-small" href="{{$xml->getItemEscape("/shop/client_files/@link_to_download")}}">{{$txt['79426::40005_016_files']}}</a>
											{{/if}}
											<a class="btn-small" href="{{$xml->getItemEscape("/shop/page/actions/client_edit/@url")}}">{{$txt['79426::40005_011']}}</a>
										</div>
									</div>
								{{/if}}
								<div {{assign "classAttributeTmp17" ""}}{{capture name="classAttributeTmp17" assign="classAttributeTmp17"}}login_menu{{/capture}} id="returns_login"{{capture name="classAttributeTmp17" assign="classAttributeTmp17"}}login_menu {{$txt['79426::prepaiclass2']}}{{/capture}}  class="{{$classAttributeTmp17}}">
									<div {{assign "classAttributeTmp5" ""}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}login_menu_sub{{/capture}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}login_menu_sub {{$txt['79426::prepaiclass2_sub']}}{{/capture}}  class="{{$classAttributeTmp5}}">
										<h3>{{$txt['79426::40005_320zw']}}
										</h3>
										<div>
											{{if $iconsreturns}}
												<i class="{{$xml->getItem("$iconsreturns")}}"></i>
											{{else}}
												<img alt="returns" src="/gfx/__IAI_TEMPLATE_LANG_639_1__/returns.png?r=1570606529"/>
											{{/if}}
											<span>{{$txt['79426::log_zwroty1']}}</span>
										</div>
										<a {{assign "classAttributeTmp19" ""}}{{capture name="classAttributeTmp19" assign="classAttributeTmp19"}}btn-small{{/capture}}{{if !( $xml->getItem("page/actions/orders_returns/@available") == (string)'true') or !( $xml->getItem("page/actions/orders_returns/@url")) or $xml->getItem("page/actions/orders_returns/@url") == (string)''}}{{capture name="classAttributeTmp19" assign="classAttributeTmp19"}}btn-small disabled{{/capture}} onclick="return false" {{/if}} href="{{$xml->getItemEscape("page/actions/orders_returns/@url")}}"  class="{{$classAttributeTmp19}}">{{$txt['79426::40005_321zw']}}</a>
										<a {{assign "classAttributeTmp20" ""}}{{capture name="classAttributeTmp20" assign="classAttributeTmp20"}}btn-small{{/capture}}{{if !( $xml->getItem("page/actions/return_list/@available") == (string)'true') or !( $xml->getItem("page/actions/return_list/@url")) or $xml->getItem("page/actions/return_list/@url") == (string)''}}{{capture name="classAttributeTmp20" assign="classAttributeTmp20"}}btn-small disabled{{/capture}} onclick="return false" {{/if}} href="{{$xml->getItemEscape("page/actions/return_list/@url")}}"  class="{{$classAttributeTmp20}}">{{$txt['79426::40005_321zwl']}}</a>
									</div>
								</div>
								{{if  $xml->getItem("/shop/rma/@active")  == (string) 'y' and  $xml->getItem("/shop/rma/@link")}}
									<div {{assign "classAttributeTmp21" ""}}{{capture name="classAttributeTmp21" assign="classAttributeTmp21"}}login_menu{{/capture}} id="rma_login"{{capture name="classAttributeTmp21" assign="classAttributeTmp21"}}login_menu {{$txt['79426::prepaiclass2']}}{{/capture}}  class="{{$classAttributeTmp21}}">
										<div {{assign "classAttributeTmp5" ""}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}login_menu_sub{{/capture}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}login_menu_sub {{$txt['79426::prepaiclass2_sub']}}{{/capture}}  class="{{$classAttributeTmp5}}">
											<h3>{{$txt['79426::40005_320']}}
											</h3>
											<div>
												{{if $iconsrma}}
													<i class="{{$xml->getItem("$iconsrma")}}"></i>
												{{else}}
													<img alt="rma" src="/gfx/__IAI_TEMPLATE_LANG_639_1__/rma.png?r=1570606529"/>
												{{/if}}
												<span>{{$txt['79426::log_reklam1']}}</span>
											</div>
											<a class="btn-small" href="/rma-add.php">{{$txt['79426::40005_321dodaj']}}</a>
											<a class="btn-small" href="{{$xml->getItemEscape("/shop/rma/@link")}}">{{$txt['79426::40005_321']}}</a>
										</div>
									</div>
								{{/if}}
								{{if ( $xml->getItem("/shop/page/actions/client_rebate_points/@url") and !( $xml->getItem("/shop/page/actions/client_rebate_points/@url") == (string)'')) or  $xml->getItem("/shop/page/actions/products_points/@available") == (string)'true' or ( $xml->getItem("/shop/page/actions/points_cms/@url") and !( $xml->getItem("/shop/page/actions/points_cms/@url") == (string)''))}}
									<div {{assign "classAttributeTmp23" ""}}{{capture name="classAttributeTmp23" assign="classAttributeTmp23"}}login_menu{{/capture}} id="points_login"{{capture name="classAttributeTmp23" assign="classAttributeTmp23"}}login_menu {{$txt['79426::prepaiclass2']}}{{/capture}}  class="{{$classAttributeTmp23}}">
										<div {{assign "classAttributeTmp5" ""}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}login_menu_sub{{/capture}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}login_menu_sub {{$txt['79426::prepaiclass2_sub']}}{{/capture}}  class="{{$classAttributeTmp5}}">
											<h3>{{$txt['79426::40005_020_points']}}
												{{if  $xml->getItem("/shop/basket/@client_points")}}
													<span>{{$txt['79426::n53547_003']}}
														<strong>{{$xml->getItemEscape("/shop/basket/@client_points")}}{{$txt['79426::n53547_005']}}</strong></span>
												{{/if}}
											</h3>
											<div>
												{{if $iconspoints}}
													<i class="{{$xml->getItem("$iconspoints")}}"></i>
												{{else}}
													<img alt="points" src="/gfx/__IAI_TEMPLATE_LANG_639_1__/points.png?r=1570606529"/>
												{{/if}}
												<span>{{$txt['79426::log_lojal1']}}</span>
											</div>
											{{if  $xml->getItem("/shop/page/actions/points_cms/@url") and !( $xml->getItem("/shop/page/actions/points_cms/@url") == (string)'')}}
												<a class="btn-small" href="{{$xml->getItemEscape("/shop/page/actions/points_cms/@url")}}">{{$txt['79426::40005_3lp21']}}</a>
											{{/if}}
											{{if  $xml->getItem("/shop/page/actions/client_rebate_points") and  $xml->getItem("/shop/page/actions/client_rebate_points/@url") and !( $xml->getItem("/shop/page/actions/client_rebate_points/@url") == (string)'')}}
												<a class="btn-small" href="{{$xml->getItemEscape("/shop/page/actions/client_rebate_points/@url")}}">{{$txt['79426::40005_3lpi21']}}</a>
											{{/if}}
											{{if  $xml->getItem("/shop/page/actions/products_points[@available='true']")}}
												<a class="btn-small" href="/search.php?forpoints=y">{{$txt['79426::40005_021_points']}}</a>
											{{/if}}
										</div>
									</div>
								{{/if}}
								{{if  $xml->getItem("/shop/page/affiliate") and  $xml->getItem("/shop/page/affiliate/@link")}}
									<div {{assign "classAttributeTmp25" ""}}{{capture name="classAttributeTmp25" assign="classAttributeTmp25"}}login_menu{{/capture}} id="affiliate_login"{{capture name="classAttributeTmp25" assign="classAttributeTmp25"}}login_menu {{$txt['79426::prepaiclass2']}}{{/capture}}  class="{{$classAttributeTmp25}}">
										<div {{assign "classAttributeTmp5" ""}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}login_menu_sub{{/capture}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}login_menu_sub {{$txt['79426::prepaiclass2_sub']}}{{/capture}}  class="{{$classAttributeTmp5}}">
											<h3>{{$txt['79426::40005_020']}}
											</h3>
											<div>
												{{if $iconsaffiliate}}
													<i class="{{$xml->getItem("$iconsaffiliate")}}"></i>
												{{else}}
													<img alt="affiliate" src="/gfx/__IAI_TEMPLATE_LANG_639_1__/affiliate.png?r=1570606529"/>
												{{/if}}
												<span>{{$txt['79426::log_zarab1']}}</span>
											</div>
											<a class="btn-small" href="{{$xml->getItemEscape("/shop/page/affiliate/@link")}}">{{$txt['79426::40005_021']}}</a>
										</div>
									</div>
								{{/if}}
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
