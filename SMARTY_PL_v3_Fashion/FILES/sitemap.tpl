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
						<!--Mapa strony - drzewo (sitemap_tree, 108106.1)-->
						{{capture name="login" assign="login"}}
							{{$txt['108106::client_zone_login']}}
						{{/capture}}
						{{capture name="loginedit" assign="loginedit"}}
							{{$txt['108106::client_zone_loginedit']}}
						{{/capture}}
						{{capture name="address" assign="address"}}
							{{$txt['108106::client_zone_address']}}
						{{/capture}}
						{{capture name="orders_opened" assign="orders_opened"}}
							{{$txt['108106::client_zone_orders_opened']}}
						{{/capture}}
						{{capture name="orders_closed" assign="orders_closed"}}
							{{$txt['108106::client_zone_orders_closed']}}
						{{/capture}}
						{{capture name="affiliate" assign="affiliate"}}
							{{$txt['108106::client_zone_affiliate']}}
						{{/capture}}
						{{capture name="rma" assign="rma"}}
							{{$txt['108106::client_zone_rma']}}
						{{/capture}}
						<div class="sitemap_page_sub">
							<h1 class="big_label">{{$txt['108106::sitemap_header']}}
							</h1>
							<div class="sitemap_mainpage_wrapper">
								<label>{{$txt['108106::zone_tit_1']}}
								</label>
								<ul>
									{{foreach from=$xml->getList("page/sitemap/item[@id='mainpage']/item") item=loop280}}
										<li>
											<a href="{{$loop280->getItemEscape("@link")}}" title="{{$loop280->getItemEscape("@name")}}">{{$loop280->getItemEscape("@name")}}</a>
										</li>
									{{/foreach}}
								</ul>
							</div>
							<div class="sitemap_searchpage_wrapper">
								<label>{{$txt['108106::zone_tit_2']}}
								</label>
								<ul>
									{{foreach from=$xml->getList("page/sitemap/item[@id='searchpage']/item") item=loop296}}
										<li>
											<a href="{{$loop296->getItemEscape("@link")}}" title="{{$loop296->getItemEscape("@name")}}">{{$loop296->getItemEscape("@name")}}</a>
										</li>
									{{/foreach}}
								</ul>
							</div>
							<div class="sitemap_clientpage_wrapper">
								<label>{{$txt['108106::zone_tit_3']}}
								</label>
								<ul>
									{{foreach from=$xml->getList("page/sitemap/item[@id='clientpage']/item") item=loop313}}
										<li>
											<a href="{{$loop313->getItemEscape("@link")}}" {{if $loop313->getItem("@id") == (string)'login'}} title="{{$login}}"{{$login}}{{elseif $loop313->getItem("@id") == (string)'loginedit'}} title="{{$loginedit}}"{{$loginedit}}{{elseif $loop313->getItem("@id") == (string)'address'}} title="{{$address}}"{{$address}}{{elseif $loop313->getItem("@id") == (string)'orders_opened'}} title="{{$orders_opened}}"{{$orders_opened}}{{elseif $loop313->getItem("@id") == (string)'orders_closed'}} title="{{$orders_closed}}"{{$orders_closed}}{{elseif $loop313->getItem("@id") == (string)'affiliate'}} title="{{$affiliate}}"{{$affiliate}}{{elseif $loop313->getItem("@id") == (string)'rma'}} title="{{$rma}}"{{$rma}}{{/if}}></a>
										</li>
									{{/foreach}}
								</ul>
							</div>
							{{if  $xml->getItem("page/sitemap/item/item[@id='categories']")}}
								<div class="sitemap_categories_wrapper">
									<label>{{$xml->getItemEscape("page/sitemap/item/item[@id='categories']/@name")}}
									</label>
									<ul>
										{{foreach from=$xml->getList("page/sitemap/item/item[@id='categories']/item") item=loop331}}
											<li>
												<a href="{{$loop331->getItemEscape("@link")}}" title="{{$loop331->getItemEscape("@name")}}">{{$loop331->getItemEscape("@name")}}</a>
												{{if  $loop331->getItem("item")}}
													<ul>
														{{foreach from=$loop331->getList("item") item=loop337}}
															<li>
																<a href="{{$loop337->getItemEscape("@link")}}" title="{{$loop337->getItemEscape("@name")}}">{{$loop337->getItemEscape("@name")}}</a>
																{{if  $loop337->getItem("item")}}
																	<ul>
																		{{foreach from=$loop337->getList("item") item=loop343}}
																			<li>
																				<a href="{{$loop343->getItemEscape("@link")}}" title="{{$loop343->getItemEscape("@name")}}">{{$loop343->getItemEscape("@name")}}</a>
																				{{if  $loop343->getItem("item")}}
																					<ul>
																						{{foreach from=$loop343->getList("item") item=loop349}}
																							<li>
																								<a href="{{$loop349->getItemEscape("@link")}}" title="{{$loop349->getItemEscape("@name")}}">{{$loop349->getItemEscape("@name")}}</a>
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
										{{foreach from=$xml->getList("page/sitemap/item/item[@id='producers']/item") item=loop378}}
											<li>
												<a href="{{$loop378->getItemEscape("@link")}}" title="{{$loop378->getItemEscape("@name")}}">{{$loop378->getItemEscape("@name")}}</a>
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
										{{foreach from=$xml->getList("page/sitemap/item/item[@id='traits']/item") item=loop394}}
											<li>
												<a href="{{$loop394->getItemEscape("@link")}}" title="{{$loop394->getItemEscape("@name")}}">{{$loop394->getItemEscape("@name")}}</a>
												{{if  $loop394->getItem("item")}}
													<ul>
														{{foreach from=$loop394->getList("item") item=loop400}}
															<li>
																<a href="{{$loop400->getItemEscape("@link")}}" title="{{$loop400->getItemEscape("@name")}}">{{$loop400->getItemEscape("@name")}}</a>
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
										{{foreach from=$xml->getList("page/sitemap/item/item[@id='series']/item") item=loop419}}
											<li>
												<a href="{{$loop419->getItemEscape("@link")}}" title="{{$loop419->getItemEscape("@name")}}">{{$loop419->getItemEscape("@name")}}</a>
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
										{{foreach from=$xml->getList("page/sitemap/item/item[@id='tree1']/item") item=loop435}}
											<li>
												<a href="{{$loop435->getItemEscape("@link")}}" title="{{$loop435->getItemEscape("@name")}}">{{$loop435->getItemEscape("@name")}}</a>
												{{if  $loop435->getItem("item")}}
													<ul>
														{{foreach from=$loop435->getList("item") item=loop441}}
															<li>
																<a href="{{$loop441->getItemEscape("@link")}}" title="{{$loop441->getItemEscape("@name")}}">{{$loop441->getItemEscape("@name")}}</a>
																{{if  $loop441->getItem("item")}}
																	<ul>
																		{{foreach from=$loop441->getList("item") item=loop447}}
																			<li>
																				<a href="{{$loop447->getItemEscape("@link")}}" title="{{$loop447->getItemEscape("@name")}}">{{$loop447->getItemEscape("@name")}}</a>
																				{{if  $loop447->getItem("item")}}
																					<ul>
																						{{foreach from=$loop447->getList("item") item=loop453}}
																							<li>
																								<a href="{{$loop453->getItemEscape("@link")}}" title="{{$loop453->getItemEscape("@name")}}">{{$loop453->getItemEscape("@name")}}</a>
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
										{{foreach from=$xml->getList("page/sitemap/item/item[@id='tree2']/item") item=loop484}}
											<li>
												<a href="{{$loop484->getItemEscape("@link")}}" title="{{$loop484->getItemEscape("@name")}}">{{$loop484->getItemEscape("@name")}}</a>
												{{if  $loop484->getItem("item")}}
													<ul>
														{{foreach from=$loop484->getList("item") item=loop490}}
															<li>
																<a href="{{$loop490->getItemEscape("@link")}}" title="{{$loop490->getItemEscape("@name")}}">{{$loop490->getItemEscape("@name")}}</a>
																{{if  $loop490->getItem("item")}}
																	<ul>
																		{{foreach from=$loop490->getList("item") item=loop496}}
																			<li>
																				<a href="{{$loop496->getItemEscape("@link")}}" title="{{$loop496->getItemEscape("@name")}}">{{$loop496->getItemEscape("@name")}}</a>
																				{{if  $loop496->getItem("item")}}
																					<ul>
																						{{foreach from=$loop496->getList("item") item=loop502}}
																							<li>
																								<a href="{{$loop502->getItemEscape("@link")}}" title="{{$loop502->getItemEscape("@name")}}">{{$loop502->getItemEscape("@name")}}</a>
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
