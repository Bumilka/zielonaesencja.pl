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
			<script type="text/javascript" src="/gfx/{{$xml->getItemEscape("language/@id")}}/pickup_sites_list.js.gzip?r=1570606968">			</script>

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
						{{include file="component_menu_order_progress_106607.tpl"}}
						{{include file="component_menu_messages_106608.tpl"}}
						<!--Punkty odbioru - CMS (pickup_sites_cms, 107703.1)-->
						{{if  $xml->getItem("page/text/body")}}
							<div class="pickup_cms_label big_label">
								<span class="pickup_cms_label">{{$txt['107703::pickup_cms_label']}}</span>
							</div>
							<div class="pickup_cms">
								<div class="pickup_cms_sub">{{$xml->getItem("page/text/body")}}
								</div>
							</div>
						{{/if}}
						<!--Punkty odbioru - Wybór (pickup_sites_list, 107705.1)-->
						{{capture name="mapType" assign="mapType"}}
							{{$txt['107705::64553_MAPA_001']}}
						{{/capture}}
						{{capture name="navControl" assign="navControl"}}
							{{$txt['107705::64553_MAPA_002']}}
						{{/capture}}
						{{capture name="mapTypeControl" assign="mapTypeControl"}}
							{{$txt['107705::64553_MAPA_003']}}
						{{/capture}}
						{{capture name="scControl" assign="scControl"}}
							{{$txt['107705::64553_MAPA_004']}}
						{{/capture}}
						{{capture name="controlType" assign="controlType"}}
							{{$txt['107705::64553_MAPA_005']}}
						{{/capture}}
						{{capture name="mapTypeControlStyle" assign="mapTypeControlStyle"}}
							{{$txt['107705::64553_MAPA_006']}}
						{{/capture}}
						{{capture name="markersAnimation" assign="markersAnimation"}}
							{{$txt['107705::64553_MAPA_007']}}
						{{/capture}}
						{{capture name="bCord" assign="bCord"}}
							{{$txt['107705::64553_MAPA_008']}}
						{{/capture}}
						{{capture name="lCord" assign="lCord"}}
							{{$txt['107705::64553_MAPA_009']}}
						{{/capture}}
						{{capture name="mapZoom" assign="mapZoom"}}
							{{$txt['107705::64553_MAPA_010']}}
						{{/capture}}
						{{capture name="mapLanguage" assign="mapLanguage"}}
							{{$txt['107705::64553_MAPA_011']}}
						{{/capture}}
						{{capture name="mapCustomMarkers" assign="mapCustomMarkers"}}
							{{$txt['107705::64553_MAPA_012']}}
						{{/capture}}
						{{capture name="requires_client_number" assign="requires_client_number"}}
							{{$txt['107705::64553_postnummer']}}
						{{/capture}}
						{{capture name="info_selected_pickup" assign="info_selected_pickup"}}
							{{$xml->getItemEscape("normalize-space(page/pickups/selected/pickup/info)")}}
						{{/capture}}
						<script class="ajaxLoad">
            var mapTypePickups = "{{$mapType}}";
            var navControlPickups = "{{$navControl}}";
            var mapTypeControlPickups = "{{$mapTypeControl}}";
            var scControlPickups = "{{$scControl}}";
            var controlTypePickups = "{{$controlType}}";
            var mapTypeControlStylePickups = "{{$mapTypeControlStyle}}";
            var markersAnimationPickups = "{{$markersAnimation}}";
            var bCordPickups = "{{$bCord}}";
            var lCordPickups = "{{$lCord}}";
            var pickupsLanguage   = "{{$mapLanguage}}";
            var pickupsZoom     = parseInt("{{$mapZoom}}");
            var markerPickupsCustomIcon      = "{{$mapCustomMarkers}}";
            var Holidays = {}; var Holidays_stocks = [];
                var selected_pickup_point = {
{{foreach from=$xml->getList("page/pickups/selected/pickup") item=loop322}}
                    "id": "{{$loop322->getItem("@value")|replace:'"': '\"'}}",
                    "name": "{{$loop322->getItem("name")|replace:'"': '\"'}}",
                    "location": "{{$info_selected_pickup|replace:'"': '\"'}}",
                    "address": {
                        "country": "Polska",
                        "postcode": "{{$loop322->getItem("zipcode")|replace:'"': '\"'}}",
                        "city": "{{$loop322->getItem("city")|replace:'"': '\"'}}",
                        "street": "{{$loop322->getItem("address")|replace:'"': '\"'}}",
                        "buildingAndHouseNumber": ""
                    },
                    "coordinates": {
                        "latitude": "{{$loop322->getItem("location/@latitude")|replace:'"': '\"'}}",
                        "longitude": "{{$loop322->getItem("location/@longitude")|replace:'"': '\"'}}"
                    },
                    "link": "{{$loop322->getItem("link")|replace:'"': '\"'}}",
                    "requiresClientNumber": {{$loop322->getItemEscape("requires_client_number")}}{{/foreach}}
            };
        						</script>

						{{if  $xml->getItem("page/pickups")}}
							<script class="ajaxLoad">
                var mapSiteType = 'pickup_site';
                var google_api_key = '{{$xml->getItemEscape("/shop/page/pickups/google_api_key/@value")}}';
            							</script>

							<div id="pickup_site" {{if !( $xml->getItem("/shop/page/pickups/google_api_key/@value")) or $xml->getItem("/shop/page/pickups/google_api_key/@value") == (string) ''}} class="no_google_api_key" {{/if}}>
								<h1 class="big_label">{{$txt['107705::pickupl_list_label']}}{{$xml->getItemEscape("page/pickups/@validName")}}
								</h1>
								<img class="markerCluster" style="display:none;" src="/gfx/__IAI_TEMPLATE_LANG_639_1__/m1.png?r=1570606968"/>
								<img class="markerCluster" style="display:none;" src="/gfx/__IAI_TEMPLATE_LANG_639_1__/m2.png?r=1570606968"/>
								<img class="markerCluster" style="display:none;" src="/gfx/__IAI_TEMPLATE_LANG_639_1__/m3.png?r=1570606968"/>
								<img class="markerCluster" style="display:none;" src="/gfx/__IAI_TEMPLATE_LANG_639_1__/m4.png?r=1570606968"/>
								<img class="markerCluster" style="display:none;" src="/gfx/__IAI_TEMPLATE_LANG_639_1__/m5.png?r=1570606968"/>
								<img class="marker_face" src="/gfx/__IAI_TEMPLATE_LANG_639_1__/marker_face.png?r=1570606968"/>
								<div class="pickup_site_sub">
									{{if  $xml->getItem("/shop/page/pickups/deliveryaddress") and  $xml->getItem("/shop/page/pickups/google_api_key/@value") and  $xml->getItem("/shop/page/pickups/google_api_key/@value")  neq (string) ''}}
										<div class="locationField_sub">
											<p class="pickup_list_desc">{{$txt['107705::pickup_1']}}
											</p>
											<div id="locationField">
												<input id="autocomplete_location" onFocus="geolocate()" type="text" value=" {{$xml->getItemEscape("/shop/page/pickups/deliveryaddress/@street")}}, {{$xml->getItemEscape("/shop/page/pickups/deliveryaddress/@city")}}, {{$xml->getItemEscape("/shop/page/pickups/deliveryaddress/@country_long")}} "></input>
												<a class="btn">
													<span class="d-none d-sm-inline">{{$txt['107705::64553_013sz']}}</span>
													<span class="d-sm-none">{{$txt['107705::4754731_mobile_search']}}</span></a>
											</div>
										</div>
									{{elseif  $xml->getItem("/shop/page/pickups/deliveryaddress") and !( $xml->getItem("/shop/page/pickups/google_api_key/@value"))}}
										<div class="locationField_sub">
											<p class="pickup_list_desc">{{$txt['107705::pickup_2']}}
											</p>
											<div id="locationField">
												<input {{assign "valueAttributeTmp4" ""}}  id="autocomplete_location" class="autocomplete_nomap" type="text" {{if $xml->getItem("/shop/page/pickups/selected/pickup")}}{{capture name="valueAttributeTmp4" assign="valueAttributeTmp4"}}{{$xml->getItemEscape("/shop/page/pickups/selected/pickup/city")}}, {{$xml->getItemEscape("/shop/page/pickups/selected/pickup/address")}}{{/capture}}{{else}}{{capture name="valueAttributeTmp4" assign="valueAttributeTmp4"}}{{$xml->getItemEscape("/shop/page/pickups/deliveryaddress/@city")}}{{/capture}}{{/if}}  value="{{$valueAttributeTmp4}}"></input>
											</div>
										</div>
									{{/if}}
									<form id="pickup_list_form" method="post" action="{{$xml->getItemEscape("page/pickups/@action")}}">
										<div class="pickup_map_sidebar">
											{{if  $xml->getItem("/shop/page/pickups/google_api_key/@value") and  $xml->getItem("/shop/page/pickups/google_api_key/@value")  neq (string) ''}}
												<div class="mapContainer_pickup">
													{{if  $xml->getItem("/shop/page/pickups/deliveryaddress")}}
														<div class="map_button_search">
															<a href="#search_here" class="btn pickup_search_here" title="{{$txt['107705::64553_013_title']}}">{{$txt['107705::64553_013_value']}}</a>
														</div>
													{{/if}}
													<div class="loadingMap">
														<div class="loadingContent">
															<div class="loadingBox">
																<span class="loadingMap">{{$txt['107705::64553_013']}}</span>
																<span class="loadingNav">{{$txt['107705::64553_014']}}</span>
																<span class="loadingMarkers">{{$txt['107705::64553_015']}}
																	<span class="loadingMarkersComplete"></span>{{$txt['107705::64553_017']}}
																	<span class="loadingMarkersCount"></span></span>
																<img class="loadingMapImg" src="/gfx/__IAI_TEMPLATE_LANG_639_1__/mapLoader.gif?r=1570606968"/>
															</div>
														</div>
													</div>
													<div id="pickup_map" class="partners_map_wrapper">
													</div>
												</div>
											{{/if}}
											<div class="asideContainer_pickup" {{if !( $xml->getItem("/shop/page/pickups/google_api_key/@value"))}} style="display: none;" {{/if}}>
												{{foreach from=$xml->getList("page/pickups/*/pickup") item=loop429}}
													<input type="radio" required="required" name="{{$loop429->getItemEscape("/shop/page/pickups/@name")}}" value="{{$loop429->getItemEscape("@value")}}" id="pickup_point_{{$loop429->getItemEscape("@value")}}"></input>
													<label class="pickup_point" for="pickup_point_{{$loop429->getItemEscape("@value")}}" {{if $loop429->getItem("location/@latitude")}} data-latitude="{{$loop429->getItemEscape("location/@latitude")}}"{{/if}}{{if $loop429->getItem("location/@longitude")}} data-longitude="{{$loop429->getItemEscape("location/@longitude")}}"{{/if}} data-requires_client_number="{{$loop429->getItemEscape("requires_client_number/text()")}}" data-id="{{$loop429->getItemEscape("@value")}}">
														<div class="pickup_point_sub">{{$txt['107705::pickupl_svg']}}
															<b class="headerText">{{$loop429->getItemEscape("name")}}</b>
															<div>
																<span class="streetText">{{$loop429->getItemEscape("address")}}</span>
																<span class="zipcodePickup">{{$loop429->getItemEscape("zipcode")}}{{literal}}{{/literal}}
																	<span class="cityText">{{$loop429->getItemEscape("city")}}</span></span>
																{{if  $loop429->getItem("requires_client_number/text()")  == (string) 'true'}}
																	<input type="text" name="client_courier_number" disabled="true" required="required" placeholder="{{$txt['107705::64553_postnummer']}}"></input>
																{{/if}}
																{{if  $loop429->getItem("info")}}
																	<div class="morePickup">{{$txt['107705::pickupl_w']}}
																	</div>
																{{/if}}
															</div>
															{{if  $loop429->getItem("info")}}
																<div class="pickup_point_info">
																	<div class="moreText">{{$loop429->getItemEscape("info")}}
																	</div>
																	{{if  $loop429->getItem("time")}}
																		<div class="timeText">
																			{{if  $loop429->getItem("time/@undefinded_time")  == (string) 'true'}}
																				{{$txt['107705::pickupl_site_time_undefined']}}
																			{{elseif ( $loop429->getItem("delivery_time/@days")  == (string) 0) and ( $loop429->getItem("delivery_time/@hours")  == (string) 0) and ( $loop429->getItem("delivery_time/@minutes")  == (string) 0)}}
																				{{$txt['107705::pickupl_site_time_zero']}}
																			{{elseif  $loop429->getItem("delivery_time")}}
																				{{$txt['107705::pickupl_site_time_defined']}}
																				{{if  $loop429->getItem("delivery_time/@days")   gt (string) 0}}
																					{{$loop429->getItemEscape("delivery_time/@days")}}
																					{{if  $loop429->getItem("delivery_time/@days")  == (string) '1'}}
																						{{$txt['107705::pickupl_site_time_day']}}
																					{{else}}
																						{{$txt['107705::pickupl_site_time_days']}}
																					{{/if}}
																				{{/if}}
																				{{if  $loop429->getItem("delivery_time/@hour")   gt (string) 0}}
																					{{$loop429->getItemEscape("delivery_time/@hour")}}{{$txt['107705::pickupl_site_time_hours2']}}
																				{{/if}}
																				{{if  $loop429->getItem("delivery_time/@minutes")   gt (string) 0}}
																					{{$loop429->getItemEscape("delivery_time/@minutes")}}{{$txt['107705::pickupl_site_time_min']}}
																				{{/if}}
																			{{elseif  $loop429->getItem("delivery_time/@days")  == (string) '0'}}
																				{{if  $loop429->getItem("delivery_time/@hour")  == (string) '0'}}
																					{{$txt['107705::pickupl_site_time_zero']}}
																				{{else}}
																					{{$txt['107705::pickupl_site_time_defined']}}{{$loop429->getItemEscape("delivery_time/@hour")}}
																					{{if  $loop429->getItem("delivery_time/@hour")  == (string) '1'}}
																						{{$txt['107705::pickupl_site_time_hours2']}}
																					{{elseif ( $loop429->getItem("delivery_time/@hour")  == (string) '2') or ( $loop429->getItem("delivery_time/@hour")  == (string) '3') or ( $loop429->getItem("delivery_time/@hour")  == (string) '4') or ( $loop429->getItem("delivery_time/@hour")  == (string) '22') or ( $loop429->getItem("delivery_time/@hour")  == (string) '23') or ( $loop429->getItem("delivery_time/@hour")  == (string) '24')}}
																						{{$txt['107705::pickupl_site_time_hours3']}}
																					{{else}}
																						{{$txt['107705::pickupl_site_time_hours']}}
																					{{/if}}
																				{{/if}}
																			{{else}}
																				{{$txt['107705::pickupl_site_time_defined']}}{{$loop429->getItemEscape("delivery_time/@days")}}
																				{{if  $loop429->getItem("delivery_time/@days")  == (string) '1'}}
																					{{$txt['107705::pickupl_site_time_day']}}
																				{{else}}
																					{{$txt['107705::pickupl_site_time_days']}}
																				{{/if}}
																			{{/if}}
																		</div>
																	{{/if}}
																	<a class="moreLink" target="_blank" href="{{$loop429->getItemEscape("link")}}" title="{{$txt['107705::pickupl_site_linktitle']}}">{{$txt['107705::pickupl_site_link']}}</a>
																</div>
															{{/if}}
														</div>
														<a class="btn-small map_dir" target="_blank" href=" {{if $loop429->getItem("location/@longitude") and $loop429->getItem("location/@longitude") neq (string) '' }} {{$txt['107705::pickupl_google_url_dir']}}{{$loop429->getItemEscape("location/@latitude")}},{{$loop429->getItemEscape("location/@longitude")}}{{else}} {{$txt['107705::pickupl_google_url_addr']}}{{$loop429->getItemEscape("address")}}+{{$loop429->getItemEscape("zipcode")}}+{{$loop429->getItemEscape("city")}}{{/if}} ">{{$txt['107705::pickupl_wyznaczrase']}}</a>
													</label>
												{{/foreach}}
											</div>
										</div>
										{{if ( $xml->getItem("page/order_calendar/@type")  == (string) 'y') or ( $xml->getItem("page/order_calendar/@type")  == (string) 't')}}
											<div id="selectPickupDayWrapper">
												<div class="big_label">{{$txt['107705::pickupl_labelcal']}}
												</div>
												<div class="pickupl_calendar_wrapper clearfix" id="selectPickupDay">
												</div>
											</div>
										{{/if}}
										{{if  $xml->getItem("page/order_calendar[@type='t']")}}
											<div class="pickupl_hour_wrapper">
												<span>{{$txt['107705::53687_01998']}}</span>
												<input type="text" name="calendar_select_hour" class="pickup_text" MAXLENGTH="50"/>
											</div>
											<input type="hidden" name="calendar_select_active" id="calendar_select_active" value="1"/>
										{{/if}}
										<div class="pickupl_submit">
											<button {{assign "classAttributeTmp3" ""}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}btn-large btn_arrow{{/capture}} type="submit" {{if !( $xml->getItem("page/pickups/proposed/pickup[@default = 'true']")) and !( $xml->getItem("page/pickups/selected/pickup[@default = 'true']")) }}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}btn-large btn_arrow pickupl_idle{{/capture}}{{/if}}  class="{{$classAttributeTmp3}}">{{$txt['107705::pickupl_submit_title']}}
											</button>
											<p class="pickupl_back">{{$txt['107705::pickupl_back1']}}
												<a id="pickup_site_back" href="{{$xml->getItemEscape("page/pickups/@back")}}" title="{{$txt['107705::pickupl_back2']}}">{{$txt['107705::pickupl_back3']}}</a>{{$txt['107705::pickupl_back4']}}
											</p>
										</div>
									</form>
								</div>
								<div id="pickup_copy" style="display:none;">
									<input type="radio" value="" id="" name="{{$xml->getItemEscape("/shop/page/pickups/@name")}}"></input>
									<label class="pickup_point" required="required" data-id="" data-requires_client_number="" data-longitude="" data-latitude="" for="">
										<div class="pickup_point_sub">{{$txt['107705::pickupl_svg']}}
											<b class="headerText"/>
											<div>
												<span class="streetText"></span>
												<span class="zipcodePickup">{{literal}}{{/literal}}
													<span class="cityText"></span></span>
												<input type="text" name="client_courier_number" disabled="true" required="required" placeholder="{{$txt['107705::64553_postnummer']}}"></input>
												<div class="morePickup">{{$txt['107705::pickupl_w']}}
												</div>
											</div>
											<div class="pickup_point_info">
												<div class="moreText">
												</div>
												<div class="timeText" style="display:none">
												</div>
												<a class="moreLink" target="_blank" href="" title="{{$txt['107705::pickupl_site_linktitle']}}">{{$txt['107705::pickupl_site_link']}}</a>
											</div>
										</div>
										<a class="btn-small map_dir" target="_blank">{{$txt['107705::pickupl_wyznaczrase']}}</a>
									</label>
								</div>
							</div>
							<script class="ajaxLoad">
                app_shop.vars.apiKey = '{{$xml->getItemEscape("/shop/page/pickups/google_api_key/@value")}}';
                {{if  $xml->getItem("/shop/page/pickups/deliveryaddress/@country_code")}}
                    app_shop.vars.country_code = '{{$xml->getItemEscape("/shop/page/pickups/deliveryaddress/@country_code")}}';
                {{/if}}
                    app_shop.vars.language = '{{$xml->getItemEscape("/shop/language/@id")}}';
                {{if  $xml->getItem("/shop/page/pickups/courier/@isCod")}}
                    app_shop.vars.isCod = {{$xml->getItemEscape("/shop/page/pickups/courier/@isCod")}};
                {{/if}}{{if  $xml->getItem("/shop/page/pickups/courier/@id")}}
                    app_shop.vars.courierId = '{{$xml->getItemEscape("/shop/page/pickups/courier/@id")}}';
                {{/if}}							</script>

						{{/if}}
						{{if  $xml->getItem("/shop/page/pickups/country/region/city/pickup")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/pickups/country/region/city/pickup/delivery_time")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/pickups/country/region/city/pickup/name")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/pickups/country/region/city/pickup/address")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/pickups/country/region/city/pickup/link")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/pickups/country/region/city/pickup/requires_client_number")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/pickups/country/region/city/pickup/info")}}
						{{/if}}
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
				{{include file="component_menu_calendar_107960.tpl"}}
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
