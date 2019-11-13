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
				</header>
			{{/if}}
			<div id="layout" class="{{$txt['73991::70925_layout_class']}}">
				{{if !( $xml->getItem("action/set_render/item")) or ( $xml->getItem("action/set_render/item/@name")  == (string) 'aside')}}
					<aside {{assign "classAttributeTmp1" ""}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}span3{{/capture}}{{if $xml->getItem("page/@type") == (string) 'projector'}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}{{$txt['73991::70925_projector_a_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'search'}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}{{$txt['73991::70925_search_a_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'main'}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}{{$txt['73991::70925_main_a_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'blog-list' or $xml->getItem("page/@type") == (string) 'blog-item'}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}{{$txt['73991::70925_blog_a_class']}}{{/capture}}{{else}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}{{$txt['73991::70925_otherwise_a_class']}}{{/capture}}{{/if}}  class="{{$classAttributeTmp1}}">
						{{include file="component_menu_additional2_100991.tpl"}}
						{{include file="component_menu_filter_79091.tpl"}}
						{{include file="component_menu_buttons_77612.tpl"}}
						{{include file="component_menu_additional1_76965.tpl"}}
						{{include file="component_menu_categories2_85180.tpl"}}
					</aside>
				{{/if}}
				{{if !( $xml->getItem("action/set_render/item")) or ( $xml->getItem("action/set_render/item/@name")  == (string) 'content')}}
					<div {{assign "classAttributeTmp2" ""}}  id="content"{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}span9{{/capture}}{{if $xml->getItem("page[@type='projector']")}} itemscope="itemscope" itemtype="http://schema.org/Product" {{/if}}{{if $xml->getItem("page/@type") == (string) 'projector'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['73991::70925_projector_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'search'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['73991::70925_search_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'main'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['73991::70925_main_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'navigation'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['73991::70925_navigation_page_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'blog-list' or $xml->getItem("page/@type") == (string) 'blog-item'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['73991::70925_blog_c_class']}}{{/capture}}{{else}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['73991::70925_otherwise_c_class']}}{{/capture}}{{/if}}  class="{{$classAttributeTmp2}}">
						{{include file="component_menu_messages_67953.tpl"}}
						<!--Banery na stronie głównej (main_banner1, 77570.1)-->
						{{if count( $xml->getList("commercial_banner/link"))  gt (string) 0}}
							{{capture name="txt_69867_01" assign="txt_69867_01"}}
								{{$txt['77570::69867_01']}}
							{{/capture}}
							<div id="main_banner1" class="mrg-b col-bg-1">
								{{if $txt_69867_01}}
									<h2>{{$txt_69867_01}}
									</h2>
								{{/if}}
								<div class="main_banner_wrapper">
									<ul {{if count( $xml->getList("commercial_banner/link")) gt (string) 1}} class="bxslider" {{/if}}>
										{{foreach from=$xml->getList("commercial_banner/link") item=loop251}}
											{{if !( $loop251->getItem("html"))}}
												<li>
													<a {{assign "targetAttributeTmp42" ""}}{{if $loop251->getItem("@target") == (string) '_blank'}}{{capture name="targetAttributeTmp42" assign="targetAttributeTmp42"}}_blank{{/capture}}{{else}}{{capture name="targetAttributeTmp42" assign="targetAttributeTmp42"}}_self{{/capture}}{{/if}}{{if $loop251->getItem("@href")}} href="{{$loop251->getItemEscape("@href")}}"{{/if}} title="{{$loop251->getItemEscape("text")}}"  target="{{$targetAttributeTmp42}}">
														{{if  $loop251->getItem("image") or  $loop251->getItem("image_desktop") or  $loop251->getItem("image_tablet") or  $loop251->getItem("image_mobile")}}
															<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/loader.gif?r=1570606529" alt="{{$loop251->getItemEscape("text")}}" {{if $loop251->getItem("image_desktop") or $loop251->getItem("image_tablet") or $loop251->getItem("image_mobile")}} class="rwd-src" {{/if}}{{if $loop251->getItem("image/@src")}} src="{{$loop251->getItemEscape("image/@src")}}" {{/if}}{{if $loop251->getItem("image_desktop/@src")}} data-src_desktop="{{$loop251->getItemEscape("image_desktop/@src")}}" {{/if}}{{if $loop251->getItem("image_tablet/@src")}} data-src_tablet="{{$loop251->getItemEscape("image_tablet/@src")}}" {{/if}}{{if $loop251->getItem("image_mobile/@src")}} data-src_mobile="{{$loop251->getItemEscape("image_mobile/@src")}}" {{/if}}></img>
														{{else}}
															{{$loop251->getItem("text")}}
														{{/if}}
														</a>
												</li>
											{{/if}}
											{{if  $loop251->getItem("html")}}
												<li>{{$loop251->getItem("html")}}
												</li>
											{{/if}}
										{{/foreach}}
									</ul>
								</div>
							</div>
						{{/if}}
						<!--CMS na stronie głównej (main_cms, 72221.1)-->
						{{if  $xml->getItem("page/text[@id='13']")}}
							{{foreach from=$xml->getList("page/text[@id='13']") item=loop293}}
								<div {{assign "classAttributeTmp3" ""}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}cm{{/capture}} id="main_cms"{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}{{$txt['72221::59554_001class']}}{{/capture}}  class="{{$classAttributeTmp3}}">{{$loop293->getItem("body")}}
								</div>
							{{/foreach}}
						{{/if}}
						<!--Buttony strefa 2 na stronie głównej (main_buttons2, 77614.1)-->
						{{if count( $xml->getList("commercial_button2/link"))}}
							<div id="menu_buttons2" class="row clearfix">
								{{foreach from=$xml->getList("commercial_button2/link") item=loop307}}
									<div {{assign "classAttributeTmp4" ""}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}menu_button_wrapper{{/capture}} id="combutt2_{{$loop307@iteration}}" {{if count( $loop307->getList("/shop/commercial_button2/link")) == (string) 1}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}menu_button_wrapper col-md-12{{/capture}}{{elseif count( $loop307->getList("/shop/commercial_button2/link")) == (string) 2}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}menu_button_wrapper col-md-6{{/capture}}{{elseif count( $loop307->getList("/shop/commercial_button2/link")) == (string) 3}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}menu_button_wrapper col-md-4 col-xs-6{{/capture}}{{else}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}menu_button_wrapper col-md-3 col-xs-6{{/capture}}{{/if}}  class="{{$classAttributeTmp4}}">
										{{if !( $loop307->getItem("html"))}}
											{{if  $loop307->getItem("@href")}}
												<a {{assign "targetAttributeTmp43" ""}}{{capture name="targetAttributeTmp43" assign="targetAttributeTmp43"}}_self{{/capture}}{{if $loop307->getItem("@target")}}{{capture name="targetAttributeTmp43" assign="targetAttributeTmp43"}}{{$loop307->getItemEscape("@target")}}{{/capture}}{{/if}} href="{{$loop307->getItemEscape("@href")}}" {{if $loop307->getItem("text")}} title="{{$loop307->getItemEscape("text")}}"{{/if}}  target="{{$targetAttributeTmp43}}">
													{{if  $loop307->getItem("image") or  $loop307->getItem("image_desktop") or  $loop307->getItem("image_tablet") or  $loop307->getItem("image_mobile")}}
														<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/loader.gif?r=1570606529" alt="{{$loop307->getItemEscape("text")}}" src="{{$loop307->getItemEscape("image/@src")}}" {{if $loop307->getItem("image_desktop") or $loop307->getItem("image_tablet") or $loop307->getItem("image_mobile")}} class="rwd-src" {{/if}}{{if $loop307->getItem("image/@src")}} src="{{$loop307->getItemEscape("image/@src")}}" {{/if}}{{if $loop307->getItem("image_desktop/@src")}} data-src_desktop="{{$loop307->getItemEscape("image_desktop/@src")}}" {{/if}}{{if $loop307->getItem("image_tablet/@src")}} data-src_tablet="{{$loop307->getItemEscape("image_tablet/@src")}}" {{/if}}{{if $loop307->getItem("image_mobile/@src")}} data-src_mobile="{{$loop307->getItemEscape("image_mobile/@src")}}" {{/if}}></img>
													{{else}}
														{{$loop307->getItem("text")}}
													{{/if}}
													</a>
											{{else}}
												{{if  $loop307->getItem("image") or  $loop307->getItem("image_desktop") or  $loop307->getItem("image_tablet") or  $loop307->getItem("image_mobile")}}
													<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/loader.gif?r=1570606529" alt="{{$loop307->getItemEscape("text")}}" src="{{$loop307->getItemEscape("image/@src")}}" {{if $loop307->getItem("image_desktop") or $loop307->getItem("image_tablet") or $loop307->getItem("image_mobile")}} class="rwd-src" {{/if}}{{if $loop307->getItem("image/@src")}} src="{{$loop307->getItemEscape("image/@src")}}" {{/if}}{{if $loop307->getItem("image_desktop/@src")}} data-src_desktop="{{$loop307->getItemEscape("image_desktop/@src")}}" {{/if}}{{if $loop307->getItem("image_tablet/@src")}} data-src_tablet="{{$loop307->getItemEscape("image_tablet/@src")}}" {{/if}}{{if $loop307->getItem("image_mobile/@src")}} data-src_mobile="{{$loop307->getItemEscape("image_mobile/@src")}}" {{/if}}></img>
												{{else}}
													{{$loop307->getItem("text")}}
												{{/if}}
											{{/if}}
										{{else}}
											{{$loop307->getItem("html")}}
										{{/if}}
									</div>
								{{/foreach}}
							</div>
						{{/if}}
						<!--Hotspot na stronie głównej - strefa 1 (main_hotspot_zone1, 102141.1)-->
						<iaiajaxstart iai-ajax-id="main_hotspot_zone1" iai-ajax-generated="true"/>
						{{if  $xml->getItem("page/hotspot/products_zone1")}}
							<div class="main_hotspot mrg-b clearfix" id="main_hotspot_zone1">
								{{if  $xml->getItem("page/hotspot/products_zone1/product") or  $xml->getItem("page/hotspot/products_zone1/opinion")}}
									{{if  $xml->getItem("page/hotspot/products_zone1/@link")}}
										<h2>
											<a class="big_label" href="{{$xml->getItemEscape("page/hotspot/products_zone1/@link")}}" title="{{$txt['102141::58826_001']}}">
												{{if  $xml->getItem("page/hotspot/products_zone1/@name")}}
													{{$xml->getItemEscape("page/hotspot/products_zone1/@name")}}
												{{else}}
													{{$txt['102141::58826_label']}}
												{{/if}}
												{{$txt['102141::58826_label-after']}}</a>
										</h2>
									{{else}}
										<h2>
											<span class="big_label">
												{{if  $xml->getItem("page/hotspot/products_zone1/@name")}}
													{{$xml->getItemEscape("page/hotspot/products_zone1/@name")}}
												{{else}}
													{{$txt['102141::58826_label']}}
												{{/if}}
												</span>
										</h2>
									{{/if}}
									<div class="col-bg-1 align_row main_hotspot_sub" data-align="a.product-icon img#css">
										<div {{assign "classAttributeTmp5" ""}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}products_wrapper row clearfix{{/capture}} data-column="{{$txt['102141::7487444_hotspot_column']}}" data-wrapType="{{$txt['102141::7487444_hotspot_wrapType']}}" {{if (count( $xml->getList("page/hotspot/products_zone1/product")) == (string) 1) or (count( $xml->getList("page/hotspot/products_zone1/opinion")) == (string) 1)}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}products_wrapper row clearfix col-md-3 col-xs-6{{/capture}}{{/if}}{{if (count( $xml->getList("page/hotspot/products_zone1/product")) == (string) 2) or (count( $xml->getList("page/hotspot/products_zone1/opinion")) == (string) 2)}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}products_wrapper row clearfix col-md-6 col-xs-12{{/capture}}{{/if}}   class="{{$classAttributeTmp5}}">
											{{foreach from=$xml->getList("page/hotspot/products_zone1/*") item=loop415}}
												{{capture name="var_name" assign="var_name"}}
													{{if  $loop415->getItem("product")}}
														{{$loop415->getItem("product/name/text()")}}
													{{else}}
														{{$loop415->getItem("name/text()")}}
													{{/if}}
												{{/capture}}
												{{capture name="var_icon" assign="var_icon"}}
													{{if  $loop415->getItem("product")}}
														{{$loop415->getItemEscape("product/icon")}}
													{{else}}
														{{$loop415->getItemEscape("icon")}}
													{{/if}}
												{{/capture}}
												{{capture name="var_icon_small" assign="var_icon_small"}}
													{{if  $loop415->getItem("product")}}
														{{$loop415->getItemEscape("product/icon_small")}}
													{{else}}
														{{$loop415->getItemEscape("icon_small")}}
													{{/if}}
												{{/capture}}
												{{capture name="var_link" assign="var_link"}}
													{{if  $loop415->getItem("product")}}
														{{$loop415->getItemEscape("product/@link")}}
													{{else}}
														{{$loop415->getItemEscape("@link")}}
													{{/if}}
												{{/capture}}
												<div {{assign "classAttributeTmp6" ""}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}product_wrapper col-md-3 col-xs-6{{/capture}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}{{$txt['102141::product_wrapper_col']}} type_{{$loop415->getItemEscape("name(.)")}}{{/capture}}  class="{{$classAttributeTmp6}}">
													<a class="product-icon" rel="nofollow" href="{{$var_link}}" title="{{$var_name}}">
														<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/loader.gif?r=1570606529" class="b-lazy" data-src-small="{{$loop415->getItem("$var_icon_small")}}" data-src="{{$loop415->getItem("$var_icon")}}" alt="{{$loop415->getItem("$var_name")}}"></img></a>
													<h3>
														<a class="product-name" href="{{$var_link}}" title="{{$var_name}}">{{$var_name}}</a>
													</h3>
													{{capture name="var_size_min_formatted" assign="var_size_min_formatted"}}
														{{if  $loop415->getItem("product")}}
															{{$loop415->getItemEscape("product/price/@size_min_formatted")}}
														{{else}}
															{{$loop415->getItemEscape("price/@size_min_formatted")}}
														{{/if}}
													{{/capture}}
													{{capture name="var_size_max_formatted" assign="var_size_max_formatted"}}
														{{if  $loop415->getItem("product")}}
															{{$loop415->getItemEscape("product/price/@size_max_formatted")}}
														{{else}}
															{{$loop415->getItemEscape("price/@size_max_formatted")}}
														{{/if}}
													{{/capture}}
													{{capture name="var_points" assign="var_points"}}
														{{if  $loop415->getItem("product")}}
															{{$loop415->getItemEscape("product/price/@points")}}
														{{else}}
															{{$loop415->getItemEscape("price/@points")}}
														{{/if}}
													{{/capture}}
													{{capture name="var_value" assign="var_value"}}
														{{if  $loop415->getItem("product")}}
															{{$loop415->getItemEscape("product/price/@size_min")}}
														{{else}}
															{{$loop415->getItemEscape("price/@size_min")}}
														{{/if}}
													{{/capture}}
													{{capture name="var_price_formatted" assign="var_price_formatted"}}
														{{if  $loop415->getItem("price/@price_unit_formatted") and  $loop415->getItem("sizes/@unit")}}
															{{$loop415->getItemEscape("price/@price_unit_formatted")}}{{literal}}/{{/literal}}{{$loop415->getItemEscape("sizes/@unit_sellby")}}{{literal}}{{/literal}}{{$loop415->getItemEscape("sizes/@unit")}}
														{{elseif  $loop415->getItem("product/price/@price_unit_formatted") and  $loop415->getItem("product/sizes/@unit")}}
															{{$loop415->getItemEscape("product/price/@price_unit_formatted")}}{{literal}}/{{/literal}}{{$loop415->getItemEscape("product/sizes/@unit_sellby")}}{{literal}}{{/literal}}{{$loop415->getItemEscape("product/sizes/@unit")}}
														{{else}}
															{{$var_size_min_formatted}}
														{{/if}}
													{{/capture}}
													{{capture name="var_maxprice_formatted" assign="var_maxprice_formatted"}}
														{{if  $loop415->getItem("price/@maxprice_unit_formatted")}}
															{{$loop415->getItemEscape("price/@maxprice_unit_formatted")}}
														{{elseif  $loop415->getItem("product/price/@maxprice_unit_formatted")}}
															{{$loop415->getItemEscape("product/price/@maxprice_unit_formatted")}}
														{{elseif  $loop415->getItem("product")}}
															{{$loop415->getItemEscape("product/price/@maxprice_formatted")}}
														{{else}}
															{{$loop415->getItemEscape("price/@maxprice_formatted")}}
														{{/if}}
													{{/capture}}
													<div class="product_prices">
														{{if $var_size_min_formatted  neq (string) $var_size_max_formatted}}
															<span class="price">{{$var_size_min_formatted}}{{literal}}-{{/literal}}{{$var_size_max_formatted}}</span>
															{{if $var_points  neq (string) ''}}
																<span class="point-price">{{$var_points}}
																	<span class="currency">{{$txt['102141::58826_012']}}</span></span>
															{{/if}}
														{{elseif ($var_value  == (string) 0) and $var_points  == (string) ''}}
															<a class="fon_price" data-mobile-class="btn-small" title="{{$txt['102141::58826_009']}}" href="{{$loop415->getItemEscape("/shop/contact/link/@url")}}">{{$txt['102141::58826_010']}}</a>
														{{else}}
															<span class="price">{{$txt['102141::58826_003']}}{{$var_price_formatted}}</span>
															{{if $var_maxprice_formatted  neq (string) ''}}
																<del class="max-price">{{$txt['102141::58826_006']}}{{$var_maxprice_formatted}}</del>
															{{/if}}
															{{if $var_points  neq (string) ''}}
																<span class="point-price">{{$var_points}}
																	<span class="currency">{{$txt['102141::58826_012']}}</span></span>
															{{/if}}
														{{/if}}
														{{if  $loop415->getItem("price/@unit_converted_price_formatted")}}
															<small class="s_unit_converted_price">{{$loop415->getItemEscape("price/@unit_converted_price_formatted")}}{{literal}}/{{/literal}}{{$loop415->getItemEscape("price/@unit_converted_format")}}</small>
														{{/if}}
													</div>
													{{if  $loop415->getItem("sizes/size/@type")  == (string) 'uniw'}}
														<form action="/basketchange.php" method="post">
															<input type="hidden" name="product" value="{{$loop415->getItemEscape("@id")}}"></input>
															<input type="hidden" value="uniw" name="size"/>
															<input type="hidden" value="1" name="number"/>
															<button type="submit" class="btn">{{$txt['102141::352412_1_addtobasket']}}
															</button>
														</form>
													{{else}}
														<div class="basket_buttons_container">
															<button type="submit" class="btn show_sizes_toplayer">{{$txt['102141::352412_1_addtobasket']}}
															</button>
															<div class="product_size_list">
																<h3>{{$txt['102141::6346345_choosesize']}}
																</h3>
																<form action="/basketchange.php" method="post">
																	<input type="hidden" name="product" value="{{$loop415->getItemEscape("@id")}}"></input>
																	<select name="size">
																		{{foreach from=$loop415->getList("sizes/size") item=loop505}}
																			<option value="{{$loop505->getItemEscape("@type")}}">{{$loop505->getItemEscape("@name")}}
																			</option>
																		{{/foreach}}
																	</select>
																	<input type="hidden" value="1" name="number"/>
																	<button type="submit" class="btn">{{$txt['102141::352412_1_addtobasket']}}
																	</button>
																</form>
															</div>
														</div>
													{{/if}}
													{{if  $loop415->getItem("client/@client")}}
														<div class="client">{{$loop415->getItem("client/@client")}}
														</div>
													{{/if}}
													{{if  $loop415->getItem("@note")}}
														<div class="note">
															<span>
																<i {{assign "classAttributeTmp7" ""}}{{capture name="classAttributeTmp7" assign="classAttributeTmp7"}}icon-star{{/capture}}{{if $loop415->getItem("@note") gt (string) 0.5}}{{capture name="classAttributeTmp7" assign="classAttributeTmp7"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp7}}"></i>
																<i {{assign "classAttributeTmp8" ""}}{{capture name="classAttributeTmp8" assign="classAttributeTmp8"}}icon-star{{/capture}}{{if $loop415->getItem("@note") gt (string) 1.5}}{{capture name="classAttributeTmp8" assign="classAttributeTmp8"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp8}}"></i>
																<i {{assign "classAttributeTmp9" ""}}{{capture name="classAttributeTmp9" assign="classAttributeTmp9"}}icon-star{{/capture}}{{if $loop415->getItem("@note") gt (string) 2.5}}{{capture name="classAttributeTmp9" assign="classAttributeTmp9"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp9}}"></i>
																<i {{assign "classAttributeTmp10" ""}}{{capture name="classAttributeTmp10" assign="classAttributeTmp10"}}icon-star{{/capture}}{{if $loop415->getItem("@note") gt (string) 3.5}}{{capture name="classAttributeTmp10" assign="classAttributeTmp10"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp10}}"></i>
																<i {{assign "classAttributeTmp11" ""}}{{capture name="classAttributeTmp11" assign="classAttributeTmp11"}}icon-star{{/capture}}{{if $loop415->getItem("@note") gt (string) 4.5}}{{capture name="classAttributeTmp11" assign="classAttributeTmp11"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp11}}"></i></span>
															<small>{{$txt['102141::58826_oc']}}{{$loop415->getItem("@note")}}{{$txt['102141::58826_oce']}}</small>
														</div>
													{{/if}}
													{{if  $loop415->getItem("content")}}
														<div class="cleardescription">{{$loop415->getItem("content")}}
														</div>
													{{/if}}
												</div>
											{{/foreach}}
										</div>
									</div>
								{{else}}
									data-ajaxLoad="true"data-pageType="main"
								{{/if}}
							</div>
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone1/product/comments/@id")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone1/product/sizes/size/availability/@id")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone1/product/category/@id")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone1/product/@version_name")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone1/product/@version_name")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone1/product/price/@price_formatted")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone1/product/price/@detalprice_net_formatted")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone1/product/price/@price_formatted")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone1/product/price/@price_net_formatted")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone1/product/price/@value") == (string)0}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone1/product/price/@maxprice_net_formatted")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone1/@hotspot_ajax")}}
						{{/if}}
						<iaiajaxend/>
						<!--Hotspot na stronie głównej - strefa 2 (main_hotspot_zone2, 102145.1)-->
						<iaiajaxstart iai-ajax-id="main_hotspot_zone2" iai-ajax-generated="true"/>
						{{if  $xml->getItem("page/hotspot/products_zone2")}}
							<div class="main_hotspot mrg-b clearfix" id="main_hotspot_zone2">
								{{if  $xml->getItem("page/hotspot/products_zone2/product") or  $xml->getItem("page/hotspot/products_zone2/opinion")}}
									{{if  $xml->getItem("page/hotspot/products_zone2/@link")}}
										<h2>
											<a class="big_label" href="{{$xml->getItemEscape("page/hotspot/products_zone2/@link")}}" title="{{$txt['102145::58826_001']}}">
												{{if  $xml->getItem("page/hotspot/products_zone2/@name")}}
													{{$xml->getItemEscape("page/hotspot/products_zone2/@name")}}
												{{else}}
													{{$txt['102145::58826_label']}}
												{{/if}}
												{{$txt['102145::58826_label-after']}}</a>
										</h2>
									{{else}}
										<h2>
											<span class="big_label">
												{{if  $xml->getItem("page/hotspot/products_zone2/@name")}}
													{{$xml->getItemEscape("page/hotspot/products_zone2/@name")}}
												{{else}}
													{{$txt['102145::58826_label']}}
												{{/if}}
												</span>
										</h2>
									{{/if}}
									<div class="col-bg-1 align_row main_hotspot_sub" data-align="a.product-icon img#css">
										<div {{assign "classAttributeTmp12" ""}}{{capture name="classAttributeTmp12" assign="classAttributeTmp12"}}products_wrapper row clearfix{{/capture}} data-column="{{$txt['102145::7487444_hotspot_column']}}" data-wrapType="{{$txt['102145::7487444_hotspot_wrapType']}}" {{if (count( $xml->getList("page/hotspot/products_zone2/product")) == (string) 1) or (count( $xml->getList("page/hotspot/products_zone2/opinion")) == (string) 1)}}{{capture name="classAttributeTmp12" assign="classAttributeTmp12"}}products_wrapper row clearfix col-md-3 col-xs-6{{/capture}}{{/if}}{{if (count( $xml->getList("page/hotspot/products_zone2/product")) == (string) 2) or (count( $xml->getList("page/hotspot/products_zone2/opinion")) == (string) 2)}}{{capture name="classAttributeTmp12" assign="classAttributeTmp12"}}products_wrapper row clearfix col-md-6 col-xs-12{{/capture}}{{/if}}   class="{{$classAttributeTmp12}}">
											{{foreach from=$xml->getList("page/hotspot/products_zone2/*") item=loop603}}
												{{capture name="var_name" assign="var_name"}}
													{{if  $loop603->getItem("product")}}
														{{$loop603->getItem("product/name/text()")}}
													{{else}}
														{{$loop603->getItem("name/text()")}}
													{{/if}}
												{{/capture}}
												{{capture name="var_icon" assign="var_icon"}}
													{{if  $loop603->getItem("product")}}
														{{$loop603->getItemEscape("product/icon")}}
													{{else}}
														{{$loop603->getItemEscape("icon")}}
													{{/if}}
												{{/capture}}
												{{capture name="var_icon_small" assign="var_icon_small"}}
													{{if  $loop603->getItem("product")}}
														{{$loop603->getItemEscape("product/icon_small")}}
													{{else}}
														{{$loop603->getItemEscape("icon_small")}}
													{{/if}}
												{{/capture}}
												{{capture name="var_link" assign="var_link"}}
													{{if  $loop603->getItem("product")}}
														{{$loop603->getItemEscape("product/@link")}}
													{{else}}
														{{$loop603->getItemEscape("@link")}}
													{{/if}}
												{{/capture}}
												<div {{assign "classAttributeTmp13" ""}}{{capture name="classAttributeTmp13" assign="classAttributeTmp13"}}product_wrapper col-md-3 col-xs-6{{/capture}}{{capture name="classAttributeTmp13" assign="classAttributeTmp13"}}{{$txt['102145::product_wrapper_col']}} type_{{$loop603->getItemEscape("name(.)")}}{{/capture}}  class="{{$classAttributeTmp13}}">
													<a class="product-icon" data-product-id="{{$loop603->getItemEscape("@id")}}" href="{{$var_link}}" title="{{$var_name}}">
														<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/loader.gif?r=1570606529" class="b-lazy" data-src-small="{{$loop603->getItem("$var_icon_small")}}" data-src="{{$loop603->getItem("$var_icon")}}" alt="{{$loop603->getItem("$var_name")}}"></img></a>
													<h3>
														<a class="product-name" href="{{$var_link}}" title="{{$var_name}}">{{$var_name}}</a>
													</h3>
													{{capture name="var_size_min_formatted" assign="var_size_min_formatted"}}
														{{if  $loop603->getItem("product")}}
															{{$loop603->getItemEscape("product/price/@size_min_formatted")}}
														{{else}}
															{{$loop603->getItemEscape("price/@size_min_formatted")}}
														{{/if}}
													{{/capture}}
													{{capture name="var_size_max_formatted" assign="var_size_max_formatted"}}
														{{if  $loop603->getItem("product")}}
															{{$loop603->getItemEscape("product/price/@size_max_formatted")}}
														{{else}}
															{{$loop603->getItemEscape("price/@size_max_formatted")}}
														{{/if}}
													{{/capture}}
													{{capture name="var_size_min_maxprice_formatted" assign="var_size_min_maxprice_formatted"}}
														{{if  $loop603->getItem("product")}}
															{{$loop603->getItemEscape("product/price/@size_min_maxprice_formatted")}}
														{{else}}
															{{$loop603->getItemEscape("price/@size_min_maxprice_formatted")}}
														{{/if}}
													{{/capture}}
													{{capture name="var_size_max_maxprice_formatted" assign="var_size_max_maxprice_formatted"}}
														{{if  $loop603->getItem("product")}}
															{{$loop603->getItemEscape("product/price/@size_max_maxprice_formatted")}}
														{{else}}
															{{$loop603->getItemEscape("price/@size_max_maxprice_formatted")}}
														{{/if}}
													{{/capture}}
													{{capture name="var_points" assign="var_points"}}
														{{if  $loop603->getItem("product")}}
															{{$loop603->getItemEscape("product/price/@points")}}
														{{else}}
															{{$loop603->getItemEscape("price/@points")}}
														{{/if}}
													{{/capture}}
													{{capture name="var_value" assign="var_value"}}
														{{if  $loop603->getItem("product")}}
															{{$loop603->getItemEscape("product/price/@size_min")}}
														{{else}}
															{{$loop603->getItemEscape("price/@size_min")}}
														{{/if}}
													{{/capture}}
													{{capture name="var_price_formatted" assign="var_price_formatted"}}
														{{if  $loop603->getItem("price/@price_unit_formatted") and  $loop603->getItem("sizes/@unit")}}
															{{$loop603->getItemEscape("price/@price_unit_formatted")}}{{literal}}/{{/literal}}{{$loop603->getItemEscape("sizes/@unit_sellby")}}{{literal}}{{/literal}}{{$loop603->getItemEscape("sizes/@unit")}}
														{{elseif  $loop603->getItem("product/price/@price_unit_formatted") and  $loop603->getItem("product/sizes/@unit")}}
															{{$loop603->getItemEscape("product/price/@price_unit_formatted")}}{{literal}}/{{/literal}}{{$loop603->getItemEscape("product/sizes/@unit_sellby")}}{{literal}}{{/literal}}{{$loop603->getItemEscape("product/sizes/@unit")}}
														{{else}}
															{{$var_size_min_formatted}}
														{{/if}}
													{{/capture}}
													{{capture name="var_maxprice_formatted" assign="var_maxprice_formatted"}}
														{{if  $loop603->getItem("price/@maxprice_unit_formatted")}}
															{{$loop603->getItemEscape("price/@maxprice_unit_formatted")}}
														{{elseif  $loop603->getItem("product/price/@maxprice_unit_formatted")}}
															{{$loop603->getItemEscape("product/price/@maxprice_unit_formatted")}}
														{{elseif  $loop603->getItem("product")}}
															{{$loop603->getItemEscape("product/price/@maxprice_formatted")}}
														{{else}}
															{{$loop603->getItemEscape("price/@maxprice_formatted")}}
														{{/if}}
													{{/capture}}
													<div class="product_prices">
														{{if $var_size_min_formatted  neq (string) $var_size_max_formatted}}
															<span class="price">{{$var_size_min_formatted}}{{literal}}-{{/literal}}{{$var_size_max_formatted}}</span>
															{{if $var_size_min_maxprice_formatted  neq (string) ''}}
																<del class="max-price">
																	<span>{{$var_size_min_maxprice_formatted}}</span>
																	<b>{{literal}}-{{/literal}}</b>
																	<span>{{$var_size_max_maxprice_formatted}}</span></del>
															{{/if}}
															{{if $var_points  neq (string) ''}}
																<span class="point-price">{{$var_points}}
																	<span class="currency">{{$txt['102145::58826_012']}}</span></span>
															{{/if}}
														{{elseif ($var_value  == (string) 0) and $var_points  == (string) ''}}
															<a class="fon_price" data-mobile-class="btn-small" title="{{$txt['102145::58826_009']}}" href="{{$loop603->getItemEscape("/shop/contact/link/@url")}}">{{$txt['102145::58826_010']}}</a>
														{{else}}
															<span class="price">{{$txt['102145::58826_003']}}{{$var_price_formatted}}</span>
															{{if $var_maxprice_formatted  neq (string) ''}}
																<del class="max-price">{{$txt['102145::58826_006']}}{{$var_maxprice_formatted}}</del>
															{{/if}}
															{{if $var_points  neq (string) ''}}
																<span class="point-price">{{$var_points}}
																	<span class="currency">{{$txt['102145::58826_012']}}</span></span>
															{{/if}}
														{{/if}}
														{{if  $loop603->getItem("price/@unit_converted_price_formatted")}}
															<small class="s_unit_converted_price">{{$loop603->getItemEscape("price/@unit_converted_price_formatted")}}{{literal}}/{{/literal}}{{$loop603->getItemEscape("price/@unit_converted_format")}}</small>
														{{/if}}
													</div>
													{{if  $loop603->getItem("sizes/size/@type")  == (string) 'uniw'}}
														<form action="/basketchange.php" method="post">
															<input type="hidden" name="product" value="{{$loop603->getItemEscape("@id")}}"></input>
															<input type="hidden" value="uniw" name="size"/>
															<input type="hidden" value="1" name="number"/>
															<button type="submit" class="btn">{{$txt['102145::352412_1_addtobasket']}}
															</button>
														</form>
													{{else}}
														<div class="basket_buttons_container">
															<button type="submit" class="btn show_sizes_toplayer">{{$txt['102145::352412_1_addtobasket']}}
															</button>
															<div class="product_size_list">
																<h3>{{$txt['102145::6346345_choosesize']}}
																</h3>
																<form action="/basketchange.php" method="post">
																	<input type="hidden" name="product" value="{{$loop603->getItemEscape("@id")}}"></input>
																	<select name="size">
																		{{foreach from=$loop603->getList("sizes/size") item=loop699}}
																			<option value="{{$loop699->getItemEscape("@type")}}">{{$loop699->getItemEscape("@name")}}
																			</option>
																		{{/foreach}}
																	</select>
																	<input type="hidden" value="1" name="number"/>
																	<button type="submit" class="btn">{{$txt['102145::352412_1_addtobasket']}}
																	</button>
																</form>
															</div>
														</div>
													{{/if}}
													{{if  $loop603->getItem("client/@client")}}
														<div class="client">{{$loop603->getItem("client/@client")}}
														</div>
													{{/if}}
													{{if  $loop603->getItem("@note")}}
														<div class="note">
															<span>
																<i {{assign "classAttributeTmp14" ""}}{{capture name="classAttributeTmp14" assign="classAttributeTmp14"}}icon-star{{/capture}}{{if $loop603->getItem("@note") gt (string) 0.5}}{{capture name="classAttributeTmp14" assign="classAttributeTmp14"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp14}}"></i>
																<i {{assign "classAttributeTmp15" ""}}{{capture name="classAttributeTmp15" assign="classAttributeTmp15"}}icon-star{{/capture}}{{if $loop603->getItem("@note") gt (string) 1.5}}{{capture name="classAttributeTmp15" assign="classAttributeTmp15"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp15}}"></i>
																<i {{assign "classAttributeTmp16" ""}}{{capture name="classAttributeTmp16" assign="classAttributeTmp16"}}icon-star{{/capture}}{{if $loop603->getItem("@note") gt (string) 2.5}}{{capture name="classAttributeTmp16" assign="classAttributeTmp16"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp16}}"></i>
																<i {{assign "classAttributeTmp17" ""}}{{capture name="classAttributeTmp17" assign="classAttributeTmp17"}}icon-star{{/capture}}{{if $loop603->getItem("@note") gt (string) 3.5}}{{capture name="classAttributeTmp17" assign="classAttributeTmp17"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp17}}"></i>
																<i {{assign "classAttributeTmp18" ""}}{{capture name="classAttributeTmp18" assign="classAttributeTmp18"}}icon-star{{/capture}}{{if $loop603->getItem("@note") gt (string) 4.5}}{{capture name="classAttributeTmp18" assign="classAttributeTmp18"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp18}}"></i></span>
															<small>{{$txt['102145::58826_oc']}}{{$loop603->getItem("@note")}}{{$txt['102145::58826_oce']}}</small>
														</div>
													{{/if}}
													{{if  $loop603->getItem("content")}}
														<div class="cleardescription">{{$loop603->getItem("content")}}
														</div>
													{{/if}}
												</div>
											{{/foreach}}
										</div>
									</div>
								{{else}}
									data-ajaxLoad="true"data-pageType="main"
								{{/if}}
							</div>
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone2/product/comments/@id")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone2/product/sizes/size/availability/@id")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone2/product/category/@id")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone2/product/@version_name")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone2/product/@version_name")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone2/product/price/@price_formatted")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone2/product/price/@detalprice_net_formatted")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone2/product/price/@price_formatted")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone2/product/price/@price_net_formatted")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone2/product/price/@value") == (string)0}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone2/product/price/@maxprice_net_formatted")}}
						{{/if}}
						<iaiajaxend/>
						<!--Hotspot na stronie głównej - strefa 3 (main_hotspot_zone3, 102146.1)-->
						<iaiajaxstart iai-ajax-id="main_hotspot_zone3" iai-ajax-generated="true"/>
						{{if  $xml->getItem("page/hotspot/products_zone3")}}
							<div class="main_hotspot mrg-b clearfix" id="main_hotspot_zone3">
								{{if  $xml->getItem("page/hotspot/products_zone3/product") or  $xml->getItem("page/hotspot/products_zone3/opinion")}}
									{{if  $xml->getItem("page/hotspot/products_zone3/@link")}}
										<h2>
											<a class="big_label" href="{{$xml->getItemEscape("page/hotspot/products_zone3/@link")}}" title="{{$txt['102146::58826_001']}}">
												{{if  $xml->getItem("page/hotspot/products_zone3/@name")}}
													{{$xml->getItemEscape("page/hotspot/products_zone3/@name")}}
												{{else}}
													{{$txt['102146::58826_label']}}
												{{/if}}
												{{$txt['102146::58826_label-after']}}</a>
										</h2>
									{{else}}
										<h2>
											<span class="big_label">
												{{if  $xml->getItem("page/hotspot/products_zone3/@name")}}
													{{$xml->getItemEscape("page/hotspot/products_zone3/@name")}}
												{{else}}
													{{$txt['102146::58826_label']}}
												{{/if}}
												</span>
										</h2>
									{{/if}}
									<div class="col-bg-1 align_row main_hotspot_sub" data-align="a.product-icon img#css">
										<div {{assign "classAttributeTmp19" ""}}{{capture name="classAttributeTmp19" assign="classAttributeTmp19"}}products_wrapper row clearfix{{/capture}} data-column="{{$txt['102146::7487444_hotspot_column']}}" data-wrapType="{{$txt['102146::7487444_hotspot_wrapType']}}" {{if (count( $xml->getList("page/hotspot/products_zone3/product")) == (string) 1) or (count( $xml->getList("page/hotspot/products_zone3/opinion")) == (string) 1)}}{{capture name="classAttributeTmp19" assign="classAttributeTmp19"}}products_wrapper row clearfix col-md-3 col-xs-6{{/capture}}{{/if}}{{if (count( $xml->getList("page/hotspot/products_zone3/product")) == (string) 2) or (count( $xml->getList("page/hotspot/products_zone3/opinion")) == (string) 2)}}{{capture name="classAttributeTmp19" assign="classAttributeTmp19"}}products_wrapper row clearfix col-md-6 col-xs-12{{/capture}}{{/if}}   class="{{$classAttributeTmp19}}">
											{{foreach from=$xml->getList("page/hotspot/products_zone3/*") item=loop796}}
												{{capture name="var_name" assign="var_name"}}
													{{if  $loop796->getItem("product")}}
														{{$loop796->getItem("product/name/text()")}}
													{{else}}
														{{$loop796->getItem("name/text()")}}
													{{/if}}
												{{/capture}}
												{{capture name="var_icon" assign="var_icon"}}
													{{if  $loop796->getItem("product")}}
														{{$loop796->getItemEscape("product/icon")}}
													{{else}}
														{{$loop796->getItemEscape("icon")}}
													{{/if}}
												{{/capture}}
												{{capture name="var_icon_small" assign="var_icon_small"}}
													{{if  $loop796->getItem("product")}}
														{{$loop796->getItemEscape("product/icon_small")}}
													{{else}}
														{{$loop796->getItemEscape("icon_small")}}
													{{/if}}
												{{/capture}}
												{{capture name="var_link" assign="var_link"}}
													{{if  $loop796->getItem("product")}}
														{{$loop796->getItemEscape("product/@link")}}
													{{else}}
														{{$loop796->getItemEscape("@link")}}
													{{/if}}
												{{/capture}}
												<div {{assign "classAttributeTmp20" ""}}{{capture name="classAttributeTmp20" assign="classAttributeTmp20"}}product_wrapper col-md-3 col-xs-6{{/capture}}{{capture name="classAttributeTmp20" assign="classAttributeTmp20"}}{{$txt['102146::product_wrapper_col']}}{{/capture}}  class="{{$classAttributeTmp20}}">
													<a class="product-icon" href="{{$var_link}}" title="{{$var_name}}" data-product-id="{{$loop796->getItemEscape("@id")}}">
														<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/loader.gif?r=1570606529" class="b-lazy" data-src-small="{{$loop796->getItem("$var_icon_small")}}" data-src="{{$loop796->getItem("$var_icon")}}" alt="{{$loop796->getItem("$var_name")}}"></img></a>
													<h3>
														<a class="product-name" href="{{$var_link}}" title="{{$var_name}}">{{$var_name}}</a>
													</h3>
													{{capture name="var_size_min_formatted" assign="var_size_min_formatted"}}
														{{if  $loop796->getItem("product")}}
															{{$loop796->getItemEscape("product/price/@size_min_formatted")}}
														{{else}}
															{{$loop796->getItemEscape("price/@size_min_formatted")}}
														{{/if}}
													{{/capture}}
													{{capture name="var_size_max_formatted" assign="var_size_max_formatted"}}
														{{if  $loop796->getItem("product")}}
															{{$loop796->getItemEscape("product/price/@size_max_formatted")}}
														{{else}}
															{{$loop796->getItemEscape("price/@size_max_formatted")}}
														{{/if}}
													{{/capture}}
													{{capture name="var_points" assign="var_points"}}
														{{if  $loop796->getItem("product")}}
															{{$loop796->getItemEscape("product/price/@points")}}
														{{else}}
															{{$loop796->getItemEscape("price/@points")}}
														{{/if}}
													{{/capture}}
													{{capture name="var_value" assign="var_value"}}
														{{if  $loop796->getItem("product")}}
															{{$loop796->getItemEscape("product/price/@size_min")}}
														{{else}}
															{{$loop796->getItemEscape("price/@size_min")}}
														{{/if}}
													{{/capture}}
													{{capture name="var_size_min_maxprice_formatted" assign="var_size_min_maxprice_formatted"}}
														{{if  $loop796->getItem("product")}}
															{{$loop796->getItemEscape("product/price/@size_min_maxprice_formatted")}}
														{{else}}
															{{$loop796->getItemEscape("price/@size_min_maxprice_formatted")}}
														{{/if}}
													{{/capture}}
													{{capture name="var_size_max_maxprice_formatted" assign="var_size_max_maxprice_formatted"}}
														{{if  $loop796->getItem("product")}}
															{{$loop796->getItemEscape("product/price/@size_max_maxprice_formatted")}}
														{{else}}
															{{$loop796->getItemEscape("price/@size_max_maxprice_formatted")}}
														{{/if}}
													{{/capture}}
													{{capture name="var_price_formatted" assign="var_price_formatted"}}
														{{if  $loop796->getItem("price/@price_unit_formatted") and  $loop796->getItem("sizes/@unit")}}
															{{$loop796->getItemEscape("price/@price_unit_formatted")}}{{literal}}/{{/literal}}{{$loop796->getItemEscape("sizes/@unit_sellby")}}{{literal}}{{/literal}}{{$loop796->getItemEscape("sizes/@unit")}}
														{{elseif  $loop796->getItem("product/price/@price_unit_formatted") and  $loop796->getItem("product/sizes/@unit")}}
															{{$loop796->getItemEscape("product/price/@price_unit_formatted")}}{{literal}}/{{/literal}}{{$loop796->getItemEscape("product/sizes/@unit_sellby")}}{{literal}}{{/literal}}{{$loop796->getItemEscape("product/sizes/@unit")}}
														{{else}}
															{{$var_size_min_formatted}}
														{{/if}}
													{{/capture}}
													{{capture name="var_maxprice_formatted" assign="var_maxprice_formatted"}}
														{{if  $loop796->getItem("price/@maxprice_unit_formatted")}}
															{{$loop796->getItemEscape("price/@maxprice_unit_formatted")}}
														{{elseif  $loop796->getItem("product/price/@maxprice_unit_formatted")}}
															{{$loop796->getItemEscape("product/price/@maxprice_unit_formatted")}}
														{{elseif  $loop796->getItem("product")}}
															{{$loop796->getItemEscape("product/price/@maxprice_formatted")}}
														{{else}}
															{{$loop796->getItemEscape("price/@maxprice_formatted")}}
														{{/if}}
													{{/capture}}
													<div class="product_prices">
														{{if $var_size_min_formatted  neq (string) $var_size_max_formatted}}
															<span class="price">{{$var_size_min_formatted}}{{literal}}-{{/literal}}{{$var_size_max_formatted}}</span>
															{{if $var_size_min_maxprice_formatted  neq (string) ''}}
																<del class="max-price">
																	<span>{{$var_size_min_maxprice_formatted}}</span>
																	<b>{{literal}}-{{/literal}}</b>
																	<span>{{$var_size_max_maxprice_formatted}}</span></del>
															{{/if}}
															{{if $var_points  neq (string) ''}}
																<span class="point-price">{{$var_points}}
																	<span class="currency">{{$txt['102146::58826_012']}}</span></span>
															{{/if}}
														{{elseif ($var_value  == (string) 0) and $var_points  == (string) ''}}
															<a class="fon_price" data-mobile-class="btn-small" title="{{$txt['102146::58826_009']}}" href="{{$loop796->getItemEscape("/shop/contact/link/@url")}}">{{$txt['102146::58826_010']}}</a>
														{{else}}
															<span class="price">{{$txt['102146::58826_003']}}{{$var_price_formatted}}</span>
															{{if $var_maxprice_formatted  neq (string) ''}}
																<del class="max-price">{{$txt['102146::58826_006']}}{{$var_maxprice_formatted}}</del>
															{{/if}}
															{{if $var_points  neq (string) ''}}
																<span class="point-price">{{$var_points}}
																	<span class="currency">{{$txt['102146::58826_012']}}</span></span>
															{{/if}}
														{{/if}}
														{{if  $loop796->getItem("price/@unit_converted_price_formatted")}}
															<small class="s_unit_converted_price">{{$loop796->getItemEscape("price/@unit_converted_price_formatted")}}{{literal}}/{{/literal}}{{$loop796->getItemEscape("price/@unit_converted_format")}}</small>
														{{/if}}
													</div>
													{{if  $loop796->getItem("sizes/size/@type")  == (string) 'uniw'}}
														<form action="/basketchange.php" method="post">
															<input type="hidden" name="product" value="{{$loop796->getItemEscape("@id")}}"></input>
															<input type="hidden" value="uniw" name="size"/>
															<input type="hidden" value="1" name="number"/>
															<button type="submit" class="btn">{{$txt['102146::352412_1_addtobasket']}}
															</button>
														</form>
													{{else}}
														<div class="basket_buttons_container">
															<button type="submit" class="btn show_sizes_toplayer">{{$txt['102146::352412_1_addtobasket']}}
															</button>
															<div class="product_size_list">
																<h3>{{$txt['102146::6346345_choosesize']}}
																</h3>
																<form action="/basketchange.php" method="post">
																	<input type="hidden" name="product" value="{{$loop796->getItemEscape("@id")}}"></input>
																	<select name="size">
																		{{foreach from=$loop796->getList("sizes/size") item=loop892}}
																			<option value="{{$loop892->getItemEscape("@type")}}">{{$loop892->getItemEscape("@name")}}
																			</option>
																		{{/foreach}}
																	</select>
																	<input type="hidden" value="1" name="number"/>
																	<button type="submit" class="btn">{{$txt['102146::352412_1_addtobasket']}}
																	</button>
																</form>
															</div>
														</div>
													{{/if}}
													{{if  $loop796->getItem("client/@client")}}
														<div class="client">{{$loop796->getItem("client/@client")}}
														</div>
													{{/if}}
													{{if  $loop796->getItem("@note")}}
														<div class="note">
															<span>
																<i {{assign "classAttributeTmp21" ""}}{{capture name="classAttributeTmp21" assign="classAttributeTmp21"}}icon-star{{/capture}}{{if $loop796->getItem("@note") gt (string) 0.5}}{{capture name="classAttributeTmp21" assign="classAttributeTmp21"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp21}}"></i>
																<i {{assign "classAttributeTmp22" ""}}{{capture name="classAttributeTmp22" assign="classAttributeTmp22"}}icon-star{{/capture}}{{if $loop796->getItem("@note") gt (string) 1.5}}{{capture name="classAttributeTmp22" assign="classAttributeTmp22"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp22}}"></i>
																<i {{assign "classAttributeTmp23" ""}}{{capture name="classAttributeTmp23" assign="classAttributeTmp23"}}icon-star{{/capture}}{{if $loop796->getItem("@note") gt (string) 2.5}}{{capture name="classAttributeTmp23" assign="classAttributeTmp23"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp23}}"></i>
																<i {{assign "classAttributeTmp24" ""}}{{capture name="classAttributeTmp24" assign="classAttributeTmp24"}}icon-star{{/capture}}{{if $loop796->getItem("@note") gt (string) 3.5}}{{capture name="classAttributeTmp24" assign="classAttributeTmp24"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp24}}"></i>
																<i {{assign "classAttributeTmp25" ""}}{{capture name="classAttributeTmp25" assign="classAttributeTmp25"}}icon-star{{/capture}}{{if $loop796->getItem("@note") gt (string) 4.5}}{{capture name="classAttributeTmp25" assign="classAttributeTmp25"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp25}}"></i></span>
															<small>{{$txt['102146::58826_oc']}}{{$loop796->getItem("@note")}}{{$txt['102146::58826_oce']}}</small>
														</div>
													{{/if}}
													{{if  $loop796->getItem("content")}}
														<div class="cleardescription">{{$loop796->getItem("content")}}
														</div>
													{{/if}}
												</div>
											{{/foreach}}
										</div>
									</div>
								{{else}}
									data-ajaxLoad="true"data-pageType="main"
								{{/if}}
							</div>
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone3/product/comments/@id")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone3/product/sizes/size/availability/@id")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone3/product/category/@id")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone3/product/@version_name")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone3/product/@version_name")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone3/product/price/@price_formatted")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone3/product/price/@detalprice_net_formatted")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone3/product/price/@price_formatted")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone3/product/price/@price_net_formatted")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone3/product/price/@value") == (string)0}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone3/product/price/@maxprice_net_formatted")}}
						{{/if}}
						<iaiajaxend/>
						<!--Hotspot na stronie głównej - strefa 4 (main_hotspot_zone4, 102147.1)-->
						<iaiajaxstart iai-ajax-id="main_hotspot_zone4" iai-ajax-generated="true"/>
						{{if  $xml->getItem("page/hotspot/products_zone4")}}
							<div class="main_hotspot mrg-b clearfix" id="main_hotspot_zone4">
								{{if  $xml->getItem("page/hotspot/products_zone4/product") or  $xml->getItem("page/hotspot/products_zone4/opinion")}}
									{{if  $xml->getItem("page/hotspot/products_zone4/@link")}}
										<h2>
											<a class="big_label" href="{{$xml->getItemEscape("page/hotspot/products_zone4/@link")}}" title="{{$txt['102147::58826_001']}}">
												{{if  $xml->getItem("page/hotspot/products_zone4/@name")}}
													{{$xml->getItemEscape("page/hotspot/products_zone4/@name")}}
												{{else}}
													{{$txt['102147::58826_label']}}
												{{/if}}
												{{$txt['102147::58826_label-after']}}</a>
										</h2>
									{{else}}
										<h2>
											<span class="big_label">
												{{if  $xml->getItem("page/hotspot/products_zone4/@name")}}
													{{$xml->getItemEscape("page/hotspot/products_zone4/@name")}}
												{{else}}
													{{$txt['102147::58826_label']}}
												{{/if}}
												</span>
										</h2>
									{{/if}}
									<div class="col-bg-1 align_row main_hotspot_sub" data-align="a.product-icon img#css">
										<div {{assign "classAttributeTmp26" ""}}{{capture name="classAttributeTmp26" assign="classAttributeTmp26"}}products_wrapper row clearfix{{/capture}} data-column="{{$txt['102147::7487444_hotspot_column']}}" data-wrapType="{{$txt['102147::7487444_hotspot_wrapType']}}" {{if (count( $xml->getList("page/hotspot/products_zone4/product")) == (string) 1) or (count( $xml->getList("page/hotspot/products_zone4/opinion")) == (string) 1)}}{{capture name="classAttributeTmp26" assign="classAttributeTmp26"}}products_wrapper row clearfix col-md-3 col-xs-6{{/capture}}{{/if}}{{if (count( $xml->getList("page/hotspot/products_zone4/product")) == (string) 1) or (count( $xml->getList("page/hotspot/products_zone4/opinion")) == (string) 1)}}{{capture name="classAttributeTmp26" assign="classAttributeTmp26"}}products_wrapper row clearfix col-md-6 col-xs-12{{/capture}}{{/if}}   class="{{$classAttributeTmp26}}">
											{{foreach from=$xml->getList("page/hotspot/products_zone4/*") item=loop989}}
												{{capture name="var_name" assign="var_name"}}
													{{if  $loop989->getItem("product")}}
														{{$loop989->getItem("product/name/text()")}}
													{{else}}
														{{$loop989->getItem("name/text()")}}
													{{/if}}
												{{/capture}}
												{{capture name="var_icon" assign="var_icon"}}
													{{if  $loop989->getItem("product")}}
														{{$loop989->getItemEscape("product/icon")}}
													{{else}}
														{{$loop989->getItemEscape("icon")}}
													{{/if}}
												{{/capture}}
												{{capture name="var_icon_small" assign="var_icon_small"}}
													{{if  $loop989->getItem("product")}}
														{{$loop989->getItemEscape("product/icon_small")}}
													{{else}}
														{{$loop989->getItemEscape("icon_small")}}
													{{/if}}
												{{/capture}}
												{{capture name="var_link" assign="var_link"}}
													{{if  $loop989->getItem("product")}}
														{{$loop989->getItemEscape("product/@link")}}
													{{else}}
														{{$loop989->getItemEscape("@link")}}
													{{/if}}
												{{/capture}}
												<div {{assign "classAttributeTmp27" ""}}{{capture name="classAttributeTmp27" assign="classAttributeTmp27"}}product_wrapper col-md-3 col-xs-6{{/capture}}{{capture name="classAttributeTmp27" assign="classAttributeTmp27"}}{{$txt['102147::product_wrapper_col']}}{{/capture}}  class="{{$classAttributeTmp27}}">
													<a class="product-icon" href="{{$var_link}}" title="{{$var_name}}" data-product-id="{{$loop989->getItemEscape("@id")}}">
														<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/loader.gif?r=1570606529" class="b-lazy" data-src-small="{{$loop989->getItem("$var_icon_small")}}" data-src="{{$loop989->getItem("$var_icon")}}" alt="{{$loop989->getItem("$var_name")}}"></img></a>
													<h3>
														<a class="product-name" href="{{$var_link}}" title="{{$var_name}}">{{$var_name}}</a>
													</h3>
													{{capture name="var_size_min_formatted" assign="var_size_min_formatted"}}
														{{if  $loop989->getItem("product")}}
															{{$loop989->getItemEscape("product/price/@size_min_formatted")}}
														{{else}}
															{{$loop989->getItemEscape("price/@size_min_formatted")}}
														{{/if}}
													{{/capture}}
													{{capture name="var_size_max_formatted" assign="var_size_max_formatted"}}
														{{if  $loop989->getItem("product")}}
															{{$loop989->getItemEscape("product/price/@size_max_formatted")}}
														{{else}}
															{{$loop989->getItemEscape("price/@size_max_formatted")}}
														{{/if}}
													{{/capture}}
													{{capture name="var_points" assign="var_points"}}
														{{if  $loop989->getItem("product")}}
															{{$loop989->getItemEscape("product/price/@points")}}
														{{else}}
															{{$loop989->getItemEscape("price/@points")}}
														{{/if}}
													{{/capture}}
													{{capture name="var_value" assign="var_value"}}
														{{if  $loop989->getItem("product")}}
															{{$loop989->getItemEscape("product/price/@size_min")}}
														{{else}}
															{{$loop989->getItemEscape("price/@size_min")}}
														{{/if}}
													{{/capture}}
													{{capture name="var_price_formatted" assign="var_price_formatted"}}
														{{if  $loop989->getItem("price/@price_unit_formatted") and  $loop989->getItem("sizes/@unit")}}
															{{$loop989->getItemEscape("price/@price_unit_formatted")}}{{literal}}/{{/literal}}{{$loop989->getItemEscape("sizes/@unit_sellby")}}{{literal}}{{/literal}}{{$loop989->getItemEscape("sizes/@unit")}}
														{{elseif  $loop989->getItem("product/price/@price_unit_formatted") and  $loop989->getItem("product/sizes/@unit")}}
															{{$loop989->getItemEscape("product/price/@price_unit_formatted")}}{{literal}}/{{/literal}}{{$loop989->getItemEscape("product/sizes/@unit_sellby")}}{{literal}}{{/literal}}{{$loop989->getItemEscape("product/sizes/@unit")}}
														{{else}}
															{{$var_size_min_formatted}}
														{{/if}}
													{{/capture}}
													{{capture name="var_maxprice_formatted" assign="var_maxprice_formatted"}}
														{{if  $loop989->getItem("price/@maxprice_unit_formatted")}}
															{{$loop989->getItemEscape("price/@maxprice_unit_formatted")}}
														{{elseif  $loop989->getItem("product/price/@maxprice_unit_formatted")}}
															{{$loop989->getItemEscape("product/price/@maxprice_unit_formatted")}}
														{{elseif  $loop989->getItem("product")}}
															{{$loop989->getItemEscape("product/price/@maxprice_formatted")}}
														{{else}}
															{{$loop989->getItemEscape("price/@maxprice_formatted")}}
														{{/if}}
													{{/capture}}
													{{capture name="var_size_min_maxprice_formatted" assign="var_size_min_maxprice_formatted"}}
														{{if  $loop989->getItem("product")}}
															{{$loop989->getItemEscape("product/price/@size_min_maxprice_formatted")}}
														{{else}}
															{{$loop989->getItemEscape("price/@size_min_maxprice_formatted")}}
														{{/if}}
													{{/capture}}
													{{capture name="var_size_max_maxprice_formatted" assign="var_size_max_maxprice_formatted"}}
														{{if  $loop989->getItem("product")}}
															{{$loop989->getItemEscape("product/price/@size_max_maxprice_formatted")}}
														{{else}}
															{{$loop989->getItemEscape("price/@size_max_maxprice_formatted")}}
														{{/if}}
													{{/capture}}
													<div class="product_prices">
														{{if $var_size_min_formatted  neq (string) $var_size_max_formatted}}
															<span class="price">{{$var_size_min_formatted}}{{literal}}-{{/literal}}{{$var_size_max_formatted}}</span>
															{{if $var_size_min_maxprice_formatted  neq (string) ''}}
																<del class="max-price">
																	<span>{{$var_size_min_maxprice_formatted}}</span>
																	<b>{{literal}}-{{/literal}}</b>
																	<span>{{$var_size_max_maxprice_formatted}}</span></del>
															{{/if}}
															{{if $var_points  neq (string) ''}}
																<span class="point-price">{{$var_points}}
																	<span class="currency">{{$txt['102147::58826_012']}}</span></span>
															{{/if}}
														{{elseif ($var_value  == (string) 0) and $var_points  == (string) ''}}
															<a class="fon_price" data-mobile-class="btn-small" title="{{$txt['102147::58826_009']}}" href="{{$loop989->getItemEscape("/shop/contact/link/@url")}}">{{$txt['102147::58826_010']}}</a>
														{{else}}
															<span class="price">{{$txt['102147::58826_003']}}{{$var_price_formatted}}</span>
															{{if $var_maxprice_formatted  neq (string) ''}}
																<del class="max-price">{{$txt['102147::58826_006']}}{{$var_maxprice_formatted}}</del>
															{{/if}}
															{{if $var_points  neq (string) ''}}
																<span class="point-price">{{$var_points}}
																	<span class="currency">{{$txt['102147::58826_012']}}</span></span>
															{{/if}}
														{{/if}}
														{{if  $loop989->getItem("price/@unit_converted_price_formatted")}}
															<small class="s_unit_converted_price">{{$loop989->getItemEscape("price/@unit_converted_price_formatted")}}{{literal}}/{{/literal}}{{$loop989->getItemEscape("price/@unit_converted_format")}}</small>
														{{/if}}
													</div>
													{{if  $loop989->getItem("sizes/size/@type")  == (string) 'uniw'}}
														<form action="/basketchange.php" method="post">
															<input type="hidden" name="product" value="{{$loop989->getItemEscape("@id")}}"></input>
															<input type="hidden" value="uniw" name="size"/>
															<input type="hidden" value="1" name="number"/>
															<button type="submit" class="btn">{{$txt['102147::352412_1_addtobasket']}}
															</button>
														</form>
													{{else}}
														<div class="basket_buttons_container">
															<button type="submit" class="btn show_sizes_toplayer">{{$txt['102147::352412_1_addtobasket']}}
															</button>
															<div class="product_size_list">
																<h3>{{$txt['102147::6346345_choosesize']}}
																</h3>
																<form action="/basketchange.php" method="post">
																	<input type="hidden" name="product" value="{{$loop989->getItemEscape("@id")}}"></input>
																	<select name="size">
																		{{foreach from=$loop989->getList("sizes/size") item=loop1086}}
																			<option value="{{$loop1086->getItemEscape("@type")}}">{{$loop1086->getItemEscape("@name")}}
																			</option>
																		{{/foreach}}
																	</select>
																	<input type="hidden" value="1" name="number"/>
																	<button type="submit" class="btn">{{$txt['102147::352412_1_addtobasket']}}
																	</button>
																</form>
															</div>
														</div>
													{{/if}}
													{{if  $loop989->getItem("client/@client")}}
														<div class="client">{{$loop989->getItem("client/@client")}}
														</div>
													{{/if}}
													{{if  $loop989->getItem("@note")}}
														<div class="note">
															<span>
																<i {{assign "classAttributeTmp28" ""}}{{capture name="classAttributeTmp28" assign="classAttributeTmp28"}}icon-star{{/capture}}{{if $loop989->getItem("@note") gt (string) 0.5}}{{capture name="classAttributeTmp28" assign="classAttributeTmp28"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp28}}"></i>
																<i {{assign "classAttributeTmp29" ""}}{{capture name="classAttributeTmp29" assign="classAttributeTmp29"}}icon-star{{/capture}}{{if $loop989->getItem("@note") gt (string) 1.5}}{{capture name="classAttributeTmp29" assign="classAttributeTmp29"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp29}}"></i>
																<i {{assign "classAttributeTmp30" ""}}{{capture name="classAttributeTmp30" assign="classAttributeTmp30"}}icon-star{{/capture}}{{if $loop989->getItem("@note") gt (string) 2.5}}{{capture name="classAttributeTmp30" assign="classAttributeTmp30"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp30}}"></i>
																<i {{assign "classAttributeTmp31" ""}}{{capture name="classAttributeTmp31" assign="classAttributeTmp31"}}icon-star{{/capture}}{{if $loop989->getItem("@note") gt (string) 3.5}}{{capture name="classAttributeTmp31" assign="classAttributeTmp31"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp31}}"></i>
																<i {{assign "classAttributeTmp32" ""}}{{capture name="classAttributeTmp32" assign="classAttributeTmp32"}}icon-star{{/capture}}{{if $loop989->getItem("@note") gt (string) 4.5}}{{capture name="classAttributeTmp32" assign="classAttributeTmp32"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp32}}"></i></span>
															<small>{{$txt['102147::58826_oc']}}{{$loop989->getItem("@note")}}{{$txt['102147::58826_oce']}}</small>
														</div>
													{{/if}}
													{{if  $loop989->getItem("content")}}
														<div class="cleardescription">{{$loop989->getItem("content")}}
														</div>
													{{/if}}
												</div>
											{{/foreach}}
										</div>
									</div>
								{{else}}
									data-ajaxLoad="true"data-pageType="main"
								{{/if}}
							</div>
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone4/product/comments/@id")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone4/product/sizes/size/availability/@id")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone4/product/category/@id")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone4/product/@version_name")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone4/product/@version_name")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone4/product/price/@price_formatted")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone4/product/price/@detalprice_net_formatted")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone4/product/price/@price_formatted")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone4/product/price/@price_net_formatted")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone4/product/price/@value") == (string)0}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone4/product/price/@maxprice_net_formatted")}}
						{{/if}}
						<iaiajaxend/>
						<!--Newsy na stronie głównej (strefa 1) (main_news1, 73972.1)-->
						{{if count( $xml->getList("page/mainpage1/item"))  gt (string) 0}}
							<div id="main_news1" class="mrg-b main_news">
								<a {{assign "hrefAttributeTmp40" ""}}{{capture name="hrefAttributeTmp40" assign="hrefAttributeTmp40"}}/news.php{{/capture}} class="big_label" {{if $xml->getItem("/shop/page/mainpage1/@link") and $xml->getItem("/shop/page/mainpage1/@link") neq (string)''}}{{capture name="hrefAttributeTmp40" assign="hrefAttributeTmp40"}}{{$xml->getItemEscape("/shop/page/mainpage1/@link")}}{{/capture}}{{/if}} title="{{$txt['73972::53716_label']}}"  href="{{$hrefAttributeTmp40}}">{{$txt['73972::53825_001']}}</a>
								<div class="row clearfix main_news_sub col-bg-1">
									{{foreach from=$xml->getList("page/mainpage1/item") item=loop1166}}
										<div {{assign "classAttributeTmp33" ""}}{{capture name="classAttributeTmp33" assign="classAttributeTmp33"}}news_wrapper{{/capture}}{{if count( $loop1166->getList("/shop/page/mainpage1/item")) == (string) 1}}{{capture name="classAttributeTmp33" assign="classAttributeTmp33"}}news_wrapper col-md-12{{/capture}}{{elseif count( $loop1166->getList("/shop/page/mainpage1/item")) == (string) 2}}{{capture name="classAttributeTmp33" assign="classAttributeTmp33"}}news_wrapper col-md-6 col-sm-12{{/capture}}{{else}}{{capture name="classAttributeTmp33" assign="classAttributeTmp33"}}news_wrapper col-md-4 col-sm-12{{/capture}}{{/if}}  class="{{$classAttributeTmp33}}">
											<div {{assign "classAttributeTmp34" ""}}{{capture name="classAttributeTmp34" assign="classAttributeTmp34"}}date{{/capture}}{{capture name="classAttributeTmp34" assign="classAttributeTmp34"}}date datasquare{{/capture}}  class="{{$classAttributeTmp34}}">{{$loop1166->getItem("date")}}
											</div>
											{{if ( $loop1166->getItem("link/@href"))  neq (string) ''}}
												<a class="news-name" href="{{$loop1166->getItemEscape("link/@href")}}" title="{{$loop1166->getItem("title")}}">{{$loop1166->getItem("title")}}</a>
											{{else}}
												{{if  $loop1166->getItem("title")  neq (string) ''}}
													<span class="news-name">{{$loop1166->getItem("title")}}</span>
												{{/if}}
											{{/if}}
											<div class="description clearfix">
												{{capture name="main_news_lazy" assign="main_news_lazy"}}
													{{$txt['73972::main_news_lazy_vid']}}
												{{/capture}}
												{{if  $loop1166->getItem("image/@src") and  $loop1166->getItem("image/@src") neq (string)''}}
													{{if ( $loop1166->getItem("link/@href"))  neq (string) ''}}
														{{literal}}
														<a class="news_image" href="{{/literal}}{{$loop1166->getItemEscape("link/@href")}}{{literal}}" {{/literal}}{{else}}{{literal}}
<span class="news_image" {{/literal}}{{/if}}{{literal}}>{{/literal}}
															<img {{assign "classAttributeTmp35" ""}}  src="/gfx/__IAI_TEMPLATE_LANG_639_1__/loader.gif?r=1570606529"{{capture name="classAttributeTmp35" assign="classAttributeTmp35"}}news_image{{/capture}}{{if $main_news_lazy}} data-src-small="{{$loop1166->getItem("image/@src")}}" data-src="{{$loop1166->getItem("image/@src")}}"{{capture name="classAttributeTmp35" assign="classAttributeTmp35"}}news_image b-lazy{{/capture}}{{else}} src="{{$loop1166->getItemEscape("image/@src")}}" {{/if}} alt="{{$loop1166->getItem("title/text()")}}"  class="{{$classAttributeTmp35}}"></img>
															{{if ( $loop1166->getItem("link/@href"))  neq (string) ''}}
																{{literal}}</a>{{/literal}}
														{{else}}
															{{literal}}</span>{{/literal}}
													{{/if}}
												{{/if}}
												{{$loop1166->getItem("description")}}
											</div>
											{{if  $loop1166->getItem("more/@href")}}
												<div class="see_more">
													<a class="see_more" href="{{$loop1166->getItemEscape("more/@href")}}" title="{{$loop1166->getItem("title")}}">{{$txt['73972::53698_xx']}}</a>
												</div>
											{{/if}}
										</div>
									{{/foreach}}
								</div>
							</div>
						{{/if}}
						<!--Newsy na stronie głównej (strefa 2) (main_news2, 81825.1)-->
						{{if count( $xml->getList("page/mainpage2/item"))  gt (string) 0}}
							<div id="main_news2" class="mrg-b">
								<a {{assign "hrefAttributeTmp41" ""}}{{capture name="hrefAttributeTmp41" assign="hrefAttributeTmp41"}}/blog-list.php{{/capture}} class="big_label" {{if $xml->getItem("/shop/page/mainpage2/@link") and $xml->getItem("/shop/page/mainpage2/@link") neq (string)''}}{{capture name="hrefAttributeTmp41" assign="hrefAttributeTmp41"}}{{$xml->getItemEscape("/shop/page/mainpage2/@link")}}{{/capture}}{{/if}} title="{{$txt['81825::53716_label']}}"  href="{{$hrefAttributeTmp41}}">{{$txt['81825::53825_001']}}</a>
								<div class="row clearfix main_blog">
									{{foreach from=$xml->getList("page/mainpage2/item") item=loop1257}}
										<div {{assign "classAttributeTmp36" ""}}{{if count( $loop1257->getList("/shop/page/mainpage2/item")) == (string) 1}}{{capture name="classAttributeTmp36" assign="classAttributeTmp36"}}col-md-12{{/capture}}{{else}}{{capture name="classAttributeTmp36" assign="classAttributeTmp36"}}col-md-6 col-xs-12{{/capture}}{{/if}}  class="{{$classAttributeTmp36}}">
											<div class="blog_item">
												<a class="blog_name" href="{{$loop1257->getItemEscape("link/@href")}}" title="{{$loop1257->getItem("title")}}">{{$loop1257->getItem("title")}}</a>
												<div class="description clearfix">
													{{capture name="main_news_lazy" assign="main_news_lazy"}}
														{{$txt['81825::main_news_lazy_vid']}}
													{{/capture}}
													{{if  $loop1257->getItem("image/@src") and  $loop1257->getItem("image/@src") neq (string)''}}
														<a class="blog_image" href="{{$loop1257->getItemEscape("link/@href")}}">
															<img {{assign "classAttributeTmp37" ""}}  src="/gfx/__IAI_TEMPLATE_LANG_639_1__/loader.gif?r=1570606529"{{capture name="classAttributeTmp37" assign="classAttributeTmp37"}}blog_image{{/capture}}{{if $main_news_lazy}} data-src-small="{{$loop1257->getItem("image/@src")}}" data-src="{{$loop1257->getItem("image/@src")}}"{{capture name="classAttributeTmp37" assign="classAttributeTmp37"}}blog_image b-lazy{{/capture}}{{else}} src="{{$loop1257->getItemEscape("image/@src")}}" {{/if}} alt="{{$loop1257->getItem("title/text()")}}"  class="{{$classAttributeTmp37}}"></img></a>
													{{/if}}
													{{$loop1257->getItem("description")}}
													<br/>
													{{if  $loop1257->getItem("more/@href")}}
														<a {{assign "classAttributeTmp38" ""}}{{capture name="classAttributeTmp38" assign="classAttributeTmp38"}}see_more{{/capture}}{{capture name="classAttributeTmp38" assign="classAttributeTmp38"}}see_more btn-regular blog{{/capture}} href="{{$loop1257->getItemEscape("more/@href")}}" title="{{$loop1257->getItem("title")}}"  class="{{$classAttributeTmp38}}">{{$txt['81825::53698_xx']}}</a>
													{{/if}}
												</div>
											</div>
										</div>
									{{/foreach}}
								</div>
							</div>
						{{/if}}
						<!--CMS na stronie głównej 2 (main_cms2, 72220.1)-->
						{{if  $xml->getItem("page/text[@id='14']")}}
							{{foreach from=$xml->getList("page/text[@id='14']") item=loop1313}}
								<div {{assign "classAttributeTmp39" ""}}{{capture name="classAttributeTmp39" assign="classAttributeTmp39"}}cm{{/capture}} id="main_cms2"{{capture name="classAttributeTmp39" assign="classAttributeTmp39"}}{{$txt['72220::59554_001class']}}{{/capture}}  class="{{$classAttributeTmp39}}">{{$loop1313->getItem("body")}}
								</div>
							{{/foreach}}
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
