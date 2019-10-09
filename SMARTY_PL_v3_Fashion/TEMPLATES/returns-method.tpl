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
						<!--Zwroty metoda CMS (returns_methods_cms, 69373.1)-->
						{{if  $xml->getItem("page/text/body")}}
							<div class="returns_cms">
								<div class="returns_cms_sub">{{$xml->getItem("page/text/body")}}
								</div>
							</div>
						{{/if}}
						<!--Zwroty metoda (returns_methods_form, 107776.1)-->
						{{if  $xml->getItem("page/@type")  == (string) 'return_products' and  $xml->getItem("page/@display")  == (string) 'method'}}
							{{capture name="n69372_icon_txt" assign="n69372_icon_txt"}}
								{{$txt['107776::69372_icon']}}
							{{/capture}}
							{{capture name="n69372_p_txt" assign="n69372_p_txt"}}
								{{$txt['107776::69372_kpz']}}
							{{/capture}}
							{{capture name="n69372_shipping_title" assign="n69372_shipping_title"}}
								{{$txt['107776::n69372_shipping_title']}}
							{{/capture}}
							<div class="step3">
								<div class="progress_bar_wrapper pb_step3">
									<div class="_progress_bar">
									</div>
									<div class="_step _step1">
										<span>
											1</span>
										<p>
											<i></i>{{$txt['107776::step1_txt']}}
										</p>
									</div>
									<div class="_step _step2">
										<span>2</span>
										<p>
											<i></i>{{$txt['107776::step2_txt']}}
										</p>
									</div>
									<div class="_step _step3">
										<span>3</span>
										<p>
											<i></i>{{$txt['107776::step3_txt']}}
										</p>
									</div>
									<div class="_step _step4">
										<span>4</span>
										<p>
											<i></i>{{$txt['107776::step4_txt']}}
										</p>
									</div>
									<div class="_step _step5">
										<span>5</span>
										<p>
											<i></i>{{$txt['107776::step5_txt']}}
										</p>
									</div>
									<div class="_step _step6">
										<span>6</span>
										<p>
											<i></i>{{$txt['107776::step6_txt']}}
										</p>
									</div>
								</div>
								<h1 class="big_label return_label">{{$txt['107776::51900_00634']}}
								</h1>
								<form class="return_type">
									{{if count( $xml->getList("page/return_methods/return_method"))  gt (string) 1}}
										<div class="return_container row">
											{{foreach from=$xml->getList("page/return_methods/return_method") item=loop356}}
												<div class="col-12 col-sm-6">
													<div {{assign "classAttributeTmp3" ""}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}return_type choose_return_type{{/capture}}{{if $loop356->getItem("@checked") == (string) 'true'}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}return_type choose_return_type active{{/capture}}{{/if}}{{if $loop356->getItem("/shop/client_data/@phone") and $loop356->getItem("/shop/client_data/@phone") == (string) '' and $loop356->getItem("@id") == (string) 4}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}return_type choose_return_type disabled_inpost{{/capture}}{{/if}}  class="{{$classAttributeTmp3}}">
														<input class="return_type" name="return_type" type="radio" {{if $loop356->getItem("@checked") == (string) 'true'}} checked="checked"{{/if}} value="{{$loop356->getItemEscape("@id")}}"></input>
														<div class="return_inner">
															<div class="return_inner_content">
																<div class="return_name">
																	{{if  $loop356->getItem("@id")  == (string) 1}}
																		{{$txt['107776::51900_1']}}
																	{{elseif  $loop356->getItem("@id")  == (string) 2}}
																		{{$txt['107776::51900_2']}}
																	{{elseif  $loop356->getItem("@id")  == (string) 3}}
																		{{$txt['107776::51900_3']}}
																	{{elseif  $loop356->getItem("@name")}}
																		{{$loop356->getItemEscape("@name")}}
																	{{/if}}
																</div>
																<div class="return_desc">
																	{{if  $loop356->getItem("@id")  == (string) 1}}
																		{{$txt['107776::51900_1_d']}}
																	{{elseif  $loop356->getItem("@id")  == (string) 2 and  $loop356->getItem("@shipping_cost")  == (string) 'client' and !( $loop356->getItem("/shop/page/return_methods/@shipping_balanced_refund")  == (string) 'true')}}
																		{{$txt['107776::51900_2_d']}}
																	{{elseif  $loop356->getItem("@id")  == (string) 2 and  $loop356->getItem("@shipping_cost")  == (string) 'shop'}}
																		{{$txt['107776::51900_2_d6785_shop']}}
																	{{elseif  $loop356->getItem("@id")  == (string) 3}}
																		{{$txt['107776::51900_3_d']}}
																	{{elseif  $loop356->getItem("@description")}}
																		{{$loop356->getItemEscape("@description")}}
																	{{/if}}
																</div>
																{{if count( $loop356->getList("method_params/param"))  gt (string) 0}}
																	<div class="return_methods_params">
																		{{foreach from=$loop356->getList("method_params/param") item=loop394}}
																			<div class="return_methods_param">
																				<input type="radio" name="method_param" id="{{$loop394->getItemEscape("@id")}}" value="{{$loop394->getItemEscape("@value")}}"></input>
																				<label for="{{$loop394->getItemEscape("@id")}}">
																					<strong>{{$loop394->getItemEscape("@name")}}</strong>&#160;#160;{{$loop394->getItemEscape("@description")}}
																				</label>
																				{{if  $loop394->getItem("@confirmation_message") and !( $loop394->getItem("@confirmation_message")  == (string) '')}}
																					<div class="return_confirmation_message">{{$loop394->getItemEscape("@confirmation_message")}}
																					</div>
																				{{/if}}
																			</div>
																		{{/foreach}}
																	</div>
																{{/if}}
															</div>
															{{if $n69372_icon_txt and  $loop356->getItem("@icon")}}
																<img class="n69372_icon" src="{{$loop356->getItemEscape("@icon")}}" alt="{{$loop356->getItemEscape("@name")}}"></img>
															{{/if}}
														</div>
														{{if $n69372_shipping_title and   $loop356->getItem("/shop/page/return_methods/@shipping_balanced_refund")  == (string) 'true' and ( $loop356->getItem("@id")  == (string) 2 or  $loop356->getItem("@id")  == (string) 4)}}
															<div class="n69372_shipping_balance">
																<strong>{{$txt['107776::n69372_shipping_title']}}</strong>
																<div>{{$txt['107776::n69372_shipping_balance']}}
																</div>
															</div>
														{{/if}}
														{{if $n69372_p_txt and   $loop356->getItem("shipping/delivery")}}
															<div class="return_methods_label">
																<span class="return_methods_labe1">{{$n69372_p_txt}}</span>
																<span class="return_methods_labe2">{{$txt['107776::51900_3_koszt']}}</span>
															</div>
															{{foreach from=$loop356->getList("shipping/delivery") item=loop438}}
																<div class="return_desc_price">
																	<label>{{$loop438->getItemEscape("@name")}}
																	</label>
																	<span class="price">
																		{{if  $loop438->getItem("@value")  == (string) 0}}
																			{{$txt['107776::51900_3_gratis']}}
																		{{else}}
																			{{$loop438->getItemEscape("@value_formatted")}}
																		{{/if}}
																		</span>
																</div>
															{{/foreach}}
															<div class="return_methods_info">{{$txt['107776::51900_3_forma']}}
															</div>
														{{/if}}
													</div>
												</div>
											{{/foreach}}
										</div>
									{{else}}
										<div class="return_type_one">
											{{foreach from=$xml->getList("page/return_methods/return_method") item=loop463}}
												<input class="return_type" name="return_type" type="radio" value="{{$loop463->getItemEscape("@id")}}" checked="checked"></input>
												<div class="return_one_name">
													{{if  $loop463->getItem("@id")  == (string) 1}}
														{{$txt['107776::51900_1']}}
													{{elseif  $loop463->getItem("@id")  == (string) 2}}
														{{$txt['107776::51900_2']}}
													{{elseif  $loop463->getItem("@id")  == (string) 3}}
														{{$txt['107776::51900_3']}}
													{{elseif  $loop463->getItem("@name")}}
														{{$loop463->getItemEscape("@name")}}
													{{/if}}
												</div>
												<div class="return_one_desc">
													{{if  $loop463->getItem("@id")  == (string) 1}}
														{{$txt['107776::51900_1_d']}}
													{{elseif  $loop463->getItem("@id")  == (string) 2}}
														{{$txt['107776::51900_2_d']}}
													{{elseif  $loop463->getItem("@id")  == (string) 3}}
														{{$txt['107776::51900_3_d']}}
													{{elseif  $loop463->getItem("@description")}}
														{{$loop463->getItemEscape("@description")}}
													{{/if}}
												</div>
												{{if count( $loop463->getList("method_params/param"))  gt (string) 0}}
													<div class="return_methods_params">
														{{foreach from=$loop463->getList("method_params/param") item=loop493}}
															<div class="return_methods_param">
																<input type="radio" name="method_param" id="{{$loop493->getItemEscape("@id")}}" value="{{$loop493->getItemEscape("@value")}}"></input>
																<label for="{{$loop493->getItemEscape("@id")}}">
																	<strong>{{$loop493->getItemEscape("@name")}}</strong>&#160;#160;{{$loop493->getItemEscape("@description")}}
																</label>
																{{if  $loop493->getItem("@confirmation_message") and !( $loop493->getItem("@confirmation_message")  == (string) '')}}
																	<div class="return_confirmation_message">{{$loop493->getItemEscape("@confirmation_message")}}
																	</div>
																{{/if}}
															</div>
														{{/foreach}}
													</div>
												{{/if}}
											{{/foreach}}
										</div>
									{{/if}}
									<div class="returns_summary_buttons table_display">
										<div class="btn_wrapper backlink">
											{{if  $xml->getItem("page/backlink/@url")}}
												<a class="btn" href="{{$xml->getItemEscape("page/backlink/@url")}}">{{$txt['107776::order2_button_back']}}</a>
											{{/if}}
										</div>
										<div class="btn_wrapper">
											<button id="return_go_next" type="submit" class="n53706_button1 btn-large btn_arrow">{{$txt['107776::50001_10a']}}
											</button>
										</div>
									</div>
								</form>
							</div>
						{{/if}}
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
