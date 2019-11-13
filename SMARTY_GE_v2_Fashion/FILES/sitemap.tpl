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
						<!--Mapa strony - drzewo (sitemap_tree, 77149.1)-->
						{{capture name="login" assign="login"}}
							{{$txt['77149::client_zone_login']}}
						{{/capture}}
						{{capture name="loginedit" assign="loginedit"}}
							{{$txt['77149::client_zone_loginedit']}}
						{{/capture}}
						{{capture name="address" assign="address"}}
							{{$txt['77149::client_zone_address']}}
						{{/capture}}
						{{capture name="orders_opened" assign="orders_opened"}}
							{{$txt['77149::client_zone_orders_opened']}}
						{{/capture}}
						{{capture name="orders_closed" assign="orders_closed"}}
							{{$txt['77149::client_zone_orders_closed']}}
						{{/capture}}
						{{capture name="affiliate" assign="affiliate"}}
							{{$txt['77149::client_zone_affiliate']}}
						{{/capture}}
						{{capture name="rma" assign="rma"}}
							{{$txt['77149::client_zone_rma']}}
						{{/capture}}
						<div class="sitemap_page_sub">
							<h1 class="big_label">{{$txt['77149::sitemap_header']}}
							</h1>
							<div class="sitemap_mainpage_wrapper">
								<label>{{$txt['77149::zone_tit_1']}}
								</label>
								<ul>
									{{foreach from=$xml->getList("page/sitemap/item[@id='mainpage']/item") item=loop279}}
										<li>
											<a href="{{$loop279->getItemEscape("@link")}}" title="{{$loop279->getItemEscape("@name")}}">{{$loop279->getItemEscape("@name")}}</a>
										</li>
									{{/foreach}}
								</ul>
							</div>
							<div class="sitemap_searchpage_wrapper">
								<label>{{$txt['77149::zone_tit_2']}}
								</label>
								<ul>
									{{foreach from=$xml->getList("page/sitemap/item[@id='searchpage']/item") item=loop295}}
										<li>
											<a href="{{$loop295->getItemEscape("@link")}}" title="{{$loop295->getItemEscape("@name")}}">{{$loop295->getItemEscape("@name")}}</a>
										</li>
									{{/foreach}}
								</ul>
							</div>
							<div class="sitemap_clientpage_wrapper">
								<label>{{$txt['77149::zone_tit_3']}}
								</label>
								<ul>
									{{foreach from=$xml->getList("page/sitemap/item[@id='clientpage']/item") item=loop312}}
										<li>
											<a href="{{$loop312->getItemEscape("@link")}}" {{if $loop312->getItem("@id") == (string)'login'}} title="{{$login}}"{{$login}}{{elseif $loop312->getItem("@id") == (string)'loginedit'}} title="{{$loginedit}}"{{$loginedit}}{{elseif $loop312->getItem("@id") == (string)'address'}} title="{{$address}}"{{$address}}{{elseif $loop312->getItem("@id") == (string)'orders_opened'}} title="{{$orders_opened}}"{{$orders_opened}}{{elseif $loop312->getItem("@id") == (string)'orders_closed'}} title="{{$orders_closed}}"{{$orders_closed}}{{elseif $loop312->getItem("@id") == (string)'affiliate'}} title="{{$affiliate}}"{{$affiliate}}{{elseif $loop312->getItem("@id") == (string)'rma'}} title="{{$rma}}"{{$rma}}{{/if}}></a>
										</li>
									{{/foreach}}
								</ul>
							</div>
							{{if  $xml->getItem("page/sitemap/item/item[@id='categories']")}}
								<div class="sitemap_categories_wrapper">
									<label>{{$xml->getItemEscape("page/sitemap/item/item[@id='categories']/@name")}}
									</label>
									<ul>
										{{foreach from=$xml->getList("page/sitemap/item/item[@id='categories']/item") item=loop330}}
											<li>
												<a href="{{$loop330->getItemEscape("@link")}}" title="{{$loop330->getItemEscape("@name")}}">{{$loop330->getItemEscape("@name")}}</a>
												{{if  $loop330->getItem("item")}}
													<ul>
														{{foreach from=$loop330->getList("item") item=loop336}}
															<li>
																<a href="{{$loop336->getItemEscape("@link")}}" title="{{$loop336->getItemEscape("@name")}}">{{$loop336->getItemEscape("@name")}}</a>
																{{if  $loop336->getItem("item")}}
																	<ul>
																		{{foreach from=$loop336->getList("item") item=loop342}}
																			<li>
																				<a href="{{$loop342->getItemEscape("@link")}}" title="{{$loop342->getItemEscape("@name")}}">{{$loop342->getItemEscape("@name")}}</a>
																				{{if  $loop342->getItem("item")}}
																					<ul>
																						{{foreach from=$loop342->getList("item") item=loop348}}
																							<li>
																								<a href="{{$loop348->getItemEscape("@link")}}" title="{{$loop348->getItemEscape("@name")}}">{{$loop348->getItemEscape("@name")}}</a>
																							</li>
																						{{/foreach}}
																					</ul>
																				{{/if}}
																			</li>
																		{{/foreach}}
																	</ul>
																{{/if}}
															</li>
														{{/foreach}}
													</ul>
												{{/if}}
											</li>
										{{/foreach}}
									</ul>
								</div>
							{{/if}}
							{{if  $xml->getItem("page/sitemap/item/item[@id='producers']")}}
								<div class="sitemap_categories_wrapper">
									<label>{{$xml->getItemEscape("page/sitemap/item/item[@id='producers']/@name")}}
									</label>
									<ul>
										{{foreach from=$xml->getList("page/sitemap/item/item[@id='producers']/item") item=loop377}}
											<li>
												<a href="{{$loop377->getItemEscape("@link")}}" title="{{$loop377->getItemEscape("@name")}}">{{$loop377->getItemEscape("@name")}}</a>
											</li>
										{{/foreach}}
									</ul>
								</div>
							{{/if}}
							{{if  $xml->getItem("page/sitemap/item/item[@id='traits']")}}
								<div class="sitemap_traits_wrapper">
									<label>{{$xml->getItemEscape("page/sitemap/item/item[@id='traits']/@name")}}
									</label>
									<ul>
										{{foreach from=$xml->getList("page/sitemap/item/item[@id='traits']/item") item=loop393}}
											<li>
												<a href="{{$loop393->getItemEscape("@link")}}" title="{{$loop393->getItemEscape("@name")}}">{{$loop393->getItemEscape("@name")}}</a>
												{{if  $loop393->getItem("item")}}
													<ul>
														{{foreach from=$loop393->getList("item") item=loop399}}
															<li>
																<a href="{{$loop399->getItemEscape("@link")}}" title="{{$loop399->getItemEscape("@name")}}">{{$loop399->getItemEscape("@name")}}</a>
															</li>
														{{/foreach}}
													</ul>
												{{/if}}
											</li>
										{{/foreach}}
									</ul>
								</div>
							{{/if}}
							{{if  $xml->getItem("page/sitemap/item/item[@id='series']")}}
								<div class="sitemap_series_wrapper">
									<label>{{$xml->getItemEscape("page/sitemap/item/item[@id='series']/@name")}}
									</label>
									<ul>
										{{foreach from=$xml->getList("page/sitemap/item/item[@id='series']/item") item=loop418}}
											<li>
												<a href="{{$loop418->getItemEscape("@link")}}" title="{{$loop418->getItemEscape("@name")}}">{{$loop418->getItemEscape("@name")}}</a>
											</li>
										{{/foreach}}
									</ul>
								</div>
							{{/if}}
							{{if  $xml->getItem("page/sitemap/item/item[@id='tree1']")}}
								<div class="sitemap_tree1_wrapper">
									<label>{{$xml->getItemEscape("page/sitemap/item/item[@id='tree1']/@name")}}
									</label>
									<ul>
										{{foreach from=$xml->getList("page/sitemap/item/item[@id='tree1']/item") item=loop434}}
											<li>
												<a href="{{$loop434->getItemEscape("@link")}}" title="{{$loop434->getItemEscape("@name")}}">{{$loop434->getItemEscape("@name")}}</a>
												{{if  $loop434->getItem("item")}}
													<ul>
														{{foreach from=$loop434->getList("item") item=loop440}}
															<li>
																<a href="{{$loop440->getItemEscape("@link")}}" title="{{$loop440->getItemEscape("@name")}}">{{$loop440->getItemEscape("@name")}}</a>
																{{if  $loop440->getItem("item")}}
																	<ul>
																		{{foreach from=$loop440->getList("item") item=loop446}}
																			<li>
																				<a href="{{$loop446->getItemEscape("@link")}}" title="{{$loop446->getItemEscape("@name")}}">{{$loop446->getItemEscape("@name")}}</a>
																				{{if  $loop446->getItem("item")}}
																					<ul>
																						{{foreach from=$loop446->getList("item") item=loop452}}
																							<li>
																								<a href="{{$loop452->getItemEscape("@link")}}" title="{{$loop452->getItemEscape("@name")}}">{{$loop452->getItemEscape("@name")}}</a>
																							</li>
																						{{/foreach}}
																					</ul>
																				{{/if}}
																			</li>
																		{{/foreach}}
																	</ul>
																{{/if}}
															</li>
														{{/foreach}}
													</ul>
												{{/if}}
											</li>
										{{/foreach}}
									</ul>
								</div>
							{{/if}}
							{{if  $xml->getItem("page/sitemap/item/item[@id='tree2']")}}
								<div class="sitemap_tree1_wrapper">
									<label>{{$xml->getItemEscape("page/sitemap/item/item[@id='tree2']/@name")}}
									</label>
									<ul>
										{{foreach from=$xml->getList("page/sitemap/item/item[@id='tree2']/item") item=loop483}}
											<li>
												<a href="{{$loop483->getItemEscape("@link")}}" title="{{$loop483->getItemEscape("@name")}}">{{$loop483->getItemEscape("@name")}}</a>
												{{if  $loop483->getItem("item")}}
													<ul>
														{{foreach from=$loop483->getList("item") item=loop489}}
															<li>
																<a href="{{$loop489->getItemEscape("@link")}}" title="{{$loop489->getItemEscape("@name")}}">{{$loop489->getItemEscape("@name")}}</a>
																{{if  $loop489->getItem("item")}}
																	<ul>
																		{{foreach from=$loop489->getList("item") item=loop495}}
																			<li>
																				<a href="{{$loop495->getItemEscape("@link")}}" title="{{$loop495->getItemEscape("@name")}}">{{$loop495->getItemEscape("@name")}}</a>
																				{{if  $loop495->getItem("item")}}
																					<ul>
																						{{foreach from=$loop495->getList("item") item=loop501}}
																							<li>
																								<a href="{{$loop501->getItemEscape("@link")}}" title="{{$loop501->getItemEscape("@name")}}">{{$loop501->getItemEscape("@name")}}</a>
																							</li>
																						{{/foreach}}
																					</ul>
																				{{/if}}
																			</li>
																		{{/foreach}}
																	</ul>
																{{/if}}
															</li>
														{{/foreach}}
													</ul>
												{{/if}}
											</li>
										{{/foreach}}
									</ul>
								</div>
							{{/if}}
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
