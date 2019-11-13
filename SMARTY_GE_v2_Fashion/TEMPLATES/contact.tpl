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
						<!--Dane kontaktowe na stronie Kontakt (contact_contact, 64866.9)-->
						{{capture name="contact_mobile_label" assign="contact_mobile_label"}}
							{{$txt['64866::n62072_contact_label']}}
						{{/capture}}
						{{capture name="mapType" assign="mapType"}}
							{{$txt['64866::64553_MAPA_001']}}
						{{/capture}}
						{{capture name="navControl" assign="navControl"}}
							{{$txt['64866::64553_MAPA_002']}}
						{{/capture}}
						{{capture name="mapTypeControl" assign="mapTypeControl"}}
							{{$txt['64866::64553_MAPA_003']}}
						{{/capture}}
						{{capture name="scControl" assign="scControl"}}
							{{$txt['64866::64553_MAPA_004']}}
						{{/capture}}
						{{capture name="controlType" assign="controlType"}}
							{{$txt['64866::64553_MAPA_005']}}
						{{/capture}}
						{{capture name="mapTypeControlStyle" assign="mapTypeControlStyle"}}
							{{$txt['64866::64553_MAPA_006']}}
						{{/capture}}
						{{capture name="markersAnimation" assign="markersAnimation"}}
							{{$txt['64866::64553_MAPA_007']}}
						{{/capture}}
						{{capture name="bCord" assign="bCord"}}
							{{$txt['64866::64553_MAPA_008']}}
						{{/capture}}
						{{capture name="lCord" assign="lCord"}}
							{{$txt['64866::64553_MAPA_009']}}
						{{/capture}}
						{{capture name="mapZoom" assign="mapZoom"}}
							{{$txt['64866::64553_MAPA_010']}}
						{{/capture}}
						{{capture name="mapLanguage" assign="mapLanguage"}}
							{{$txt['64866::64553_MAPA_011']}}
						{{/capture}}
						{{capture name="mapCustomMarkers" assign="mapCustomMarkers"}}
							{{$txt['64866::64553_MAPA_012']}}
						{{/capture}}
						{{capture name="mapHideContact" assign="mapHideContact"}}
							{{$txt['64866::64553_MAPA_013']}}
						{{/capture}}
						<script type="text/javascript">
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

						<div id="contact_contact">
							<h2 class="big_label">{{$txt['64866::62072_002']}}
							</h2>
							<div class="contact_contact_sub">
								<div class="contact_contact_left">
									{{if  $xml->getItem("/shop/page/contact/shop_data/@shopname")}}
										<h3>{{$xml->getItemEscape("/shop/page/contact/shop_data/@shopname")}}
										</h3>
									{{/if}}
									{{if  $xml->getItem("/shop/page/contact/shop_data/@shopshortname")}}
										<p id="contact_contact_shopshortname">{{$xml->getItemEscape("/shop/page/contact/shop_data/@shopshortname")}}
										</p>
									{{/if}}
									{{if  $xml->getItem("/shop/page/contact/shop_data/@street")}}
										<p id="contact_contact_street">{{$xml->getItemEscape("/shop/page/contact/shop_data/@street")}}
										</p>
									{{/if}}
									{{if  $xml->getItem("/shop/page/contact/shop_data/@zipcode") or  $xml->getItem("/shop/page/contact/shop_data/@city")}}
										<p id="contact_contact_city">{{$xml->getItemEscape("/shop/page/contact/shop_data/@zipcode")}}{{literal}}{{/literal}}{{$xml->getItemEscape("/shop/page/contact/shop_data/@city")}}
										</p>
									{{/if}}
									{{if  $xml->getItem("/shop/page/contact/shop_data/@country")}}
										<p id="contact_contact_country">{{$txt['64866::62072_002n']}}
											{{if  $xml->getItem("/shop/page/contact/shop_data/@province")}}
												{{$xml->getItemEscape("/shop/page/contact/shop_data/@province")}}{{literal}},{{/literal}}
											{{/if}}
											{{$xml->getItemEscape("/shop/page/contact/shop_data/@country")}}{{$txt['64866::62072_001n']}}
										</p>
									{{/if}}
									{{if  $xml->getItem("/shop/page/contact/shop_data/@street") or  $xml->getItem("/shop/page/contact/shop_data/@street")  neq (string) '' or  $xml->getItem("/shop/page/contact/shop_data/@zipcode") or  $xml->getItem("/shop/page/contact/shop_data/@zipcode")  neq (string) '' or  $xml->getItem("/shop/page/contact/shop_data/@city") or  $xml->getItem("/shop/page/contact/shop_data/@city")  neq (string) ''}}
										{{if ($mapHideContact  neq (string) '') and  $xml->getItem("/shop/page/contact/google_api_key/@value")}}
											<a {{assign "classAttributeTmp3" ""}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}show_on_map{{/capture}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}btn-small show_on_map{{/capture}} href="http://maps.google.com/maps?q={{$xml->getItemEscape("/shop/page/contact/shop_data/@zipcode")}}%20{{$xml->getItemEscape("/shop/page/contact/shop_data/@city")}}%20{{$xml->getItemEscape("/shop/page/contact/shop_data/@street")}}"  class="{{$classAttributeTmp3}}">{{$txt['64866::n62072_a']}}</a>
										{{/if}}
									{{/if}}
								</div>
								{{if $contact_mobile_label}}
									<h2 class="big_label visible-phone">{{$contact_mobile_label}}
									</h2>
								{{/if}}
								<div class="contact_contact_right">
									{{foreach from=$xml->getList("/shop/page/contact/contact_nodes/node") item=loop314}}
										<p>
											{{if  $loop314->getItem("@title") and !( $loop314->getItem("@title")  == (string) '')}}
												<strong>{{$loop314->getItemEscape("@title")}}{{$txt['64866::62072_001']}}</strong>
											{{/if}}
											{{if  $loop314->getItem("@link")}}
												<a href="{{$loop314->getItemEscape("@link")}}">
													{{if  $loop314->getItem("@gfx")}}
														class="contact_contact_gfx"
														{{if !( $loop314->getItem("/shop/@sslurl")  neq (string) '')}}
															<img src="{{$loop314->getItemEscape("@gfx")}}" alt="{{$loop314->getItemEscape("@value")}}"></img>
														{{/if}}
													{{/if}}
													{{$loop314->getItemEscape("@value")}}</a>
											{{else}}
												<span>
													{{if  $loop314->getItem("@gfx")}}
														class="contact_contact_gfx"
														{{if !( $loop314->getItem("/shop/@sslurl")  neq (string) '')}}
															<img src="{{$loop314->getItemEscape("@gfx")}}" alt="{{$loop314->getItemEscape("@value")}}"></img>
														{{/if}}
													{{/if}}
													{{$loop314->getItemEscape("@value")}}</span>
											{{/if}}
											{{if  $loop314->getItem("@type")  == (string) 'phone'}}
												{{$txt['64866::62072_phone_ico']}}
											{{elseif  $loop314->getItem("@type")  == (string) 'mail'}}
												{{$txt['64866::62072_mail_ico']}}
											{{/if}}
										</p>
									{{/foreach}}
								</div>
								<div class="clear_all">
								</div>
								{{if  $xml->getItem("/shop/page/contact/google_api_key/@value") and ( $xml->getItem("/shop/page/contact/shop_data/@street") or  $xml->getItem("/shop/page/contact/shop_data/@zipcode") or  $xml->getItem("/shop/page/contact/shop_data/@city"))}}
									<div {{assign "classAttributeTmp4" ""}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}contact_map_all{{/capture}}{{if ($mapHideContact neq (string) '')}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}contact_map_all hide{{/capture}}{{/if}}  class="{{$classAttributeTmp4}}">
										<div class="loadingMap">
											<div class="loadingContent">
												<div class="loadingBox">
													<span class="loadingMap">{{$txt['64866::64553_013']}}</span>
													<span class="loadingNav">{{$txt['64866::64553_014']}}</span>
													<span class="loadingAdres">{{$txt['64866::64553_018']}}</span>
													<img class="loadingMapImg" src="/gfx/__IAI_TEMPLATE_LANG_639_1__/mapLoader.gif?r=1570606529" alt=""/>
												</div>
											</div>
										</div>
										<img class="marker_face" src="/gfx/__IAI_TEMPLATE_LANG_639_1__/marker_face.png?r=1570606529" alt=""/>
										<div id="contact_map" class="contact_map_wrapper">
										</div>
									</div>
								{{/if}}
							</div>
						</div>
						<!--CMS na stronie Kontaktu (contact_cms, 55199.1)-->
						{{if  $xml->getItem("page/contact/text/body")  neq (string) ''}}
							<div {{assign "classAttributeTmp5" ""}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}contact_cms{{/capture}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}contact_cms cm{{/capture}}  class="{{$classAttributeTmp5}}">{{$xml->getItem("page/contact/text/body")}}
							</div>
						{{/if}}
						<!--Formularz kontaktu na stronie Kontakt (contact_mailform, 61390.1)-->
						{{capture name="mobile_button" assign="mobile_button"}}
							{{$txt['61390::n50201_mobile_button_title']}}
						{{/capture}}
						{{if $mobile_button}}
							<a class="btn-large btn_arrow visible-phone show-contact-form" href="#show-contact-form" title="{{$mobile_button}}">{{$txt['61390::n50201_mobile_button']}}</a>
						{{/if}}
						<form action="contact.php" method="post" class="contact_mail" onsubmit="return checkOnSubmit('{{$txt['61390::50201_005']}}','{{$txt['61390::50201_006']}}','{{$txt['61390::50201_007']}}');">
							<div class="contact_mailform" id="contact_mailform">
								<div {{assign "classAttributeTmp6" ""}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}contact_mailform_sub{{/capture}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}contact_mailform_sub big_label{{/capture}}  class="{{$classAttributeTmp6}}">{{$txt['61390::50201_001']}}
								</div>
							</div>
							<table class="contact_mailform" align="center" cellspacing="0" cellpadding="0">
								<tr>
									<td class="contact_mailform1">{{$txt['61390::50201_002']}}
									</td>
									<td class="contact_mailform5">
										<input class="contact_mailform1" type="text" size="50" name="from" id="from" {{if $xml->getItem("basket/@login")}} value="{{$xml->getItemEscape("/shop/contact/communicates/sender/@email")}}"{{/if}}></input>
										<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/need.gif?r=1570606529" alt="{{$txt['61390::n56203_010b']}}" title="{{$txt['61390::n56203_010b']}}"></img>
									</td>
								</tr>
								<tr>
									<td class="contact_mailform2">{{$txt['61390::44023_015']}}
									</td>
									<td class="contact_mailform5">
										<input type="text" class="contact_mailform_subject" name="subject" size="100" id="subject"/>
										<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/need.gif?r=1570606529" alt="{{$txt['61390::n56203_010b']}}" title="{{$txt['61390::n56203_010b']}}"></img>
									</td>
								</tr>
								<tr>
									<td class="contact_mailform3">{{$txt['61390::50201_003']}}
									</td>
									<td class="contact_mailform6">
										<textarea class="contact_mailform" name="body" cols="60" rows="7" id="body"></textarea>
										<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/need.gif?r=1570606529" alt="{{$txt['61390::n56203_010b']}}" title="{{$txt['61390::n56203_010b']}}"></img>
									</td>
								</tr>
								<tr>
									<td class="contact_mailform4" colspan="2">
										<input {{assign "classAttributeTmp7" ""}}{{capture name="classAttributeTmp7" assign="classAttributeTmp7"}}contact_mailform2{{/capture}} type="submit" name="akcja" alt="Wyślj"{{capture name="classAttributeTmp7" assign="classAttributeTmp7"}}btn-small contact_mailform2{{/capture}} value="{{$txt['61390::50201_004']}}"  class="{{$classAttributeTmp7}}"></input>
										<div class="contact_legend">{{$txt['61390::n56203_031b']}}
											<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/need.gif?r=1570606529" alt="{{$txt['61390::n56203_010b']}}" title="{{$txt['61390::n56203_010b']}}"></img>{{$txt['61390::n56203_031c']}}
										</div>
									</td>
								</tr>
							</table>
						</form>
						<!--Dane adresowe na stronie Kontakt (contact_address, 76933.1)-->
						<div id="contact_address">
							<h2 class="big_label">{{$txt['76933::62072_002']}}
							</h2>
							<div class="contact_address_sub">
								<div class="contact_address_left">
									<div class="contact_address_data">
										{{if  $xml->getItem("/shop/page/contact/owner_data/@firmname")}}
											<h3>
												<span class="visible-phone">{{$txt['76933::62072_002a']}}</span>
												<strong>{{$xml->getItemEscape("/shop/page/contact/owner_data/@firmname")}}</strong>
											</h3>
										{{/if}}
										<div class="contact_data_address">
											<span class="visible-phone">{{$txt['76933::62072_002b']}}</span>
											<div class="contact_data_address_sub">
												{{if  $xml->getItem("/shop/page/contact/owner_data/@shortfirmname")}}
													<p id="contact_address_shopshortname">{{$xml->getItemEscape("/shop/page/contact/owner_data/@shortfirmname")}}
													</p>
												{{/if}}
												{{if  $xml->getItem("/shop/page/contact/owner_data/@street")}}
													<p id="contact_address_street">{{$xml->getItemEscape("/shop/page/contact/owner_data/@street")}}
													</p>
												{{/if}}
												{{if  $xml->getItem("/shop/page/contact/owner_data/@zipcode") or  $xml->getItem("/shop/page/contact/owner_data/@city")}}
													<p id="contact_address_city">{{$xml->getItemEscape("/shop/page/contact/owner_data/@zipcode")}}{{literal}}{{/literal}}{{$xml->getItemEscape("/shop/page/contact/owner_data/@city")}}
													</p>
												{{/if}}
												{{if  $xml->getItem("/shop/page/contact/owner_data/@country")}}
													<p id="contact_address_country">{{$txt['76933::62072_002n']}}
														{{if  $xml->getItem("/shop/page/contact/owner_data/@province")}}
															{{$xml->getItemEscape("/shop/page/contact/owner_data/@province")}}{{literal}},{{/literal}}
														{{/if}}
														{{$xml->getItemEscape("/shop/page/contact/owner_data/@country")}}{{$txt['76933::62072_001n']}}
													</p>
												{{/if}}
											</div>
										</div>
									</div>
								</div>
								<div class="contact_address_right">
									{{foreach from=$xml->getList("/shop/page/contact/additional_nodes/node") item=loop470}}
										{{if !( $loop470->getItem("@value")  == (string) '')}}
											<p>
												{{if  $loop470->getItem("@title") and !( $loop470->getItem("@title")  == (string) '')}}
													<strong>{{$loop470->getItemEscape("@title")}}{{$txt['76933::62072_001']}}</strong>
												{{/if}}
												{{if  $loop470->getItem("@link")}}
													<a href="{{$loop470->getItemEscape("@link")}}">
														{{if  $loop470->getItem("@gfx")}}
															class="contact_address_gfx"
															{{if !( $loop470->getItem("/shop/@sslurl")  neq (string) '')}}
																<img src="{{$loop470->getItemEscape("@gfx")}}" alt="{{$loop470->getItemEscape("@value")}}"></img>
															{{/if}}
														{{/if}}
														{{$loop470->getItemEscape("@value")}}</a>
												{{else}}
													<span>
														{{if  $loop470->getItem("@gfx")}}
															class="contact_address_gfx"
															{{if !( $loop470->getItem("/shop/@sslurl")  neq (string) '')}}
																<img src="{{$loop470->getItemEscape("@gfx")}}" alt="{{$loop470->getItemEscape("@value")}}"></img>
															{{/if}}
														{{/if}}
														{{$loop470->getItemEscape("@value")}}</span>
												{{/if}}
											</p>
										{{/if}}
									{{/foreach}}
								</div>
							</div>
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
