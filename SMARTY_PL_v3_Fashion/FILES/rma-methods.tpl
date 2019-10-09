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
						<!--Rma metoda reklamacji CMS (rma_methods_cms, 85235.1)-->
						{{if  $xml->getItem("page/text/body")}}
							<div class="returns_cms">
								<div class="returns_cms_sub">{{$xml->getItem("page/text/body")}}
								</div>
							</div>
						{{/if}}
						<!--Rma metoda reklamacji (rma_methods_form, 107099.1)-->
						{{if  $xml->getItem("page/@type")  == (string) 'rma_products' and  $xml->getItem("page/@display")  == (string) 'method'}}
							{{capture name="n69372_icon_txt" assign="n69372_icon_txt"}}
								{{$txt['107099::69372_icon']}}
							{{/capture}}
							{{capture name="n69372_p_txt" assign="n69372_p_txt"}}
								{{$txt['107099::69372_kpz']}}
							{{/capture}}
							{{capture name="n69372_shipping_title" assign="n69372_shipping_title"}}
								{{$txt['107099::n69372_shipping_title']}}
							{{/capture}}
							<div class="step3">
								<div {{assign "classAttributeTmp3" ""}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}progress_bar_wrapper{{/capture}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}progress_bar_wrapper pb_step3 rma_progress_bar{{/capture}}  class="{{$classAttributeTmp3}}">
									<div class="_progress_bar">
									</div>
									<div class="_step _step1">
										<span>
											1</span>
										<p>
											<i></i>{{$txt['107099::step1_txt']}}
										</p>
									</div>
									<div class="_step _step2">
										<span>2</span>
										<p>
											<i></i>{{$txt['107099::step2_txt']}}
										</p>
									</div>
									<div class="_step _step3">
										<span>3</span>
										<p>
											<i></i>{{$txt['107099::step3_txt']}}
										</p>
									</div>
									<div class="_step _step4">
										<span>4</span>
										<p>
											<i></i>{{$txt['107099::step4_txt']}}
										</p>
									</div>
									<div class="_step _step5">
										<span>5</span>
										<p>
											<i></i>{{$txt['107099::step5_txt']}}
										</p>
									</div>
									<div class="_step _step6">
										<span>6</span>
										<p>
											<i></i>{{$txt['107099::step6_txt']}}
										</p>
									</div>
								</div>
								<h1 class="big_label return_label">{{$txt['107099::51900_00634']}}
								</h1>
								<form class="return_type">
									{{if count( $xml->getList("page/rma_methods/rma_method"))  gt (string) 1}}
										<div class="return_container">
											{{foreach from=$xml->getList("page/rma_methods/rma_method") item=loop365}}
												<div {{assign "classAttributeTmp4" ""}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}return_type choose_return_type{{/capture}}{{if $loop365->getItem("@checked") == (string) 'true'}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}return_type choose_return_type active{{/capture}}{{/if}}{{if $loop365->getItem("/shop/client_data/@phone") and $loop365->getItem("/shop/client_data/@phone") == (string) '' and $loop365->getItem("@id") == (string) 4}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}return_type choose_return_type disabled_inpost{{/capture}}{{/if}}  class="{{$classAttributeTmp4}}">
													<input class="return_type" name="rma_type" type="radio" {{if $loop365->getItem("@checked") == (string) 'true'}} checked="checked"{{/if}} value="{{$loop365->getItemEscape("@id")}}"></input>
													<div class="return_inner">
														<div class="return_inner_content">
															<div class="return_name">
																{{if  $loop365->getItem("@name")}}
																	{{$loop365->getItemEscape("@name")}}
																{{elseif  $loop365->getItem("@id")  == (string) 1}}
																	{{$txt['107099::51900_1']}}
																{{elseif  $loop365->getItem("@id")  == (string) 2}}
																	{{$txt['107099::51900_2']}}
																{{elseif  $loop365->getItem("@id")  == (string) 3}}
																	{{$txt['107099::51900_3']}}
																{{/if}}
															</div>
															<div class="return_desc">
																{{if  $loop365->getItem("@description")}}
																	{{$loop365->getItemEscape("@description")}}
																{{elseif  $loop365->getItem("@id")  == (string) 1}}
																	{{$txt['107099::51900_1_d']}}
																{{elseif  $loop365->getItem("@id")  == (string) 2 and  $loop365->getItem("@shipping_cost") == (string)'client'}}
																	{{$txt['107099::51900_2_d']}}
																{{elseif  $loop365->getItem("@id")  == (string) 2 and  $loop365->getItem("@shipping_cost") == (string)'shop'}}
																	{{$txt['107099::51900_2_bezkosztowa']}}
																{{elseif  $loop365->getItem("@id")  == (string) 3}}
																	{{$txt['107099::51900_3_d']}}
																{{/if}}
															</div>
															{{if $n69372_p_txt and   $loop365->getItem("shipping/delivery")}}
																{{if $n69372_shipping_title and   $loop365->getItem("/shop/page/return_methods/@shipping_balanced_refund")  == (string) 'true'}}
																	<div class="n69372_shipping_balance">
																		<strong>{{$txt['107099::n69372_shipping_title']}}</strong>
																		<div>{{$txt['107099::n69372_shipping_balance']}}
																		</div>
																	</div>
																{{/if}}
																<div class="return_methods_label">
																	<span class="return_methods_labe1">{{$n69372_p_txt}}</span>
																	<span class="return_methods_labe2">{{$txt['107099::51900_3_koszt']}}</span>
																</div>
																{{foreach from=$loop365->getList("shipping/delivery") item=loop416}}
																	<div class="return_desc_price">
																		<label>{{$loop416->getItemEscape("@name")}}
																		</label>
																		<span class="price">
																			{{if  $loop416->getItem("@value")  == (string) 0}}
																				{{$txt['107099::51900_3_gratis']}}
																			{{else}}
																				{{$loop416->getItemEscape("@value_formatted")}}
																			{{/if}}
																			</span>
																	</div>
																{{/foreach}}
																<div class="return_methods_info">{{$txt['107099::51900_3_forma']}}
																</div>
															{{/if}}
														</div>
														{{if $n69372_icon_txt and  $loop365->getItem("@icon")}}
															<img class="n69372_icon" src="{{$loop365->getItemEscape("@icon")}}" alt="{{$loop365->getItemEscape("@name")}}"></img>
														{{/if}}
														{{if count( $loop365->getList("method_params/param"))  gt (string) 0}}
															<div class="return_methods_params">
																{{foreach from=$loop365->getList("method_params/param") item=loop443}}
																	<div class="return_methods_param">
																		<input type="radio" name="method_param" id="{{$loop443->getItemEscape("@id")}}" value="{{$loop443->getItemEscape("@value")}}"></input>
																		<label for="{{$loop443->getItemEscape("@id")}}">
																			<strong>{{$loop443->getItemEscape("@name")}}</strong>&#160;#160;{{$loop443->getItemEscape("@description")}}
																		</label>
																		{{if  $loop443->getItem("@confirmation_message") and !( $loop443->getItem("@confirmation_message")  == (string) '')}}
																			<div class="return_confirmation_message">{{$loop443->getItemEscape("@confirmation_message")}}
																			</div>
																		{{/if}}
																	</div>
																{{/foreach}}
															</div>
														{{/if}}
													</div>
												</div>
											{{/foreach}}
										</div>
									{{else}}
										<div class="return_type_one">
											{{foreach from=$xml->getList("page/rma_methods/rma_method") item=loop471}}
												<input class="return_type" name="rma_type" type="radio" value="{{$loop471->getItemEscape("@id")}}" checked="checked"></input>
												<div class="return_one_name">
													{{if  $loop471->getItem("@name")}}
														{{$loop471->getItemEscape("@name")}}
													{{elseif  $loop471->getItem("@id")  == (string) 1}}
														{{$txt['107099::51900_1']}}
													{{elseif  $loop471->getItem("@id")  == (string) 2}}
														{{$txt['107099::51900_2']}}
													{{elseif  $loop471->getItem("@id")  == (string) 3}}
														{{$txt['107099::51900_3']}}
													{{/if}}
												</div>
												<div class="return_one_desc">
													{{if  $loop471->getItem("@description")}}
														{{$loop471->getItemEscape("@description")}}
													{{elseif  $loop471->getItem("@id")  == (string) 1}}
														{{$txt['107099::51900_1_d']}}
													{{elseif  $loop471->getItem("@id")  == (string) 2 and  $loop471->getItem("@shipping_cost") == (string)'client'}}
														{{$txt['107099::51900_2_d']}}
													{{elseif  $loop471->getItem("@id")  == (string) 2 and  $loop471->getItem("@shipping_cost") == (string)'shop'}}
														{{$txt['107099::51900_2_bezkosztowa']}}
													{{elseif  $loop471->getItem("@id")  == (string) 3}}
														{{$txt['107099::51900_3_d']}}
													{{/if}}
												</div>
												{{if count( $loop471->getList("method_params/param"))  gt (string) 0}}
													<div class="return_methods_params">
														{{foreach from=$loop471->getList("method_params/param") item=loop503}}
															<div class="return_methods_param">
																<input type="radio" name="method_param" id="{{$loop503->getItemEscape("@id")}}" value="{{$loop503->getItemEscape("@value")}}"></input>
																<label for="{{$loop503->getItemEscape("@id")}}">
																	<strong>{{$loop503->getItemEscape("@name")}}</strong>&#160;#160;{{$loop503->getItemEscape("@description")}}
																</label>
																{{if  $loop503->getItem("@confirmation_message") and !( $loop503->getItem("@confirmation_message")  == (string) '')}}
																	<div class="return_confirmation_message">{{$loop503->getItemEscape("@confirmation_message")}}
																	</div>
																{{/if}}
															</div>
														{{/foreach}}
													</div>
												{{/if}}
											{{/foreach}}
										</div>
									{{/if}}
									{{if  $xml->getItem("page/rma_deliveries/rma_delivery/delivery")}}
										<div class="return_delivery_form">
											<h1 class="big_label return_label">{{$txt['107099::51900_00634aw']}}
											</h1>
											{{foreach from=$xml->getList("page/rma_deliveries/rma_delivery") item=loop531}}
												<div class="return_delitem_items" id="delitem_item{{$loop531->getItemEscape("@rma_method_id")}}">
													{{foreach from=$loop531->getList("delivery") item=loop535}}
														<div {{assign "classAttributeTmp5" ""}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}return_delitem{{/capture}} id="delivery_{{$loop535->getItemEscape("@id")}}" {{if $loop535->getItem("@checked") == (string) 'true'}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}return_delitem active{{/capture}}{{/if}}{{if $loop535->getItem("/shop/client_data/@phone") and $loop535->getItem("/shop/client_data/@phone") == (string) '' and $loop535->getItem("@id") == (string) $loop535->getItem("21-1")}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}return_delitem disabled_inpost{{/capture}}{{/if}}  class="{{$classAttributeTmp5}}">
															<div class="order1_delitem_sub">
																<span class="order1_delitem_radio" style="display:none;">
																	<input type="radio" name="shipping" class="order1_delitem_radio" value="{{$loop535->getItemEscape("@id")}}" {{if $loop535->getItem("@checked") == (string) 'true'}} checked="checked"{{/if}} title="{{$loop535->getItemEscape("@comment")}}"></input></span>
																<div class="order1_delitem_header">
																	{{if  $loop535->getItem("@icon")}}
																		<img class="order1_delitem_icon" src="{{$loop535->getItemEscape("@icon")}}" alt="{{$loop535->getItemEscape("@name")}}" title="{{$loop535->getItemEscape("@name")}}"></img>
																	{{/if}}
																	<span class="order1_delitem_name">{{$loop535->getItemEscape("@name")}}
																		<div class="order1_delitem_time">
																			<span class="order1_delitem_time">{{$txt['107099::53687_0990']}}
																				{{if ( $loop535->getItem("@deliverytime_days")  == (string) 0) and ( $loop535->getItem("@deliverytime_hours")  == (string) 0) and ( $loop535->getItem("@deliverytime_minutes")  == (string) 0)}}
																					{{$txt['107099::53687_0991a']}}
																				{{else}}
																					{{if  $loop535->getItem("@deliverytime_days")  gt (string) 0}}
																						{{$loop535->getItemEscape("@deliverytime_days")}}
																						{{if  $loop535->getItem("@deliverytime_days")  == (string)'1'}}
																							{{$txt['107099::53706_003c']}}
																						{{else}}
																							{{$txt['107099::53706_003b']}}
																						{{/if}}
																					{{/if}}
																					{{if  $loop535->getItem("@deliverytime_hours")  gt (string) 0}}
																						{{$loop535->getItemEscape("@deliverytime_hours")}}{{$txt['107099::53706_003godz']}}
																					{{/if}}
																					{{if  $loop535->getItem("@deliverytime_minutes")  gt (string) 0}}
																						{{$loop535->getItemEscape("@deliverytime_minutes")}}{{$txt['107099::53706_003min']}}
																					{{/if}}
																				{{/if}}
																				</span>
																		</div>
																		<div class="order1_delitem_comment" style="display:none;" id="delivery_{{$loop535->getItemEscape("@id")}}">
																		</div></span>
																</div>
																{{if !( $loop535->getItem("/shop/page/order1/shipping/@hide_cost") == (string)'true')}}
																	<div class="order1_delitem_pricebox">
																		{{if  $loop535->getItem("@points_enabled")  == (string) 'false'}}
																			<label class="order1_delitem_price">
																				<input type="checkbox" name="" value="" checked="checked" {{if $loop535->getItem("@minworthreached") == (string) 'false'}} disabled="disabled"{{/if}}></input>{{$loop535->getItemEscape("@cost_formatted")}}
																			</label>
																			<label class="order1_delitem_price_point_disabled showTip_order1" title="{{$txt['107099::53687_011nopoints']}}">
																				<input class="showTip_order1" type="checkbox" disabled="disabled" title="{{$txt['107099::53687_011nopoints']}}"></input>{{$loop535->getItemEscape("@points_cost")}}{{$txt['107099::order1_form_pointsok3']}}
																			</label>
																		{{elseif  $loop535->getItem("@points_enabled")  == (string) 'true'}}
																			<label class="order1_delitem_price">
																				<input type="checkbox" name="" value="" checked="checked" {{if $loop535->getItem("@minworthreached") == (string) 'false'}} disabled="disabled"{{/if}}></input>{{$loop535->getItemEscape("@cost_formatted")}}
																			</label>
																			<label class="order1_delitem_price_point">
																				<input type="checkbox" name="" value="" {{if $loop535->getItem("@minworthreached") == (string) 'false'}} disabled="disabled"{{/if}}></input>{{$loop535->getItemEscape("@points_cost")}}{{$txt['107099::order1_form_pointsok3']}}
																			</label>
																		{{else}}
																			<span class="order1_delitem_pricetitle">{{$txt['107099::50000_001']}}</span>
																			<span {{assign "classAttributeTmp6" ""}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}order1_delitem_price{{/capture}}{{if $loop535->getItem("@cost") gt (string) 0}}{{if $loop535->getItem("@limitfree") gt (string) 0}} title="{{$txt['107099::53687_011']}}{{$loop535->getItemEscape("@limitfree_formatted")}}{{$txt['107099::53687_012']}}"{{/if}}{{$loop535->getItemEscape("@cost_formatted")}}{{else}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}order1_delitem_price order1_delitem_price_free{{/capture}} {{$txt['107099::53687_014']}} {{/if}}  class="{{$classAttributeTmp6}}"></span>
																		{{/if}}
																	</div>
																{{/if}}
															</div>
															{{if count( $loop535->getList("method_params/param"))  gt (string) 0}}
																<div class="return_methods_params">
																	{{foreach from=$loop535->getList("method_params/param") item=loop635}}
																		<div class="return_methods_param">
																			<input type="radio" name="method_param" id="{{$loop635->getItemEscape("@id")}}" value="{{$loop635->getItemEscape("@value")}}"></input>
																			<label for="{{$loop635->getItemEscape("@id")}}">
																				<strong>{{$loop635->getItemEscape("@name")}}</strong>&#160;#160;{{$loop635->getItemEscape("@description")}}
																			</label>
																			{{if  $loop635->getItem("@confirmation_message") and !( $loop635->getItem("@confirmation_message")  == (string) '')}}
																				<div class="return_confirmation_message">{{$loop635->getItemEscape("@confirmation_message")}}
																				</div>
																			{{/if}}
																		</div>
																	{{/foreach}}
																</div>
															{{/if}}
														</div>
													{{/foreach}}
												</div>
											{{/foreach}}
										</div>
									{{/if}}
									<div class="returns_summary_buttons table_display">
										<div class="btn_wrapper backlink">
											{{if  $xml->getItem("page/backlink/@url")}}
												<a class="btn" href="{{$xml->getItemEscape("page/backlink/@url")}}">{{$txt['107099::order2_button_back']}}</a>
											{{/if}}
										</div>
										<div class="btn_wrapper">
											<button id="return_go_next" type="submit" class="n53706_button1 btn-large btn_arrow">{{$txt['107099::50001_10a']}}
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
