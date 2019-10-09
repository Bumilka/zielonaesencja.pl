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
			<script type="text/javascript" src="/gfx/{{$xml->getItemEscape("language/@id")}}/contact_address.js.gzip?r=1570606968">			</script>

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
						<!--CMS na stronie Kontaktu (contact_cms, 107806.1)-->
						{{if  $xml->getItem("page/contact/text/body")  neq (string) ''}}
							<div class="contact_cms cm">{{$xml->getItem("page/contact/text/body")}}
							</div>
						{{/if}}
						<!--Dane kontaktowe na stronie Kontakt (contact_contact, 107808.1)-->
						{{capture name="contact_mobile_label" assign="contact_mobile_label"}}
							{{$txt['107808::n62072_contact_label']}}
						{{/capture}}
						{{capture name="mapType" assign="mapType"}}
							{{$txt['107808::64553_MAPA_001']}}
						{{/capture}}
						{{capture name="navControl" assign="navControl"}}
							{{$txt['107808::64553_MAPA_002']}}
						{{/capture}}
						{{capture name="mapTypeControl" assign="mapTypeControl"}}
							{{$txt['107808::64553_MAPA_003']}}
						{{/capture}}
						{{capture name="scControl" assign="scControl"}}
							{{$txt['107808::64553_MAPA_004']}}
						{{/capture}}
						{{capture name="controlType" assign="controlType"}}
							{{$txt['107808::64553_MAPA_005']}}
						{{/capture}}
						{{capture name="mapTypeControlStyle" assign="mapTypeControlStyle"}}
							{{$txt['107808::64553_MAPA_006']}}
						{{/capture}}
						{{capture name="markersAnimation" assign="markersAnimation"}}
							{{$txt['107808::64553_MAPA_007']}}
						{{/capture}}
						{{capture name="bCord" assign="bCord"}}
							{{$txt['107808::64553_MAPA_008']}}
						{{/capture}}
						{{capture name="lCord" assign="lCord"}}
							{{$txt['107808::64553_MAPA_009']}}
						{{/capture}}
						{{capture name="mapZoom" assign="mapZoom"}}
							{{$txt['107808::64553_MAPA_010']}}
						{{/capture}}
						{{capture name="mapLanguage" assign="mapLanguage"}}
							{{$txt['107808::64553_MAPA_011']}}
						{{/capture}}
						{{capture name="mapCustomMarkers" assign="mapCustomMarkers"}}
							{{$txt['107808::64553_MAPA_012']}}
						{{/capture}}
						{{capture name="mapHideContact" assign="mapHideContact"}}
							{{$txt['107808::64553_MAPA_013']}}
						{{/capture}}
						<script>
            var mapTypeContact = "{{$mapType}}";
            var navControlContact = "{{$navControl}}";
            var mapTypeControlContact = "{{$mapTypeControl}}";
            var scControlContact = "{{$scControl}}";
            var controlTypeContact = "{{$controlType}}";
            var mapTypeControlStyleContact = "{{$mapTypeControlStyle}}";
            var markersAnimationContact = "{{$markersAnimation}}";
            var bCordContact= "{{$bCord}}";
            var lCordContact = "{{$lCord}}";
            var contactLanguage   = "{{$mapLanguage}}";
            var contactZoom     = parseInt("{{$mapZoom}}");
            var markerContactCustomIcon      = "{{$mapCustomMarkers}}";
            var mapSiteType = 'contact';
            var mapHideContact = "{{$mapHideContact}}";
            var google_api_key = '{{$xml->getItemEscape("/shop/page/contact/google_api_key/@value")}}';
        						</script>

						{{if  $xml->getItem("/shop/page/contact/location")}}
							<script>
                var doSetL = '{{$xml->getItemEscape("/shop/page/contact/location/@latitude")}}';
                var doSetB = '{{$xml->getItemEscape("/shop/page/contact/location/@longitude")}}';
            							</script>

						{{/if}}
						<div class="row">
							<div id="contact_contact" class="col-md-6 col-12">
								<h2 class="big_label">{{$txt['107808::62072_002']}}
								</h2>
								<div class="contact_contact_sub">
									<div class="contact_contact_phone">
										{{foreach from=$xml->getList("/shop/page/contact/contact_nodes/node") item=loop298}}
											<p>
												{{if  $loop298->getItem("@title") and !( $loop298->getItem("@title")  == (string) '')}}
													<strong>{{$loop298->getItemEscape("@title")}}{{$txt['107808::62072_001']}}</strong>
												{{/if}}
												{{if  $loop298->getItem("@link")}}
													<a href="{{$loop298->getItemEscape("@link")}}">
														{{if  $loop298->getItem("@gfx")}}
															class="contact_contact_gfx"
															{{if !( $loop298->getItem("/shop/@sslurl")  neq (string) '')}}
																<img src="{{$loop298->getItemEscape("@gfx")}}" alt="{{$loop298->getItemEscape("@value")}}"></img>
															{{/if}}
														{{/if}}
														{{$loop298->getItemEscape("@value")}}</a>
												{{else}}
													<span>
														{{if  $loop298->getItem("@gfx")}}
															class="contact_contact_gfx"
															{{if !( $loop298->getItem("/shop/@sslurl")  neq (string) '')}}
																<img src="{{$loop298->getItemEscape("@gfx")}}" alt="{{$loop298->getItemEscape("@value")}}"></img>
															{{/if}}
														{{/if}}
														{{$loop298->getItemEscape("@value")}}</span>
												{{/if}}
											</p>
										{{/foreach}}
									</div>
									<div class="contact_contact_firm">
										{{if  $xml->getItem("/shop/page/contact/shop_data/@shopname")}}
											<p>
												<strong>{{$txt['107808::99721_firm_name_label']}}</strong>
												<span>{{$xml->getItemEscape("/shop/page/contact/shop_data/@shopname")}}</span>
											</p>
										{{/if}}
										<p>
											<strong>{{$txt['107808::99721_firm_adres_label']}}</strong>
											{{if  $xml->getItem("/shop/page/contact/shop_data/@street")}}
												<span id="contact_contact_street">{{$xml->getItemEscape("/shop/page/contact/shop_data/@street")}}</span>
											{{/if}}
											{{if  $xml->getItem("/shop/page/contact/shop_data/@zipcode") or  $xml->getItem("/shop/page/contact/shop_data/@city")}}
												<span id="contact_contact_city">{{literal}},{{/literal}}{{$xml->getItemEscape("/shop/page/contact/shop_data/@zipcode")}}{{literal}}{{/literal}}{{$xml->getItemEscape("/shop/page/contact/shop_data/@city")}}</span>
											{{/if}}
											{{if  $xml->getItem("/shop/page/contact/shop_data/@country")}}
												<span id="contact_contact_country">{{$txt['107808::62072_002n']}}
													{{if  $xml->getItem("/shop/page/contact/shop_data/@province")}}
														{{$xml->getItemEscape("/shop/page/contact/shop_data/@province")}}{{literal}},{{/literal}}
													{{/if}}
													{{$xml->getItemEscape("/shop/page/contact/shop_data/@country")}}{{$txt['107808::62072_001n']}}</span>
											{{/if}}
										</p>
									</div>
								</div>
							</div>
							<div id="contact_address" class="col-md-6 col-12">
								<h2 class="big_label">{{$txt['107808::99721_001']}}
								</h2>
								<div class="contact_address_sub">
									<div>
										<div class="contact_address_data">
											{{if  $xml->getItem("/shop/page/contact/owner_data/@firmname")}}
												<h3>{{$xml->getItemEscape("/shop/page/contact/owner_data/@firmname")}}
												</h3>
											{{/if}}
											<div class="contact_data_address">
												<div class="contact_data_address_sub">
													{{if  $xml->getItem("/shop/page/contact/owner_data/@street")}}
														<p id="contact_address_street">{{$xml->getItemEscape("/shop/page/contact/owner_data/@street")}}
														</p>
													{{/if}}
													{{if  $xml->getItem("/shop/page/contact/owner_data/@zipcode") or  $xml->getItem("/shop/page/contact/owner_data/@city")}}
														<p id="contact_address_city">{{literal}},{{/literal}}{{$xml->getItemEscape("/shop/page/contact/owner_data/@zipcode")}}{{literal}}{{/literal}}{{$xml->getItemEscape("/shop/page/contact/owner_data/@city")}}
														</p>
													{{/if}}
													{{if  $xml->getItem("/shop/page/contact/owner_data/@country")}}
														<p id="contact_address_country">{{$txt['107808::62072_002n']}}
															{{if  $xml->getItem("/shop/page/contact/owner_data/@province")}}
																{{$xml->getItemEscape("/shop/page/contact/owner_data/@province")}}{{literal}},{{/literal}}
															{{/if}}
															{{$xml->getItemEscape("/shop/page/contact/owner_data/@country")}}{{$txt['107808::62072_001n']}}
														</p>
													{{/if}}
												</div>
											</div>
										</div>
									</div>
									<div>
										{{foreach from=$xml->getList("/shop/page/contact/additional_nodes/node") item=loop394}}
											{{if !( $loop394->getItem("@value")  == (string) '')}}
												<p>
													{{if  $loop394->getItem("@title") and !( $loop394->getItem("@title")  == (string) '')}}
														<strong>{{$loop394->getItemEscape("@title")}}{{$txt['107808::62072_001']}}</strong>
													{{/if}}
													{{if  $loop394->getItem("@link")}}
														<a href="{{$loop394->getItemEscape("@link")}}">
															{{if  $loop394->getItem("@gfx")}}
																class="contact_address_gfx"
																{{if !( $loop394->getItem("/shop/@sslurl")  neq (string) '')}}
																	<img src="{{$loop394->getItemEscape("@gfx")}}" alt="{{$loop394->getItemEscape("@value")}}"></img>
																{{/if}}
															{{/if}}
															{{$loop394->getItemEscape("@value")}}</a>
													{{else}}
														<span>
															{{if  $loop394->getItem("@gfx")}}
																class="contact_address_gfx"
																{{if !( $loop394->getItem("/shop/@sslurl")  neq (string) '')}}
																	<img src="{{$loop394->getItemEscape("@gfx")}}" alt="{{$loop394->getItemEscape("@value")}}"></img>
																{{/if}}
															{{/if}}
															{{$loop394->getItemEscape("@value")}}</span>
													{{/if}}
												</p>
											{{/if}}
										{{/foreach}}
									</div>
								</div>
							</div>
						</div>
						<!--Dane adresowe na stronie Kontakt (contact_address, 107810.1)-->
						{{if  $xml->getItem("/shop/page/contact/google_api_key/@value") and ( $xml->getItem("/shop/page/contact/shop_data/@street") or  $xml->getItem("/shop/page/contact/shop_data/@zipcode") or  $xml->getItem("/shop/page/contact/shop_data/@city"))}}
							<section id="contact_map" class="row">
								<div {{assign "classAttributeTmp3" ""}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}contact_map_all col-sm-8 col-12{{/capture}}{{if ($mapHideContact neq (string) '')}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}contact_map_all hide col-sm-8 col-12{{/capture}}{{/if}}  class="{{$classAttributeTmp3}}">
									<div class="loadingMap">
										<div class="loadingContent">
											<div class="loadingBox">
												<span class="loadingMap">{{$txt['107810::64553_013']}}</span>
												<span class="loadingNav">{{$txt['107810::64553_014']}}</span>
												<span class="loadingAdres">{{$txt['107810::64553_018']}}</span>
												<img class="loadingMapImg" src="/gfx/__IAI_TEMPLATE_LANG_639_1__/mapLoader.gif?r=1570606968" alt=""/>
											</div>
										</div>
									</div>
									<img class="marker_face" src="/gfx/__IAI_TEMPLATE_LANG_639_1__/marker_face.png?r=1570606968" alt=""/>
									<div id="contact_map" class="contact_map_wrapper">
									</div>
								</div>
							</section>
						{{/if}}
						<div id="stocks_contact4" class="row">
							<div class="col-12">
								<h2 class="big_label">{{$txt['107810::62072_003']}}
								</h2>
								<p>{{$txt['107810::62072_004']}}
								</p>
								<a href="/stock.php" class="btn">{{$txt['107810::62072_005']}}</a>
							</div>
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
