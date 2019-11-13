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
			<script type="text/javascript" src="/gfx/{{$xml->getItemEscape("language/@id")}}/stock_info.js.gzip?r=1570606529">			</script>

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
						<!--CMS - stock (stock_cms, 58112.1)-->
						{{if  $xml->getItem("page/text/body")}}
							<div {{assign "classAttributeTmp3" ""}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}stock_cms_label{{/capture}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}stock_cms_label big_label{{/capture}}  class="{{$classAttributeTmp3}}">
								<span class="stock_cms_label">{{$txt['58112::stock_cms_label']}}</span>
							</div>
							<div class="stock_cms">
								<div class="stock_cms_sub">{{$xml->getItem("page/text/body")}}
								</div>
							</div>
						{{/if}}
						<!--Informacja o magazynie (stock_info, 64867.9)-->
						{{capture name="mapType" assign="mapType"}}
							{{$txt['64867::64553_MAPA_001']}}
						{{/capture}}
						{{capture name="navControl" assign="navControl"}}
							{{$txt['64867::64553_MAPA_002']}}
						{{/capture}}
						{{capture name="mapTypeControl" assign="mapTypeControl"}}
							{{$txt['64867::64553_MAPA_003']}}
						{{/capture}}
						{{capture name="scControl" assign="scControl"}}
							{{$txt['64867::64553_MAPA_004']}}
						{{/capture}}
						{{capture name="controlType" assign="controlType"}}
							{{$txt['64867::64553_MAPA_005']}}
						{{/capture}}
						{{capture name="mapTypeControlStyle" assign="mapTypeControlStyle"}}
							{{$txt['64867::64553_MAPA_006']}}
						{{/capture}}
						{{capture name="mapHide" assign="mapHide"}}
							{{$txt['64867::64553_MAPA_013']}}
						{{/capture}}
						{{capture name="markersAnimation" assign="markersAnimation"}}
							{{$txt['64867::64553_MAPA_007']}}
						{{/capture}}
						{{capture name="bCord" assign="bCord"}}
							{{$txt['64867::64553_MAPA_008']}}
						{{/capture}}
						{{capture name="lCord" assign="lCord"}}
							{{$txt['64867::64553_MAPA_009']}}
						{{/capture}}
						{{capture name="mapZoom" assign="mapZoom"}}
							{{$txt['64867::64553_MAPA_010']}}
						{{/capture}}
						{{capture name="mapLanguage" assign="mapLanguage"}}
							{{$txt['64867::64553_MAPA_011']}}
						{{/capture}}
						{{capture name="mapCustomMarkers" assign="mapCustomMarkers"}}
							{{$txt['64867::64553_MAPA_012']}}
						{{/capture}}
						<script>
            var mapTypeStock= "{{$mapType}}";
            var navControlStock= "{{$navControl}}";
            var mapTypeControlStock= "{{$mapTypeControl}}";
            var scControlStock= "{{$scControl}}";
            var controlTypeStock= "{{$controlType}}";
            var mapTypeControlStyleStock= "{{$mapTypeControlStyle}}";
            var mapHide = "{{$mapHide}}";
            var markersAnimationStock = "{{$markersAnimation}}";
            var bCordStock = "{{$bCord}}";
            var lCordStock = "{{$lCord}}";
            var stockLanguage   = "{{$mapLanguage}}";
            var stockZoom     = parseInt("{{$mapZoom}}");
            var markerStockCustomIcon      = "{{$mapCustomMarkers}}";
            var mapSiteType = 'stock';
            var google_api_key = '{{$xml->getItemEscape("/shop/page/stock/google_api_key/@value")}}';
        						</script>

						<div class="stock_info_outline" id="stock_info_58110">
							<div {{assign "classAttributeTmp4" ""}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}stock_label{{/capture}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}big_label stock_label{{/capture}}  class="{{$classAttributeTmp4}}">
								<span class="stock_label">{{$txt['64867::stock_info_label']}}</span>
							</div>
							<div class="stock_info_sub">
								<div class="stock_info_details">
									{{if  $xml->getItem("page/stock/@name") and ( $xml->getItem("page/stock/@name")  neq (string) '')}}
										<div class="stock_info_section" id="stock_info_details_name">
											<span class="stock_info_title">{{$txt['64867::stock_info_name_title']}}</span>
											<h1 class="stock_info_name">{{$xml->getItemEscape("page/stock/@name")}}
											</h1>
										</div>
									{{/if}}
									{{if  $xml->getItem("page/stock/@street") and ( $xml->getItem("page/stock/@street")  neq (string) '')}}
										<div class="stock_info_section" id="stock_info_details_street">
											<span class="stock_info_title">{{$txt['64867::stock_info_street_title']}}</span>
											<span class="stock_info_value">{{$xml->getItemEscape("page/stock/@street")}}</span>
										</div>
									{{/if}}
									{{if  $xml->getItem("page/stock/@zipcode") and ( $xml->getItem("page/stock/@zipcode")  neq (string) '')}}
										<div class="stock_info_section" id="stock_info_details_zipcode">
											<span class="stock_info_title">{{$txt['64867::stock_info_zipcode_title']}}</span>
											<span class="stock_info_value">{{$xml->getItemEscape("page/stock/@zipcode")}}</span>
										</div>
									{{/if}}
									{{if  $xml->getItem("page/stock/@city") and ( $xml->getItem("page/stock/@city")  neq (string) '')}}
										<div class="stock_info_section" id="stock_info_details_city">
											<span class="stock_info_title">{{$txt['64867::stock_info_city_title']}}</span>
											<span class="stock_info_value">{{$xml->getItemEscape("page/stock/@city")}}</span>
										</div>
									{{/if}}
									{{if  $xml->getItem("page/stock/@country") and ( $xml->getItem("page/stock/@country")  neq (string) '')}}
										<div class="stock_info_section" id="stock_info_details_country">
											<span class="stock_info_title">{{$txt['64867::stock_info_country_title']}}</span>
											<span class="stock_info_value">{{$xml->getItemEscape("page/stock/@country")}}</span>
										</div>
									{{/if}}
									{{if  $xml->getItem("page/stock/@phone") and ( $xml->getItem("page/stock/@phone")  neq (string) '')}}
										<div class="stock_info_section" id="stock_info_details_phone">
											<span class="stock_info_title">{{$txt['64867::stock_info_phone_title']}}</span>
											<span class="stock_info_value">
												{{if  $xml->getItem("page/stock/@phone_link") and ( $xml->getItem("page/stock/@phone_link")  neq (string) '')}}
													<a href="{{$xml->getItemEscape("page/stock/@phone_link")}}" title="{{$xml->getItemEscape("page/stock/@phone")}}">{{$xml->getItemEscape("page/stock/@phone")}}</a>
												{{else}}
													{{$xml->getItemEscape("page/stock/@phone")}}
												{{/if}}
												</span>
										</div>
									{{/if}}
									{{if  $xml->getItem("page/stock/@fax") and ( $xml->getItem("page/stock/@fax")  neq (string) '')}}
										<div class="stock_info_section" id="stock_info_details_fax">
											<span class="stock_info_title">{{$txt['64867::stock_info_fax_title']}}</span>
											<span class="stock_info_value">{{$xml->getItemEscape("page/stock/@fax")}}</span>
										</div>
									{{/if}}
									{{if  $xml->getItem("page/stock/@mail") and ( $xml->getItem("page/stock/@mail")  neq (string) '')}}
										<div class="stock_info_section" id="stock_info_details_mail">
											<span class="stock_info_title">{{$txt['64867::stock_info_mail_title']}}</span>
											<a {{assign "hrefAttributeTmp8" ""}}  class="stock_info_value" title="{{$xml->getItemEscape("page/stock/@mail")}}" {{if $xml->getItem("page/stock/@mail_link") and $xml->getItem("page/stock/@mail_link") neq (string) ''}}{{capture name="hrefAttributeTmp8" assign="hrefAttributeTmp8"}}{{$xml->getItemEscape("page/stock/@mail_link")}}{{/capture}}{{else}}{{capture name="hrefAttributeTmp8" assign="hrefAttributeTmp8"}}mailto:{{$xml->getItemEscape("page/stock/@mail")}}{{/capture}}{{/if}}  href="{{$hrefAttributeTmp8}}">{{$xml->getItemEscape("page/stock/@mail")}}</a>
										</div>
									{{/if}}
									{{if  $xml->getItem("page/stock/@gg") and ( $xml->getItem("page/stock/@gg")  neq (string) '')}}
										<div class="stock_info_section" id="stock_info_details_gg">
											<span class="stock_info_title">{{$txt['64867::stock_info_gg_title']}}</span>
											<a class="stock_info_value" href="gg:{{$xml->getItemEscape("page/stock/@gg")}}">
												<img alt="gg" src="http://status.gadu-gadu.pl/users/status.asp?id={{$xml->getItemEscape("page/stock/@gg")}}"></img>{{$xml->getItemEscape("page/stock/@gg")}}</a>
										</div>
									{{/if}}
									{{if  $xml->getItem("page/stock/@skype") and ( $xml->getItem("page/stock/@skype")  neq (string) '')}}
										<div class="stock_info_section" id="stock_info_details_skype">
											<span class="stock_info_title">{{$txt['64867::stock_info_skype_title']}}</span>
											<a class="stock_info_value" href="callto://{{$xml->getItemEscape("page/stock/@skype")}}">
												<img alt="skype" src="http://mystatus.skype.com/smallicon/{{$xml->getItemEscape("page/stock/@skype")}}"></img>{{$xml->getItemEscape("page/stock/@skype")}}</a>
										</div>
									{{/if}}
									{{if  $xml->getItem("page/stock/@street") and ( $xml->getItem("page/stock/@street")  neq (string) '') or  $xml->getItem("page/stock/@zipcode") or ( $xml->getItem("page/stock/@zipcode")  neq (string) '') or  $xml->getItem("page/stock/@city") and ( $xml->getItem("page/stock/@city")  neq (string) '')}}
										{{if ($mapHide  neq (string) '') and  $xml->getItem("page/stock/google_api_key/@value")}}
											<a {{assign "classAttributeTmp5" ""}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}show_on_map{{/capture}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}btn-small show_on_map{{/capture}} href="http://maps.google.com/maps?q={{$xml->getItemEscape("page/stock/@zipcode")}}%20{{$xml->getItemEscape("page/stock/@city")}}%20{{$xml->getItemEscape("page/stock/@street")}}"  class="{{$classAttributeTmp5}}">{{$txt['64867::stock_map']}}</a>
										{{/if}}
									{{/if}}
								</div>
								<div class="stock_info_hours">
									<span class="stock_info_hours_label">{{$txt['64867::stock_info_hours_label']}}</span>
									{{if  $xml->getItem("page/stock_time/monday")}}
										<div class="stock_info_hours_day">
											<span class="stock_info_hours_day">{{$txt['64867::stock_info_hours_monday']}}</span>
											<span class="stock_info_hours_time">
												{{if  $xml->getItem("page/stock_time/monday/@open")  neq (string)  $xml->getItem("page/stock_time/monday/@close")}}
													{{$txt['64867::stock_info_hours_open']}}{{$xml->getItemEscape("page/stock_time/monday/@open")}}{{$txt['64867::stock_info_hours_close']}}{{$xml->getItemEscape("page/stock_time/monday/@close")}}
												{{else}}
													{{$txt['64867::stock_info_hours_inactive']}}
												{{/if}}
												</span>
										</div>
									{{/if}}
									{{if  $xml->getItem("page/stock_time/tuesday")}}
										<div class="stock_info_hours_day">
											<span class="stock_info_hours_day">{{$txt['64867::stock_info_hours_tuesday']}}</span>
											<span class="stock_info_hours_time">
												{{if  $xml->getItem("page/stock_time/tuesday/@open")  neq (string)  $xml->getItem("page/stock_time/tuesday/@close")}}
													{{$txt['64867::stock_info_hours_open']}}{{$xml->getItemEscape("page/stock_time/tuesday/@open")}}{{$txt['64867::stock_info_hours_close']}}{{$xml->getItemEscape("page/stock_time/tuesday/@close")}}
												{{else}}
													{{$txt['64867::stock_info_hours_inactive']}}
												{{/if}}
												</span>
										</div>
									{{/if}}
									{{if  $xml->getItem("page/stock_time/wednesday")}}
										<div class="stock_info_hours_day">
											<span class="stock_info_hours_day">{{$txt['64867::stock_info_hours_wednesday']}}</span>
											<span class="stock_info_hours_time">
												{{if  $xml->getItem("page/stock_time/wednesday/@open")  neq (string)  $xml->getItem("page/stock_time/wednesday/@close")}}
													{{$txt['64867::stock_info_hours_open']}}{{$xml->getItemEscape("page/stock_time/wednesday/@open")}}{{$txt['64867::stock_info_hours_close']}}{{$xml->getItemEscape("page/stock_time/wednesday/@close")}}
												{{else}}
													{{$txt['64867::stock_info_hours_inactive']}}
												{{/if}}
												</span>
										</div>
									{{/if}}
									{{if  $xml->getItem("page/stock_time/thursday")}}
										<div class="stock_info_hours_day">
											<span class="stock_info_hours_day">{{$txt['64867::stock_info_hours_thursday']}}</span>
											<span class="stock_info_hours_time">
												{{if  $xml->getItem("page/stock_time/thursday/@open")  neq (string)  $xml->getItem("page/stock_time/thursday/@close")}}
													{{$txt['64867::stock_info_hours_open']}}{{$xml->getItemEscape("page/stock_time/thursday/@open")}}{{$txt['64867::stock_info_hours_close']}}{{$xml->getItemEscape("page/stock_time/thursday/@close")}}
												{{else}}
													{{$txt['64867::stock_info_hours_inactive']}}
												{{/if}}
												</span>
										</div>
									{{/if}}
									{{if  $xml->getItem("page/stock_time/friday")}}
										<div class="stock_info_hours_day">
											<span class="stock_info_hours_day">{{$txt['64867::stock_info_hours_friday']}}</span>
											<span class="stock_info_hours_time">
												{{if  $xml->getItem("page/stock_time/friday/@open")  neq (string)  $xml->getItem("page/stock_time/friday/@close")}}
													{{$txt['64867::stock_info_hours_open']}}{{$xml->getItemEscape("page/stock_time/friday/@open")}}{{$txt['64867::stock_info_hours_close']}}{{$xml->getItemEscape("page/stock_time/friday/@close")}}
												{{else}}
													{{$txt['64867::stock_info_hours_inactive']}}
												{{/if}}
												</span>
										</div>
									{{/if}}
									{{if  $xml->getItem("page/stock_time/saturday")}}
										<div class="stock_info_hours_day">
											<span class="stock_info_hours_day">{{$txt['64867::stock_info_hours_saturday']}}</span>
											<span class="stock_info_hours_time">
												{{if  $xml->getItem("page/stock_time/saturday/@open")  neq (string)  $xml->getItem("page/stock_time/saturday/@close")}}
													{{$txt['64867::stock_info_hours_open']}}{{$xml->getItemEscape("page/stock_time/saturday/@open")}}{{$txt['64867::stock_info_hours_close']}}{{$xml->getItemEscape("page/stock_time/saturday/@close")}}
												{{else}}
													{{$txt['64867::stock_info_hours_inactive']}}
												{{/if}}
												</span>
										</div>
									{{/if}}
									{{if  $xml->getItem("page/stock_time/sunday")}}
										<div class="stock_info_hours_day">
											<span class="stock_info_hours_day">{{$txt['64867::stock_info_hours_sunday']}}</span>
											<span class="stock_info_hours_time">
												{{if  $xml->getItem("page/stock_time/sunday/@open")  neq (string)  $xml->getItem("page/stock_time/sunday/@close")}}
													{{$txt['64867::stock_info_hours_open']}}{{$xml->getItemEscape("page/stock_time/sunday/@open")}}{{$txt['64867::stock_info_hours_close']}}{{$xml->getItemEscape("page/stock_time/sunday/@close")}}
												{{else}}
													{{$txt['64867::stock_info_hours_inactive']}}
												{{/if}}
												</span>
										</div>
									{{/if}}
								</div>
							</div>
							{{if  $xml->getItem("page/stock/google_api_key/@value") and ( $xml->getItem("page/stock/@street") and ( $xml->getItem("page/stock/@street")  neq (string) '') or  $xml->getItem("page/stock/@zipcode") and ( $xml->getItem("page/stock/@zipcode")  neq (string) '') or  $xml->getItem("page/stock/@city") and ( $xml->getItem("page/stock/@city")  neq (string) ''))}}
								<div {{assign "classAttributeTmp6" ""}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}stock_map_all{{/capture}}{{if ($mapHide neq (string) '')}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}stock_map_all hide{{/capture}}{{/if}}  class="{{$classAttributeTmp6}}">
									<div class="loadingMap">
										<div class="loadingContent">
											<div class="loadingBox">
												<span class="loadingMap">{{$txt['64867::64553_013']}}</span>
												<span class="loadingNav">{{$txt['64867::64553_014']}}</span>
												<span class="loadingAddress">{{$txt['64867::64553_015']}}</span>
												<img class="loadingMapImg" src="/gfx/__IAI_TEMPLATE_LANG_639_1__/mapLoader.gif?r=1570606529"/>
											</div>
										</div>
									</div>
									<img class="marker_face" src="/gfx/__IAI_TEMPLATE_LANG_639_1__/marker_face.png?r=1570606529"/>
									<div id="stock_map" class="stock_map_wrapper">
									</div>
								</div>
							{{/if}}
							<div class="stock_info_subborder" style="display: none;">
							</div>
							{{if  $xml->getItem("page/stock/text()")}}
								<div {{assign "classAttributeTmp4" ""}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}stock_label{{/capture}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}big_label stock_label{{/capture}}  class="{{$classAttributeTmp4}}">
									<span class="stock_label">{{$txt['64867::stock_info_label2']}}</span>
								</div>
								<div class="stock_info_desc">{{$xml->getItem("page/stock")}}
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
