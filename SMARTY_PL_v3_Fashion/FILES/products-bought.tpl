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
			<script type="text/javascript" src="/gfx/{{$xml->getItemEscape("language/@id")}}/products_bought_list.js.gzip?r=1570606968">			</script>

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
					<aside {{assign "classAttributeTmp1" ""}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}span3{{/capture}}{{if $xml->getItem("page/@type") == (string) 'projector'}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}{{$txt['107419::70925_projector_a_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'search'}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}{{$txt['107419::70925_search_a_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'main'}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}{{$txt['107419::70925_main_a_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'blog-item'}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}{{$txt['107419::70925_blog_item_a_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'blog-list'}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}{{$txt['107419::70925_blog_list_a_class']}}{{/capture}}{{else}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}{{$txt['107419::70925_otherwise_a_class']}}{{/capture}}{{/if}}  class="{{$classAttributeTmp1}}">
						{{include file="component_menu_additional1_106528.tpl"}}
					</aside>
				{{/if}}
				{{if !( $xml->getItem("action/set_render/item")) or ( $xml->getItem("action/set_render/item/@name")  == (string) 'content')}}
					<div {{assign "classAttributeTmp2" ""}}  id="content"{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}span9{{/capture}}{{if $xml->getItem("page/@type") == (string) 'projector'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['107419::70925_projector_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'search'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['107419::70925_search_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'main'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['107419::70925_main_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'navigation'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['107419::70925_navigation_page_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'blog-list'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['107419::70925_blog_list_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'blog-item'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['107419::70925_blog_item_c_class']}}{{/capture}}{{else}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['107419::70925_otherwise_c_class']}}{{/capture}}{{/if}}  class="{{$classAttributeTmp2}}">
						{{include file="component_menu_messages_106608.tpl"}}
						<!--Lista kupionych produktów (products_bought_list, 108037.1)-->
						{{capture name="changePrice" assign="changePrice"}}
							{{$txt['108037::57649_changePrice']}}
						{{/capture}}
						<div class="products_bought row" id="products_bought">
							<div class="col-12">
								<h1 class="big_label">{{$txt['108037::40014_8_listh1']}}
								</h1>
							</div>
							<form class="pb_search_setting pb_top col-12" action="/settings.php">
								{{if !( $xml->getItem("/shop/page/navigation/@disable_sort_change")  == (string) 'y')}}
									<div class="pb_select_sort">
										<label for="select_top_sort">{{$txt['108037::40014_8a']}}
										</label>
										<select class="sort_order" id="select_top_sort" name="sort_order" onchange="submit();">
											<option value="name-a" class="option_name-a" {{if $xml->getItem("page/navigation/@sort") == (string) 'name' and $xml->getItem("page/navigation/@order") == (string) 'a'}} selected="selected" {{/if}}>{{$txt['108037::53599_07']}}
											</option>
											<option value="name-d" class="option_name-d" {{if $xml->getItem("page/navigation/@sort") == (string) 'name' and $xml->getItem("page/navigation/@order") == (string) 'd'}} selected="selected" {{/if}}>{{$txt['108037::53599_08']}}
											</option>
											<option value="price-a"{{if $xml->getItem("page/navigation/@sort") == (string) 'price' and $xml->getItem("page/navigation/@order") == (string) 'a'}} selected="selected"{{/if}}>{{$txt['108037::40014_03']}}
											</option>
											<option value="price-d"{{if $xml->getItem("page/navigation/@sort") == (string) 'price' and $xml->getItem("page/navigation/@order") == (string) 'd'}} selected="selected"{{/if}}>{{$txt['108037::40014_04']}}
											</option>
											<option value="date-a"{{if $xml->getItem("page/navigation/@sort") == (string) 'date' and $xml->getItem("page/navigation/@order") == (string) 'a'}} selected="selected"{{/if}}>{{$txt['108037::40014_05']}}
											</option>
											<option value="date-d"{{if $xml->getItem("page/navigation/@sort") == (string) 'date' and $xml->getItem("page/navigation/@order") == (string) 'd'}} selected="selected"{{/if}}>{{$txt['108037::40014_06']}}
											</option>
										</select>
									</div>
								{{/if}}
								{{if count( $xml->getList("page/navigation/portions"))  gt (string) 1}}
									<div class="pb_select_portions d-none d-md-inline-block">
										<label for="select_top_portions">{{$txt['108037::40014_8']}}
										</label>
										<select class="portions" id="select_top_portions" name="portions" onchange="submit();">
											{{foreach from=$xml->getList("page/navigation/portions") item=loop308}}
												<option value="{{$loop308->getItemEscape("@counter")}}" {{if $loop308->getItem("@selected") == (string) 'true'}} selected="selected" {{/if}}>{{$txt['108037::40014_8ab']}}{{$loop308->getItemEscape("@counter")}}
												</option>
											{{/foreach}}
										</select>
									</div>
								{{/if}}
								{{if count( $xml->getList("page/navigation/item"))}}
									<div id="pb_paging_top" class="pb_paging_top d-none d-md-block">
										<ul class="pagination ">
											{{if count( $xml->getList("page/navigation/item"))  gt (string) 1}}
												{{if  $xml->getItem("page/navigation/prev")}}
													<li>
														<a class="prev" href=" {{$xml->getItem("page/navigation/path/@value")}}{{$xml->getItemEscape("page/navigation/prev/@counter")}}">{{$txt['108037::affiliate_products_002']}}</a>
													</li>
												{{/if}}
												{{if !( $xml->getItem("page/navigation/prev"))}}
													<li class="disabled">
														<span class="prev">{{$txt['108037::affiliate_products_002a']}}</span>
													</li>
												{{/if}}
												{{foreach from=$xml->getList("page/navigation/item") item=loop348}}
													{{if  $loop348->getItem("@gap")}}
														<li class="disabled">
															<span>{{$txt['108037::affiliate_calculations_007']}}</span>
														</li>
													{{/if}}
													{{if !( $loop348->getItem("@type")  == (string) 'current') and !( $loop348->getItem("@gap"))}}
														<li>
															<a href="{{$loop348->getItem("../path/@value")}}{{$loop348->getItemEscape("@counter") - 1}}">{{$loop348->getItemEscape("@counter")}}</a>
														</li>
													{{/if}}
													{{if  $loop348->getItem("@type")  == (string) 'current'}}
														<li class="active">
															<span>{{$loop348->getItemEscape("@counter")}}</span>
														</li>
													{{/if}}
												{{/foreach}}
												{{if  $xml->getItem("page/navigation/next")}}
													<li>
														<a class="next" href="{{$xml->getItem("page/navigation/path/@value")}}{{$xml->getItemEscape("page/navigation/next/@counter")}}">{{$txt['108037::affiliate_products_003']}}</a>
													</li>
												{{/if}}
												{{if !( $xml->getItem("page/navigation/next"))}}
													<li class="disabled">
														<span class="next">{{$txt['108037::affiliate_products_003a']}}</span>
													</li>
												{{/if}}
											{{/if}}
										</ul>
									</div>
								{{/if}}
							</form>
							<div class="col-12">
								<div id="pb_list" class="pb_list">
									<div class="pb_list_header row d-none d-md-flex">
										<div class="pb_header_name col-6">{{$txt['108037::40014_hname']}}
										</div>
										<div class="pb_header_date col-2">{{$txt['108037::40014_hdate']}}
										</div>
										<div class="pb_header_price col-2">{{$txt['108037::40014_hprice']}}
										</div>
									</div>
									<div class="row products_wrapper">
										{{foreach from=$xml->getList("page/products-list/product") item=loop396}}
											<div class="col-md-12 col-sm-4 col-6">
												<div class="pb_product">
													<div class="row align-items-center product_inner_wrapper">
														<div class="col-md-1 col-12 mb-3 mb-md-0">
															<div class="pb_icon">
																<a href="{{$loop396->getItemEscape("@link")}}">
																	<img class="basket_prod rwd-src" alt="Szczegoly" src="/gfx/__IAI_TEMPLATE_LANG_639_1__/loader.gif?r=1570606968" data-src_desktop="{{$loop396->getItemEscape("icon_small")}}" data-src_tablet="{{$loop396->getItemEscape("icon_small")}}" data-src_mobile="{{$loop396->getItemEscape("icon")}}"></img></a>
															</div>
														</div>
														<div class="col-md-5 col-12 mb-3 mb-md-0">
															<div class="pb_info">
																<h2 class="basket_name">
																	<a href="{{$loop396->getItemEscape("@link")}}">{{$loop396->getItem("name/text()")}}</a>
																</h2>
																{{if !( $loop396->getItem("@barcode")  == (string)'')}}
																	<div class="pb_single_info" id="kod_54008x">
																		<span>{{$txt['108037::50001_99']}}</span>{{$loop396->getItemEscape("@barcode")}}
																	</div>
																{{/if}}
																{{if !( $loop396->getItem("sizes/size[@buy_date]/@type") == (string)'uniw')}}
																	<div class="pb_single_info">
																		<span>{{$txt['108037::50001_004']}}</span>{{$loop396->getItemEscape("sizes/size[@buy_date]/@description")}}
																	</div>
																{{/if}}
																{{if ( $loop396->getItem("version")) and (!( $loop396->getItem("version/@product_name") == (string)''))}}
																	<div class="pb_single_info">
																		<span>{{$loop396->getItemEscape("version/@name")}}:</span>{{$loop396->getItemEscape("version/@product_name")}}
																	</div>
																{{/if}}
																{{if  $loop396->getItem("@product_type")  == (string) 'product_bundle'}}
																	<div class="pb_single_info productslist_product_bundle">{{$txt['108037::50001_z001']}}
																		{{foreach from=$loop396->getList("bundled/product") item=loop455}}
																			<span>
																				{{if  $loop455->getItem("size/@ordered")  gt (string) 1}}
																					{{$loop455->getItemEscape("size/@ordered")}}x
																				{{/if}}
																				{{$loop455->getItemEscape("name/text()")}}
																				{{if !( $loop455->getItem("size/@type") == (string)'uniw') or (( $loop455->getItem("version")) and (!( $loop455->getItem("version/@product_name") == (string)'')))}}
																					{{$txt['108037::50001_z002']}}
																					{{if !( $loop455->getItem("size/@type") == (string)'uniw')}}
																						{{$txt['108037::50001_004']}}{{$loop455->getItemEscape("size/@description")}}
																					{{/if}}
																					{{if !( $loop455->getItem("size/@type") == (string)'uniw') and (( $loop455->getItem("version")) and (!( $loop455->getItem("version/@product_name") == (string)'')))}}
																						{{$txt['108037::50001_z003']}}
																					{{/if}}
																					{{if ( $loop455->getItem("version")) and (!( $loop455->getItem("version/@product_name") == (string)''))}}
																						{{$loop455->getItemEscape("version/@name")}}:{{$loop455->getItemEscape("version/@product_name")}}
																					{{/if}}
																					{{$txt['108037::50001_z004']}}
																				{{/if}}
																				{{if  $loop455->getItem("@product_type")  == (string) 'product_virtual'}}
																					<i class="product_virtual">{{$txt['108037::50001_z004v']}}</i>
																				{{/if}}
																				{{if  $loop455->getItem("@product_type")  == (string) 'product_service'}}
																					<i class="product_service">{{$txt['108037::50001_z004s']}}</i>
																				{{/if}}
																				</span>
																		{{/foreach}}
																	</div>
																{{/if}}
															</div>
														</div>
														<div class="col-md-2 col-12 mb-3 mb-md-0">
															<div class="pb_date">
																<span class="d-block d-md-none">{{$txt['108037::40014_hdate']}}</span>{{$loop396->getItemEscape("sizes/size[@buy_date]/@buy_date")}}
															</div>
														</div>
														<div class="col-md-2 col-12 mb-3 mb-md-0">
															<div class="pb_price">
																<span class="d-block d-md-none">{{$txt['108037::40014_hprice']}}</span>
																{{if  $loop396->getItem("sizes/size[@buy_date]/price/@value")  == (string) 0}}
																	<a class="col2_54008x_phone" href="/contact.php">{{$txt['108037::n56465_099_phone']}}</a>
																{{else}}
																	{{if  $loop396->getItem("sizes/size[@buy_date]/price/@maxprice") and  $loop396->getItem("sizes/size[@buy_date]/price/@maxprice")  neq (string) ''}}
																		{{if ( $loop396->getItem("/shop/basket/@wholesaler")  == (string) 'true')}}
																			{{if $changePrice}}
																				<del>{{$loop396->getItemEscape("sizes/size[@buy_date]/price/@maxprice_net_formatted")}}</del>
																			{{else}}
																				<del>{{$loop396->getItemEscape("sizes/size[@buy_date]/price/@maxprice_formatted")}}</del>
																			{{/if}}
																		{{else}}
																			<del>{{$loop396->getItemEscape("sizes/size[@buy_date]/price/@maxprice_formatted")}}</del>
																		{{/if}}
																	{{/if}}
																	{{if ( $loop396->getItem("/shop/basket/@wholesaler")  == (string) 'true')}}
																		{{if $changePrice}}
																			<strong>{{$loop396->getItemEscape("sizes/size[@buy_date]/price/@price_net_formatted")}}</strong>
																		{{else}}
																			<strong>{{$loop396->getItemEscape("sizes/size[@buy_date]/price/@price_formatted")}}</strong>
																		{{/if}}
																	{{else}}
																		<strong>{{$loop396->getItemEscape("sizes/size[@buy_date]/price/@price_formatted")}}</strong>
																	{{/if}}
																{{/if}}
															</div>
														</div>
														<div class="col-md-2 col-12 mb-3 mb-md-0">
															<div class="pb_button">
																{{if  $loop396->getItem("sizes/size[@buy_date]/@amount")  == (string) 0}}
																	<span class="product_unavailable">{{$txt['108037::52600_w004_unavailable']}}</span>
																{{else}}
																	<a class="btn" href="{{$loop396->getItemEscape("add_to_basket")}}" title="{{$txt['108037::52600_w004']}}">{{$txt['108037::52600_w004']}}</a>
																{{/if}}
															</div>
														</div>
													</div>
												</div>
											</div>
										{{/foreach}}
									</div>
								</div>
							</div>
							<form class="pb_search_setting pb_down col-12 d-none d-md-block" action="/settings.php">
								{{if !( $xml->getItem("/shop/page/navigation/@disable_sort_change")  == (string) 'y')}}
									<div class="pb_select_sort">
										<label for="select_top_sort">{{$txt['108037::40014_8a']}}
										</label>
										<select class="sort_order" id="select_top_sort" name="sort_order" onchange="submit();">
											<option value="name-a" class="option_name-a" {{if $xml->getItem("page/navigation/@sort") == (string) 'name' and $xml->getItem("page/navigation/@order") == (string) 'a'}} selected="selected" {{/if}}>{{$txt['108037::53599_07']}}
											</option>
											<option value="name-d" class="option_name-d" {{if $xml->getItem("page/navigation/@sort") == (string) 'name' and $xml->getItem("page/navigation/@order") == (string) 'd'}} selected="selected" {{/if}}>{{$txt['108037::53599_08']}}
											</option>
											<option value="price-a"{{if $xml->getItem("page/navigation/@sort") == (string) 'price' and $xml->getItem("page/navigation/@order") == (string) 'a'}} selected="selected"{{/if}}>{{$txt['108037::40014_03']}}
											</option>
											<option value="price-d"{{if $xml->getItem("page/navigation/@sort") == (string) 'price' and $xml->getItem("page/navigation/@order") == (string) 'd'}} selected="selected"{{/if}}>{{$txt['108037::40014_04']}}
											</option>
											<option value="date-a"{{if $xml->getItem("page/navigation/@sort") == (string) 'date' and $xml->getItem("page/navigation/@order") == (string) 'a'}} selected="selected"{{/if}}>{{$txt['108037::40014_05']}}
											</option>
											<option value="date-d"{{if $xml->getItem("page/navigation/@sort") == (string) 'date' and $xml->getItem("page/navigation/@order") == (string) 'd'}} selected="selected"{{/if}}>{{$txt['108037::40014_06']}}
											</option>
										</select>
									</div>
								{{/if}}
								{{if count( $xml->getList("page/navigation/portions"))  gt (string) 1}}
									<div class="pb_select_portions d-none d-md-inline-block">
										<label for="select_top_portions">{{$txt['108037::40014_8']}}
										</label>
										<select class="portions" id="select_top_portions" name="portions" onchange="submit();">
											{{foreach from=$xml->getList("page/navigation/portions") item=loop566}}
												<option value="{{$loop566->getItemEscape("@counter")}}" {{if $loop566->getItem("@selected") == (string) 'true'}} selected="selected" {{/if}}>{{$txt['108037::40014_8ab']}}{{$loop566->getItemEscape("@counter")}}
												</option>
											{{/foreach}}
										</select>
									</div>
								{{/if}}
								{{if count( $xml->getList("page/navigation/item"))}}
									<div id="pb_paging_bottom" class="pb_paging_bottom">
										<ul class="pagination ">
											{{if count( $xml->getList("page/navigation/item"))  gt (string) 1}}
												{{if  $xml->getItem("page/navigation/prev")}}
													<li>
														<a class="prev" href=" {{$xml->getItem("page/navigation/path/@value")}}{{$xml->getItemEscape("page/navigation/prev/@counter")}}">{{$txt['108037::affiliate_products_002']}}</a>
													</li>
												{{/if}}
												{{if !( $xml->getItem("page/navigation/prev"))}}
													<li class="disabled">
														<span class="prev">{{$txt['108037::affiliate_products_002a']}}</span>
													</li>
												{{/if}}
												{{foreach from=$xml->getList("page/navigation/item") item=loop606}}
													{{if  $loop606->getItem("@gap")}}
														<li class="disabled">
															<span>{{$txt['108037::affiliate_calculations_007']}}</span>
														</li>
													{{/if}}
													{{if !( $loop606->getItem("@type")  == (string) 'current') and !( $loop606->getItem("@gap"))}}
														<li>
															<a href="{{$loop606->getItem("../path/@value")}}{{$loop606->getItemEscape("@counter") - 1}}">{{$loop606->getItemEscape("@counter")}}</a>
														</li>
													{{/if}}
													{{if  $loop606->getItem("@type")  == (string) 'current'}}
														<li class="active">
															<span>{{$loop606->getItemEscape("@counter")}}</span>
														</li>
													{{/if}}
												{{/foreach}}
												{{if  $xml->getItem("page/navigation/next")}}
													<li>
														<a class="next" href="{{$xml->getItem("page/navigation/path/@value")}}{{$xml->getItemEscape("page/navigation/next/@counter")}}">{{$txt['108037::affiliate_products_003']}}</a>
													</li>
												{{/if}}
												{{if !( $xml->getItem("page/navigation/next"))}}
													<li class="disabled">
														<span class="next">{{$txt['108037::affiliate_products_003a']}}</span>
													</li>
												{{/if}}
											{{/if}}
										</ul>
									</div>
								{{/if}}
							</form>
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
