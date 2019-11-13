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
						<!--Zwroty szczegóły CMS (returns_details_cms, 69382.1)-->
						{{if  $xml->getItem("/shop/page/text/body")}}
							<div class="returns_cms">
								<div class="returns_cms_sub">{{$xml->getItem("page/text/body")}}
								</div>
							</div>
						{{/if}}
						<!--Zwroty szczegóły (returns_details_form, 69381.1)-->
						{{if  $xml->getItem("page[@display='details']")}}
							{{capture name="prepaid016txt" assign="prepaid016txt"}}
								{{$txt['69381::prepaid016']}}
							{{/capture}}
							{{capture name="prepaid017atxt" assign="prepaid017atxt"}}
								{{$txt['69381::prepaid017a']}}
							{{/capture}}
							{{capture name="prepaid017txt" assign="prepaid017txt"}}
								{{$txt['69381::prepaid017']}}
							{{/capture}}
							{{capture name="n5_4atxt" assign="n5_4atxt"}}
								{{$txt['69381::5_4a']}}
							{{/capture}}
							<div class="step7">
								<div id="orderdetails_info">
									<h2 class="big_label">
										<span>{{$txt['69381::prepaid0011']}}</span>
										<span class="order-date">{{$txt['69381::prepaid007']}}{{$xml->getItemEscape("page/details/@datetime")}}</span>
									</h2>
									<div id="orderdetails_info_status">
										<div {{assign "classAttributeTmp3" ""}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}prepaid-icon{{/capture}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}prepaid-icon status-{{$xml->getItemEscape("page/details/@status")}}{{/capture}}  class="{{$classAttributeTmp3}}">
											<i class=" {{if $xml->getItem("page/details/@status") == (string)1}} {{$txt['69381::status_icons_1']}} {{elseif $xml->getItem("page/details/@status") == (string)2}} {{$txt['69381::status_icons_2']}} {{elseif $xml->getItem("page/details/@status") == (string)3}} {{$txt['69381::status_icons_3']}} {{elseif $xml->getItem("page/details/@status") == (string)13}} {{$txt['69381::status_icons_13']}} {{elseif $xml->getItem("page/details/@status") == (string)14}} {{$txt['69381::status_icons_14']}} {{elseif $xml->getItem("page/details/@status") == (string)15}} {{$txt['69381::status_icons_15']}} {{elseif $xml->getItem("page/details/@status") == (string)16}} {{$txt['69381::status_icons_16']}} {{elseif $xml->getItem("page/details/@status") == (string)17}} {{$txt['69381::status_icons_17']}} {{elseif $xml->getItem("page/details/@status") == (string)18}} {{$txt['69381::status_icons_18']}} {{/if}} "></i>
										</div>
										<div class="prepaid-status">
											<strong>
												{{if  $xml->getItem("page/details/@status_name")  neq (string) ''}}
													{{$xml->getItem("page/details/@status_name")}}
												{{elseif  $xml->getItem("page/details/@status") == (string)1}}
													{{$txt['69381::status_1']}}
												{{elseif  $xml->getItem("page/details/@status") == (string)2}}
													{{$txt['69381::status_2']}}
												{{elseif  $xml->getItem("page/details/@status") == (string)3}}
													{{$txt['69381::status_3']}}
												{{elseif  $xml->getItem("page/details/@status") == (string)13}}
													{{$txt['69381::status_13']}}
												{{elseif  $xml->getItem("page/details/@status") == (string)14}}
													{{$txt['69381::status_14']}}
												{{elseif  $xml->getItem("page/details/@status") == (string)15}}
													{{$txt['69381::status_15']}}
												{{elseif  $xml->getItem("page/details/@status") == (string)16}}
													{{$txt['69381::status_16']}}
												{{elseif  $xml->getItem("page/details/@status") == (string)17}}
													{{$txt['69381::status_17']}}
												{{elseif  $xml->getItem("page/details/@status") == (string)18}}
													{{$txt['69381::status_18']}}
												{{/if}}
												</strong>
											<small>{{$txt['69381::prepaid006']}}{{$xml->getItemEscape("page/details/@id")}}</small>
										</div>
										<div class="prepaid-buttons">
											{{if  $xml->getItem("/shop/page/editlink/@url")}}
												<a class="btn-icon prepaid-edit" title="{{$txt['69381::prepaid172edit']}}" href="{{$xml->getItemEscape("/shop/page/editlink/@url")}}">{{$txt['69381::prepaid064edit']}}</a>
											{{/if}}
											{{if  $xml->getItem("/shop/page/cancellink/@url")}}
												<a class="btn-icon prepaid-cancel orderdetails_info_cancel" onclick="return confirm('{{$txt['69381::prepaid170']}}')" title="{{$txt['69381::prepaid171']}}" href="{{$xml->getItemEscape("/shop/page/cancellink/@url")}}">{{$txt['69381::prepaid063']}}</a>
											{{/if}}
										</div>
									</div>
								</div>
								{{if  $xml->getItem("/shop/page/return_method/@id") == (string)'2' and $n5_4atxt}}
									<div class="return_image_i">
										<div class="text-1a">{{$txt['69381::5_1a']}}
										</div>
										<div class="text-2a">{{$txt['69381::5_2a']}}
										</div>
										<div class="text-3a">{{$txt['69381::5_4a']}}
										</div>
										<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/instukcja_zwrot2.png?r=1570606529" alt=""/>
									</div>
								{{else}}
									<div class="return_image_i">
										<div class="text-1">{{$txt['69381::5_1']}}
										</div>
										<div class="text-2">{{$txt['69381::5_2']}}
										</div>
										<div class="text-3">{{$txt['69381::5_3']}}
										</div>
										<div class="text-4">{{$txt['69381::5_4']}}
										</div>
										<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/instukcja_zwrot.png?r=1570606529" alt=""/>
									</div>
								{{/if}}
								{{if  $xml->getItem("/shop/page/documentlink/@url")}}
									<div class="return_wrapper2">
										<a class="btn-large" target="blank" href="{{$xml->getItemEscape("/shop/page/documentlink/@url")}}">{{$txt['69381::50001_10wya']}}</a>
									</div>
								{{/if}}
								{{if  $xml->getItem("page/returnproducts/products/product")}}
									{{capture name="setIconLarge" assign="setIconLarge"}}
										{{$txt['69381::57664_setIconLarge']}}
									{{/capture}}
									<div id="prepaid_order_products">
										<h2 class="big_label">{{$txt['69381::53790_001b']}}
										</h2>
										<table class="ui-responsive table-stroke ui-table ui-table-reflow orders">
											<thead>
												<tr>
													<th/>
													<th/>
													{{if !( $xml->getItem("page/returnproducts/products/product/size/@type")  == (string) 'uniw')}}
														<th>{{$txt['69381::50001_004']}}
														</th>
													{{/if}}
													{{if !( $xml->getItem("page/returnproducts/products/product/@code")  == (string) '')}}
														<th>{{$txt['69381::50001_99']}}
														</th>
													{{/if}}
													<th>{{$txt['69381::n56465_099b']}}
													</th>
													<th>{{$txt['69381::n56465_099_pkt']}}
													</th>
												</tr>
											</thead>
											<tbody>
												{{foreach from=$xml->getList("page/returnproducts/products/product") item=loop440}}
													<tr>
														<td class="ordered-icon">
															{{if  $loop440->getItem("@link")}}
																<a href="{{$loop440->getItemEscape("@link")}}">
																	{{if $setIconLarge}}
																		<img src="{{$loop440->getItemEscape("icon")}}" alt="{{$loop440->getItemEscape("@name")}}"></img>
																	{{else}}
																		<img src="{{$loop440->getItemEscape("iconsmall")}}" alt="{{$loop440->getItemEscape("@name")}}"></img>
																	{{/if}}
																	</a>
															{{else}}
																{{if $setIconLarge}}
																	<img src="{{$loop440->getItemEscape("icon")}}" alt="{{$loop440->getItemEscape("@name")}}"></img>
																{{else}}
																	<img src="{{$loop440->getItemEscape("iconsmall")}}" alt="{{$loop440->getItemEscape("@name")}}"></img>
																{{/if}}
															{{/if}}
														</td>
														<td class="ordered-name">
															{{if  $loop440->getItem("@link")}}
																<a href="{{$loop440->getItemEscape("@link")}}" title="{{$loop440->getItemEscape("@name")}}">{{$loop440->getItemEscape("@name")}}</a>
															{{else}}
																<span>{{$loop440->getItemEscape("@name")}}</span>
															{{/if}}
															{{if  $loop440->getItem("@product_type")  == (string) 'product_bundle'}}
																<div class="ordered-product_bundle">
																	<label>{{$txt['69381::50001_z001']}}
																	</label>
																	<ul>
																		{{foreach from=$loop440->getList("bundled/product") item=loop492}}
																			<li>{{$loop492->getItemEscape("@name")}}
																				{{if !( $loop492->getItem("@size_id")  == (string) 'uniw') or (( $loop492->getItem("version")) and (!( $loop492->getItem("version/@product_name") == (string)'')))}}
																					{{$txt['69381::50001_z002']}}
																					{{if !( $loop492->getItem("@size_id")  == (string) 'uniw')}}
																						{{$txt['69381::50001_004']}}:
																						<b>{{$loop492->getItemEscape("@size_desc")}}</b>
																					{{/if}}
																					{{if !( $loop492->getItem("@size_id")  == (string) 'uniw') and (( $loop492->getItem("version")) and (!( $loop492->getItem("version/@product_name") == (string)'')))}}
																						{{$txt['69381::50001_z003']}}
																					{{/if}}
																					{{if ( $loop492->getItem("version")) and (!( $loop492->getItem("version/@product_name") == (string)''))}}
																						{{$loop492->getItemEscape("version/@name")}}:
																						<b>{{$loop492->getItemEscape("version/@product_name")}}</b>
																					{{/if}}
																					{{$txt['69381::50001_z004']}}
																				{{/if}}
																			</li>
																		{{/foreach}}
																	</ul>
																</div>
															{{/if}}
															{{if  $loop440->getItem("order_files/file")}}
																<div class="ordered-files">
																	<label>{{$txt['69381::51000_f_01']}}
																	</label>
																	<ul>
																		{{foreach from=$loop440->getList("order_files/file") item=loop520}}
																			<li>
																				<span>{{$loop520->getItemEscape("@file")}}</span>
																				{{if  $loop520->getItem("@path")}}
																					{{$txt['69381::order2_change_delivery_left']}}
																					<a href="{{$loop520->getItemEscape("@path")}}" {{if $loop520->getItem("@preview") == (string) 'true'}} data-imagelightbox="f" {{else}} target="_blank" {{/if}}>{{$txt['69381::51000_f_02']}}</a>{{$txt['69381::order2_change_delivery_right']}}
																				{{/if}}
																			</li>
																		{{/foreach}}
																	</ul>
																</div>
															{{/if}}
															{{if  $loop440->getItem("@product_type")  == (string) 'product_virtual'}}
																<div class="ordered-info">{{$txt['69381::67199_onlyvirtual_1']}}
																	<a href="{{$loop440->getItemEscape("/shop/client_files/@link_to_download")}}">{{$txt['69381::67199_onlyvirtual_link2']}}</a>{{$txt['69381::67199_onlyvirtual_2']}}
																</div>
															{{/if}}
														</td>
														{{if !( $loop440->getItem("/shop/page/returnproducts/products/product/size/@type")  == (string) 'uniw')}}
															<td class="ordered-size">{{$loop440->getItemEscape("@size_desc")}}
															</td>
														{{/if}}
														{{if !( $loop440->getItem("/shop/page/returnproducts/products/product/@code")  == (string) '')}}
															<td class="ordered-code">{{$loop440->getItemEscape("@code")}}
															</td>
														{{/if}}
														<td class="ordered-quantity">{{$loop440->getItemEscape("@quantity")}}{{literal}}{{/literal}}
															{{if  $loop440->getItem("@quantity")  gt (string) '1'}}
																{{$loop440->getItemEscape("@unit")}}
															{{else}}
																{{$loop440->getItemEscape("@unit_s")}}
															{{/if}}
														</td>
														<td class="ordered-price">
															{{if  $loop440->getItem("@quantity")  gt (string) '1'}}
																{{if  $loop440->getItem("@forpoints") == (string)'true'}}
																	{{$loop440->getItemEscape("@points_sum")}}{{$txt['69381::53790_901']}}
																{{else}}
																	{{$loop440->getItemEscape("@bruttoworth_formatted")}}
																{{/if}}
															{{else}}
																{{if  $loop440->getItem("@gratis") == (string)'y'}}
																	{{$txt['69381::53790_901g']}}
																{{elseif  $loop440->getItem("@forpoints") == (string)'true'}}
																	{{$loop440->getItemEscape("@points")}}{{$txt['69381::53790_901']}}
																{{else}}
																	{{$loop440->getItemEscape("@detalprice_formatted")}}
																{{/if}}
															{{/if}}
														</td>
													</tr>
													{{if  $loop440->getItem("remarks")}}
														<tr>
															<td/>
															<td colspan="5" class="rma-remarks">
																<div class="rma-remarks">
																	<b class="rma-remarks">{{$txt['69381::51000_022comment']}}</b>{{$loop440->getItemEscape("remarks")}}
																</div>
															</td>
														</tr>
													{{/if}}
												{{/foreach}}
											</tbody>
										</table>
									</div>
								{{/if}}
								{{if  $xml->getItem("/shop/page/repayment_method") or  $xml->getItem("/shop/page/return_method")}}
									<div class="returns_details_wrapper">
										<table class="returns_details_table">
											<tbody>
												<tr>
													<th class="returns_details_name">{{$txt['69381::00_004']}}
													</th>
												</tr>
												{{if  $xml->getItem("/shop/page/return_method")}}
													<tr>
														<td class="returns_details_name float_icon">
															<img class="return_detials_shipment_icon" src=" {{$xml->getItemEscape("/shop/page/return_method/@icon")}} " alt=" {{$xml->getItemEscape("/shop/page/return_method/@name")}} "></img>
															{{if  $xml->getItem("/shop/page/return_method/@id")  == (string) 1}}
																<span class="product_name">{{$txt['69381::order2_info_21a']}}{{$txt['69381::51900_1_bis']}}</span>
																<div class="return_description">{{$txt['69381::51900_1_d_bis']}}
																</div>
															{{elseif  $xml->getItem("/shop/page/return_method/@id")  == (string) 2}}
																<span class="product_name">{{$txt['69381::order2_info_21a']}}{{$txt['69381::51900_2_bis']}}</span>
																<div class="return_description">{{$txt['69381::51900_2_d_bis']}}
																</div>
															{{elseif  $xml->getItem("/shop/page/return_method/@id")  == (string) 3}}
																<span class="product_name">{{$txt['69381::order2_info_21a']}}{{$txt['69381::51900_3_bis']}}</span>
																<div class="return_description">{{$txt['69381::51900_3_d_bis']}}
																</div>
															{{elseif  $xml->getItem("/shop/page/return_method/@description")}}
																<span class="product_name">{{$txt['69381::order2_info_21a']}}{{$xml->getItemEscape("/shop/page/return_method/@name")}}</span>
																<div class="return_description">{{$xml->getItemEscape("/shop/page/return_method/@description")}}
																</div>
															{{/if}}
															{{if $prepaid016txt and ( $xml->getItem("/shop/page/trackinglink/@url") or  $xml->getItem("/shop/page/trackinglink/@dispatchid"))}}
																<ul>
																	<li>
																		<strong>{{$prepaid016txt}}</strong>{{$xml->getItemEscape("/shop/page/trackinglink/@dispatchid")}}
																	</li>
																	{{if  $xml->getItem("/shop/page/trackinglink/@url")}}
																		<li>
																			<strong>{{$prepaid017atxt}}</strong>
																			<a target="_blank" href="{{$xml->getItemEscape("/shop/page/trackinglink/@url")}}">{{$prepaid017txt}}</a>
																		</li>
																	{{/if}}
																</ul>
															{{/if}}
														</td>
													</tr>
												{{/if}}
												{{if  $xml->getItem("/shop/page/repayment_method")}}
													<tr>
														<td class="returns_details_name float_icon">
															<img class="return_detials_shipment_icon" src=" {{$xml->getItemEscape("/shop/page/repayment_method/@icon")}} " alt=" {{$xml->getItemEscape("/shop/page/repayment_method/@name")}} "></img>
															{{if  $xml->getItem("/shop/page/repayment_method/@id")  == (string) 't'}}
																<span class="product_name">{{$txt['69381::51900_1']}}</span>
																<div class="return_description">{{$txt['69381::51900_1_d']}}
																</div>
															{{elseif  $xml->getItem("/shop/page/repayment_method/@id")  == (string) 'b'}}
																<span class="product_name">{{$txt['69381::51900_2']}}</span>
																<div class="return_description">{{$txt['69381::51900_2_d']}}
																</div>
															{{elseif  $xml->getItem("/shop/page/repayment_method/@id")  == (string) 'tc'}}
																<span class="product_name">{{$txt['69381::51900_3']}}</span>
																<div class="return_description">{{$txt['69381::51900_3_d']}}
																</div>
															{{else}}
																<span class="product_name">{{$xml->getItemEscape("/shop/page/repayment_method/@name")}}</span>
																<div class="return_description">{{$xml->getItemEscape("/shop/page/repayment_method/@description")}}
																</div>
															{{/if}}
														</td>
													</tr>
												{{/if}}
											</tbody>
										</table>
									</div>
								{{/if}}
								{{if  $xml->getItem("/shop/page/remarks")}}
									<div class="returns_details_wrapper">
										<h2 class="big_label">{{$txt['69381::00_007']}}
										</h2>
										<div class="returns_details_w_sub">{{$xml->getItem("/shop/page/remarks")}}
										</div>
									</div>
								{{/if}}
								{{if  $xml->getItem("/shop/page/pickup/name")}}
									<div class="returns_details_wrapper">
										<h2 class="big_label">{{$txt['69381::00_008']}}
										</h2>
										<div class="returns_details_w_sub">
											<div id="ps_10" class="pickupl_return_one">
												<div class="pickupl_return_one_sub">
													<div class="pickupl_return_one_link">
														<a target="_blank" data-tablet-class="btn-small" data-mobile-class="btn-small" title="{{$txt['69381::00_009']}}" href=" {{$xml->getItemEscape("/shop/page/pickup/link")}} ">{{$txt['69381::00_009']}}</a>
													</div>
													<div class="pickupl_return_one_header">
														<span class="pickupl_return_one_name">{{$xml->getItemEscape("/shop/page/pickup/name")}}</span>
													</div>
													<div class="pickupl_return_one_address">
														<span style="display:none" class="pickup_return_address">{{$xml->getItemEscape("/shop/page/pickup/address")}}</span>{{$xml->getItemEscape("/shop/page/pickup/address")}}
														<span class="pickupl_return_one_city">{{$xml->getItemEscape("/shop/page/pickup/zipcode")}}{{$xml->getItemEscape("/shop/page/pickup/city")}}</span>
													</div>
													<div class="pickupl_return_one_info">
													</div>
												</div>
											</div>
										</div>
									</div>
								{{/if}}
								{{capture name="txt_54116_1" assign="txt_54116_1"}}
									{{$txt['69381::54116_1']}}
								{{/capture}}
								{{if $txt_54116_1 and count( $xml->getList("page/documents/document"))  gt (string) 0}}
									<div class="returns_details_wrapper">
										<div class="big_label">{{$txt_54116_1}}
										</div>
										<div class="n55542_main_outline">
											<div class="n55542_main">
												<ul class="n54116_list">
													{{foreach from=$xml->getList("page/documents/document") item=loop780}}
														<li class="n54116_item">
															<a class="n54116_item" target="_blank" title="{{$txt['69381::54116_2']}}" href="{{$loop780->getItemEscape("@link")}}">{{$loop780->getItemEscape("@id")}}</a>
														</li>
													{{/foreach}}
												</ul>
											</div>
										</div>
									</div>
								{{/if}}
							</div>
						{{/if}}
						<div id="prepaid_summary">
							<div class="basketedit_summary">
								<div {{assign "classAttributeTmp4" ""}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}basketedit_summary_sub{{/capture}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}basketedit_summary_sub{{$txt['69381::n55363_class1']}}{{/capture}}  class="{{$classAttributeTmp4}}">
									<div {{assign "classAttributeTmp5" ""}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}basketedit_summary_left{{/capture}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}basketedit_summary_left{{$txt['69381::n55363_class2']}}{{/capture}}  class="{{$classAttributeTmp5}}">
									</div>
									<div {{assign "classAttributeTmp6" ""}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}basketedit_summary_right{{/capture}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}basketedit_summary_right{{$txt['69381::n55363_class3']}}{{/capture}}  class="{{$classAttributeTmp6}}">
										<div class="basketedit_calculations">
											{{if  $xml->getItem("/shop/page/costs/cost[@type='products']/@value_formatted")}}
												<div class="basketedit_product_summary">
													<label>{{$txt['69381::prepaid008w']}}
													</label>
													<strong>{{$xml->getItemEscape("/shop/page/costs/cost[@type='products']/@value_formatted")}}</strong>
												</div>
											{{/if}}
											{{if  $xml->getItem("/shop/page/costs/cost[@type='shipping']/@value_formatted")}}
												<div class="basketedit_product_summary">
													<label>{{$txt['69381::prepaid011do']}}
													</label>
													<strong id="additional_cost_prepaid">{{$xml->getItemEscape("/shop/page/costs/cost[@type='shipping']/@value_formatted")}}</strong>
												</div>
											{{/if}}
											{{if  $xml->getItem("/shop/page/costs/cost[@type='shop_shipping']/@value_formatted")}}
												<div class="basketedit_product_summary">
													<label>{{$txt['69381::prepaid011do2']}}
													</label>
													<strong id="additional_cost_prepaid">{{$xml->getItemEscape("/shop/page/costs/cost[@type='shop_shipping']/@value_formatted")}}</strong>
												</div>
											{{/if}}
											<div style="clear:both">
											</div>
										</div>
										{{if  $xml->getItem("/shop/page/costs/@value_formatted")}}
											<div class="basketedit_total_summary">
												<label>{{$txt['69381::prepaid011']}}
												</label>
												<strong id="currencytotal_prepaid">{{$xml->getItemEscape("/shop/page/costs/@value_formatted")}}</strong>
											</div>
										{{/if}}
									</div>
								</div>
							</div>
						</div>
						{{if  $xml->getItem("/shop/page/details/@status") == (string)1}}
							<div class="prepaid_summary_buttons">
								{{if  $xml->getItem("page/backlink/@url")}}
									<a class="btn" href="{{$xml->getItemEscape("page/backlink/@url")}}">{{$txt['69381::order2_button_back']}}</a>
								{{/if}}
								{{if  $xml->getItem("page/backlink_other/@url")}}
									<a class="btn" href="{{$xml->getItemEscape("page/backlink_other/@url")}}">{{$txt['69381::order2_button_back_other']}}</a>
								{{/if}}
							</div>
						{{/if}}
						<div id="menu_notice" style="display: none;">
							<h2>{{$txt['69381::00_010']}}
							</h2>
							<strong>{{$txt['69381::00_011']}}</strong>
							<div class="menu_notice_button">
								<button onclick="$('#dialog_close').click();" class="prepaid_cancel btn-small">{{$txt['69381::00_012']}}
								</button>
								<button class="prepaid_confirm btn-small">{{$txt['69381::00_013']}}
								</button>
							</div>
							<div class="clearboth">
							</div>
						</div>
						<script>
            $('a.show_status').click(function(){
            $('body').dialog({
            'content':'
<div style="text-align:left">'+$(this).next().html()+'</div>',
            'fixed':false,
            'fitToWindow': false
            });
            $('
<h2>'+$(this).text()+'</h2>').prependTo('#dialog_wrapper');
            $('
<div id="ui-dialog_button">
<button class="btn-small" onclick="$(\'#dialog_close\').click();">'+txt_62619_close_window+'</button></div>').appendTo('#dialog_wrapper');
            return false;
            })
            $('a.orderdetails_info_cancel').removeAttr('onclick');
            $('a.orderdetails_info_cancel').click(function(){
            thisHref = $(this).attr('href');
            $('#menu_notice').dialog({'wrappContent':'true'});
            $('#menu_notice button.prepaid_confirm').click(function(){
            self.location.href = thisHref;
            })
            return false;
            })
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
