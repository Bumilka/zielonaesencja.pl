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
			<script type="text/javascript" src="/gfx/{{$xml->getItemEscape("language/@id")}}/partners_list.js.gzip?r=1570606529">			</script>

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
						<!--Lista hurtowników współpracujących ze sklepem (partners_list, 67977.1)-->
						{{assign var="country_check" value="true"}}
						{{capture name="mapType" assign="mapType"}}
							{{$txt['67977::64553_MAPA_001']}}
						{{/capture}}
						{{capture name="navControl" assign="navControl"}}
							{{$txt['67977::64553_MAPA_002']}}
						{{/capture}}
						{{capture name="mapTypeControl" assign="mapTypeControl"}}
							{{$txt['67977::64553_MAPA_003']}}
						{{/capture}}
						{{capture name="scControl" assign="scControl"}}
							{{$txt['67977::64553_MAPA_004']}}
						{{/capture}}
						{{capture name="controlType" assign="controlType"}}
							{{$txt['67977::64553_MAPA_005']}}
						{{/capture}}
						{{capture name="mapTypeControlStyle" assign="mapTypeControlStyle"}}
							{{$txt['67977::64553_MAPA_006']}}
						{{/capture}}
						{{capture name="markersAnimation" assign="markersAnimation"}}
							{{$txt['67977::64553_MAPA_007']}}
						{{/capture}}
						{{capture name="bCord" assign="bCord"}}
							{{$txt['67977::64553_MAPA_008']}}
						{{/capture}}
						{{capture name="lCord" assign="lCord"}}
							{{$txt['67977::64553_MAPA_009']}}
						{{/capture}}
						{{capture name="mapZoom" assign="mapZoom"}}
							{{$txt['67977::64553_MAPA_010']}}
						{{/capture}}
						{{capture name="mapLanguage" assign="mapLanguage"}}
							{{$txt['67977::64553_MAPA_011']}}
						{{/capture}}
						{{capture name="mapCustomMarkers" assign="mapCustomMarkers"}}
							{{$txt['67977::64553_MAPA_012']}}
						{{/capture}}
						{{capture name="partnersLimit" assign="partnersLimit"}}
							{{$txt['67977::64553_MAPA_013']}}
						{{/capture}}
						<script>
    var mapTypePartners = "{{$mapType}}";
    var navControlPartners = "{{$navControl}}";
    var mapTypeControlPartners = "{{$mapTypeControl}}";
    var scControlPartners = "{{$scControl}}";
    var controlTypePartners = "{{$controlType}}";
    var mapTypeControlStylePartners = "{{$mapTypeControlStyle}}";  
    var markersAnimationPartners = "{{$markersAnimation}}";
    var bCordPartners = "{{$bCord}}";
    var lCordPartners = "{{$lCord}}";
    var partnersLanguage   = "{{$mapLanguage}}";
    var partnersZoom     = parseInt("{{$mapZoom}}");
    var markerPartnersCustomIcon      = "{{$mapCustomMarkers}}"; 
    var google_api_key = '{{$xml->getItemEscape("/shop/page/partners/google_api_key/@value")}}'; 
    						</script>

						{{if count( $xml->getList("page/partners/city"))}}
							<script>
      var mapSiteType = 'partners'; 
    							</script>

							<script>
      var countryFirst = "{{$xml->getItemEscape("page/partners/city/partner/@country")}}"; 
    							</script>

							<div {{assign "classAttributeTmp3" ""}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}partners_list_header{{/capture}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}big_label partners_list_header{{/capture}}  class="{{$classAttributeTmp3}}">
								<div class="partners_list_header_sub">
									<span class="partners_list_label">{{$txt['67977::64553_001']}}</span>
								</div>
							</div>
							{{if (count( $xml->getList("page/partners/city"))  gt (string) 1 ) and (count( $xml->getList("page/partners/city/partner"))  gt (string) $partnersLimit)}}
								<div class="partners_text_info">
									<p>{{$txt['67977::64553_002']}}
									</p>
								</div>
								{{if  $xml->getItem("/shop/page/partners/google_api_key/@value")}}
									<div class="partners_show_city_button">
										<div class="button_image">
										</div>
										<a {{assign "classAttributeTmp4" ""}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}partners_show_city_button{{/capture}} onclick="partners_map.showCityList();"{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}btn-large partners_show_city_button{{/capture}} title="{{$txt['67977::64553_016']}}"  class="{{$classAttributeTmp4}}">{{$txt['67977::64553_009']}}</a>
									</div>
								{{/if}}
							{{/if}}
							{{if count( $xml->getList("page/partners/city"))  == (string) 1}}
								<div class="partners_text_info_oneCity">
									<p>{{$txt['67977::64553_002_oneCity']}}
									</p>
								</div>
								<script>
        partners_map.oneCity = true;  
      								</script>

							{{/if}}
							{{if (count( $xml->getList("page/partners/city"))  gt (string) 1 ) and !(count( $xml->getList("page/partners/city/partner"))  gt (string) $partnersLimit)}}
								<div class="partners_text_info_partnersLimit">
									<p>{{$txt['67977::64553_002_partnersLimit']}}
									</p>
								</div>
								<script>
        partners_map.partnersLimit = true;  
      								</script>

								<script>
        partners_map.partnersLimitCount = {{$xml->getItemEscape("count(page/partners/city/partner)")}};    
      								</script>

							{{/if}}
							{{if  $xml->getItem("/shop/page/partners/google_api_key/@value")}}
								<div class="mapContainer">
									<div class="loadingMap">
										<div class="loadingContent">
											<div class="loadingBox">
												<span class="loadingMap">{{$txt['67977::64553_013']}}</span>
												<span class="loadingNav">{{$txt['67977::64553_014']}}</span>
												<span class="loadingMarkers">{{$txt['67977::64553_015']}}
													<span class="loadingMarkersComplete"></span>{{$txt['67977::64553_017']}}
													<span class="loadingMarkersCount"></span></span>
												<img class="loadingMapImg" src="/gfx/__IAI_TEMPLATE_LANG_639_1__/mapLoader.gif?r=1570606529"/>
											</div>
										</div>
									</div>
									<img class="marker_face" src="/gfx/__IAI_TEMPLATE_LANG_639_1__/marker_face.png?r=1570606529"/>
									<div id="partners_map" class="partners_map_wrapper">
									</div>
								</div>
							{{/if}}
							<div class="partners_list_under">
								{{if (count( $xml->getList("page/partners/city"))  gt (string) 1 ) and (count( $xml->getList("page/partners/city/partner"))  gt (string) $partnersLimit)}}
									{{foreach from=$xml->getList("page/partners/city") item=loop378}}
										<div class=" city_{{$loop378@iteration}} city_wrapper ">
											<div {{assign "classAttributeTmp5" ""}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}partners_list_under_sub{{/capture}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}big_label partners_list_under_sub{{/capture}}  class="{{$classAttributeTmp5}}">
												<span class="partners_list_under_label">{{$txt['67977::64553_003']}}{{$loop378->getItemEscape("@name")}}</span>
											</div>
											{{foreach from=$loop378->getList("partner") item=loop393}}
												<div class="partners_list_under_wrapper">
													<div class="partners_list_under_wrapper_sub">
														{{if !( $loop393->getItem("card/@name")  == (string) '') and  $loop393->getItem("card")}}
															<span class="city_firm_name">{{$loop393->getItemEscape("card/@name")}}</span>
														{{else}}
															{{if !( $loop393->getItem("@firmname")  == (string) '')}}
																<span class="city_firm_name">{{$loop393->getItemEscape("@firmname")}}</span>
															{{else}}
																<span class="city_firm_name">
																	{{if  $loop393->getItem("@name")}}
																		<span class="city_name">{{$loop393->getItemEscape("@name")}}</span>
																	{{/if}}
																	{{if  $loop393->getItem("@lastname")}}
																		{{$loop393->getItemEscape("@lastname")}}
																	{{/if}}
																	</span>
															{{/if}}
														{{/if}}
														{{if !( $loop393->getItem("@address")  == (string) '')}}
															<span class="city_address">{{$loop393->getItemEscape("@address")}}</span>
														{{/if}}
														{{if !( $loop393->getItem("@zipcode")  == (string) '')}}
															<span class="city_zipcode">{{$loop393->getItemEscape("@zipcode")}}</span>
														{{/if}}
														{{if !( $loop393->getItem("@city")  == (string) '')}}
															<span class="city_city">{{$loop393->getItemEscape("@city")}}</span>
														{{/if}}
														{{if !( $loop393->getItem("@country")  == (string) '')}}
															<script>
                      if ( partners_map.countryCheck ) {
                      var countryTemp = '{{$loop393->getItemEscape("@country")}}';
                      if (countryFirst != countryTemp )
                      partners_map.countryCheck = false;  
                      }
                    															</script>

															<span class="city_country">
																(
																{{if  $loop393->getItem("@province")}}
																	{{$loop393->getItemEscape("@province")}}{{literal}},{{/literal}}
																{{/if}}
																{{$loop393->getItemEscape("@country")}})</span>
														{{/if}}
														{{if !( $loop393->getItem("@phone1")  == (string) '')}}
															<span class="city_tel1">{{$txt['67977::64553_004']}}{{$loop393->getItemEscape("@phone1")}}</span>
														{{/if}}
														{{if !( $loop393->getItem("@phone2")  == (string) '')}}
															<span class="city_tel2">{{$txt['67977::64553_005']}}{{$loop393->getItemEscape("@phone2")}}</span>
														{{/if}}
														{{if !( $loop393->getItem("@email")  == (string) '')}}
															<a class="city_email" href=" mailto:{{$loop393->getItemEscape("@email")}} ">{{$loop393->getItemEscape("@email")}}</a>
														{{/if}}
														{{if !( $loop393->getItem("card/@wwww")  == (string) '')}}
															<a class="city_www" target="_blank" href=" http://{{$loop393->getItemEscape("card/@www")}} ">{{$loop393->getItemEscape("card/@www")}}</a>
														{{/if}}
														{{if  $loop393->getItem("card/desc")}}
															<a {{assign "classAttributeTmp6" ""}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}city_showDesc{{/capture}} onclick="partners_map.showDesc(this);"{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}btn-small city_showDesc{{/capture}}  class="{{$classAttributeTmp6}}">{{$txt['67977::64553_012']}}
																<div class="city_desc">
																	<div class="city_desc_wrapper">{{$loop393->getItem("card/desc")}}
																	</div>
																</div></a>
														{{/if}}
														<a {{assign "classAttributeTmp7" ""}}{{capture name="classAttributeTmp7" assign="classAttributeTmp7"}}show_on_map{{/capture}} onclick="partners_map.markerOnClick(this);"{{capture name="classAttributeTmp7" assign="classAttributeTmp7"}}btn-small show_on_map{{/capture}}{{if !( $loop393->getItem("card/desc"))}}{{capture name="classAttributeTmp7" assign="classAttributeTmp7"}}show_on_map btn-small noDesc{{/capture}}{{/if}}  class="{{$classAttributeTmp7}}">{{$txt['67977::n67977_show_map']}}</a>
														{{if  $loop393->getItem("card/@icon")}}
															<img class="city_img" src="{{$loop393->getItemEscape("card/@icon")}}"></img>
														{{/if}}
													</div>
												</div>
											{{/foreach}}
										</div>
									{{/foreach}}
								{{/if}}
								{{if !(count( $xml->getList("page/partners/city/partner"))  gt (string) $partnersLimit)}}
									<div {{assign "classAttributeTmp5" ""}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}partners_list_under_sub{{/capture}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}big_label partners_list_under_sub{{/capture}}  class="{{$classAttributeTmp5}}">
										<span class="partners_list_under_label">{{$txt['67977::64553_003a']}}</span>
									</div>
									{{foreach from=$xml->getList("page/partners/city") item=loop509}}
										{{foreach from=$loop509->getList("partner") item=loop512}}
											<div class="partners_list_under_wrapper under_limit">
												<div class="partners_list_under_wrapper_sub">
													{{if !( $loop512->getItem("card/@name")  == (string) '') and  $loop512->getItem("card")}}
														<span class="city_firm_name">{{$loop512->getItemEscape("card/@name")}}</span>
													{{else}}
														{{if !( $loop512->getItem("@firmname")  == (string) '')}}
															<span class="city_firm_name">{{$loop512->getItemEscape("@firmname")}}</span>
														{{else}}
															<span class="city_firm_name">
																{{if  $loop512->getItem("@name")}}
																	<span class="city_name">{{$loop512->getItemEscape("@name")}}</span>
																{{/if}}
																{{if  $loop512->getItem("@lastname")}}
																	{{$loop512->getItemEscape("@lastname")}}
																{{/if}}
																</span>
														{{/if}}
													{{/if}}
													{{if !( $loop512->getItem("@address")  == (string) '')}}
														<span class="city_address">{{$loop512->getItemEscape("@address")}}</span>
													{{/if}}
													{{if !( $loop512->getItem("@zipcode")  == (string) '')}}
														<span class="city_zipcode">{{$loop512->getItemEscape("@zipcode")}}</span>
													{{/if}}
													{{if !( $loop512->getItem("@city")  == (string) '')}}
														<span class="city_city">{{$loop512->getItemEscape("@city")}}</span>
													{{/if}}
													{{if !( $loop512->getItem("@country")  == (string) '')}}
														<script>
                      if ( partners_map.countryCheck ) {
                      var countryTemp = '{{$loop512->getItemEscape("@country")}}';
                      if (countryFirst != countryTemp )
                      partners_map.countryCheck = false;  
                      }
                    														</script>

														<span class="city_country">{{$loop512->getItemEscape("@country")}}</span>
													{{/if}}
													{{if !( $loop512->getItem("@phone1")  == (string) '')}}
														<span class="city_tel1">{{$txt['67977::64553_004']}}{{$loop512->getItemEscape("@phone1")}}</span>
													{{/if}}
													{{if !( $loop512->getItem("@phone2")  == (string) '')}}
														<span class="city_tel2">{{$txt['67977::64553_005']}}{{$loop512->getItemEscape("@phone2")}}</span>
													{{/if}}
													{{if !( $loop512->getItem("@email")  == (string) '')}}
														<a class="city_email" href=" mailto:{{$loop512->getItemEscape("@email")}} ">{{$loop512->getItemEscape("@email")}}</a>
													{{/if}}
													{{if !( $loop512->getItem("card/@wwww")  == (string) '')}}
														<a class="city_www" target="_blank" href=" http://{{$loop512->getItemEscape("card/@www")}} ">{{$loop512->getItemEscape("card/@www")}}</a>
													{{/if}}
													{{if  $loop512->getItem("card/desc")}}
														<a class="city_showDesc" onclick="partners_map.showDesc(this);">{{$txt['67977::64553_012']}}
															<div class="city_desc">
																<div class="city_desc_wrapper">{{$loop512->getItem("card/desc")}}
																</div>
															</div></a>
													{{/if}}
													<a {{assign "classAttributeTmp9" ""}}{{capture name="classAttributeTmp9" assign="classAttributeTmp9"}}show_on_map{{/capture}} onclick="partners_map.markerOnClick(this);" {{if !( $loop512->getItem("card/desc"))}}{{capture name="classAttributeTmp9" assign="classAttributeTmp9"}}show_on_map noDesc{{/capture}}{{/if}}  class="{{$classAttributeTmp9}}">{{$txt['67977::n67977_show_map']}}</a>
													{{if  $loop512->getItem("card/@icon")}}
														<img class="city_img" src="{{$loop512->getItemEscape("card/@icon")}}"></img>
													{{/if}}
												</div>
											</div>
										{{/foreach}}
									{{/foreach}}
								{{/if}}
							</div>
							<div id="partners_list_none">
								<div id="partners_list_city_pop">
									<h2 class="partner_list_city_label">{{$txt['67977::64553_010']}}
									</h2>
									<div class="partners_list_city_search_wrapper">
										<input class="partners_list_city_search" id="city_search" type="text" name="text" onkeyup="partners_map.citySearch(this);" onfocus="partners_map.clearInput(this)" onblur="partners_map.clearInput(this)" value="{{$txt['67977::64553_008']}}"></input>
									</div>
									<div class="partners_list_city_list_wrapper">
										<span class="partners_list_noResult">{{$txt['67977::64553_018']}}</span>
										{{foreach from=$xml->getList("page/partners/city") item=loop636}}
											<div class="city_list_element">
												<a class="city_list_city" onclick="partners_map.showSelectedCityList(this);" rel=" {{$loop636@iteration}} ">{{$loop636->getItemEscape("@name")}}</a>
												<span class="city_list_info">{{$txt['67977::64553_006']}}{{$loop636->getItemEscape("count(partner)")}}{{$txt['67977::64553_007']}}</span>
											</div>
										{{/foreach}}
									</div>
									<div id="menu_notice" class="partners_list_buttons">
										<button class="btn-small" onclick="$('#dialog_close').click();">{{$txt['67977::64553_011']}}
										</button>
									</div>
								</div>
							</div>
						{{/if}}
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
