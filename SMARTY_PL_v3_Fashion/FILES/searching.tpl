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
			<script type="text/javascript" src="/gfx/{{$xml->getItemEscape("language/@id")}}/searching.js.gzip?r=1570606968">			</script>

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
						<!--Wyszukiwanie zaawansowane (searching, 107881.1)-->
						<div id="searching">
							<div class="header">
								<h1 class="big_label">{{$txt['107881::59070_001']}}
								</h1>
								<div class="info">{{$txt['107881::59070_002']}}
								</div>
							</div>
							<div class="menu_messages_warning" id="select_products_info">
								<div class="menu_messages_warning_sub">
									<p>{{$txt['107881::59070_003']}}
									</p>
								</div>
							</div>
							<form action="/search.php" method="get" class="searching_form" id="searching_form" {{if $xml->getItem("/shop/action/search/@url")}} action="{{$xml->getItemEscape("/shop/action/search/@url")}}"{{/if}}>
								<div id="searchingPreloader1" class="searching_wrapper">
									<div id="searchingPreloader2" style="z-index: 100; display: none;">{{$txt['107881::59070_004']}}
									</div>
									<div class="searching_top form-group">
										<div class="searching_text">
											<label for="searching_text">{{$txt['107881::59070_005']}}
											</label>
											<input type="text" name="text" size="40" id="searching_text" class="form-control" {{if $xml->getItem("page/searching/completed/text/@value")}} value="{{$xml->getItemEscape("page/searching/completed/text/@value")}}"{{/if}}></input>
											<div id="find-text">
											</div>
										</div>
										<div class="searching_price">
											{{capture name="startMin" assign="startMin"}}
												{{$xml->getItemEscape("page/searching/price_start/@min")}}
											{{/capture}}
											{{capture name="startMax" assign="startMax"}}
												{{$xml->getItemEscape("page/searching/price_start/@max")}}
											{{/capture}}
											<div id="contener3">
												<div class="n59070_price_sub">
													<span class="label">{{$txt['107881::59070_006']}}</span>
													{{if $signbeforeprice  == (string) 'true'}}
														<span class="searching_currency">{{$xml->getItemEscape("/shop/currency/@name")}}{{$signbetweenpricecurrency}}</span>
													{{/if}}
													<input {{assign "valueAttributeTmp12" ""}}  class="searching_price searching_ajax form-control" type="text" id="pricelimitmin" name="pricelimitmin" maxlength="15" {{if $xml->getItem("substring-after($startMin, '.')") == (string) '00'}}{{capture name="valueAttributeTmp12" assign="valueAttributeTmp12"}}{{$xml->getItemEscape("format-number($startMin, '#')")}}{{/capture}}{{else}}{{capture name="valueAttributeTmp12" assign="valueAttributeTmp12"}}{{$startMin}}{{/capture}}{{/if}}  value="{{$valueAttributeTmp12}}"></input>
													<span class="searching_price_sep">{{$txt['107881::59070_007']}}</span>
													<input {{assign "valueAttributeTmp13" ""}}  class="searching_price searching_ajax form-control" type="text" id="pricelimitmax" name="pricelimitmax" maxlength="15" {{if $xml->getItem("substring-after($startMax, '.')") == (string) '00'}}{{capture name="valueAttributeTmp13" assign="valueAttributeTmp13"}}{{$xml->getItemEscape("format-number($startMax, '#')")}}{{/capture}}{{else}}{{capture name="valueAttributeTmp13" assign="valueAttributeTmp13"}}{{$startMax}}{{/capture}}{{/if}}  value="{{$valueAttributeTmp13}}"></input>
													{{if $signbeforeprice  == (string) 'false'}}
														<span class="searching_currency">{{$signbetweenpricecurrency}}{{$xml->getItemEscape("/shop/currency/@name")}}</span>
													{{/if}}
												</div>
												<input type="hidden" id="min_price_start" value="{{$xml->getItemEscape("format-number(page/searching/price_start/@min, '#')")}}"></input>
												<input type="hidden" id="max_price_start" value="{{$xml->getItemEscape("format-number(page/searching/price_start/@max, '#')")}}"></input>
											</div>
											<div id="contener4">
												<span class="n59070_price_label">{{$txt['107881::59070_008']}}</span>
												<span id="min_price_text_2" class="min_price_text_2"></span>
												<span class="n59070_currency">{{$xml->getItemEscape("/shop/currency/@name")}}</span>
											</div>
										</div>
										<div class="searching_checkboxes">
											<span class="label">{{$txt['107881::59070_009']}}</span>
											<ul>
												{{if  $xml->getItem("page/searching/additional/discount[@avaliable='true']")}}
													<li>
														<label for="seraching_discount_input">
															<input class="searching_ajax" id="seraching_discount_input" type="checkbox" name="discount" value="y"></input>
															<span>{{$xml->getItemEscape("page/searching/additional/discount/@name")}}</span>
														</label>
													</li>
												{{/if}}
												{{if  $xml->getItem("page/searching/additional/promotion[@avaliable='true']")}}
													<li>
														<label for="seraching_promotion_input">
															<input class="searching_ajax" id="seraching_promotion_input" type="checkbox" name="promo" value="y"></input>
															<span>{{$xml->getItemEscape("page/searching/additional/promotion/@name")}}</span>
														</label>
													</li>
												{{/if}}
												{{if  $xml->getItem("page/searching/additional/new[@avaliable='true']")}}
													<li>
														<label for="seraching_additional_input">
															<input class="searching_ajax" id="seraching_additional_input" type="checkbox" name="newproducts" value="y"></input>
															<span>{{$xml->getItemEscape("page/searching/additional/new/@name")}}</span>
														</label>
													</li>
												{{/if}}
												{{if  $xml->getItem("page/searching/additional/bestseller[@avaliable='true']")}}
													<li>
														<label for="seraching_bestseller_input">
															<input class="searching_ajax" id="seraching_bestseller_input" type="checkbox" name="bestseller" value="y"></input>
															<span>{{$xml->getItemEscape("page/searching/additional/bestseller/@name")}}</span>
														</label>
													</li>
												{{/if}}
												{{if  $xml->getItem("page/searching/additional/distinguished[@avaliable='true']")}}
													<li>
														<label for="seraching_distinguished_input">
															<input class="searching_ajax" id="seraching_distinguished_input" type="checkbox" name="distinguished" value="y"></input>
															<span>{{$xml->getItemEscape("page/searching/additional/distinguished/@name")}}</span>
														</label>
													</li>
												{{/if}}
												{{if  $xml->getItem("page/searching/additional/special[@avaliable='true']")}}
													<li>
														<label for="seraching_special_input">
															<input class="searching_ajax" id="seraching_special_input" type="checkbox" name="special" value="y"></input>
															<span>{{$xml->getItemEscape("page/searching/additional/special/@name")}}</span>
														</label>
													</li>
												{{/if}}
											</ul>
										</div>
										<div class="clr">
										</div>
									</div>
									<div class="searching_nodes">
										{{if  $xml->getItem("page/searching/searching_nodes/node")}}
											{{foreach from=$xml->getList("page/searching/searching_nodes/node") item=loop390}}
												{{if  $loop390->getItem("@type") == (string)'static'}}
													<div {{assign "classAttributeTmp3" ""}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}group_node{{/capture}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}group_node type_node_{{$loop390->getItemEscape("@type")}}{{/capture}}  class="{{$classAttributeTmp3}}">
														<h4>{{$loop390->getItemEscape("@title")}}
														</h4>
														{{if  $loop390->getItem("node")}}
															{{foreach from=$loop390->getList("node") item=loop398}}
																{{if  $loop398->getItem("@type") == (string)'static'}}
																	<div {{assign "classAttributeTmp4" ""}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}group_node_sub{{/capture}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}group_node_sub type_node_{{$loop398->getItemEscape("@type")}}{{/capture}}  class="{{$classAttributeTmp4}}">
																		<h5>{{$loop398->getItemEscape("@title")}}
																		</h5>
																		{{if  $loop398->getItem("node")}}
																			{{foreach from=$loop398->getList("node") item=loop406}}
																				{{if  $loop406->getItem("@type") == (string)'static'}}
																				{{else}}
																					<div {{assign "classAttributeTmp5" ""}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}item_node{{/capture}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}item_node type_node_{{$loop406->getItemEscape("@type")}}{{/capture}}  class="{{$classAttributeTmp5}}">
																						<span class="label">{{$loop406->getItemEscape("@title")}}</span>
																						<span class="type_node_sub_{{$loop406->getItemEscape("@type")}}">
																							{{if  $loop406->getItem("@type") == (string)'duallist'}}
																								<span>
																									<select class="searching_duallist searching_ajax searching_ajax_duallist" name="{{$loop406->getItemEscape("@value")}}" id="{{$loop406->getItemEscape("@value")}}">
																										<option value="">{{$txt['107881::59070_0010']}}
																										</option>
																									</select></span>
																								<span class="searching_sep">{{$txt['107881::59070_0013']}}</span>
																								<span>
																									<select class="searching_duallist searching_ajax searching_ajax_duallist" name="{{$loop406->getItemEscape("@value")}}_bis" id="{{$loop406->getItemEscape("@value")}}_bis">
																										<option value="">{{$txt['107881::59070_0011']}}
																										</option>
																									</select></span>
																							{{elseif  $loop406->getItem("@type") == (string)'checkbox'}}
																								<input type="hidden" class="searching_checkbox_name" name="{{$loop406->getItemEscape("@value")}}"></input>
																							{{else}}
																								<select class="searching_list searching_ajax select_type_{{$loop406->getItemEscape("@type")}}" name="{{$loop406->getItemEscape("@value")}}" id="{{$loop406->getItemEscape("@value")}}">
																									<option value="">{{$txt['107881::59070_0012']}}
																									</option>
																								</select>
																							{{/if}}
																							</span>
																					</div>
																					{{if  $loop406->getItem("node")}}
																						<div class="item_node_children">
																							{{foreach from=$loop406->getList("descendant::node") item=loop452}}
																								<div {{assign "classAttributeTmp6" ""}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}item_node{{/capture}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}item_node type_node_{{$loop452->getItemEscape("@type")}}{{/capture}}  class="{{$classAttributeTmp6}}">
																									<span class="label">{{$loop452->getItemEscape("@title")}}</span>
																									<span class="type_node_sub_{{$loop452->getItemEscape("@type")}}">
																										{{if  $loop452->getItem("@type") == (string)'duallist'}}
																											<span>
																												<select class="searching_duallist searching_ajax searching_ajax_duallist" name="{{$loop452->getItemEscape("@value")}}" id="{{$loop452->getItemEscape("@value")}}">
																													<option value="">{{$txt['107881::59070_0010']}}
																													</option>
																												</select></span>
																											<span class="searching_sep">{{$txt['107881::59070_0013']}}</span>
																											<span>
																												<select class="searching_duallist searching_ajax searching_ajax_duallist" name="{{$loop452->getItemEscape("@value")}}_bis" id="{{$loop452->getItemEscape("@value")}}_bis">
																													<option value="">{{$txt['107881::59070_0011']}}
																													</option>
																												</select></span>
																										{{elseif  $loop452->getItem("@type") == (string)'checkbox'}}
																											<input type="hidden" class="searching_checkbox_name" name="{{$loop452->getItemEscape("@value")}}"></input>
																										{{else}}
																											<select id="{{$loop452->getItemEscape("@value")}}" class="searching_list searching_ajax select_sub_type_{{$loop452->getItemEscape("@type")}}" name="{{$loop452->getItemEscape("@value")}}">
																												<option value="">{{$txt['107881::59070_0012']}}
																												</option>
																											</select>
																										{{/if}}
																										</span>
																								</div>
																							{{/foreach}}
																						</div>
																					{{/if}}
																				{{/if}}
																			{{/foreach}}
																		{{/if}}
																		<div class="clr">
																		</div>
																	</div>
																{{else}}
																	<div {{assign "classAttributeTmp7" ""}}{{capture name="classAttributeTmp7" assign="classAttributeTmp7"}}item_node{{/capture}}{{capture name="classAttributeTmp7" assign="classAttributeTmp7"}}item_node type_node_{{$loop398->getItemEscape("@type")}}{{/capture}}  class="{{$classAttributeTmp7}}">
																		<span class="label">{{$loop398->getItemEscape("@title")}}</span>
																		<span class="type_node_sub_{{$loop398->getItemEscape("@type")}}">
																			{{if  $loop398->getItem("@type") == (string)'duallist'}}
																				<span>
																					<select class="searching_duallist searching_ajax searching_ajax_duallist" name="{{$loop398->getItemEscape("@value")}}" id="{{$loop398->getItemEscape("@value")}}">
																						<option value="">{{$txt['107881::59070_0010']}}
																						</option>
																					</select></span>
																				<span class="searching_sep">{{$txt['107881::59070_0013']}}</span>
																				<span>
																					<select class="searching_duallist searching_ajax searching_ajax_duallist" name="{{$loop398->getItemEscape("@value")}}_bis" id="{{$loop398->getItemEscape("@value")}}_bis">
																						<option value="">{{$txt['107881::59070_0011']}}
																						</option>
																					</select></span>
																			{{elseif  $loop398->getItem("@type") == (string)'checkbox'}}
																				<input type="hidden" class="searching_checkbox_name" name="{{$loop398->getItemEscape("@value")}}"></input>
																			{{else}}
																				<select id="{{$loop398->getItemEscape("@value")}}" class="searching_list searching_ajax select_type_{{$loop398->getItemEscape("@type")}}" name="{{$loop398->getItemEscape("@value")}}">
																					<option value="">{{$txt['107881::59070_0012']}}
																					</option>
																				</select>
																			{{/if}}
																			</span>
																	</div>
																	{{if  $loop398->getItem("node")}}
																		<div class="item_node_children">
																			{{foreach from=$loop398->getList("descendant::node") item=loop540}}
																				<div {{assign "classAttributeTmp8" ""}}{{capture name="classAttributeTmp8" assign="classAttributeTmp8"}}item_node{{/capture}}{{capture name="classAttributeTmp8" assign="classAttributeTmp8"}}item_node type_node_{{$loop540->getItemEscape("@type")}}{{/capture}}  class="{{$classAttributeTmp8}}">
																					<span class="label">{{$loop540->getItemEscape("@title")}}</span>
																					<span class="type_node_sub_{{$loop540->getItemEscape("@type")}}">
																						{{if  $loop540->getItem("@type") == (string)'duallist'}}
																							<span>
																								<select class="searching_duallist searching_ajax searching_ajax_duallist" name="{{$loop540->getItemEscape("@value")}}" id="{{$loop540->getItemEscape("@value")}}">
																									<option value="">{{$txt['107881::59070_0010']}}
																									</option>
																								</select></span>
																							<span class="searching_sep">{{$txt['107881::59070_0013']}}</span>
																							<span>
																								<select class="searching_duallist searching_ajax searching_ajax_duallist" name="{{$loop540->getItemEscape("@value")}}_bis" id="{{$loop540->getItemEscape("@value")}}_bis">
																									<option value="">{{$txt['107881::59070_0011']}}
																									</option>
																								</select></span>
																						{{elseif  $loop540->getItem("@type") == (string)'checkbox'}}
																							<input type="hidden" class="searching_checkbox_name" name="{{$loop540->getItemEscape("@value")}}"></input>
																						{{else}}
																							<select id="{{$loop540->getItemEscape("@value")}}" class="searching_list searching_ajax select_sub_type_{{$loop540->getItemEscape("@type")}}" name="{{$loop540->getItemEscape("@value")}}">
																								<option value="">{{$txt['107881::59070_0012']}}
																								</option>
																							</select>
																						{{/if}}
																						</span>
																				</div>
																			{{/foreach}}
																		</div>
																	{{/if}}
																{{/if}}
															{{/foreach}}
														{{/if}}
														<div class="clr">
														</div>
													</div>
												{{else}}
													<div {{assign "classAttributeTmp9" ""}}{{capture name="classAttributeTmp9" assign="classAttributeTmp9"}}item_node{{/capture}}{{capture name="classAttributeTmp9" assign="classAttributeTmp9"}}item_node type_node_{{$loop390->getItemEscape("@type")}}{{/capture}}  class="{{$classAttributeTmp9}}">
														<span class="label">{{$loop390->getItemEscape("@title")}}</span>
														<span class="type_node_sub_{{$loop390->getItemEscape("@type")}}">
															{{if  $loop390->getItem("@type") == (string)'duallist'}}
																<span>
																	<select class="searching_duallist searching_ajax searching_ajax_duallist" name="{{$loop390->getItemEscape("@value")}}" id="{{$loop390->getItemEscape("@value")}}">
																		<option value="">{{$txt['107881::59070_0010']}}
																		</option>
																	</select></span>
																<span class="searching_sep">{{$txt['107881::59070_0013']}}</span>
																<span>
																	<select class="searching_duallist searching_ajax searching_ajax_duallist" name="{{$loop390->getItemEscape("@value")}}_bis" id="{{$loop390->getItemEscape("@value")}}_bis">
																		<option value="">{{$txt['107881::59070_0011']}}
																		</option>
																	</select></span>
															{{elseif  $loop390->getItem("@type") == (string)'checkbox'}}
																<input type="hidden" class="searching_checkbox_name" name="{{$loop390->getItemEscape("@value")}}"></input>
															{{else}}
																<select id="{{$loop390->getItemEscape("@value")}}" class="searching_list searching_ajax select_type_{{$loop390->getItemEscape("@type")}}" name="{{$loop390->getItemEscape("@value")}}">
																	<option value="">{{$txt['107881::59070_0012']}}
																	</option>
																</select>
															{{/if}}
															</span>
													</div>
													{{if  $loop390->getItem("node")}}
														<div class="item_node_children">
															{{foreach from=$loop390->getList("descendant::node") item=loop627}}
																<div {{assign "classAttributeTmp10" ""}}{{capture name="classAttributeTmp10" assign="classAttributeTmp10"}}item_node{{/capture}}{{capture name="classAttributeTmp10" assign="classAttributeTmp10"}}item_node type_node_{{$loop627->getItemEscape("@type")}}{{/capture}}  class="{{$classAttributeTmp10}}">
																	<span class="label">{{$loop627->getItemEscape("@title")}}</span>
																	<span class="type_node_sub_{{$loop627->getItemEscape("@type")}}">
																		{{if  $loop627->getItem("@type") == (string)'duallist'}}
																			<span>
																				<select class="searching_duallist searching_ajax searching_ajax_duallist" name="{{$loop627->getItemEscape("@value")}}" id="{{$loop627->getItemEscape("@value")}}">
																					<option value="">{{$txt['107881::59070_0010']}}
																					</option>
																				</select></span>
																			<span class="searching_sep">{{$txt['107881::59070_0013']}}</span>
																			<span>
																				<select class="searching_duallist searching_ajax searching_ajax_duallist" name="{{$loop627->getItemEscape("@value")}}_bis" id="{{$loop627->getItemEscape("@value")}}_bis">
																					<option value="">{{$txt['107881::59070_0011']}}
																					</option>
																				</select></span>
																		{{elseif  $loop627->getItem("@type") == (string)'checkbox'}}
																			<input type="hidden" class="searching_checkbox_name" name="{{$loop627->getItemEscape("@value")}}"></input>
																		{{else}}
																			<select id="{{$loop627->getItemEscape("@value")}}" class="searching_list searching_ajax select_sub_type_{{$loop627->getItemEscape("@type")}}" name="{{$loop627->getItemEscape("@value")}}">
																				<option value="">{{$txt['107881::59070_0012']}}
																				</option>
																			</select>
																		{{/if}}
																		</span>
																</div>
															{{/foreach}}
														</div>
													{{/if}}
												{{/if}}
											{{/foreach}}
										{{/if}}
										<div class="clr">
										</div>
									</div>
									<div class="searching_button_under">
										<div class="searching_sort_cont">
											<span class="searching_sort_text">{{$txt['107881::59070_0014']}}</span>
											<span class="searching_engine_traits">
												<select class="searching_engine_traits" name="sort" id="sort">
													<option value="price" {{if $xml->getItem("page/searching/completed/sort[@type='price']")}} selected="selected" {{/if}}>{{$txt['107881::59070_0015']}}
													</option>
													<option value="date" {{if $xml->getItem("page/searching/completed/sort[@type='date']")}} selected="selected" {{/if}}>{{$txt['107881::59070_0016']}}
													</option>
													<option value="name" {{if $xml->getItem("page/searching/completed/sort[@type='name']")}} selected="selected" {{/if}}>{{$txt['107881::59070_0017']}}
													</option>
												</select></span>
											<span class="searching_sort_radios">
												<input type="radio" class="searching_asc" name="order" id="searching_dsc" value="a" {{if $xml->getItem("page/searching/completed/sort[@order='a']")}} checked="checked" {{/if}}></input>
												<label for="searching_dsc">{{$txt['107881::59070_0018']}}
												</label>
												<input type="radio" class="searching_asc" id="searching_asc" name="order" value="d" {{if $xml->getItem("page/searching/completed/sort[@order='d']")}} checked="checked" {{/if}}></input>
												<label for="searching_asc">{{$txt['107881::59070_0019']}}
												</label></span>
											<button {{assign "classAttributeTmp11" ""}}{{capture name="classAttributeTmp11" assign="classAttributeTmp11"}}searching_button_under{{/capture}} type="submit"{{capture name="classAttributeTmp11" assign="classAttributeTmp11"}}btn searching_button_under{{/capture}}  class="{{$classAttributeTmp11}}">{{$txt['107881::59070_0020']}}
											</button>
										</div>
									</div>
								</div>
								<input type="hidden" class="searching_ajax" name="onlyVisibleElements" value="true"/>
							</form>
						</div>
						<script class="ajaxLoad">{{if  $xml->getItem("/shop/page/communicates")}}
                    var searchingCommunicatesSet = true;
                {{else}}
                    var searchingCommunicatesSet = false;
                {{/if}}						</script>

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
