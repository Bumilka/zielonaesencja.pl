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
						<!--Porównywarka produktów - cms (product_compare_cms, 75774.1)-->
						<h1 class="big_label product_compare_label">{{$txt['75774::75199_1b']}}
						</h1>
						{{if  $xml->getItem("page/projector/text/body")}}
							<div id="component_projector_cms" class="cm">{{$xml->getItem("page/projector/text/body")}}
							</div>
						{{/if}}
						{{if  $xml->getItem("/shop/compare/@active")}}
						{{/if}}
						<!--Porównywarka produktów - lista w ramce (product_compare_list, 75773.1)-->
						<div id="product_compare_list_wrapper" class="hidePrev">
							<div {{assign "classAttributeTmp3" ""}}  id="product_compare_list"{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}compare{{/capture}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}compare compare_item_{{$xml->getItemEscape("count(page/products/product)")}}{{/capture}}  class="{{$classAttributeTmp3}}">
								<table>
									<tbody>
										<tr class="cmp_product">
											<th class="cmp_product configure">
												<div class="item_width">
													{{if  $xml->getItem("lastsearch")}}
														<a href="{{$xml->getItemEscape("lastsearch")}}">{{$txt['75773::55103_00_2b']}}</a>
													{{/if}}
													<a href="#differences" data-toggleTxt="{{$txt['75773::55102_00_uk']}}">{{$txt['75773::55103_00_1b']}}</a>
												</div>
											</th>
											{{foreach from=$xml->getList("page/products/product") item=loop292}}
												<td class="cmp_product">
													<div class="configure_item item_width">
														<a href="#hiddeProduct={{$loop292->getItemEscape("@id")}}" data-position="{{$loop292@iteration}}" data-toggleTxt="{{$txt['75773::55102_00_p']}}">{{$txt['75773::55102_00_u']}}</a>
														<a class="hideCol" data-del_position="{{$loop292@iteration}}" href="settings.php?comparers=remove&#160;amp;product={{$loop292->getItemEscape("@id")}}">{{$txt['75773::55102_00_1']}}</a>
													</div>
													<div class="product_wrapper item_width">
														<a class="product-icon align_row" data-align="img#css" href="{{$loop292->getItemEscape("link")}}">
															<img class="b-lazy" src="/gfx/__IAI_TEMPLATE_LANG_639_1__/loader.gif?r=1570606529" data-src-small="{{$loop292->getItem("icon_small")}}" data-src="{{$loop292->getItem("icon")}}" alt="{{$loop292->getItem("name")}}"></img>
															<strong class="label_icons hideCol">
																{{if ( $loop292->getItem("additional/promotion"))}}
																	<span class="label promo">{{$txt['75773::53885_307pro']}}</span>
																{{/if}}
																{{if ( $loop292->getItem("additional/new"))}}
																	<span class="label newproducts">{{$txt['75773::53885_307n']}}</span>
																{{/if}}
																{{if ( $loop292->getItem("additional/promotion")) and ( $loop292->getItem("additional/new"))}}
																{{elseif ( $loop292->getItem("additional/promotion")) or ( $loop292->getItem("additional/new"))}}
																	{{if ( $loop292->getItem("additional/bestseller"))}}
																		<span class="label bestseller">{{$txt['75773::53885_307b']}}</span>
																	{{elseif ( $loop292->getItem("additional/discount"))}}
																		<span class="label discount">{{$txt['75773::53885_307pr']}}</span>
																	{{elseif ( $loop292->getItem("additional/distinguished"))}}
																		<span class="label distinguished">{{$txt['75773::53885_307p']}}</span>
																	{{/if}}
																{{else}}
																	{{if ( $loop292->getItem("additional/bestseller"))}}
																		<span class="label bestseller">{{$txt['75773::53885_307b']}}</span>
																	{{/if}}
																	{{if ( $loop292->getItem("additional/discount"))}}
																		<span class="label discount">{{$txt['75773::53885_307pr']}}</span>
																	{{/if}}
																	{{if ( $loop292->getItem("additional/distinguished")) and !(( $loop292->getItem("additional/bestseller")) and ( $loop292->getItem("additional/discount")))}}
																		<span class="label distinguished">{{$txt['75773::53885_307p']}}</span>
																	{{/if}}
																{{/if}}
																</strong></a>
														<a class="product-name" href="{{$loop292->getItemEscape("link")}}" title="{{$loop292->getItem("name")}}">{{$loop292->getItem("name")}}</a>
														{{capture name="var_size_min_formatted" assign="var_size_min_formatted"}}
															{{$loop292->getItemEscape("price/price/@size_min_formatted")}}
														{{/capture}}
														{{capture name="var_size_max_formatted" assign="var_size_max_formatted"}}
															{{$loop292->getItemEscape("price/price/@size_max_formatted")}}
														{{/capture}}
														{{capture name="var_points" assign="var_points"}}
															{{$loop292->getItemEscape("price/price/@points")}}
														{{/capture}}
														{{capture name="var_value" assign="var_value"}}
															{{$loop292->getItemEscape("price/price/@value")}}
														{{/capture}}
														{{capture name="var_price_formatted" assign="var_price_formatted"}}
															{{$loop292->getItemEscape("price/price/@price_formatted")}}
														{{/capture}}
														{{capture name="var_maxprice_formatted" assign="var_maxprice_formatted"}}
															{{$loop292->getItemEscape("price/price/@maxprice_formatted")}}
														{{/capture}}
														<div class="product_prices hideCol">
															{{if $var_size_min_formatted  neq (string) $var_size_max_formatted}}
																<span class="price">{{$var_size_min_formatted}}{{literal}}-{{/literal}}{{$var_size_max_formatted}}</span>
																{{if $var_points}}
																	<span class="point-price">{{$var_points}}
																		<span class="currency">{{$txt['75773::58826_012']}}</span></span>
																{{/if}}
															{{elseif ($var_value  == (string) 0) and $var_points  == (string) ''}}
																<a class="fon_price" data-mobile-class="btn-small" title="{{$txt['75773::58826_009']}}" href="{{$loop292->getItemEscape("/shop/contact/link/@url")}}">{{$txt['75773::58826_010']}}</a>
															{{else}}
																<span class="price">{{$txt['75773::58826_003']}}{{$var_price_formatted}}</span>
																{{if $var_maxprice_formatted  neq (string) ''}}
																	<del class="max-price">{{$txt['75773::58826_006']}}{{$var_maxprice_formatted}}</del>
																{{/if}}
																{{if $var_points  neq (string) ''}}
																	<span class="point-price">{{$var_points}}
																		<span class="currency">{{$txt['75773::58826_012']}}</span></span>
																{{/if}}
															{{/if}}
															{{if  $loop292->getItem("price/price/@unit_converted_price_formatted")}}
																<small class="unit_price">{{$loop292->getItemEscape("price/price/@unit_converted_price_formatted")}}{{literal}}/{{/literal}}{{$loop292->getItemEscape("price/price/@unit_converted_format")}}</small>
															{{/if}}
														</div>
														{{if  $loop292->getItem("producer")  neq (string) '' or  $loop292->getItem("barcode")  neq (string) '' or  $loop292->getItem("@note")}}
															<div class="list_traits hideCol">
																<ul>
																	{{if  $loop292->getItem("producer")  neq (string) ''}}
																		<li class="producer">
																			<span>{{$txt['75773::55102_00_4']}}</span>
																			<div>{{$loop292->getItem("producer")}}
																			</div>
																		</li>
																	{{/if}}
																	{{if  $loop292->getItem("barcode")  neq (string) ''}}
																		<li class="barcode">
																			<span>{{$txt['75773::55102_00_5']}}</span>
																			<div>{{$loop292->getItem("barcode")}}
																			</div>
																		</li>
																	{{/if}}
																	{{if  $loop292->getItem("@note")}}
																		<li class="note">
																			<span>{{$txt['75773::55102_00_5note']}}</span>
																			<div>
																				<i {{assign "classAttributeTmp4" ""}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}icon-star{{/capture}}{{if $loop292->getItem("@note") gt (string) 0.5}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp4}}"></i>
																				<i {{assign "classAttributeTmp5" ""}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}icon-star{{/capture}}{{if $loop292->getItem("@note") gt (string) 1.5}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp5}}"></i>
																				<i {{assign "classAttributeTmp6" ""}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}icon-star{{/capture}}{{if $loop292->getItem("@note") gt (string) 2.5}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp6}}"></i>
																				<i {{assign "classAttributeTmp7" ""}}{{capture name="classAttributeTmp7" assign="classAttributeTmp7"}}icon-star{{/capture}}{{if $loop292->getItem("@note") gt (string) 3.5}}{{capture name="classAttributeTmp7" assign="classAttributeTmp7"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp7}}"></i>
																				<i {{assign "classAttributeTmp8" ""}}{{capture name="classAttributeTmp8" assign="classAttributeTmp8"}}icon-star{{/capture}}{{if $loop292->getItem("@note") gt (string) 4.5}}{{capture name="classAttributeTmp8" assign="classAttributeTmp8"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp8}}"></i>
																			</div>
																		</li>
																	{{/if}}
																</ul>
															</div>
														{{/if}}
													</div>
												</td>
											{{/foreach}}
										</tr>
										{{if  $xml->getItem("page/products/product/size")}}
											{{if !( $xml->getItem("page/products/product/size/size/@name")  == (string) 'uniw')}}
												<tr>
													<th>
														<div class="item_width">{{$txt['75773::55102_00_2']}}
														</div>
													</th>
													{{foreach from=$xml->getList("page/products/product") item=loop464}}
														<td>
															<div class="hideCol item_width">
																{{foreach from=$loop464->getList("size/size") item=loop468}}
																	{{if !( $loop468->getItem("@name")  == (string) 'uniw')}}
																		{{$loop468->getItemEscape("text()")}}
																		{{if !(count( $loop468->getList("../size"))  == (string)  $loop468@iteration )}}
																			,
																		{{/if}}
																	{{/if}}
																{{/foreach}}
															</div>
														</td>
													{{/foreach}}
												</tr>
											{{/if}}
										{{/if}}
										{{if  $xml->getItem("page/products/versions")}}
											{{foreach from=$xml->getList("page/products/versions/version") item=loop484}}
												<tr>
													<th>
														<div class="item_width">{{$loop484->getItemEscape("@name")}}
														</div>
													</th>
													{{foreach from=$loop484->getList("product") item=loop488}}
														<td>
															<div class="hideCol item_width">
																{{foreach from=$loop488->getList("version") item=loop492}}
																	{{if !( $loop492->getItem("@icon"))}}
																		<img src="{{$loop492->getItemEscape("@icon")}}"></img>
																	{{else}}
																		{{$loop492->getItemEscape("@name")}}
																		{{if !(count( $loop492->getList("../version"))  == (string)  $loop492@iteration )}}
																			,
																		{{/if}}
																	{{/if}}
																{{/foreach}}
															</div>
														</td>
													{{/foreach}}
												</tr>
											{{/foreach}}
										{{/if}}
										{{if  $xml->getItem("page/products/product/description")}}
											<tr>
												<th>
													<div class="item_width">{{$txt['75773::55102_00_3']}}
													</div>
												</th>
												{{foreach from=$xml->getList("page/products/product") item=loop513}}
													<td>
														<div class="hideCol item_width">{{$loop513->getItem("description")}}
														</div>
													</td>
												{{/foreach}}
											</tr>
										{{/if}}
										{{if  $xml->getItem("page/products/traits")}}
											{{foreach from=$xml->getList("page/products/traits/traits_group") item=loop526}}
												<tr>
													<th>
														<div class="item_width">{{$loop526->getItem("@name")}}
														</div>
													</th>
													{{foreach from=$loop526->getList("product") item=loop532}}
														<td>
															<div class="hideCol item_width">
																{{foreach from=$loop532->getList("trait") item=loop536}}
																	{{$loop536->getItem("text()")}}
																	{{if !(count( $loop536->getList("../trait"))  == (string)  $loop536@iteration )}}
																		,
																	{{/if}}
																{{/foreach}}
															</div>
														</td>
													{{/foreach}}
												</tr>
											{{/foreach}}
										{{/if}}
										{{foreach from=$xml->getList("/shop/page/products/dictionary/element_group") item=loop550}}
											<tr>
												<th>
													<div class="item_width">{{$loop550->getItem("@name")}}
													</div>
												</th>
												{{foreach from=$loop550->getList("product") item=loop554}}
													<td>
														<div class="hideCol item_width">
															{{foreach from=$loop554->getList("item") item=loop557}}
																{{if  $loop557@iteration  neq (string)1}}
																	,
																{{/if}}
																{{$loop557->getItem("text()")}}
															{{/foreach}}
														</div>
													</td>
												{{/foreach}}
											</tr>
										{{/foreach}}
									</tbody>
								</table>
							</div>
							<div class="navigation">
								<a class="prev" href="#prev">{{$txt['75773::55102_nav_2']}}</a>
								<a class="next" href="#next">{{$txt['75773::55102_nav_1']}}</a>
							</div>
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
