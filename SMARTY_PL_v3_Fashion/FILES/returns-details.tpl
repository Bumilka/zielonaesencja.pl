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
				</header>
			{{/if}}
			<div id="layout" class="{{$txt['107419::70925_layout_class']}}">
				{{if !( $xml->getItem("action/set_render/item")) or ( $xml->getItem("action/set_render/item/@name")  == (string) 'aside')}}
					<aside {{assign "classAttributeTmp1" ""}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}span3{{/capture}}{{if $xml->getItem("page/@type") == (string) 'projector'}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}{{$txt['107419::70925_projector_a_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'search'}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}{{$txt['107419::70925_search_a_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'main'}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}{{$txt['107419::70925_main_a_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'blog-item'}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}{{$txt['107419::70925_blog_item_a_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'blog-list'}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}{{$txt['107419::70925_blog_list_a_class']}}{{/capture}}{{else}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}{{$txt['107419::70925_otherwise_a_class']}}{{/capture}}{{/if}}  class="{{$classAttributeTmp1}}">
						{{include file="component_menu_additional1_106528.tpl"}}
					</aside>
				{{/if}}
				{{if !( $xml->getItem("action/set_render/item")) or ( $xml->getItem("action/set_render/item/@name")  == (string) 'content')}}
					<div {{assign "classAttributeTmp2" ""}}  id="content"{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}span9{{/capture}}{{if $xml->getItem("page/@type") == (string) 'projector'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['107419::70925_projector_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'search'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['107419::70925_search_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'main'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['107419::70925_main_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'navigation'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['107419::70925_navigation_page_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'blog-list'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['107419::70925_blog_list_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'blog-item'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['107419::70925_blog_item_c_class']}}{{/capture}}{{else}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['107419::70925_otherwise_c_class']}}{{/capture}}{{/if}}  class="{{$classAttributeTmp2}}">
						{{include file="component_menu_messages_106608.tpl"}}
						<!--Zwroty szczegóły CMS (returns_details_cms, 69382.1)-->
						{{if  $xml->getItem("/shop/page/text/body")}}
							<div class="returns_cms">
								<div class="returns_cms_sub">{{$xml->getItem("page/text/body")}}
								</div>
							</div>
						{{/if}}
						<!--Zwroty szczegóły (returns_details_form, 107773.1)-->
						{{if  $xml->getItem("page[@display='details']")}}
							{{capture name="prepaid016txt" assign="prepaid016txt"}}
								{{$txt['107773::prepaid016']}}
							{{/capture}}
							{{capture name="prepaid017atxt" assign="prepaid017atxt"}}
								{{$txt['107773::prepaid017a']}}
							{{/capture}}
							{{capture name="prepaid017txt" assign="prepaid017txt"}}
								{{$txt['107773::prepaid017']}}
							{{/capture}}
							{{capture name="n5_4atxt" assign="n5_4atxt"}}
								{{$txt['107773::5_4a']}}
							{{/capture}}
							<div class="step7">
								<div id="orderdetails_info">
									<h2 class="big_label">
										<span>{{$txt['107773::prepaid0011']}}</span>
										<span class="order-date">{{$txt['107773::prepaid007']}}{{$xml->getItemEscape("page/details/@datetime")}}</span>
									</h2>
									<div id="orderdetails_info_status">
										<div {{assign "classAttributeTmp3" ""}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}prepaid-icon{{/capture}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}prepaid-icon status-{{$xml->getItemEscape("page/details/@status")}}{{/capture}}  class="{{$classAttributeTmp3}}">
											<i class=" {{if $xml->getItem("page/details/@status") == (string)1}} {{$txt['107773::status_icons_1']}} {{elseif $xml->getItem("page/details/@status") == (string)2}} {{$txt['107773::status_icons_2']}} {{elseif $xml->getItem("page/details/@status") == (string)3}} {{$txt['107773::status_icons_3']}} {{elseif $xml->getItem("page/details/@status") == (string)13}} {{$txt['107773::status_icons_13']}} {{elseif $xml->getItem("page/details/@status") == (string)14}} {{$txt['107773::status_icons_14']}} {{elseif $xml->getItem("page/details/@status") == (string)15}} {{$txt['107773::status_icons_15']}} {{elseif $xml->getItem("page/details/@status") == (string)16}} {{$txt['107773::status_icons_16']}} {{elseif $xml->getItem("page/details/@status") == (string)17}} {{$txt['107773::status_icons_17']}} {{elseif $xml->getItem("page/details/@status") == (string)18}} {{$txt['107773::status_icons_18']}} {{/if}} "></i>
										</div>
										<div class="prepaid-status">
											<strong>
												{{if  $xml->getItem("page/details/@status_name")  neq (string) ''}}
													{{$xml->getItem("page/details/@status_name")}}
												{{elseif  $xml->getItem("page/details/@status") == (string)1}}
													{{$txt['107773::status_1']}}
												{{elseif  $xml->getItem("page/details/@status") == (string)2}}
													{{$txt['107773::status_2']}}
												{{elseif  $xml->getItem("page/details/@status") == (string)3}}
													{{$txt['107773::status_3']}}
												{{elseif  $xml->getItem("page/details/@status") == (string)13}}
													{{$txt['107773::status_13']}}
												{{elseif  $xml->getItem("page/details/@status") == (string)14}}
													{{$txt['107773::status_14']}}
												{{elseif  $xml->getItem("page/details/@status") == (string)15}}
													{{$txt['107773::status_15']}}
												{{elseif  $xml->getItem("page/details/@status") == (string)16}}
													{{$txt['107773::status_16']}}
												{{elseif  $xml->getItem("page/details/@status") == (string)17}}
													{{$txt['107773::status_17']}}
												{{elseif  $xml->getItem("page/details/@status") == (string)18}}
													{{$txt['107773::status_18']}}
												{{/if}}
												</strong>
											<small>{{$txt['107773::prepaid006']}}{{$xml->getItemEscape("page/details/@id")}}</small>
										</div>
										<div class="prepaid-buttons">
											{{if  $xml->getItem("/shop/page/editlink/@url")}}
												<a class="btn-icon prepaid-edit" title="{{$txt['107773::prepaid172edit']}}" href="{{$xml->getItemEscape("/shop/page/editlink/@url")}}">{{$txt['107773::prepaid064edit']}}</a>
											{{/if}}
											{{if  $xml->getItem("/shop/page/cancellink/@url")}}
												<a class="btn-icon prepaid-cancel orderdetails_info_cancel" onclick="return confirm('{{$txt['107773::prepaid170']}}')" title="{{$txt['107773::prepaid171']}}" href="{{$xml->getItemEscape("/shop/page/cancellink/@url")}}">{{$txt['107773::prepaid063']}}</a>
											{{/if}}
										</div>
									</div>
								</div>
								{{if  $xml->getItem("/shop/page/return_method/@id") == (string)'2' and $n5_4atxt}}
									<div class="return_image_i">
										<div class="text-1a">{{$txt['107773::5_1a']}}
										</div>
										<div class="text-2a">{{$txt['107773::5_2a']}}
										</div>
										<div class="text-3a">{{$txt['107773::5_4a']}}
										</div>
										<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/instukcja_zwrot2.png?r=1570606968" alt=""/>
									</div>
								{{else}}
									<div class="return_image_i">
										<div class="text-1">{{$txt['107773::5_1']}}
										</div>
										<div class="text-2">{{$txt['107773::5_2']}}
										</div>
										<div class="text-3">{{$txt['107773::5_3']}}
										</div>
										<div class="text-4">{{$txt['107773::5_4']}}
										</div>
										<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/instukcja_zwrot.png?r=1570606968" alt=""/>
									</div>
								{{/if}}
								{{if  $xml->getItem("/shop/page/documentlink/@url")}}
									<div class="return_wrapper2">
										<a class="btn-large" target="blank" href="{{$xml->getItemEscape("/shop/page/documentlink/@url")}}">{{$txt['107773::50001_10wya']}}</a>
									</div>
								{{/if}}
								{{if  $xml->getItem("page/returnproducts/products/product")}}
									{{capture name="setIconLarge" assign="setIconLarge"}}
										{{$txt['107773::57664_setIconLarge']}}
									{{/capture}}
									<div id="prepaid_order_products">
										<h2 class="big_label">{{$txt['107773::53790_001b']}}
										</h2>
										<table class="ui-responsive table-stroke ui-table ui-table-reflow orders">
											<thead>
												<tr>
													<th/>
													<th/>
													{{if !( $xml->getItem("page/returnproducts/products/product/size/@type")  == (string) 'uniw')}}
														<th>{{$txt['107773::50001_004']}}
														</th>
													{{/if}}
													{{if !( $xml->getItem("page/returnproducts/products/product/@code")  == (string) '')}}
														<th>{{$txt['107773::50001_99']}}
														</th>
													{{/if}}
													<th>{{$txt['107773::n56465_099b']}}
													</th>
													<th>{{$txt['107773::n56465_099_pkt']}}
													</th>
												</tr>
											</thead>
											<tbody>
												{{foreach from=$xml->getList("page/returnproducts/products/product") item=loop437}}
													<tr>
														<td class="ordered-icon">
															{{if  $loop437->getItem("@link")}}
																<a href="{{$loop437->getItemEscape("@link")}}">
																	{{if $setIconLarge}}
																		<img src="{{$loop437->getItemEscape("icon")}}" alt="{{$loop437->getItemEscape("@name")}}"></img>
																	{{else}}
																		<img src="{{$loop437->getItemEscape("iconsmall")}}" alt="{{$loop437->getItemEscape("@name")}}"></img>
																	{{/if}}
																	</a>
															{{else}}
																{{if $setIconLarge}}
																	<img src="{{$loop437->getItemEscape("icon")}}" alt="{{$loop437->getItemEscape("@name")}}"></img>
																{{else}}
																	<img src="{{$loop437->getItemEscape("iconsmall")}}" alt="{{$loop437->getItemEscape("@name")}}"></img>
																{{/if}}
															{{/if}}
														</td>
														<td class="ordered-name">
															{{if  $loop437->getItem("@link")}}
																<a href="{{$loop437->getItemEscape("@link")}}" title="{{$loop437->getItemEscape("@name")}}">{{$loop437->getItemEscape("@name")}}</a>
															{{else}}
																<span>{{$loop437->getItemEscape("@name")}}</span>
															{{/if}}
															{{if  $loop437->getItem("@product_type")  == (string) 'product_bundle'}}
																<div class="ordered-product_bundle">
																	<label>{{$txt['107773::50001_z001']}}
																	</label>
																	<ul>
																		{{foreach from=$loop437->getList("bundled/product") item=loop489}}
																			<li>{{$loop489->getItemEscape("@name")}}
																				{{if !( $loop489->getItem("@size_id")  == (string) 'uniw') or (( $loop489->getItem("version")) and (!( $loop489->getItem("version/@product_name") == (string)'')))}}
																					{{$txt['107773::50001_z002']}}
																					{{if !( $loop489->getItem("@size_id")  == (string) 'uniw')}}
																						{{$txt['107773::50001_004']}}:
																						<b>{{$loop489->getItemEscape("@size_desc")}}</b>
																					{{/if}}
																					{{if !( $loop489->getItem("@size_id")  == (string) 'uniw') and (( $loop489->getItem("version")) and (!( $loop489->getItem("version/@product_name") == (string)'')))}}
																						{{$txt['107773::50001_z003']}}
																					{{/if}}
																					{{if ( $loop489->getItem("version")) and (!( $loop489->getItem("version/@product_name") == (string)''))}}
																						{{$loop489->getItemEscape("version/@name")}}:
																						<b>{{$loop489->getItemEscape("version/@product_name")}}</b>
																					{{/if}}
																					{{$txt['107773::50001_z004']}}
																				{{/if}}
																			</li>
																		{{/foreach}}
																	</ul>
																</div>
															{{/if}}
															{{if  $loop437->getItem("order_files/file")}}
																<div class="ordered-files">
																	<label>{{$txt['107773::51000_f_01']}}
																	</label>
																	<ul>
																		{{foreach from=$loop437->getList("order_files/file") item=loop517}}
																			<li>
																				<span>{{$loop517->getItemEscape("@file")}}</span>
																				{{if  $loop517->getItem("@path")}}
																					{{$txt['107773::order2_change_delivery_left']}}
																					<a href="{{$loop517->getItemEscape("@path")}}" {{if $loop517->getItem("@preview") == (string) 'true'}} data-imagelightbox="f" {{else}} target="_blank" {{/if}}>{{$txt['107773::51000_f_02']}}</a>{{$txt['107773::order2_change_delivery_right']}}
																				{{/if}}
																			</li>
																		{{/foreach}}
																	</ul>
																</div>
															{{/if}}
															{{if  $loop437->getItem("@product_type")  == (string) 'product_virtual'}}
																<div class="ordered-info">{{$txt['107773::67199_onlyvirtual_1']}}
																	<a href="{{$loop437->getItemEscape("/shop/client_files/@link_to_download")}}">{{$txt['107773::67199_onlyvirtual_link2']}}</a>{{$txt['107773::67199_onlyvirtual_2']}}
																</div>
															{{/if}}
														</td>
														{{if !( $loop437->getItem("/shop/page/returnproducts/products/product/size/@type")  == (string) 'uniw')}}
															<td class="ordered-size">{{$loop437->getItemEscape("@size_desc")}}
															</td>
														{{/if}}
														{{if !( $loop437->getItem("/shop/page/returnproducts/products/product/@code")  == (string) '')}}
															<td class="ordered-code">{{$loop437->getItemEscape("@code")}}
															</td>
														{{/if}}
														<td class="ordered-quantity">{{$loop437->getItemEscape("@quantity")}}{{literal}}{{/literal}}
															{{if  $loop437->getItem("@quantity")  gt (string) '1'}}
																{{$loop437->getItemEscape("@unit")}}
															{{else}}
																{{$loop437->getItemEscape("@unit_s")}}
															{{/if}}
														</td>
														<td class="ordered-price">
															{{if  $loop437->getItem("@quantity")  gt (string) '1'}}
																{{if  $loop437->getItem("@forpoints") == (string)'true'}}
																	{{$loop437->getItemEscape("@points_sum")}}{{$txt['107773::53790_901']}}
																{{else}}
																	{{$loop437->getItemEscape("@bruttoworth_formatted")}}
																{{/if}}
															{{else}}
																{{if  $loop437->getItem("@gratis") == (string)'y'}}
																	{{$txt['107773::53790_901g']}}
																{{elseif  $loop437->getItem("@forpoints") == (string)'true'}}
																	{{$loop437->getItemEscape("@points")}}{{$txt['107773::53790_901']}}
																{{else}}
																	{{$loop437->getItemEscape("@detalprice_formatted")}}
																{{/if}}
															{{/if}}
														</td>
													</tr>
													{{if  $loop437->getItem("remarks")}}
														<tr>
															<td/>
															<td colspan="5" class="rma-remarks">
																<div class="rma-remarks">
																	<b class="rma-remarks">{{$txt['107773::51000_022comment']}}</b>{{$loop437->getItemEscape("remarks")}}
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
													<th class="returns_details_name">{{$txt['107773::00_004']}}
													</th>
												</tr>
												{{if  $xml->getItem("/shop/page/return_method")}}
													<tr>
														<td class="returns_details_name float_icon">
															<img class="return_detials_shipment_icon" src=" {{$xml->getItemEscape("/shop/page/return_method/@icon")}} " alt=" {{$xml->getItemEscape("/shop/page/return_method/@name")}} "></img>
															{{if  $xml->getItem("/shop/page/return_method/@description")}}
																<span class="product_name">{{$txt['107773::order2_info_21a']}}{{$xml->getItemEscape("/shop/page/return_method/@name")}}</span>
																<div class="return_description">{{$xml->getItemEscape("/shop/page/return_method/@description")}}
																</div>
															{{elseif  $xml->getItem("/shop/page/return_method/@id")  == (string) 1}}
																<span class="product_name">{{$txt['107773::order2_info_21a']}}{{$txt['107773::51900_1_bis']}}</span>
																<div class="return_description">{{$txt['107773::51900_1_d_bis']}}
																</div>
															{{elseif  $xml->getItem("/shop/page/return_method/@id")  == (string) 2}}
																<span class="product_name">{{$txt['107773::order2_info_21a']}}{{$txt['107773::51900_2_bis']}}</span>
																<div class="return_description">{{$txt['107773::51900_2_d_bis']}}
																</div>
															{{elseif  $xml->getItem("/shop/page/return_method/@id")  == (string) 3}}
																<span class="product_name">{{$txt['107773::order2_info_21a']}}{{$txt['107773::51900_3_bis']}}</span>
																<div class="return_description">{{$txt['107773::51900_3_d_bis']}}
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
																<span class="product_name">{{$txt['107773::51900_1']}}</span>
																<div class="return_description">{{$txt['107773::51900_1_d']}}
																</div>
															{{elseif  $xml->getItem("/shop/page/repayment_method/@id")  == (string) 'b'}}
																<span class="product_name">{{$txt['107773::51900_2']}}</span>
																<div class="return_description">{{$txt['107773::51900_2_d']}}
																</div>
															{{elseif  $xml->getItem("/shop/page/repayment_method/@id")  == (string) 'tc'}}
																<span class="product_name">{{$txt['107773::51900_3']}}</span>
																<div class="return_description">{{$txt['107773::51900_3_d']}}
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
										<h2 class="big_label">{{$txt['107773::00_007']}}
										</h2>
										<div class="returns_details_w_sub">{{$xml->getItem("/shop/page/remarks")}}
										</div>
									</div>
								{{/if}}
								{{if  $xml->getItem("/shop/page/pickup/name")}}
									<div class="returns_details_wrapper">
										<h2 class="big_label">{{$txt['107773::00_008']}}
										</h2>
										<div class="returns_details_w_sub">
											<div id="ps_10" class="pickupl_return_one">
												<div class="pickupl_return_one_sub">
													<div class="pickupl_return_one_link">
														<a target="_blank" data-tablet-class="btn-small" data-mobile-class="btn-small" title="{{$txt['107773::00_009']}}" href=" {{$xml->getItemEscape("/shop/page/pickup/link")}} ">{{$txt['107773::00_009']}}</a>
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
									{{$txt['107773::54116_1']}}
								{{/capture}}
								{{if $txt_54116_1 and count( $xml->getList("page/documents/document"))  gt (string) 0}}
									<div class="returns_details_wrapper">
										<div class="big_label">{{$txt_54116_1}}
										</div>
										<div class="n55542_main_outline">
											<div class="n55542_main">
												<ul class="n54116_list">
													{{foreach from=$xml->getList("page/documents/document") item=loop777}}
														<li class="n54116_item">
															<a class="n54116_item" target="_blank" title="{{$txt['107773::54116_2']}}" href="{{$loop777->getItemEscape("@link")}}">{{$loop777->getItemEscape("@id")}}</a>
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
								<div class="basketedit_summary_sub">
									<div class="basketedit_summary_left">
									</div>
									<div class="basketedit_summary_right">
										<div class="basketedit_calculations">
											{{if  $xml->getItem("/shop/page/costs/cost[@type='products']/@value_formatted")}}
												<div class="basketedit_product_summary">
													<label>{{$txt['107773::prepaid008w']}}
													</label>
													<strong>{{$xml->getItemEscape("/shop/page/costs/cost[@type='products']/@value_formatted")}}</strong>
												</div>
											{{/if}}
											{{if  $xml->getItem("/shop/page/costs/cost[@type='shipping']/@value_formatted")}}
												<div class="basketedit_product_summary">
													<label>{{$txt['107773::prepaid011do']}}
													</label>
													<strong id="additional_cost_prepaid">{{$xml->getItemEscape("/shop/page/costs/cost[@type='shipping']/@value_formatted")}}</strong>
												</div>
											{{/if}}
											{{if  $xml->getItem("/shop/page/costs/cost[@type='shop_shipping']/@value_formatted")}}
												<div class="basketedit_product_summary">
													<label>{{$txt['107773::prepaid011do2']}}
													</label>
													<strong id="additional_cost_prepaid">{{$xml->getItemEscape("/shop/page/costs/cost[@type='shop_shipping']/@value_formatted")}}</strong>
												</div>
											{{/if}}
											<div style="clear:both">
											</div>
										</div>
										{{if  $xml->getItem("/shop/page/costs/@value_formatted")}}
											<div class="basketedit_total_summary">
												<label>{{$txt['107773::prepaid011']}}
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
									<a class="btn" href="{{$xml->getItemEscape("page/backlink/@url")}}">{{$txt['107773::order2_button_back']}}</a>
								{{/if}}
								{{if  $xml->getItem("page/backlink_other/@url")}}
									<a class="btn" href="{{$xml->getItemEscape("page/backlink_other/@url")}}">{{$txt['107773::order2_button_back_other']}}</a>
								{{/if}}
							</div>
						{{/if}}
						<div id="menu_notice" style="display: none;">
							<h2>{{$txt['107773::00_010']}}
							</h2>
							<strong>{{$txt['107773::00_011']}}</strong>
							<div class="menu_notice_button">
								<button onclick="$('#dialog_close').click();" class="prepaid_cancel btn-small">{{$txt['107773::00_012']}}
								</button>
								<button class="prepaid_confirm btn-small">{{$txt['107773::00_013']}}
								</button>
							</div>
							<div class="clearboth">
							</div>
						</div>
						<div id="alert_cover" class="projector_alert_55916" style="display:none" onclick="Alertek.hide_alert();">NIEDASIE
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
