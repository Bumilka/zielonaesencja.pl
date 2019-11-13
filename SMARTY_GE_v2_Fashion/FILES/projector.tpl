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
			<script type="text/javascript" src="/gfx/{{$xml->getItemEscape("language/@id")}}/projector_product_questions.js.gzip?r=1570606529">			</script>

			<script type="text/javascript" src="/gfx/{{$xml->getItemEscape("language/@id")}}/projector_video.js.gzip?r=1570606529">			</script>

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
					{{include file="component_menu_preloader_70896.tpl"}}
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
						{{include file="component_menu_additional2_100991.tpl"}}
						{{include file="component_menu_filter_79091.tpl"}}
						{{include file="component_menu_buttons_77612.tpl"}}
						{{include file="component_menu_additional1_76965.tpl"}}
					</aside>
				{{/if}}
				{{if !( $xml->getItem("action/set_render/item")) or ( $xml->getItem("action/set_render/item/@name")  == (string) 'content')}}
					<div {{assign "classAttributeTmp2" ""}}  id="content"{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}span9{{/capture}}{{if $xml->getItem("page[@type='projector']")}} itemscope="itemscope" itemtype="http://schema.org/Product" {{/if}}{{if $xml->getItem("page/@type") == (string) 'projector'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['73991::70925_projector_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'search'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['73991::70925_search_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'main'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['73991::70925_main_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'navigation'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['73991::70925_navigation_page_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'blog-list' or $xml->getItem("page/@type") == (string) 'blog-item'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['73991::70925_blog_c_class']}}{{/capture}}{{else}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['73991::70925_otherwise_c_class']}}{{/capture}}{{/if}}  class="{{$classAttributeTmp2}}">
						{{include file="component_menu_messages_67953.tpl"}}
						<!--Warianty produktu (projector_productversions, 76164.1)-->
						{{if  $xml->getItem("compare/@count")  gt (string) 0 or  $xml->getItem("/shop/page/@cache_html")  == (string) 'true'}}
							<div id="menu_compare_product" {{if $xml->getItem("/shop/page[@cache_html='true']")}} style="display:none" {{/if}}>
								<div class="big_label">{{$txt['76164::55103_002']}}
								</div>
								<div class="compare_product_sub align_row" data-align="img#css">
									{{foreach from=$xml->getList("compare/product") item=loop254}}
										<a href="{{$loop254->getItemEscape("@link")}}">
											<img src="{{$loop254->getItemEscape("iconsmall")}}" alt="{{$loop254->getItem("name")}}"></img></a>
									{{/foreach}}
								</div>
								{{if  $xml->getItem("compare/@count")  gt (string) 1 or  $xml->getItem("/shop/page/@cache_html")  == (string) 'true'}}
									<div class="compare_buttons" {{if $xml->getItem("/shop/page[@cache_html='true']")}} style="display:none" {{/if}}>
										<a {{assign "hrefAttributeTmp72" ""}}  class="btn-small" id="comparers_remove_btn"{{capture name="hrefAttributeTmp72" assign="hrefAttributeTmp72"}}settings.php?comparers=remove&#160;amp;product= {{foreach from=$xml->getList("compare/product") item=loop272}}{{$loop272->getItemEscape("@id")}}{{if !(count( $loop272->getList("../product")) == (string) $loop272@iteration )}},{{/if}}{{/foreach}}{{/capture}}{{if $xml->getItem("/shop/action/settings/@url")}}{{capture name="hrefAttributeTmp72" assign="hrefAttributeTmp72"}}{{$xml->getItemEscape("/shop/action/settings/@url")}}?comparers=remove&#160;amp;product= {{foreach from=$xml->getList("compare/product") item=loop277}}{{$loop277->getItemEscape("@id")}}{{if !(count( $loop277->getList("../product")) == (string) $loop277@iteration )}},{{/if}}{{/foreach}}{{/capture}}{{if $xml->getItem("/shop/page[@cache_html='true']")}}{{capture name="hrefAttributeTmp72" assign="hrefAttributeTmp72"}}{{$xml->getItemEscape("/shop/action/settings/@url")}}?comparers=remove&#160;amp;product=###{{/capture}}{{/if}}{{/if}} title="{{$txt['76164::55103_00_1b']}}"  href="{{$hrefAttributeTmp72}}">{{$txt['76164::55103_00_2b']}}</a>
										<a {{assign "hrefAttributeTmp73" ""}}  class="btn-small"{{capture name="hrefAttributeTmp73" assign="hrefAttributeTmp73"}}product-compare.php{{/capture}}{{if $xml->getItem("/shop/action/productCompare/@url")}}{{capture name="hrefAttributeTmp73" assign="hrefAttributeTmp73"}}{{$xml->getItemEscape("/shop/action/productCompare/@url")}}{{/capture}}{{/if}} title="{{$txt['76164::55103_003']}}" target="{{$txt['76164::55103_023']}}"  href="{{$hrefAttributeTmp73}}">{{$txt['76164::55103_004']}}</a>
									</div>
								{{/if}}
							</div>
							{{if  $xml->getItem("/shop/page/@cache_html")  == (string) 'true' }}
								<script>
          app_shop.run(function(){ menu_compare_cache(); }, 'all');
      								</script>

							{{/if}}
						{{/if}}
						<!--Dokładne dane o produkcie (projector_details, 77463.2)-->
						{{capture name="showComments" assign="showComments"}}
							{{$txt['77463::57649_showComment']}}
						{{/capture}}
						{{capture name="param_projector" assign="param_projector"}}
							{{$txt['77463::58230_setParam']}}
						{{/capture}}
						{{capture name="param_kropa" assign="param_kropa"}}
							{{$txt['77463::n55363_kropa']}}
						{{/capture}}
						{{capture name="amount_txt" assign="amount_txt"}}
							{{$txt['77463::n55363_amount_txt']}}
						{{/capture}}
						<script type="text/javascript" class="ajaxLoad">
			cena_raty = {{$xml->getItemEscape("page/projector/product/price/@value")}};
			{{if  $xml->getItem("basket/@login")}}
					var  client_login = 'true'
				{{else}}
					var  client_login = 'false'
				{{/if}}
			var  client_points = '{{$xml->getItemEscape("/shop/basket/@client_points")}}'; 
			var  points_used = '{{$xml->getItemEscape("/shop/basket/@points_used")}}'; 
			var  shop_currency = '{{$xml->getItemEscape("/shop/currency/@name")}}'; 
			var product_data = {   
			"currency":"{{$xml->getItemEscape("/shop/currency/@name")}}",   
			"product_type":"{{$xml->getItemEscape("page/projector/product/@product_type")}}",   
      "unit":"{{$xml->getItem("page/projector/product/sizes/@unit")}}",
      "unit_plural":"{{$xml->getItem("page/projector/product/sizes/@unit_plural")}}",
			"unit_sellby":"{{$xml->getItemEscape("page/projector/product/sizes/@unit_sellby")}}",
			"unit_precision":"{{$xml->getItemEscape("page/projector/product/sizes/@unit_precision")}}", 
			"base_price":{
{{foreach from=$xml->getList("/shop/page/projector/product/sizes/prices/@*") item=loop336}}
				"{{$loop336->getName()}}":"{{$loop336->getItemEscape(".")}}",  
{{/foreach}}{{foreach from=$xml->getList("/shop/page/projector/product/price/@*") item=loop341}}
				"{{$loop341->getName()}}":"{{$loop341->getItemEscape(".")}}"{{if  $loop341@iteration   neq (string)  $loop341@total }},{{/if}}{{/foreach}}
			},
			"order_quantity_range":{
{{foreach from=$xml->getList("/shop/page/projector/product/order_quantity_range/*") item=loop350}}
				"{{$loop350->getName()}}":"{{$loop350->getItemEscape(".")}}"{{if  $loop350@iteration   neq (string)  $loop350@total }},{{/if}}{{/foreach}}
			},
			"sizes":{
{{foreach from=$xml->getList("/shop/page/projector/product/sizes/size") item=loop358}}
				"{{$loop358->getItemEscape("@type")}}":
				{
{{foreach from=$loop358->getList("@*") item=loop362}}
					"{{$loop362->getName()}}":"{{$loop362->getItemEscape(".")}}",
{{/foreach}}{{foreach from=$loop358->getList("/shop/page/projector/product/bundle_price") item=loop367}}
					"{{$loop367->getName()}}":{ 
{{foreach from=$loop367->getList("@*") item=loop370}}
						"{{$loop370->getName()}}":"{{$loop370->getItemEscape(".")}}"{{if  $loop370@iteration   neq (string)  $loop370@total }},{{/if}}{{/foreach}}
					},
{{/foreach}}{{if  $loop358->getItem("price/rebateNumber/rebate")}}
					"rebateNumber":[ 
{{foreach from=$loop358->getList("price/rebateNumber/rebate") item=loop380}}
						{ 
{{foreach from=$loop380->getList("@*") item=loop383}}
							"{{$loop383->getName()}}":"{{$loop383->getItemEscape(".")}}"{{if  $loop383@iteration   neq (string)  $loop383@total }},{{/if}}{{/foreach}}
						}{{if  $loop380@iteration   neq (string)  $loop380@total }},{{/if}}{{/foreach}}
					],
				{{/if}}{{if  $loop358->getItem("availability/shipping_time")}}
					"shipping_time":{ 
{{foreach from=$loop358->getList("availability/shipping_time") item=loop396}}{{foreach from=$loop396->getList("@*") item=loop398}}
							"{{$loop398->getName()}}":"{{$loop398->getItem(".")}}"{{if  $loop398@iteration   neq (string)  $loop398@total }},{{/if}}{{/foreach}}{{/foreach}}
					},
				{{/if}}{{foreach from=$loop358->getList("node()") item=loop407}}
					"{{$loop407->getName()}}":{ 
{{foreach from=$loop407->getList("@*") item=loop410}}
						"{{$loop410->getName()}}":"{{$loop410->getItemEscape(".")}}"{{if  $loop410@iteration   neq (string)  $loop410@total }},{{/if}}{{/foreach}}
					}{{if  $loop407@iteration   neq (string)  $loop407@total }},{{/if}}{{/foreach}}
				}{{if  $loop358@iteration   neq (string)  $loop358@total }},{{/if}}{{/foreach}}
			}     
			}  
								</script>

						<form id="projector_form" action="basketchange.php" method="post" class="{{$txt['77463::n55363_class']}}">
							<input id="projector_product_hidden" type="hidden" name="product" value="{{$xml->getItemEscape("page/projector/product/@id")}}"></input>
							<input {{assign "valueAttributeTmp75" ""}}  id="projector_size_hidden" type="hidden" name="size" {{if $xml->getItem("page/projector/product/sizes/size[@selected='true']")}}{{capture name="valueAttributeTmp75" assign="valueAttributeTmp75"}}{{$xml->getItemEscape("page/projector/product/sizes/size[@selected='true']/@type")}}{{/capture}}{{elseif $xml->getItem("page/projector/product/sizes/size/@type") == (string) 'onesize'}}{{capture name="valueAttributeTmp75" assign="valueAttributeTmp75"}}{{$xml->getItemEscape("page/projector/product/sizes/size/@type")}}{{/capture}}{{/if}}  value="{{$valueAttributeTmp75}}"></input>
							<input id="projector_mode_hidden" type="hidden" name="mode" value="1"/>
							{{if  $xml->getItem("page/projector/product/exchange/@exchange_id")}}
								<input id="projector_exchange_id_hidden" type="hidden" name="exchange_id" value="{{$xml->getItemEscape("page/projector/product/exchange/@exchange_id")}}"></input>
								<input id="projector_change_hidden" type="hidden" name="change" value="change"/>
							{{/if}}
							{{if  $xml->getItem("page/projector/product/sizes/size/@gtin_type")}}
								<meta itemprop="GTIN{{$xml->getItemEscape("page/projector/product/sizes/size/@gtin_type")}}" content="{{$xml->getItemEscape("page/projector/product/sizes/size/@code_producer")}}"/>
							{{/if}}
							<div class="projector_navigation">
								{{if  $xml->getItem("page/projector/product/products_other_founds")}}
									<div class="products_other_founds">
										<a class="previous" href="{{$xml->getItemEscape("page/projector/product/products_other_founds/@previous")}}">{{$txt['77463::n57558_001']}}</a>
										<a class="next" href="{{$xml->getItemEscape("page/projector/product/products_other_founds/@next")}}">{{$txt['77463::n57558_002']}}</a>
									</div>
								{{/if}}
								<div class="label_icons">
									{{if  $xml->getItem("/shop/page/projector/product/@promotion")}}
										<span class="promo">{{$txt['77463::53885_307pro']}}</span>
									{{/if}}
									{{if  $xml->getItem("/shop/page/projector/product/@new")}}
										<span class="newproducts">{{$txt['77463::53885_307n']}}</span>
									{{/if}}
									{{if  $xml->getItem("/shop/page/projector/product/@promotion") and  $xml->getItem("/shop/page/projector/product/@new")}}
									{{elseif  $xml->getItem("/shop/page/projector/product/@promotion") or  $xml->getItem("/shop/page/projector/product/@new")}}
										{{if  $xml->getItem("/shop/page/projector/product/@bestseller")}}
											<span class="bestseller">{{$txt['77463::53885_307b']}}</span>
										{{elseif  $xml->getItem("/shop/page/projector/product/@discount")}}
											<span class="discount">{{$txt['77463::53885_307pr']}}</span>
										{{elseif  $xml->getItem("/shop/page/projector/product/@distinguished")}}
											<span class="distinguished">{{$txt['77463::53885_307p']}}</span>
										{{/if}}
									{{else}}
										{{if  $xml->getItem("/shop/page/projector/product/@bestseller")}}
											<span class="bestseller">{{$txt['77463::53885_307b']}}</span>
										{{/if}}
										{{if  $xml->getItem("/shop/page/projector/product/@discount")}}
											<span class="discount">{{$txt['77463::53885_307pr']}}</span>
										{{/if}}
										{{if  $xml->getItem("/shop/page/projector/product/@distinguished") and !( $xml->getItem("/shop/page/projector/product/@bestseller") and  $xml->getItem("/shop/page/projector/product/@discount"))}}
											<span class="distinguished">{{$txt['77463::53885_307p']}}</span>
										{{/if}}
									{{/if}}
								</div>
								<h1 itemprop="name">{{$xml->getItem("/shop/page/projector/product/name")}}
								</h1>
								{{if  $xml->getItem("page/projector/product/description") and  $xml->getItem("page/projector/product/description")  neq (string) ''}}
									<div {{assign "classAttributeTmp3" ""}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}projector_description{{/capture}} itemprop="description"{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}projector_description description{{/capture}}  class="{{$classAttributeTmp3}}">{{$xml->getItem("page/projector/product/description/text()")}}
									</div>
								{{/if}}
							</div>
							<div {{assign "classAttributeTmp4" ""}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}photos{{/capture}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}photos{{$txt['77463::n55363_class1']}}{{/capture}}  class="{{$classAttributeTmp4}}">
								{{if  $xml->getItem("/shop/page/projector/product/enclosures/images")}}
									<ul class="bxslider">
										{{foreach from=$xml->getList("/shop/page/projector/product/enclosures/images/enclosure") item=loop528}}
											<li>
												<a class="projector_medium_image" data-imagelightbox="f" href="{{$loop528->getItem("@url")}}">
													<img class="photo" itemprop="image" alt="{{$loop528->getItem("/shop/page/projector/product/name")}}" src="{{$loop528->getItemEscape("@medium")}}"></img></a>
											</li>
										{{/foreach}}
										{{foreach from=$xml->getList("/shop/page/projector/bundled/product") item=loop541}}
											<li>
												<a class="projector_medium_image" data-imagelightbox="f" href="{{$loop541->getItem("enclosures/images/enclosure[1]/@url")}}">
													<img class="photo" itemprop="image" alt="{{$loop541->getItem("name")}}" src="{{$loop541->getItemEscape("enclosures/images/enclosure[1]/@medium")}}"></img></a>
											</li>
										{{/foreach}}
									</ul>
								{{/if}}
								{{capture name="enclosureCount" assign="enclosureCount"}}
									{{$xml->getItemEscape("count(page/projector/product/enclosures/images/enclosure)")}}
								{{/capture}}
								{{if ($enclosureCount  gt (string) 1) or  $xml->getItem("/shop/page/projector/bundled/product")}}
									<div id="bx-pager" class="enclosures align_row" data-align="img#css">
										{{foreach from=$xml->getList("page/projector/product/enclosures/images/enclosure") item=loop559}}
											<a href="" data-slide-index="{{$loop559@iteration-1}}">
												<img alt="" src="{{$loop559->getItemEscape("@icon")}}"></img></a>
										{{/foreach}}
										{{foreach from=$xml->getList("/shop/page/projector/bundled/product") item=loop567}}
											<a href="" data-slide-index="{{$loop567->getItemEscape("$enclosureCount + position() - 1")}}">
												<img alt="" src="{{$loop567->getItemEscape("enclosures/images/enclosure[1]/@icon")}}"></img></a>
										{{/foreach}}
									</div>
								{{/if}}
								{{if  $xml->getItem("page/projector/bookmarklets/item")}}
									<div class="bookmarklets_big">
										<ul>
											{{foreach from=$xml->getList("page/projector/bookmarklets/item") item=loop581}}
												<li>{{$loop581->getItem("text()")}}
												</li>
											{{/foreach}}
										</ul>
									</div>
								{{/if}}
							</div>
							<div {{assign "classAttributeTmp5" ""}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}product_info{{/capture}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}product_info{{$txt['77463::n55363_class2']}}{{/capture}}  class="{{$classAttributeTmp5}}">
								{{if  $xml->getItem("page/projector/product/firm/@icon")}}
									<a class="firmlogo" href="{{$xml->getItem("page/projector/product/firm/@productslink")}}">
										<img src="{{$xml->getItemEscape("page/projector/product/firm/@icon")}}" alt="{{$xml->getItemEscape("page/projector/product/firm/@name")}}" title="{{$xml->getItemEscape("page/projector/product/firm/@name")}}"></img></a>
								{{/if}}
								{{if !( $xml->getItem("page/projector/product/firm/@name")  == (string) '') or ( $xml->getItem("page/projector/product/@code")) or ( $xml->getItem("page/projector/comments/@avg")  gt (string) 0) or ( $xml->getItem("page/projector/product/series")) or ( $xml->getItem("page/projector/product/warranty/@name")) or ( $xml->getItem("page/projector/product/traits/trait"))}}
									<div {{assign "classAttributeTmp6" ""}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}product_info_top{{/capture}}{{if $xml->getItem("page/projector/comments/notes/complex/item/@avg")}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}product_info_top is_comments_complex{{/capture}}{{/if}}  class="{{$classAttributeTmp6}}">
										{{if !( $xml->getItem("page/projector/product/firm/@name")  == (string) '') or  $xml->getItem("page/projector/product/@code") or  $xml->getItem("page/projector/product/series") or  $xml->getItem("page/projector/product/warranty/@name")}}
											<div class="basic_info">
												{{if !( $xml->getItem("page/projector/product/firm/@name")  == (string) '')}}
													<div class="producer">
														<span>{{$txt['77463::53311_1243']}}</span>
														<a class="brand" itemprop="brand" title="{{$txt['77463::54827_401']}}" href="{{$xml->getItem("page/projector/product/firm/@productslink")}}">{{$xml->getItem("page/projector/product/firm/@name")}}</a>
													</div>
												{{/if}}
												{{if  $xml->getItem("page/projector/product/@code")}}
													<div class="code">
														<span>{{$txt['77463::53676_005_kod']}}</span>
														<strong itemprop="productID" content="mpn:{{$xml->getItemEscape("page/projector/product/@code")}}">{{$xml->getItemEscape("page/projector/product/@code")}}</strong>
													</div>
												{{/if}}
												{{if  $xml->getItem("page/projector/product/series")}}
													<div class="series">
														<span>{{$txt['77463::40141_001be']}}</span>
														<a title="{{$txt['77463::54827_402']}}" href="{{$xml->getItemEscape("page/projector/product/series/@link")}}">{{$xml->getItemEscape("page/projector/product/series/@name")}}</a>
													</div>
												{{/if}}
												{{if  $xml->getItem("page/projector/product/warranty/@name")}}
													<div class="warranty">
														<span>{{$txt['77463::53983_400']}}</span>
														<a href="#tabs_58676" onclick="$('#warranty_58676').click();" title="{{$txt['77463::54827_40']}}">{{$xml->getItemEscape("page/projector/product/warranty/@name")}}</a>
													</div>
												{{/if}}
											</div>
										{{/if}}
										{{if  $xml->getItem("page/projector/comments/@avg")  gt (string) 0}}
											<div {{assign "classAttributeTmp7" ""}}{{capture name="classAttributeTmp7" assign="classAttributeTmp7"}}comments_info{{/capture}}{{if $xml->getItem("page/projector/comments/notes/complex/item/@avg")}}{{capture name="classAttributeTmp7" assign="classAttributeTmp7"}}comments_info comments_complex_info{{/capture}}{{/if}}  class="{{$classAttributeTmp7}}">
												{{if !( $xml->getItem("page/projector/comments/notes/complex/item/@avg"))}}
													<div class="comments">
														<span>{{$txt['77463::53676_005_ocena']}}</span>
														<div class="note" itemprop="aggregateRating" itemscope="" itemtype="http://schema.org/AggregateRating">
															<span>
																<i {{assign "classAttributeTmp8" ""}}{{capture name="classAttributeTmp8" assign="classAttributeTmp8"}}icon-star{{/capture}}{{if $xml->getItem("page/projector/comments/@avg") gt (string) 0.5}}{{capture name="classAttributeTmp8" assign="classAttributeTmp8"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp8}}"></i>
																<i {{assign "classAttributeTmp9" ""}}{{capture name="classAttributeTmp9" assign="classAttributeTmp9"}}icon-star{{/capture}}{{if $xml->getItem("page/projector/comments/@avg") gt (string) 1.5}}{{capture name="classAttributeTmp9" assign="classAttributeTmp9"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp9}}"></i>
																<i {{assign "classAttributeTmp10" ""}}{{capture name="classAttributeTmp10" assign="classAttributeTmp10"}}icon-star{{/capture}}{{if $xml->getItem("page/projector/comments/@avg") gt (string) 2.5}}{{capture name="classAttributeTmp10" assign="classAttributeTmp10"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp10}}"></i>
																<i {{assign "classAttributeTmp11" ""}}{{capture name="classAttributeTmp11" assign="classAttributeTmp11"}}icon-star{{/capture}}{{if $xml->getItem("page/projector/comments/@avg") gt (string) 3.5}}{{capture name="classAttributeTmp11" assign="classAttributeTmp11"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp11}}"></i>
																<i {{assign "classAttributeTmp12" ""}}{{capture name="classAttributeTmp12" assign="classAttributeTmp12"}}icon-star{{/capture}}{{if $xml->getItem("page/projector/comments/@avg") gt (string) 4.5}}{{capture name="classAttributeTmp12" assign="classAttributeTmp12"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp12}}"></i></span>
															<small itemprop="ratingValue">{{$xml->getItem("page/projector/comments/@avg")}}{{$txt['77463::58826_011_oc']}}</small>
															<a href="#tabs_58676" onclick="$('#opinions_58676').click();" title="{{$txt['77463::n56245_stats_title']}}">{{$txt['77463::n56245_stats_1']}}
																<span class="count" itemprop="reviewCount">{{$xml->getItemEscape("page/projector/comments/@all")}}</span>
																{{if  $xml->getItem("page/projector/comments/@all")  == (string) 1}}
																	{{$txt['77463::n56245_stats_txt1']}}
																{{elseif !( $xml->getItem("page/projector/comments/@all")  gt (string) 4)}}
																	{{$txt['77463::n56245_stats_txt2']}}
																{{else}}
																	{{$txt['77463::n56245_stats_txt3']}}
																{{/if}}
																{{$txt['77463::n56245_stats_2']}}</a>
														</div>
													</div>
												{{/if}}
												{{if  $xml->getItem("page/projector/comments/notes/complex/item/@avg")}}
													<div class="comments">
														<span>{{$txt['77463::53676_005_sredniaocena']}}</span>
														<div class="note" itemprop="aggregateRating" itemscope="" itemtype="http://schema.org/AggregateRating">
															<span>
																<i {{assign "classAttributeTmp8" ""}}{{capture name="classAttributeTmp8" assign="classAttributeTmp8"}}icon-star{{/capture}}{{if $xml->getItem("page/projector/comments/@avg") gt (string) 0.5}}{{capture name="classAttributeTmp8" assign="classAttributeTmp8"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp8}}"></i>
																<i {{assign "classAttributeTmp9" ""}}{{capture name="classAttributeTmp9" assign="classAttributeTmp9"}}icon-star{{/capture}}{{if $xml->getItem("page/projector/comments/@avg") gt (string) 1.5}}{{capture name="classAttributeTmp9" assign="classAttributeTmp9"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp9}}"></i>
																<i {{assign "classAttributeTmp10" ""}}{{capture name="classAttributeTmp10" assign="classAttributeTmp10"}}icon-star{{/capture}}{{if $xml->getItem("page/projector/comments/@avg") gt (string) 2.5}}{{capture name="classAttributeTmp10" assign="classAttributeTmp10"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp10}}"></i>
																<i {{assign "classAttributeTmp11" ""}}{{capture name="classAttributeTmp11" assign="classAttributeTmp11"}}icon-star{{/capture}}{{if $xml->getItem("page/projector/comments/@avg") gt (string) 3.5}}{{capture name="classAttributeTmp11" assign="classAttributeTmp11"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp11}}"></i>
																<i {{assign "classAttributeTmp12" ""}}{{capture name="classAttributeTmp12" assign="classAttributeTmp12"}}icon-star{{/capture}}{{if $xml->getItem("page/projector/comments/@avg") gt (string) 4.5}}{{capture name="classAttributeTmp12" assign="classAttributeTmp12"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp12}}"></i></span>
															<small itemprop="ratingValue">{{$xml->getItem("page/projector/comments/@avg")}}{{$txt['77463::58826_011_oc']}}</small>
															<a href="#tabs_58676" onclick="$('#opinions_58676').click();" title="{{$txt['77463::n56245_stats_title']}}">{{$txt['77463::n56245_stats_1']}}
																<span class="count" itemprop="reviewCount">{{$xml->getItemEscape("page/projector/comments/@all")}}</span>
																{{if  $xml->getItem("page/projector/comments/@all")  == (string) 1}}
																	{{$txt['77463::n56245_stats_txt1']}}
																{{elseif !( $xml->getItem("page/projector/comments/@all")  gt (string) 4)}}
																	{{$txt['77463::n56245_stats_txt2']}}
																{{else}}
																	{{$txt['77463::n56245_stats_txt3']}}
																{{/if}}
																{{$txt['77463::n56245_stats_2']}}</a>
														</div>
													</div>
													{{foreach from=$xml->getList("page/projector/comments/notes/complex/item[@avg]") item=loop711}}
														<div class="comments comments_complex">
															<span>{{$loop711->getItemEscape("@name")}}</span>
															<div class="note">
																<span>
																	{{foreach from=$loop711->getList("i") item=loop717}}
																		<i {{assign "classAttributeTmp18" ""}}{{capture name="classAttributeTmp18" assign="classAttributeTmp18"}}icon-star{{/capture}}{{if $loop717->getItem("../@avg") gt (string) $loop717@iteration or $loop717->getItem("../@avg") == (string) $loop717@iteration }}{{capture name="classAttributeTmp18" assign="classAttributeTmp18"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp18}}"></i>
																	{{/foreach}}
																	</span>
																<small itemprop="ratingValue">{{$loop711->getItem("@avg")}}{{$txt['77463::n55363_345']}}{{$loop711->getItemEscape("@range")}}</small>
															</div>
														</div>
													{{/foreach}}
												{{/if}}
											</div>
										{{/if}}
										{{if !($param_projector)}}
											{{if  $xml->getItem("page/projector/product/traits/trait")}}
												<div class="traits_info">
													{{foreach from=$xml->getList("page/projector/product/traits/trait") item=loop739}}
														{{if !( $loop739->getItem("@groupid")  == (string)  $loop739->getItem("preceding-sibling::trait/@groupid"))}}
															<div class="param_trait">
																<span>{{$loop739->getItemEscape("@groupdescription")}}{{$txt['77463::58668_traitseparator']}}</span>
																<strong class="lt_description dright">
																	{{if  $loop739->getItem("@gfx")}}
																		<a class="param_trait_gfx" href="{{$loop739->getItemEscape("@link")}}">
																			<img class="list_traits_gfx" src="{{$loop739->getItemEscape("@gfx")}}" alt="{{$loop739->getItemEscape("@traitdescription")}}"></img></a>
																	{{else}}
																		<a class="param_trait" href="{{$loop739->getItemEscape("@link")}}">{{$loop739->getItemEscape("@traitdescription")}}</a>
																	{{/if}}
																	{{if  $loop739->getItem("@groupid")  == (string)  $loop739->getItem("following-sibling::trait/@groupid")}}
																		{{capture name="temporaryGroup" assign="temporaryGroup"}}
																			{{$loop739->getItemEscape("@groupid")}}
																		{{/capture}}
																		{{foreach from=$loop739->getList("following-sibling::trait[(@groupid = {{$temporaryGroup}})]") item=loop762}}
																			{{if  $loop762->getItem("@gfx")}}
																				<a href="{{$loop762->getItemEscape("@link")}}">
																					<img class="list_traits_gfx" src="{{$loop762->getItemEscape("@gfx")}}" alt="{{$loop762->getItemEscape("@traitdescription")}}"></img></a>
																			{{else}}
																				{{$txt['77463::n58633_traitseparator']}}
																				<a href="{{$loop762->getItemEscape("@link")}}">{{$loop762->getItemEscape("@traitdescription")}}</a>
																			{{/if}}
																		{{/foreach}}
																	{{/if}}
																	</strong>
															</div>
														{{/if}}
													{{/foreach}}
												</div>
											{{/if}}
										{{/if}}
									</div>
								{{/if}}
								{{if ( $xml->getItem("page/projector/product/multiversions")) and (count( $xml->getList("page/projector/product/multiversions/multi_version"))  gt (string) 1)}}
									<div id="multi_versions">
										{{foreach from=$xml->getList("page/projector/product/multiversions/multi_version") item=loop789}}
											<div class="multi_version product_section">
												<label>{{$loop789->getItem("@name")}}:
												</label>
												<div class="fancy-select" id="mw_{{$loop789->getItemEscape("@id")}}">
													<div class="trigger">
														{{foreach from=$loop789->getList("item[@selected='true']/values/value") item=loop795}}
															{{if !( $loop795@iteration   == (string) 1)}}
																{{$txt['77463::n55363_345']}}
															{{/if}}
															{{$loop795->getItem("@name")}}
														{{/foreach}}
													</div>
													<ul class="options">
														{{foreach from=$loop789->getList("item") item=loop800}}
															{{capture name="value_name" assign="value_name"}}
																{{foreach from=$loop800->getList("values/value") item=loop802}}
																	{{if !( $loop802@iteration   == (string) 1)}}
																		{{$txt['77463::n55363_345']}}
																	{{/if}}
																	{{$loop802->getItem("@name")}}
																{{/foreach}}
															{{/capture}}
															<li class="{{if $loop800->getItem("@disabled") == (string)'true'}}disabled {{/if}}{{if $loop800->getItem("@selected") == (string)'true'}}selected{{/if}}" id="v{{$loop800->getItem("values/@id")}}" data-values_id="{{$loop800->getItem("values/@id")}}" data-value="{{$loop800@iteration}}" data-title="{{$value_name}}" data-product="{{$loop800->getItemEscape("products/product/@product_id")}}">
																<a title="{{$value_name}}" href="{{$loop800->getItemEscape("products/product/@url")}}">
																	{{foreach from=$loop800->getList("values/value") item=loop817}}
																		{{if  $loop817->getItem("@gfx")}}
																			<span class="gfx">
																				<img src="{{$loop817->getItemEscape("@gfx")}}" alt="{{$value_name}}"></img></span>
																		{{/if}}
																	{{/foreach}}
																	<span>
																		<span>{{$loop800->getItem("$value_name")}}</span>
																		{{foreach from=$loop800->getList("values/value") item=loop831}}
																			{{if  $loop831->getItem("description")}}
																				<div class="description">{{$loop831->getItem("description")}}
																				</div>
																			{{/if}}
																		{{/foreach}}
																		<p class="conflict_txt">{{$txt['77463::n55363_co']}}
																		</p></span></a>
															</li>
														{{/foreach}}
													</ul>
													<p class="conflict_txt">{{$txt['77463::n55363_coz']}}
													</p>
													{{if  $loop789->getItem("description")}}
														<div class="description">{{$loop789->getItem("description")}}
														</div>
													{{/if}}
												</div>
												{{if  $loop789->getItem("@gfx")}}
													<div class="gfx">
														<img src="{{$loop789->getItemEscape("@gfx")}}" alt="{{$loop789->getItemEscape("@name")}}"></img>
													</div>
												{{/if}}
											</div>
										{{/foreach}}
									</div>
								{{/if}}
								{{if ( $xml->getItem("page/projector/product/versions/@count")  gt (string) 0) and (count( $xml->getList("page/projector/product/multiversions/multi_version"))  == (string) 1)}}
									<div class="product_section versions">
										<label class="projector_label">{{$txt['77463::n55363_400_11111']}}{{$xml->getItemEscape("page/projector/product/versions/@name")}}:
										</label>
										<div class="product_section_sub">
											{{foreach from=$xml->getList("page/projector/product/versions/version") item=loop866}}
												<a {{assign "classAttributeTmp19" ""}}{{capture name="classAttributeTmp19" assign="classAttributeTmp19"}}select_button{{/capture}} title="{{$loop866->getItemEscape("@name")}}" href="{{$loop866->getItemEscape("@link")}}" {{if $loop866->getItem("@gfx")}}{{capture name="classAttributeTmp19" assign="classAttributeTmp19"}}select_button gfx{{/capture}}{{if $loop866->getItem("@id") == (string) $loop866->getItem("/shop/page/projector/product/@id")}}{{capture name="classAttributeTmp19" assign="classAttributeTmp19"}}select_button gfx active{{/capture}}{{/if}}  class="{{$classAttributeTmp19}}">
													<img src="{{$loop866->getItemEscape("@gfx")}}" alt="{{$loop866->getItemEscape("@name")}}"></img>
												{{else}}
													href="{{$loop866->getItemEscape("@link")}}"
													{{if  $loop866->getItem("@id")  == (string)  $loop866->getItem("/shop/page/projector/product/@id")}}
														class="select_buttonactive"
													{{/if}}
													{{$loop866->getItemEscape("@name")}}
												{{/if}}
												</a>
										{{/foreach}}
									</div>
								</div>
							{{/if}}
							<div class="product_section sizes" id="projector_sizes_cont">
								<label class="projector_label">{{$txt['77463::n55363_400']}}
								</label>
								<div class="product_section_sub">
									{{foreach from=$xml->getList("page/projector/product/sizes/size") item=loop899}}
										{{if ( $loop899->getItem("@amount")  gt (string) 0) or ( $loop899->getItem("@amount")  == (string) '-1')}}
											<a {{assign "classAttributeTmp20" ""}}{{capture name="classAttributeTmp20" assign="classAttributeTmp20"}}select_button{{/capture}}{{if $loop899->getItem("@selected") == (string)'true'}}{{capture name="classAttributeTmp20" assign="classAttributeTmp20"}}select_button active{{/capture}}{{/if}} href="{{$loop899->getItemEscape("/shop/page/projector/product/@link")}}?selected_size={{$loop899->getItemEscape("@type")}}" data-type="{{$loop899->getItemEscape("@type")}}"  class="{{$classAttributeTmp20}}">{{$loop899->getItemEscape("@description")}}</a>
										{{else}}
											<a {{assign "classAttributeTmp21" ""}}{{capture name="classAttributeTmp21" assign="classAttributeTmp21"}}select_button disabled{{/capture}}{{if $loop899->getItem("@selected") == (string)'true'}}{{capture name="classAttributeTmp21" assign="classAttributeTmp21"}}select_button disabled active{{/capture}}{{/if}} href="{{$loop899->getItemEscape("/shop/page/projector/product/@link")}}?selected_size={{$loop899->getItemEscape("@type")}}" data-type="{{$loop899->getItemEscape("@type")}}"  class="{{$classAttributeTmp21}}">{{$loop899->getItemEscape("@description")}}</a>
										{{/if}}
									{{/foreach}}
									{{if (( $xml->getItem("page/projector/text_sizesgroup")) and ( $xml->getItem("page/projector/text_sizesgroup")  neq (string) '')) or  $xml->getItem("/shop/page/projector/product/sizes_chart")}}
										<a href="#show_size_cms" class="show_size_cms">{{$txt['77463::n55363_table']}}</a>
									{{/if}}
								</div>
							</div>
							<div class="product_section" id="projector_status_description_wrapper" {{if !( $xml->getItem("/shop/page/projector/product/sizes/size[@selected='true']"))}} style="display:none"{{/if}}>
								<label>{{$txt['77463::53676_dos']}}
								</label>
								<div>
									{{if  $xml->getItem("/shop/page/projector/product/sizes/size/availability/@status_gfx")}}
										<img id="projector_status_gfx" class="projector_status_gfx" alt="status_icon" src="{{if $xml->getItem("/shop/page/projector/product/sizes/size[@selected='true']/availability/@status_gfx")}}{{$xml->getItemEscape("/shop/page/projector/product/sizes/size[@selected='true']/availability/@status_gfx")}}{{else}}{{$xml->getItemEscape("/shop/page/projector/product/sizes/size/availability/@status_gfx")}}{{/if}}"></img>
									{{/if}}
									<span class="projector_status_description" id="projector_status_description">
										{{if  $xml->getItem("/shop/page/projector/product/sizes/size[@selected='true']/availability/@status_description")}}
											{{$xml->getItemEscape("/shop/page/projector/product/sizes/size[@selected='true']/availability/@status_description")}}
										{{else}}
											{{$xml->getItemEscape("/shop/page/projector/product/sizes/size/availability/@status_description")}}
										{{/if}}
										</span>
									{{if $amount_txt}}
										<span class="projector_amount" id="projector_amount" {{if $xml->getItem("/shop/page/projector/product/sizes/size[@selected='true']")}} style="display:none"{{/if}}>{{$xml->getItem("$amount_txt")}}</span>
									{{/if}}
								</div>
							</div>
							<div class="product_section tell_availability" id="projector_tell_availability" {{if !( $xml->getItem("/shop/page/projector/product/sizes/size[@selected='true']/availability/@status") == (string) 'disable')}} style="display:none" {{/if}}>
								<label>{{$txt['77463::53676_availabilit']}}
								</label>
								<div class="product_section_sub">
									<a {{assign "classAttributeTmp22" ""}}  href="#showAvabilityDialog"{{capture name="classAttributeTmp22" assign="classAttributeTmp22"}}projector_tell_availability{{/capture}} id="projector_tell_availability_link" onclick="showAvabilityDialog();return false;"{{capture name="classAttributeTmp22" assign="classAttributeTmp22"}}btn-small projector_tell_availabilit{{/capture}}  class="{{$classAttributeTmp22}}">{{$txt['77463::53676_dost']}}</a>
								</div>
							</div>
							<div class="product_section" id="projector_shipping_info" {{if !( $xml->getItem("/shop/page/projector/product/sizes/size[@selected='true']"))}} style="display:none"{{/if}}>
								<label>{{$txt['77463::53676_wys']}}
								</label>
								<div>
									<span class="projector_delivery_days" id="projector_delivery_days">
										{{if  $xml->getItem("/shop/page/projector/product/sizes/size[@selected='true']")}}
											{{if ( $xml->getItem("/shop/page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@week_amount")  == (string) 0) and ( $xml->getItem("/shop/page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@hours")  == (string) 0) and ( $xml->getItem("/shop/page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@minutes")  == (string) 0)}}
												{{if  $xml->getItem("/shop/page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@today")  == (string) 'true'}}
													{{$txt['77463::64594_js_txt_46']}}
												{{elseif  $xml->getItem("/shop/page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@week_day")  == (string) 1}}
													{{$txt['77463::64594_js_txt_47']}}
												{{elseif  $xml->getItem("/shop/page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@week_day")  == (string) 2}}
													{{$txt['77463::64594_js_txt_48']}}
												{{elseif  $xml->getItem("/shop/page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@week_day")  == (string) 3}}
													{{$txt['77463::64594_js_txt_49']}}
												{{elseif  $xml->getItem("/shop/page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@week_day")  == (string) 4}}
													{{$txt['77463::64594_js_txt_50']}}
												{{elseif  $xml->getItem("/shop/page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@week_day")  == (string) 5}}
													{{$txt['77463::64594_js_txt_51']}}
												{{elseif  $xml->getItem("/shop/page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@week_day")  == (string) 6}}
													{{$txt['77463::64594_js_txt_52']}}
												{{elseif  $xml->getItem("/shop/page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@week_day")  == (string) 7}}
													{{$txt['77463::64594_js_txt_53']}}
												{{/if}}
											{{elseif  $xml->getItem("page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@days")}}
												{{$txt['77463::64594_js_txt_18']}}
												{{if  $xml->getItem("page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@days")  gt (string) 0}}
													{{$xml->getItemEscape("page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@days")}}
													{{if  $xml->getItem("page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@days")  == (string)'1'}}
														{{$txt['77463::64594_js_txt_11a']}}
													{{else}}
														{{$txt['77463::64594_js_txt_11']}}
													{{/if}}
												{{/if}}
												{{if  $xml->getItem("page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@hours")  gt (string) 0}}
													{{$xml->getItemEscape("page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@hours")}}{{$txt['77463::64594_js_txt_12']}}
												{{/if}}
												{{if  $xml->getItem("page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@minutes")  gt (string) 0}}
													{{$xml->getItemEscape("page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@minutes")}}{{$txt['77463::64594_js_txt_12c']}}
												{{/if}}
											{{/if}}
										{{else}}
											{{if ( $xml->getItem("/shop/page/projector/product/sizes/size/availability/shipping_time/@week_amount")  == (string) 0) and ( $xml->getItem("/shop/page/projector/product/sizes/size/availability/shipping_time/@hours")  == (string) 0) and ( $xml->getItem("/shop/page/projector/product/sizes/size/availability/shipping_time/@minutes")  == (string) 0)}}
												{{if  $xml->getItem("/shop/page/projector/product/sizes/size/availability/shipping_time/@today")  == (string) 'true'}}
													{{$txt['77463::64594_js_txt_46']}}
												{{elseif  $xml->getItem("/shop/page/projector/product/sizes/size/availability/shipping_time/@week_day")  == (string) 1}}
													{{$txt['77463::64594_js_txt_47']}}
												{{elseif  $xml->getItem("/shop/page/projector/product/sizes/size/availability/shipping_time/@week_day")  == (string) 2}}
													{{$txt['77463::64594_js_txt_48']}}
												{{elseif  $xml->getItem("/shop/page/projector/product/sizes/size/availability/shipping_time/@week_day")  == (string) 3}}
													{{$txt['77463::64594_js_txt_49']}}
												{{elseif  $xml->getItem("/shop/page/projector/product/sizes/size/availability/shipping_time/@week_day")  == (string) 4}}
													{{$txt['77463::64594_js_txt_50']}}
												{{elseif  $xml->getItem("/shop/page/projector/product/sizes/size/availability/shipping_time/@week_day")  == (string) 5}}
													{{$txt['77463::64594_js_txt_51']}}
												{{elseif  $xml->getItem("/shop/page/projector/product/sizes/size/availability/shipping_time/@week_day")  == (string) 6}}
													{{$txt['77463::64594_js_txt_52']}}
												{{elseif  $xml->getItem("/shop/page/projector/product/sizes/size/availability/shipping_time/@week_day")  == (string) 7}}
													{{$txt['77463::64594_js_txt_53']}}
												{{/if}}
											{{elseif  $xml->getItem("page/projector/product/sizes/size/availability/shipping_time/@days")}}
												{{$txt['77463::64594_js_txt_18']}}
												{{if  $xml->getItem("page/projector/product/sizes/size/availability/shipping_time/@days")  gt (string) 0}}
													{{$xml->getItemEscape("page/projector/product/sizes/size/availability/shipping_time/@days")}}
													{{if  $xml->getItem("page/projector/product/sizes/size/availability/shipping_time/@days")  == (string)'1'}}
														{{$txt['77463::64594_js_txt_11a']}}
													{{else}}
														{{$txt['77463::64594_js_txt_11']}}
													{{/if}}
												{{/if}}
												{{if  $xml->getItem("page/projector/product/sizes/size/availability/shipping_time/@hours")  gt (string) 0}}
													{{$xml->getItemEscape("page/projector/product/sizes/size/availability/shipping_time/@hours")}}{{$txt['77463::64594_js_txt_12']}}
												{{/if}}
												{{if  $xml->getItem("page/projector/product/sizes/size/availability/shipping_time/@minutes")  gt (string) 0}}
													{{$xml->getItemEscape("page/projector/product/sizes/size/availability/shipping_time/@minutes")}}{{$txt['77463::64594_js_txt_12c']}}
												{{/if}}
											{{/if}}
										{{/if}}
										</span>
									<a class="shipping_info" href="#shipping_info" title="{{$txt['77463::57295_019a']}}">{{$txt['77463::57295_019a']}}</a>
								</div>
							</div>
							<div id="projector_prices_wrapper" itemprop="offers" itemscope="" itemtype="http://schema.org/Offer">
								<div class="product_section" id="projector_price_srp_wrapper" {{if !( $xml->getItem("page/projector/product/price/@srp")) and !( $xml->getItem("/shop/page/projector/product/sizes/size[@selected='true']/price/@srp_formatted"))}} style="display:none;" {{/if}}>
									<label class="projector_label">{{$txt['77463::53676_400ckat']}}
									</label>
									<div>
										<span class="projector_price_srp" id="projector_price_srp">
											{{if  $xml->getItem("/shop/page/projector/product/sizes/size[@selected='true']/price/@srp_formatted")}}
												{{$xml->getItemEscape("/shop/page/projector/product/sizes/size[@selected='true']/price/@srp_formatted")}}
											{{else}}
												{{$xml->getItemEscape("/shop/page/projector/product/price/@srp_formatted")}}
											{{/if}}
											</span>
									</div>
								</div>
								<div class="product_section" id="projector_price_value_wrapper">
									<label class="projector_label">{{$txt['77463::53676_400']}}
									</label>
									<div>
										<div id="projector_price_maxprice_wrapper" {{if !( $xml->getItem("page/projector/product/price/@maxprice_formatted")) and !( $xml->getItem("/shop/page/projector/product/sizes/size[@selected='true']/price/@maxprice_formatted"))}} style="display:none;" {{/if}}>
											<del class="projector_price_maxprice" id="projector_price_maxprice">
												{{if  $xml->getItem("/shop/page/projector/product/sizes/size[@selected='true']/price/@maxprice_formatted")}}
													{{$xml->getItemEscape("/shop/page/projector/product/sizes/size[@selected='true']/price/@maxprice_formatted")}}
												{{elseif  $xml->getItem("/shop/page/projector/product/sizes/prices/@size_min_maxprice_formatted")  neq (string)  $xml->getItem("/shop/page/projector/product/sizes/prices/@size_max_maxprice_formatted")}}
													<span>{{$xml->getItemEscape("/shop/page/projector/product/sizes/prices/@size_min_maxprice_formatted")}}</span>
													<b>-</b>
													<span>{{$xml->getItemEscape("/shop/page/projector/product/sizes/prices/@size_max_maxprice_formatted")}}</span>
												{{elseif  $xml->getItem("page/projector/product/price/@maxprice_formatted")}}
													{{$xml->getItemEscape("page/projector/product/price/@maxprice_formatted")}}
												{{/if}}
												</del>
											<span class="projector_price_yousave" id="projector_price_yousave">
												{{if  $xml->getItem("/shop/page/projector/product/bundle_price/@amount_diff_gross")}}
													{{$txt['77463::60089_js_txt_6']}}{{$xml->getItemEscape("/shop/page/projector/product/bundle_price/@percent_diff")}}{{$txt['77463::60089_js_txt_7']}}
													<span class="projector_price">{{$xml->getItemEscape("/shop/page/projector/product/bundle_price/@amount_diff_gross")}}
														<span class="projector_currency">{{$xml->getItemEscape("/shop/currency/@name")}}</span></span>{{$txt['77463::53676_in_bundle']}}
												{{elseif  $xml->getItem("/shop/page/projector/product/sizes/size[@selected='true']/price/@yousave_percent")}}
													{{$txt['77463::60089_js_txt_6']}}{{$xml->getItemEscape("/shop/page/projector/product/sizes/size[@selected='true']/price/@yousave_percent")}}{{$txt['77463::60089_js_txt_7']}}
													<span class="projector_price">{{$xml->getItemEscape("/shop/page/projector/product/sizes/size[@selected='true']/price/@yousave_formatted")}}</span>{{$txt['77463::n56245_nawias3']}}
												{{elseif  $xml->getItem("page/projector/product/price/@yousave_percent")}}
													{{$txt['77463::60089_js_txt_6']}}{{$xml->getItemEscape("page/projector/product/price/@yousave_percent")}}{{$txt['77463::60089_js_txt_7']}}
													<span class="projector_price">{{$xml->getItemEscape("page/projector/product/price/@yousave_formatted")}}</span>{{$txt['77463::n56245_nawias3']}}
												{{else}}
													style="display:none;"
												{{/if}}
												</span>
										</div>
										{{if  $xml->getItem("page/projector/product/price/@phone_price") == (string)'true'}}
											<strong class="projector_price_value" id="projector_price_value">{{$xml->getItemEscape("page/projector/product/price/@status_description_tel")}}</strong>
										{{else}}
											<strong class="projector_price_value" id="projector_price_value">
												{{if  $xml->getItem("/shop/page/projector/product/sizes/size[@selected='true']/price/@price_formatted")}}
													{{$xml->getItemEscape("page/projector/product/price/@price_formatted")}}
												{{elseif  $xml->getItem("/shop/page/projector/product/sizes/prices") and  $xml->getItem("/shop/page/projector/product/sizes/prices/@maxprice_formatted")  neq (string)  $xml->getItem("/shop/page/projector/product/sizes/prices/@minprice_formatted")}}
													{{$xml->getItemEscape("/shop/page/projector/product/sizes/prices/@minprice_formatted")}}-{{$xml->getItemEscape("/shop/page/projector/product/sizes/prices/@maxprice_formatted")}}
												{{else}}
													{{$xml->getItemEscape("page/projector/product/price/@price_formatted")}}
												{{/if}}
												</strong>
											{{if ( $xml->getItem("page/projector/product/sizes/@unit_sellby")  neq (string) '1') and ( $xml->getItem("page/projector/product/sizes/size")  gt (string) 1)}}
												<script type="text/javascript" class="ajaxLoad">
											$('#projector_price_value').html(format_price("{{$xml->getItemEscape("/shop/page/projector/product/sizes/prices/@minprice * page/projector/product/sizes/@unit_sellby")}}",{mask: app_shop.vars.currency_format,currency: "{{$xml->getItemEscape("/shop/currency/@name")}}",currency_space: app_shop.vars.currency_space,currency_before_price: app_shop.vars.currency_before_value})+' - '+format_price("{{$xml->getItemEscape("/shop/page/projector/product/sizes/prices/@maxprice * page/projector/product/sizes/@unit_sellby")}}",{mask: app_shop.vars.currency_format,currency: "{{$xml->getItemEscape("/shop/currency/@name")}}",currency_space: app_shop.vars.currency_space,currency_before_price: app_shop.vars.currency_before_value}));
																						</script>

											{{/if}}
											<meta itemprop="priceCurrency" content="PLN" content="{{$xml->getItemEscape("/shop/currency/@id")}}"/>
											<meta itemprop="price" content="0.00" content="{{$xml->getItemEscape("page/projector/product/price/@value")}}"/>
											<div class="price_gross_info">
												<small class="projector_price_unit_sep">{{$txt['77463::53676_un_sep']}}</small>
												<small class="projector_price_unit_sellby" id="projector_price_unit_sellby" style="display:none">{{$xml->getItemEscape("/shop/page/projector/product/sizes/@unit_sellby")}}</small>
												<small class="projector_price_unit" id="projector_price_unit">{{$xml->getItemEscape("/shop/page/projector/product/sizes/@unit")}}</small>
												{{if !( $xml->getItem("/shop/client_data/@uses_vat") == (string)'false')}}
													<span>{{$txt['77463::57295_019b']}}
														{{if !( $xml->getItem("/shop/page/projector/product/@product_type")  == (string) 'product_virtual')}}
															{{$txt['77463::57295_019plus']}}
															<a class="shipping_info" target="blank" title="{{$txt['77463::57295_019a']}}" href="{{$xml->getItemEscape("/shop/action/shipping_cost/@url")}}">{{$txt['77463::57295_019']}}</a>
														{{/if}}
														</span>
												{{/if}}
												{{if  $xml->getItem("page/projector/product/sizes/size[1]/price/rebateNumber")}}
													<span id="projector_rebateNumber">
														<span id="projector_rebatenumber">{{$txt['77463::53676_za']}}
															<span class="product_section rebates_sub">
																<span id="projector_product_rebatenumber_threshold">{{$xml->getItemEscape("page/projector/product/sizes/size/price/rebateNumber/@nextthreshold")}}</span>{{$txt['77463::53676_spa']}}{{$xml->getItemEscape("page/projector/product/sizes/@unit")}}{{$txt['77463::53676_rab']}}
																<strong>
																	<span id="projector_product_rebatenumber_value">{{$xml->getItemEscape("page/projector/product/sizes/size[1]/price/rebateNumber/@nextvalue")}}{{$txt['77463::53676_pro']}}</span></strong></span></span>
														<div class="tooltipContent">
															{{foreach from=$xml->getList("page/projector/product/sizes/size[1]/price/rebateNumber/rebate") item=loop1173}}
																<div class="rebatenumber_rebate">
																	<strong>{{$txt['77463::53676_rabat']}}
																		<span>{{$loop1173->getItemEscape("@value")}}{{$txt['77463::53676_pro']}}</span></strong>{{$txt['77463::53676_za2']}}
																	<span>{{$loop1173->getItemEscape("@threshold")}}</span>{{$txt['77463::53676_spa']}}{{$loop1173->getItemEscape("/shop/page/projector/product/sizes/@unit")}}
																</div>
															{{/foreach}}
														</div></span>
												{{/if}}
											</div>
										{{/if}}
									</div>
								</div>
								{{if  $xml->getItem("/shop/page/projector/product/price/@unit_converted_price_formatted")}}
									<div id="projector_unit_converted_price" class="projector_unit_converted_price product_section">
										<label class="projector_label">{{$txt['77463::53676_c_con']}}
										</label>
										<span class="unit_converted_price" id="unit_converted_price">{{$xml->getItemEscape("/shop/page/projector/product/price/@unit_converted_price_formatted")}}{{$txt['77463::53676_un_sep']}}{{$xml->getItemEscape("/shop/page/projector/product/price/@unit_converted_format")}}</span>
									</div>
								{{/if}}
								{{if  $xml->getItem("/shop/page/projector/product/bundle_price/@price_gross")}}
									<div id="projector_bundle_price_gross" class="product_section">
										<label class="projector_label">{{$txt['77463::53676_400sum']}}
										</label>
										<strong class="projector_bundle_sum_price">
											<span class="projector_price">{{$xml->getItemEscape("/shop/page/projector/product/bundle_price/@price_gross")}}
												<span class="projector_currency">{{$xml->getItemEscape("/shop/currency/@name")}}</span></span></strong>
									</div>
								{{/if}}
								{{if  $xml->getItem("page/projector/product/sizes/@unit_sellby")  neq (string) '1'}}
									<div id="projector_sellbyrecount" class="projector_sellbyrecount product_section">
										<label class="projector_label">{{$txt['77463::n57981_sprz_po']}}
										</label>
										<span>{{$xml->getItemEscape("page/projector/product/sizes/@unit_sellby")}}{{$txt['77463::n57981_sprz_po_spacja']}}{{$xml->getItemEscape("page/projector/product/sizes/@unit")}}
											<span id="projector_sellbyprice_wrapper" style="display:none;">{{$txt['77463::n57981_sprz_po_nl']}}
												<span id="projector_sellbyprice">{{$xml->getItemEscape("/shop/page/projector/product/price/@price_formatted")}}</span>{{$txt['77463::n57981_sprz_po_un_sep']}}{{$xml->getItemEscape("page/projector/product/sizes/@unit")}}{{$txt['77463::n57981_sprz_po_nr']}}</span></span>
									</div>
								{{/if}}
								<span style="display:none;">
									{{if  $xml->getItem("page/projector/product/sizes/size/availability[@status = 'enable']")}}
										<link itemprop="availability" href="http://schema.org/InStock"/>
										Instock
									{{elseif  $xml->getItem("page/projector/product/sizes/size/availability[@status = 'order']")}}
										<link itemprop="availability" href="http://schema.org/InStock"/>
										Instock
									{{else}}
										<link itemprop="availability" href="http://schema.org/OutOfStock"/>
										OutOfStock
									{{/if}}
									</span>
								{{capture name="advanceprice_txt" assign="advanceprice_txt"}}
									{{$txt['77463::57295_019pr']}}
								{{/capture}}
								{{if $advanceprice_txt and  $xml->getItem("page/projector/product/price/@advanceprice_formatted")}}
									<div id="projector_advanceprice_wrapper">{{$advanceprice_txt}}
										<b id="projector_advanceprice">{{$xml->getItemEscape("page/projector/product/price/@advanceprice_formatted")}}</b>{{$txt['77463::57295_019prkr']}}
									</div>
								{{/if}}
							</div>
							{{if $showComments}}
								<div class="product_section comment">
									<div class="product_section_sub">
										<label>{{$txt['77463::54710_401grawer']}}
										</label>
										<div>
											<textarea name="comment" maxlength="255"></textarea>
										</div>
									</div>
								</div>
							{{/if}}
							<div id="projector_buy_section" class="clearfix product_section">
								<label class="projector_label" {{if $xml->getItem("/shop/page/projector/product[@product_type='product_virtual']")}} style="visibility: hidden;" {{/if}}>{{$txt['77463::54710_455']}}
								</label>
								<div class="projector_buttons" id="projector_buttons">
									{{if !( $xml->getItem("/shop/page/projector/product/@product_type")  == (string) 'product_virtual')}}
										<div class="projector_number" id="projector_number_cont">
											{{if !( $xml->getItem("page/projector/product/exchange/@exchange_id"))}}
												<button id="projector_number_down" class="projector_number_down" type="button">{{$txt['77463::54710_455min']}}
												</button>
											{{/if}}
											<input class="projector_number" name="number" id="projector_number" value="{{$xml->getItemEscape("/shop/page/projector/product/sizes/@unit_sellby")}}" {{if $xml->getItem("page/projector/product/exchange/@exchange_id")}} disabled="disabled" {{/if}}></input>
											{{if !( $xml->getItem("page/projector/product/exchange/@exchange_id"))}}
												<button id="projector_number_up" class="projector_number_up" type="button">
													{{if !( $xml->getItem("page/projector/product/versions/version/size/@amount")  == (string) '')}}
													{{else}}
													{{/if}}
													{{$txt['77463::54710_455max']}}
												</button>
											{{/if}}
										</div>
									{{/if}}
									<button {{assign "classAttributeTmp23" ""}}{{capture name="classAttributeTmp23" assign="classAttributeTmp23"}}projector_butttons_buy{{/capture}} id="projector_button_basket" type="submit"{{capture name="classAttributeTmp23" assign="classAttributeTmp23"}}btn-large projector_butttons_buy{{/capture}}{{if $xml->getItem("page/projector/product/exchange/@exchange_id")}}{{capture name="classAttributeTmp23" assign="classAttributeTmp23"}}btn-large projector_butttons_buy projector_butttons_exchange{{/capture}}{{/if}} title="{{$txt['77463::53676_800']}}"   class="{{$classAttributeTmp23}}">
										{{if  $xml->getItem("page/projector/product/exchange/@exchange_id")}}
											{{$txt['77463::53676_004_alt']}}
										{{else}}
											{{$txt['77463::53676_004']}}
										{{/if}}
									</button>
									<a href="#add_favorite" class="projector_buttons_obs" id="projector_button_observe" onclick="$('#projector_mode_hidden').val(2);$('#projector_form').submit();" data-mobile-class="btn-small" title="{{$txt['77463::53676_801']}}">{{$txt['77463::53676_005']}}</a>
									{{if  $xml->getItem("/shop/compare[@active='y']")}}
										<a class="projector_prodstock_compare" data-mobile-class="btn-small" href="settings.php?comparers=add&#160;amp;product={{$xml->getItemEscape("page/projector/product/@id")}}" title="{{$txt['77463::54089_00_1']}}">{{$txt['77463::54089_00_2']}}</a>
									{{/if}}
								</div>
							</div>
							<div class="product_section points" id="projector_points_wrapper" {{if !( $xml->getItem("/shop/page/projector/product/@for_points") == (string)'true' or $xml->getItem("page/projector/product/price/@points") gt (string) 0 )}} style="display:none;" {{/if}}>
								<div class="product_section_sub">
									<div class="projector_points_sub_wrapper">
										<div class="projector_price_points_wrapper" id="projector_price_points_wrapper">
											<label class="projector_label">{{$txt['77463::53676_c_pkt']}}
											</label>
											<span class="projector_price_points" id="projector_price_points">{{$xml->getItemEscape("page/projector/product/price/@points")}}
												<span class="projector_currency">{{$txt['77463::53676_pkt']}}</span></span>
										</div>
										<div class="projector_price_points_recive_wrapper" id="projector_price_points_recive_wrapper" {{if !( $xml->getItem("page/projector/product/price/@points_recive") and $xml->getItem("page/projector/product/price/@points_recive") gt (string) 0)}} style="display:none;" {{/if}}>
											<label class="projector_label">{{$txt['77463::53676_pont_zy']}}
											</label>
											<span class="projector_points_recive_points" id="projector_points_recive_points">{{$xml->getItemEscape("page/projector/product/price/@points_recive")}}
												<span class="projector_currency">{{$txt['77463::53676_pkt']}}</span></span>
										</div>
									</div>
									<button id="projector_button_points_basket" type="submit" name="forpoints" value="1" class="btn" {{if !( $xml->getItem("/shop/page/projector/product/@for_points") == (string)'true')}} style="display:none;" {{/if}}>{{$txt['77463::53676_point_buy']}}
									</button>
								</div>
							</div>
						</div>
						<div class="clearBoth">
						</div>
					</form>
					<div id="projector_rebatenumber_tip_copy" style="display:none;">
						<img class="projector_rebatenumber_tip" src="/gfx/__IAI_TEMPLATE_LANG_639_1__/help_tip.png?r=1570606529" alt="tip"/>
					</div>
					<div id="alert_cover" class="projector_alert_55916" style="display:none" onclick="Alertek.hide_alert();">
					</div>
					<script type="text/javascript" class="ajaxLoad">
			projectorInitObject.contact_link = "{{$xml->getItemEscape("/shop/contact/link/@url")}}";
			projectorObj.projectorInit(projectorInitObject);
      {{if  $xml->getItem("page/projector/product/sizes/size[@selected='true']/@type")}}
            projectorObj.setCurrentSizeObj('{{$xml->getItemEscape("page/projector/product/sizes/size[@selected='true']/@type")}}');
            projectorObj.start();
      {{/if}}					</script>

					<!--Karta produktu - Zestawy (projector_bundle_zone, 78665.1)-->
					{{if  $xml->getItem("page/projector/bundled/product")}}
						<div id="projector_bundle_zone" class="collection_false">
							<h2 class="big_label product_bundle">
								{{if  $xml->getItem("/shop/page/projector/bundled/@collection") == (string)'true'}}
									{{$txt['78665::n55363_400_tk']}}
								{{else}}
									{{$txt['78665::n55363_400_tz']}}
								{{/if}}
							</h2>
							<div class="product_bundle">
								<ul class="product_bundle">
									{{foreach from=$xml->getList("page/projector/bundled/product") item=loop1367}}
										<li class="product_bundle" title="{{$txt['78665::n55363_400_p_p_z']}}{{$loop1367->getItemEscape("sizes/size[1]/price/@value")}}{{$loop1367->getItemEscape("/shop/currency/@name")}}" rel="#projector_image_bundled{{$loop1367@iteration}}">
											{{if  $loop1367->getItem("@link")  neq (string) ''}}
												{{literal}}
												<a class="product_bundle_icon" href="{{/literal}}{{$loop1367->getItemEscape("@link")}}{{literal}}" >{{/literal}}
												{{else}}
													{{literal}}
													<span class="product_bundle_icon">{{/literal}}
													{{/if}}
													<img src="{{$loop1367->getItemEscape("enclosures/images/enclosure[1]/@icon")}}" alt="{{$loop1367->getItemEscape("name")}}"></img>
													{{if  $loop1367->getItem("@link")  neq (string) ''}}
														{{literal}}</a>{{/literal}}
												{{else}}
													{{literal}}</span>{{/literal}}
											{{/if}}
											<div>
												{{if  $loop1367->getItem("@link")  neq (string) ''}}
													{{literal}}
													<a class="product-name" href="{{/literal}}{{$loop1367->getItemEscape("@link")}}{{literal}}" >{{/literal}}
													{{else}}
														{{literal}}
														<span class="product-name">{{/literal}}
														{{/if}}
														{{if !( $loop1367->getItem("/shop/page/projector/bundled/@collection") == (string)'true')}}
															{{if  $loop1367->getItem("@bundle_quantity")}}
																{{$loop1367->getItemEscape("@bundle_quantity")}}{{$txt['78665::53676_400x']}}
															{{/if}}
														{{/if}}
														{{$loop1367->getItemEscape("name")}}
														{{if  $loop1367->getItem("@link")  neq (string) ''}}
															{{literal}}</a>{{/literal}}
													{{else}}
														{{literal}}</span>{{/literal}}
												{{/if}}
												{{if  $loop1367->getItem("sizes/size/@type") == (string)'onesize'}}
													<input {{assign "valueAttributeTmp76" ""}}  type="hidden"{{capture name="valueAttributeTmp76" assign="valueAttributeTmp76"}}{{/capture}} name="bundled_size[{{$loop1367->getItemEscape("@id")}}]"{{capture name="valueAttributeTmp76" assign="valueAttributeTmp76"}}{{$loop1367->getItemEscape("sizes/size[1]/@type")}}{{/capture}}  value="{{$valueAttributeTmp76}}"></input>
												{{else}}
													<div class="product_bundle_size hidde_sizes">
														<div class="product_bundle_size_title">{{$loop1367->getItemEscape("sizes/size[1]/@description")}}
														</div>
														{{foreach from=$loop1367->getList("sizes/size") item=loop1411}}
															{{if ( $loop1411->getItem("@amount")  gt (string) 0) or ( $loop1411->getItem("@amount")  == (string) '-1')}}
																<label {{assign "classAttributeTmp24" ""}}{{capture name="classAttributeTmp24" assign="classAttributeTmp24"}}select_button{{/capture}}{{if $loop1411@iteration == (string)1}}{{capture name="classAttributeTmp24" assign="classAttributeTmp24"}}select_button active{{/capture}}{{/if}} data-type="{{$loop1411->getItemEscape("@type")}}" data-amount="{{$loop1411->getItemEscape("@amount")}}"  class="{{$classAttributeTmp24}}">{{$loop1411->getItemEscape("@description")}}
																</label>
															{{else}}
																<label class="select_button disabled" data-type="{{$loop1411->getItemEscape("@type")}}" data-amount="{{$loop1411->getItemEscape("@amount")}}">{{$loop1411->getItemEscape("@description")}}
																</label>
															{{/if}}
														{{/foreach}}
														<input {{assign "valueAttributeTmp76" ""}}  type="hidden"{{capture name="valueAttributeTmp76" assign="valueAttributeTmp76"}}{{/capture}} name="bundled_size[{{$loop1367->getItemEscape("@id")}}]"{{capture name="valueAttributeTmp76" assign="valueAttributeTmp76"}}{{$loop1367->getItemEscape("sizes/size[1]/@type")}}{{/capture}}  value="{{$valueAttributeTmp76}}"></input>
														{{if  $loop1367->getItem("sizes/size[2]")}}
															<a class="bundle_size_show" href="#bundle_size_show">{{$txt['78665::n55363_zmien']}}</a>
														{{/if}}
													</div>
												{{/if}}
											</div>
											{{if  $loop1367->getItem("/shop/page/projector/bundled[@collection='true']")}}
												<div class="product_bundle_quantity">
													<a href="#delQuantity" class="delQuantity">{{$txt['78665::50001_081']}}</a>
													<input type="text" class="bundled_quantity" name="bundled_quantity[{{$loop1367->getItemEscape("@id")}}]" value="{{$loop1367->getItemEscape("sizes/@unit_sellby")}}" data-amount="{{$loop1367->getItemEscape("sizes/size[1]/@amount")}}" data-unit_sellby="{{$loop1367->getItemEscape("sizes/@unit_sellby")}}" data-unit="{{$loop1367->getItemEscape("sizes/@unit")}}" data-unit_precision="{{$loop1367->getItemEscape("sizes/@unit_precision")}}"></input>
													<a href="#addQuantity" class="addQuantity">{{$txt['78665::50001_082']}}</a>
													<i>{{$loop1367->getItemEscape("sizes/@unit")}}</i>
												</div>
											{{/if}}
										</li>
									{{/foreach}}
								</ul>
								<div class="clearBoth">
								</div>
							</div>
						</div>
					{{/if}}
					{{if  $xml->getItem("page/projector/bundle/product")}}
						<div id="projector_bundle_zone2">
							<h2 {{assign "classAttributeTmp25" ""}}{{capture name="classAttributeTmp25" assign="classAttributeTmp25"}}product_bundle{{/capture}} id="product_bundle_label_2"{{capture name="classAttributeTmp25" assign="classAttributeTmp25"}}big_label product_bundle{{/capture}}  class="{{$classAttributeTmp25}}">{{$txt['78665::n55363_400_z_t']}}
							</h2>
							<table class="product_bundle">
								<tr>
									<th class="product_bundle_icon"/>
									<th class="product_bundle_name"/>
									<th>{{$txt['78665::n55363_400_c_p_z']}}
									</th>
									<th>{{$txt['78665::n55363_400_c_z']}}
									</th>
								</tr>
								{{foreach from=$xml->getList("page/projector/bundle/product") item=loop1484}}
									<tr>
										<td class="product_bundle_icon">
											<a href="{{$loop1484->getItemEscape("@link")}}">
												<img alt="product_bundle_icon" alt="{{$loop1484->getItemEscape("name")}}" src="{{$loop1484->getItemEscape("icon")}}"></img></a>
										</td>
										<td class="product_bundle_name">
											<a href="{{$loop1484->getItemEscape("@link")}}">{{$loop1484->getItemEscape("name")}}</a>
										</td>
										<td class="product_bundle_price_value">
											<span>{{$loop1484->getItemEscape("bundle_price/@price_gross")}}{{$loop1484->getItemEscape("/shop/currency/@name")}}</span>
										</td>
										<td class="product_bundle_price_gross">
											{{if  $loop1484->getItem("price/@value")  gt (string) 0}}
												<span>{{$loop1484->getItemEscape("price/@value")}}{{$loop1484->getItemEscape("/shop/currency/@name")}}</span>
												<small>{{$txt['78665::53676_400osz']}}({{$loop1484->getItemEscape("bundle_price/@percent_diff")}}%)</small>
											{{else}}
												<a href="contact.php">{{$txt['78665::n55363_400_fon']}}</a>
											{{/if}}
										</td>
									</tr>
								{{/foreach}}
							</table>
						</div>
					{{/if}}
					<script type="text/javascript" class="ajaxLoad">
     var bundle_title =   "{{$txt['78665::n55363_400_c_p_z']}}";
					</script>

					<!--Karta produktu - bannery (projector_banner, 74852.1)-->
					{{if  $xml->getItem("page/projector/product/payment/instalment") or  $xml->getItem("page/projector/product/sizes_version/@stocks_link") or  $xml->getItem("page/projector/product/sizes/@stocks_link") and !( $xml->getItem("/shop/page/projector/product/price/@value")  == (string) 0)}}
						<div id="n67367" class="clearfix">
							{{if  $xml->getItem("page/projector/product/sizes_version/@stocks_link") or  $xml->getItem("page/projector/product/sizes/@stocks_link") and !( $xml->getItem("/shop/page/projector/product/price/@value")  == (string) 0)}}
								<div id="n67367_stocks" class="n67367_stocks">
									<h3>{{$txt['74852::n67367_oo_label']}}
									</h3>
									<div class="n67367_stocks_txt">{{$txt['74852::n67367_oo_opis']}}
									</div>
									<a {{assign "hrefAttributeTmp74" ""}}{{capture name="hrefAttributeTmp74" assign="hrefAttributeTmp74"}}{{$xml->getItemEscape("page/projector/product/sizes_version/@stocks_link")}}{{/capture}}{{if $xml->getItem("page/projector/product/sizes/@stocks_link")}}{{capture name="hrefAttributeTmp74" assign="hrefAttributeTmp74"}}{{$xml->getItemEscape("page/projector/product/sizes/@stocks_link")}}{{/capture}}{{/if}} title="{{$txt['74852::n67367_oo_button_title']}}"  href="{{$hrefAttributeTmp74}}">{{$txt['74852::n67367_oo_button_title']}}</a>
								</div>
							{{/if}}
							{{if  $xml->getItem("page/projector/product/payment/instalment")}}
								<div id="n67367_instalment" class="n67367_instalment">
									<h3>{{$txt['74852::n67367_raty_label']}}
									</h3>
									{{foreach from=$xml->getList("/shop/page/projector/product/payment/instalment[@selected='true']") item=loop1551}}
										<div class="instalment_value_1">
											{{if  $loop1551->getItem("@value_formatted")}}
												<img class="instalment_value_1" src="{{$loop1551->getItemEscape("@gfx_small")}}" alt="{{$loop1551->getItemEscape("@name")}}"></img>
												<span class="instalment_value_1">{{$txt['74852::n67367_mbraty_txt']}}
													<b>{{$loop1551->getItemEscape("@value_formatted")}}</b>{{$txt['74852::n67367_mbraty_txt2']}}</span>
												<span class="n67367_section_txt">{{$loop1551->getItemEscape("@name")}}{{$txt['74852::n67367_raty_opis']}}</span>
												<small class="instalment_value_2">{{$txt['74852::n67367_mbraty_txt3']}}{{$loop1551->getItemEscape("@minprice")}}{{$loop1551->getItemEscape("/shop/currency/@name")}}{{$txt['74852::n67367_mbraty_txt4']}}{{$loop1551->getItemEscape("@maxprice")}}{{$loop1551->getItemEscape("/shop/currency/@name")}}</small>
												{{if  $loop1551->getItem("note")}}
													<span class="btn_note">{{$txt['74852::n67367_mbraty_txt5']}}</span>
													<div class="tooltipContent">{{$loop1551->getItem("note/text()")}}
													</div>
												{{/if}}
											{{else}}
												<span class="n67367_section_txt">{{$loop1551->getItemEscape("@name")}}{{$txt['74852::n67367_raty_opis']}}</span>
											{{/if}}
										</div>
									{{/foreach}}
									<ul class="n67367_instalment">
										{{foreach from=$xml->getList("page/projector/product/payment/instalment") item=loop1587}}
											<li data-name="{{$loop1587->getItemEscape("@name")}}">
												<a class="instalments{{$loop1587->getItem("@name")}}" onclick=" calculate_instalments('{{$loop1587->getItemEscape("@minprice")}}','{{$loop1587->getItemEscape("@maxprice")}}','{{$loop1587->getItemEscape("@priceTotal")}}','{{$loop1587->getItemEscape("@alert")}}',$(this).attr('data-window'),'{{$loop1587->getItemEscape("@maxquantity")}}','{{$loop1587->getItemEscape("@name")}}'); return false;" href="javascript:{{$loop1587->getItemEscape("@calculate")}}" data-window="{{$loop1587->getItemEscape("@calculatePrice")}}">
													<span>{{$txt['74852::n67367_oblicz_rate']}}{{$loop1587->getItemEscape("@name")}}</span>
													<img src="{{$loop1587->getItemEscape("@gfx")}}" alt="{{$loop1587->getItemEscape("@name")}}"></img></a>
											</li>
										{{/foreach}}
									</ul>
								</div>
							{{/if}}
						</div>
					{{/if}}
					<!--Długi opis produktu z HTML (projector_longdescription, 71678.1)-->
					{{if  $xml->getItem("page/projector/product/vlongdescription") and !( $xml->getItem("page/projector/product/vlongdescription")  == (string) '')}}
						<div {{assign "classAttributeTmp26" ""}}{{capture name="classAttributeTmp26" assign="classAttributeTmp26"}}projector_longdescription cm{{/capture}}{{if $xml->getItem("/shop/page/projector/product/dictionary/items/item") and !(count( $xml->getList("/shop/page/projector/product/dictionary/items/item")) gt (string) 6)}}{{capture name="classAttributeTmp26" assign="classAttributeTmp26"}}projector_longdescription cm longdescription_small{{/capture}}{{/if}} id="{{$txt['71678::56174_1']}}"  class="{{$classAttributeTmp26}}">{{$xml->getItem("page/projector/product/vlongdescription/text()")}}
						</div>
					{{/if}}
					<!--Powiadomienia (projector_notice, 66818.1)-->
					{{capture name="required_68516" assign="required_68516"}}
						{{$txt['66818::68516_required']}}
					{{/capture}}
					<div id="avabilityDialog" class="avabilityDialog" style="display:none;">
						<div class="avabilityDialog_sub">
							<a href="#" id="avabilityDialog_close" class="avabilityDialog_close">
								<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/zamknij.gif?r=1570606529" alt="Zamknij" class="avabilityDialog_close"/></a>
							<h2>{{$txt['66818::54426_avability']}}
							</h2>
							<div class="avabilityDialog_pr_info">
								<img alt="smallFoto" class="avabilityDialog" src="{{$xml->getItemEscape("page/projector/product/enclosures/images/enclosure/@icon")}}" alt="{{$xml->getItem("/shop/page/projector/product/name")}}"></img>
								<ul class="avabilityDialog_pr_info">
									<li id="avability_product_name">
										<strong>{{$xml->getItem("/shop/page/projector/product/name")}}</strong>
									</li>
									{{if  $xml->getItem("page/projector/product/@code")}}
										<li id="avability_product_code">
											<span>{{$txt['66818::53676_005_kodav']}}</span>
											<strong>{{$xml->getItemEscape("page/projector/product/@code")}}</strong>
										</li>
									{{/if}}
									{{if ( $xml->getItem("page/projector/product/versions/@count")  gt (string) 0)}}
										<li id="avability_product_version">
											<span>{{$xml->getItemEscape("page/projector/product/versions/@name")}}{{$txt['66818::53676_005_kr']}}</span>
											<strong>{{$xml->getItemEscape("page/projector/product/versions/version[@id = /shop/page/projector/product/@id]/@name")}}</strong>
										</li>
									{{/if}}
									<li id="avability_product_size" {{if $xml->getItem("/shop/page/projector/product/sizes/size[@type='onesize']")}} style="display:none;" {{/if}}>
										<span>{{$txt['66818::53676_005_roz']}}</span>
										{{foreach from=$xml->getList("page/projector/product/sizes/size") item=loop1651}}
											{{if  $loop1651->getItem("@amount")  == (string) 0}}
												<label class="select_button" data-type="{{$loop1651->getItemEscape("@type")}}">{{$loop1651->getItemEscape("@description")}}
												</label>
											{{/if}}
										{{/foreach}}
									</li>
								</ul>
							</div>
							<form action="/basketchange.php">
								<input id="avability_product_hidden" type="hidden" name="product" value="{{$xml->getItemEscape("page/projector/product/@id")}}"></input>
								<input id="avability_size_hidden" type="hidden" name="size" value="{{$xml->getItemEscape("page/projector/product/versions/version[/shop/page/projector/product/@id = @id]/size/@type")}}"></input>
								<input id="avability_mode_hidden" type="hidden" name="mode" value="2"/>
								<div class="avabilityDialog_text1">{{$txt['66818::53676_005_text1']}}
								</div>
								<input type="hidden" name="avability_track" value="only_one"/>
								<div class="avabilityDialog_text2">{{$txt['66818::53676_005_text2']}}
								</div>
								<div class="avabilityDialog_email">
									<label>{{$txt['66818::53676_005_email']}}
									</label>
									<input type="text" name="email" id="avabilityDialog_email" value="{{$xml->getItemEscape("page/projector/sender/@email")}}"></input>
									<span class="validation_icons">
										<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/correct.png?r=1570606529" alt="correct" class="correct_icon" style="display:none;"/>
										<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/incorrect.png?r=1570606529" alt="incorrect" class="incorrect_icon" style="display:none;"/></span>
								</div>
								<div class="avabilityDialog_tel" id="avabilityDialog_tel">
									<label>
										<input type="checkbox"/>
										<span>{{$txt['66818::53676_005_phone']}}</span>
									</label>
									<div class="avabilityDialog_tel2" id="avabilityDialog_phone2">
										<label class="avabilityDialog_tel">{{$txt['66818::53676_005_phone2']}}
										</label>
										<input type="text" name="phone" id="avabilityDialog_phone"/>
										<span class="validation_icons">
											<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/correct.png?r=1570606529" alt="correct" class="correct_icon" style="display:none;"/>
											<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/incorrect.png?r=1570606529" alt="incorrect" class="incorrect_icon" style="display:none;"/></span>
									</div>
								</div>
								<div class="avabilityDialog_text3">{{$txt['66818::53676_005_text3']}}
								</div>
								<div id="avabilityDialog_buttons1" class="avabilityDialog_buttons1">
									<button {{assign "classAttributeTmp27" ""}}  type="submit" id="avabilityDialog_submit"{{capture name="classAttributeTmp27" assign="classAttributeTmp27"}}avabilityDialog_submit{{/capture}}{{capture name="classAttributeTmp27" assign="classAttributeTmp27"}}btn avabilityDialog_submit{{/capture}}  class="{{$classAttributeTmp27}}">{{$txt['66818::53676_button_1']}}
									</button>
									{{if $required_68516}}
										<div class="order_open_required">{{$txt['66818::68516_003']}}
											<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/need.gif?r=1570606529" alt="{{$txt['66818::n56203_010b']}}" title="{{$txt['66818::n56203_010b']}}"></img>{{$required_68516}}
										</div>
									{{/if}}
								</div>
							</form>
						</div>
					</div>
					<script class="ajaxLoad">
            projector_notice_init();
        					</script>

					<!--Karta produktu - słownik opisu (projector_dictionary, 67256.1)-->
					{{if count( $xml->getList("/shop/page/projector/product/dictionary/items"))  gt (string) 0}}
						<div class="component_projector_dictionary" id="{{$txt['67256::56173_01']}}">
							<div class="n56173_main">
								<div class="n56173_label">
									<span class="n56173_2_label">{{$txt['67256::56173_02']}}</span>
								</div>
								<div class="n56173_sub">
									<table class="n54117_dictionary">
										{{foreach from=$xml->getList("/shop/page/projector/product/dictionary/items/item") item=loop1734}}
											{{if  $loop1734->getItem("@type")  == (string) 'group'}}
												<tr>
													<td class="n54117_group" colspan="2">
														<div class="n54117_group">
															{{if  $loop1734->getItem("desc")  neq (string) ''}}
																<span class="n54117_name_group">{{$loop1734->getItemEscape("@name")}}</span>
															{{else}}
																<span class="n54117_name2_group">{{$loop1734->getItemEscape("@name")}}</span>
															{{/if}}
															{{if  $loop1734->getItem("desc")  neq (string) ''}}
																<img class="qmark2 showTip" src="/gfx/__IAI_TEMPLATE_LANG_639_1__/qmark2.gif?r=1570606529" alt="" title=""></img>
																<div class="tooltipContent">{{$loop1734->getItem("desc")}}
																</div>
															{{/if}}
														</div>
													</td>
												</tr>
											{{/if}}
											{{if  $loop1734->getItem("@type")  == (string) 'element'}}
												<tr>
													<td {{assign "classAttributeTmp28" ""}}{{if $loop1734@iteration % 2}}{{capture name="classAttributeTmp28" assign="classAttributeTmp28"}}n54117_item_a1{{/capture}}{{else}}{{capture name="classAttributeTmp28" assign="classAttributeTmp28"}}n54117_item_a2{{/capture}}{{/if}}  class="{{$classAttributeTmp28}}">
														<span>{{$loop1734->getItemEscape("@name")}}</span>
														<span class="n67256colon">{{$txt['67256::n54117_444']}}</span>
														{{if  $loop1734->getItem("desc")  neq (string) ''}}
															<img class="qmark showTip" src="/gfx/__IAI_TEMPLATE_LANG_639_1__/qmark2.gif?r=1570606529" alt="" title=""></img>
															<div class="tooltipContent">{{$loop1734->getItem("desc")}}
															</div>
														{{/if}}
													</td>
													<td {{assign "classAttributeTmp29" ""}}{{if $loop1734@iteration % 2}}{{capture name="classAttributeTmp29" assign="classAttributeTmp29"}}n54117_item_b1{{/capture}}{{else}}{{capture name="classAttributeTmp29" assign="classAttributeTmp29"}}n54117_item_b2{{/capture}}{{/if}}   class="{{$classAttributeTmp29}}">
														{{foreach from=$loop1734->getList("values/value") item=loop1774}}
															{{if  $loop1774@iteration   gt (string) 1}}
																{{$txt['67256::n54117_444c']}}
															{{/if}}
															<div class="n54117_item_b_sub">
																{{if  $loop1774->getItem("desc")  neq (string) ''}}
																	<span class="n54117_name_sub">{{$loop1774->getItem("@value")}}</span>
																{{else}}
																	{{$loop1774->getItem("@value")}}
																{{/if}}
																{{if  $loop1774->getItem("desc")  neq (string) ''}}
																	<img class="qmark showTip" src="/gfx/__IAI_TEMPLATE_LANG_639_1__/qmark.gif?r=1570606529" alt="" title=""></img>
																	<div class="tooltipContent">{{$loop1774->getItem("desc")}}
																	</div>
																{{/if}}
															</div>
														{{/foreach}}
													</td>
												</tr>
											{{/if}}
										{{/foreach}}
										<tr>
											<td class="n54117_footer" colspan="2">
												<br/>
											</td>
										</tr>
									</table>
								</div>
							</div>
						</div>
					{{/if}}
					<!--CMS w karcie produktu dla rozmiarów (projector_cms_sizes, 66111.1)-->
					{{if  $xml->getItem("/shop/page/projector/product/sizes_chart")}}
						<div class="component_projector_sizes_chart" id="{{$txt['66111::56195_01']}}">
							{{if  $xml->getItem("/shop/page/projector/product/sizes_chart/descriptions/description")}}
								<h2>{{$txt['66111::56195_02']}}
								</h2>
								<table {{assign "classAttributeTmp30" ""}}{{capture name="classAttributeTmp30" assign="classAttributeTmp30"}}table-condensed{{/capture}}{{capture name="classAttributeTmp30" assign="classAttributeTmp30"}}ui-responsive table-stroke ui-table ui-table-reflow table-condensed{{/capture}}  class="{{$classAttributeTmp30}}">
									<thead>
										<tr>
											<th class="table-first-column">{{$txt['66111::56195_03']}}
											</th>
											{{foreach from=$xml->getList("/shop/page/projector/product/sizes_chart/descriptions/description") item=loop1821}}
												<th>{{$loop1821->getItem("@name")}}
												</th>
											{{/foreach}}
										</tr>
									</thead>
									<tbody>
										{{foreach from=$xml->getList("/shop/page/projector/product/sizes_chart/sizes/size") item=loop1832}}
											<tr>
												<td class="table-first-column">{{$loop1832->getItem("@description")}}
												</td>
												{{foreach from=$loop1832->getList("description") item=loop1839}}
													<td>{{$loop1839->getItem("@text")}}
													</td>
												{{/foreach}}
											</tr>
										{{/foreach}}
									</tbody>
								</table>
							{{/if}}
							<div class="sizes_chart_cms">
								{{if  $xml->getItem("/shop/page/projector/product/sizes_chart/text")}}
									{{$xml->getItem("/shop/page/projector/product/sizes_chart/text")}}
								{{/if}}
							</div>
						</div>
					{{/if}}
					{{if !( $xml->getItem("/shop/page/projector/product/sizes_chart")) and (( $xml->getItem("page/projector/text_sizesgroup")) and ( $xml->getItem("page/projector/text_sizesgroup")  neq (string) ''))}}
						<div class="component_projector_sizes_chart" id="{{$txt['66111::56195_01']}}">
							<div class="sizes_chart_cms">{{$xml->getItem("/shop/page/projector/text_sizesgroup")}}
							</div>
						</div>
					{{/if}}
					<!--CMS w karcie produktu (projector_cms, 56196.1)-->
					{{if  $xml->getItem("page/projector/text/body")}}
						<div {{assign "classAttributeTmp31" ""}}{{capture name="classAttributeTmp31" assign="classAttributeTmp31"}}component_projector_cms{{/capture}} id="{{$txt['56196::56196_01']}}"{{capture name="classAttributeTmp31" assign="classAttributeTmp31"}}component_projector_cms cm{{/capture}}  class="{{$classAttributeTmp31}}">
							<div class="n56196_main">
								<div class="n56196_sub">{{$xml->getItem("page/projector/text/body")}}
								</div>
							</div>
						</div>
					{{/if}}
					<!--Product questions (projector_product_questions, 60321.1)-->
					{{if count( $xml->getList("page/projector/questions/question"))}}
						<div {{assign "classAttributeTmp32" ""}}{{capture name="classAttributeTmp32" assign="classAttributeTmp32"}}product_questions_list{{/capture}} id="product_questions_list" {{if $xml->getItem("/shop/page/projector/product/dictionary/items/item") and !(count( $xml->getList("/shop/page/projector/product/dictionary/items/item")) gt (string) 6)}}{{capture name="classAttributeTmp32" assign="classAttributeTmp32"}}product_questions_list product_questions_small{{/capture}}{{/if}}  class="{{$classAttributeTmp32}}">
							<div {{assign "classAttributeTmp33" ""}}{{capture name="classAttributeTmp33" assign="classAttributeTmp33"}}product_questions_list_label{{/capture}}{{capture name="classAttributeTmp33" assign="classAttributeTmp33"}}product_questions_list_label big_label{{/capture}}  class="{{$classAttributeTmp33}}">
								<span class="product_questions_list_label">{{$txt['60321::product_questions_list_label']}}</span>
							</div>
							<div class="product_questions_list_sub">
								{{foreach from=$xml->getList("page/projector/questions/question") item=loop1893}}
									<div class="product_question_container">
										<div class="product_question">
											<a href="#showDescription">{{$loop1893->getItemEscape("@question")}}
												<span>{{$txt['60321::352213_5_question']}}</span></a>
										</div>
										<div class="product_question_answer">{{$loop1893->getItem("@answer")}}
										</div>
									</div>
								{{/foreach}}
							</div>
							<a id="send_question_button" href="#showQuestionDialog" class="btn-large">{{$txt['60321::2412355_send_question']}}</a>
						</div>
					{{/if}}
					<!--Ukrywanie innych komponentów projektora (projector_components_hiding, 69663.1)-->
					<div class="n58676">
						<div id="tabs_58676">
						</div>
					</div>
					<div class="clearBoth" style="height: 0px;">
					</div>
					<script class="ajaxLoad">{{if  $xml->getItem("page/projector/sender[@link_opinion='true']")}}hoverscallback = function(){$('#opinions_58676').click();location.hash = '#opinions_58676';};{{/if}}$(function(){initHovers('tabs_58676',optionsHovers('{{$xml->getItemEscape("page/projector/comments/@all")}}','{{$xml->getItemEscape("page/projector/comments/@avg")}}'),'true');})
        					</script>

					<!--Opinie o produkcie (projector_opinions, 74763.1)-->
					{{if ( $xml->getItem("page/projector/comments/@all")  gt (string) '0') or !( $xml->getItem("/shop/basket/@login")) or ( $xml->getItem("/shop/basket/@login")  == (string) '') or ( $xml->getItem("page/projector/sender/@active")  == (string) 'true')}}
						<div class="component_projector_opinions" id="{{$txt['74763::56197_01']}}">
							<div class="n68503_label">
								<span class="n68503_label">{{$txt['74763::56197_02']}}</span>
							</div>
							<div class="n68503_main1">
								<div class="n68503_sub">
									{{if  $xml->getItem("page/projector/comments/@all")  gt (string) '0'}}
										<div class="n68503_stats_info">
											<div class="n68503_stats">
												<span class="n68503_stats_amount">{{$txt['74763::56197_03']}}{{$xml->getItemEscape("page/projector/comments/@all")}}</span>
												<span class="n68503_stats_average">{{$txt['74763::56197_04']}}{{$xml->getItemEscape("page/projector/comments/@avg")}}</span>
											</div>
										</div>
										{{foreach from=$xml->getList("page/projector/comments/opinions/opinion") item=loop1939}}
											{{if !( $loop1939->getCurrent()  == (string) '')}}
												<div class="n68503_opinions display_table" itemprop="review" itemscope="" itemtype="http://schema.org/Review">
													<div class="display_table_cell comments_note_description">
														<div class="n68503_opinion display_table_row">
															<div class="display_table_cell">
																{{if ( $loop1939->getItem("@note"))}}
																	<b class="n56197_ratting">{{$txt['74763::56197_06']}}</b>
																	<span class="n68503_stars" itemprop="reviewRating" itemscope="" itemtype="http://schema.org/Rating">
																		<meta itemprop="worstRating" content="1"/>
																		<meta itemprop="ratingValue" content="{{$loop1939->getItemEscape("round(@note)")}}"/>
																		<meta itemprop="bestRating" content="5"/>
																		<div class="note">
																			<span>
																				<i {{assign "classAttributeTmp34" ""}}{{capture name="classAttributeTmp34" assign="classAttributeTmp34"}}icon-star{{/capture}}{{if $loop1939->getItem("@note") gt (string) 0.5}}{{capture name="classAttributeTmp34" assign="classAttributeTmp34"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp34}}"></i>
																				<i {{assign "classAttributeTmp35" ""}}{{capture name="classAttributeTmp35" assign="classAttributeTmp35"}}icon-star{{/capture}}{{if $loop1939->getItem("@note") gt (string) 1.5}}{{capture name="classAttributeTmp35" assign="classAttributeTmp35"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp35}}"></i>
																				<i {{assign "classAttributeTmp36" ""}}{{capture name="classAttributeTmp36" assign="classAttributeTmp36"}}icon-star{{/capture}}{{if $loop1939->getItem("@note") gt (string) 2.5}}{{capture name="classAttributeTmp36" assign="classAttributeTmp36"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp36}}"></i>
																				<i {{assign "classAttributeTmp37" ""}}{{capture name="classAttributeTmp37" assign="classAttributeTmp37"}}icon-star{{/capture}}{{if $loop1939->getItem("@note") gt (string) 3.5}}{{capture name="classAttributeTmp37" assign="classAttributeTmp37"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp37}}"></i>
																				<i {{assign "classAttributeTmp38" ""}}{{capture name="classAttributeTmp38" assign="classAttributeTmp38"}}icon-star{{/capture}}{{if $loop1939->getItem("@note") gt (string) 4.5}}{{capture name="classAttributeTmp38" assign="classAttributeTmp38"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp38}}"></i></span>
																		</div></span>
																{{/if}}
															</div>
															<div class="display_table_cell">
																<b class="n68503_author_title">{{$txt['74763::56197_05']}}</b>
																<span class="n68503_author_desc" itemprop="author">{{$loop1939->getItemEscape("@client")}}</span>
															</div>
														</div>
														{{if  $loop1939->getItem("@image_small")}}
															<div class="n68503_item">
																<div class="n68503_photo">
																	<img class="n57494" onclick="Popup.show('{{$loop1939->getItemEscape("@image_large")}}',{{$loop1939->getItemEscape("@width_large")}},{{$loop1939->getItemEscape("@height_large")}});return false;" src="{{$loop1939->getItemEscape("@image_small")}}" title="{{$loop1939->getItemEscape("/shop/page/projector/product/name")}}" alt="{{$loop1939->getItemEscape("/shop/page/projector/product/name")}}"></img>
																</div>
																<div class="n68503_desc" itemprop="description">
																	<span class="n68503_desc">{{$loop1939->getItem(".")}}</span>
																</div>
															</div>
														{{else}}
															<div class="n68503_item">
																<span class="n68503_desc_one" itemprop="description">{{$loop1939->getItem(".")}}</span>
															</div>
														{{/if}}
													</div>
													{{if  $loop1939->getItem("@source")  neq (string) 'shop'}}
														<div class="display_table_cell comments_source">{{$txt['74763::56197_08klient']}}
															<b>{{$loop1939->getItem("@source")}}</b>
														</div>
													{{/if}}
												</div>
											{{/if}}
										{{/foreach}}
										{{if  $xml->getItem("page/projector/comments[@limited='true']")}}
											<div class="n56197_all_opinions">
												<a class="n56197_all_opinions" href=" {{$xml->getItemEscape("page/projector/comments/@link")}} ">{{$txt['74763::56197_08a']}}</a>
											</div>
										{{/if}}
									{{/if}}
									<div id="n54150_hidden" class="hidden_55773">
										{{if  $xml->getItem("page/projector/sender/@active")  == (string) 'false'}}
											<div class="n56197_login">
												<span class="n56197_login">{{$txt['74763::56197_08']}}</span>
											</div>
										{{else}}
										{{/if}}
									</div>
								</div>
							</div>
						</div>
					{{/if}}
					<!--Formularz dodawania opinii (projector_opinions_add, 65617.1)-->
					{{if  $xml->getItem("page/projector/sender[@active='true']")}}
						<div class="n56914" {{if count( $xml->getList("page/projector/comments/opinions/opinion"))}} style="display:none;" {{/if}} id="{{$txt['65617::56197_01']}}">
							{{if  $xml->getItem("page/projector/sender[@active='true']")}}
								{{if count( $xml->getList("page/projector/comments/opinions/opinion"))  gt (string) 0}}
									<div class="n56914_label">
										<span class="n56914_label">
											{{if  $xml->getItem("page/projector/comments/opinionClient/opinion")}}
												{{$txt['65617::53789_001b']}}
											{{else}}
												{{$txt['65617::53789_001']}}
											{{/if}}
											</span>
									</div>
								{{/if}}
							{{/if}}
							<div class="n56914_sub">
								{{if  $xml->getItem("page/projector/sender[@active='true']")}}
									{{if ( $xml->getItem("page/projector/comments/opinionClient/opinion/@stat")  == (string) 'y')}}
										<div class="n56914_info2">{{$txt['65617::53789_002a']}}
										</div>
									{{else}}
										<form id="form" enctype="multipart/form-data" action="/settings.php" method="post">
											<div class="n56914_info">
												{{if ( $xml->getItem("page/projector/comments/opinionClient/opinion/@stat")  == (string) 'n')}}
													{{$txt['65617::53789_003']}}
												{{else}}
													{{if ( $xml->getItem("page/projector/comments/@all")  == (string) '0')}}
														{{$txt['65617::53789_005']}}
														{{if ( $xml->getItem("page/projector/comments/opinionClient/@points"))}}
															{{$txt['65617::53789_006']}}
															<span class="n59203_opinion_points">{{$xml->getItemEscape("page/projector/comments/opinionClient/@points")}}{{$txt['65617::53789_007']}}</span>{{$txt['65617::53789_009']}}
														{{/if}}
														{{$txt['65617::53789_008']}}
													{{else}}
														{{$txt['65617::53789_004']}}
														{{if ( $xml->getItem("page/projector/comments/opinionClient/@points"))}}
															{{$txt['65617::53789_006']}}
															<span class="n59203_opinion_points">{{$xml->getItemEscape("page/projector/comments/opinionClient/@points")}}{{$txt['65617::53789_007']}}</span>{{$txt['65617::53789_009']}}
														{{/if}}
													{{/if}}
												{{/if}}
											</div>
											<div class="n56914_add">
												<div class="n56914_notes" {{if $xml->getItem("page/projector/comments/notes/complex")}} id="complex_notes" {{/if}}>
													<div class="n56914_name">{{$txt['65617::51408_002']}}
													</div>
													<div class="n56914_note_items">
														{{if  $xml->getItem("page/projector/comments/notes/complex")}}
															{{foreach from=$xml->getList("page/projector/comments/notes/complex/item") item=loop2120}}
																<div class="opinion_note">
																	<span class="opinion_star">{{$loop2120->getItemEscape("@name")}}</span>
																	{{foreach from=$loop2120->getList("i") item=loop2124}}
																		<a href="#" class="opinion_star" rel="{{$loop2124->getItemEscape("@value")}}" title=" {{$loop2124->getItemEscape("@value")}}{{$txt['65617::51408_002dz']}}{{$loop2124->getItemEscape("../@range")}} ">
																			<span>{{$loop2124->getItemEscape("@name")}}</span></a>
																	{{/foreach}}
																	<b/>
																	<input {{assign "valueAttributeTmp78" ""}}  type="hidden" name="complexnote[{{$loop2120->getItemEscape("@id")}}]" {{if $loop2120->getItem("@id") == (string) $loop2120->getItem("../selected/item/@id")}}{{capture name="current_note" assign="current_note"}}{{$loop2120->getItemEscape("@id")}}{{/capture}}{{capture name="valueAttributeTmp78" assign="valueAttributeTmp78"}}{{$loop2120->getItemEscape("../selected/item[@id = $current_note]/@value")}}{{/capture}}{{else}}{{capture name="valueAttributeTmp78" assign="valueAttributeTmp78"}}{{$loop2120->getItemEscape("@range")}}{{/capture}}{{/if}}  value="{{$valueAttributeTmp78}}"></input>
																</div>
															{{/foreach}}
														{{else}}
															<div class="opinion_note">
																{{foreach from=$xml->getList("page/projector/comments/opinionClient/notes/note") item=loop2151}}
																	<a href="#" class="opinion_star" rel="{{$loop2151->getItemEscape("@value")}}" title=" {{$loop2151->getItemEscape("@value")}}{{$txt['65617::51408_002dz']}}{{$loop2151->getItemEscape("count(../note)")}} ">
																		<span>{{$loop2151->getItemEscape("@value")}}</span></a>
																{{/foreach}}
																<b/>
																<input {{assign "valueAttributeTmp79" ""}}  type="hidden" name="note"{{capture name="valueAttributeTmp79" assign="valueAttributeTmp79"}}{{$xml->getItemEscape("@value")}}{{/capture}}{{if $xml->getItem("page/projector/comments/opinionClient/notes/note/@selected") == (string) 'true'}}{{capture name="valueAttributeTmp79" assign="valueAttributeTmp79"}}{{$xml->getItemEscape("page/projector/comments/opinionClient/notes/note[@selected = 'true']/@value")}}{{/capture}}{{else}}{{capture name="valueAttributeTmp79" assign="valueAttributeTmp79"}}{{$xml->getItemEscape("count(page/projector/comments/opinionClient/notes/note)")}}{{/capture}}{{/if}}  value="{{$valueAttributeTmp79}}"></input>
															</div>
														{{/if}}
													</div>
												</div>
												<div class="n56914_text">
													<div class="n56914_name">{{$txt['65617::51408_003']}}
													</div>
													<textarea id="addopp" class="projector_opinions_opinion" name="opinion" cols="60" rows="7">{{$xml->getItemEscape("page/projector/comments/opinionClient/opinion")}}</textarea>
												</div>
												{{if ( $xml->getItem("page/projector/comments/opinionClient/image/@enabled") == (string)'true')}}
													<div class="n56914_opinion_foto">
														<div class="n56914_name">{{$txt['65617::53757_001']}}
														</div>
														<input class="n53757_photo" type="file" name="opinion_photo" size="{{$txt['65617::54114_input']}}" {{if $xml->getItem("/shop/form_data/upload_file/max_filesize/@bytes")}} data-max_filesize="{{$xml->getItemEscape("/shop/form_data/upload_file/max_filesize/@bytes")}}" {{/if}}></input>
													</div>
												{{/if}}
												<div class="n56914_button">
													<input type="hidden" name="product" value="{{$xml->getItemEscape("page/projector/product/@id")}}"></input>
													<button {{assign "classAttributeTmp39" ""}}  type="submit" name="akcja" {{if $xml->getItem("page/projector/comments/opinionClient/opinion")}} title="{{$txt['65617::54114_900b']}}"{{capture name="classAttributeTmp39" assign="classAttributeTmp39"}}btn-small projector_opinions_button_edit{{/capture}} {{$txt['65617::51408_004']}} {{else}} title="{{$txt['65617::54114_900']}}"{{capture name="classAttributeTmp39" assign="classAttributeTmp39"}}btn-small projector_opinions_button{{/capture}} {{$txt['65617::51408_004b']}} {{/if}}  class="{{$classAttributeTmp39}}">
													</button>
												</div>
												<div class="clearBoth">
												</div>
											</div>
										</form>
									{{/if}}
								{{/if}}
							</div>
						</div>
					{{/if}}
					<!--Zadaj pytanie o produkt (projector_askforproduct, 61389.1)-->
					<div class="component_projector_askforproduct" id="{{$txt['61389::56188_01']}}">
						<a id="askforproduct" href="#askforproduct_close"></a>
						<form action="settings.php" class="projector_askforproduct" method="post">
							<div class="n61389_label">
								<span class="n61389_label">{{$txt['61389::56188_02']}}</span>
							</div>
							<div class="n61389_main">
								<div class="n61389_sub">
									<h3 class="n61389_desc">{{$txt['61389::56188_03']}}
									</h3>
									<input type="hidden" name="question_product_id" value="{{$xml->getItemEscape("page/projector/product/@id")}}"></input>
									<input type="hidden" name="question_action" value="add"/>
									<div class="form">
										{{if  $xml->getItem("page/projector/sender/@email") == (string)''}}
											<div class="n61389_left2">
												<span class="title_email">{{$txt['61389::56188_06']}}</span>
											</div>
										{{/if}}
										<div class="n61389_right2">
											{{if  $xml->getItem("page/projector/sender/@email") neq (string)''}}
												<input id="askforproduct_email" class="n61389_form" type="hidden" name="question_email" value="{{$xml->getItemEscape("page/projector/sender/@email")}}"></input>
											{{else}}
												<input id="askforproduct_email" class="n61389_form" type="text" name="question_email" value="{{$xml->getItemEscape("page/projector/sender/@email")}}"></input>
												<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/need.gif?r=1570606529" alt="{{$txt['61389::n56203_010b']}}"></img>
											{{/if}}
										</div>
									</div>
									<div class="form" id="form_textarea2">
										<div class="n61389_left3">
											<span class="title_pytanie">{{$txt['61389::56188_07']}}</span>
										</div>
										<div class="n61389_right3">
											<textarea class="n61389_body" id="n56188_question" name="product_question" rows="6" cols="52"></textarea>
											<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/need.gif?r=1570606529" alt="{{$txt['61389::n56203_010b']}}"></img>
										</div>
									</div>
									<div class="n61389_submit">
										<input {{assign "classAttributeTmp40" ""}}{{capture name="classAttributeTmp40" assign="classAttributeTmp40"}}n61389_submit{{/capture}} type="submit"{{capture name="classAttributeTmp40" assign="classAttributeTmp40"}}btn-small n61389_submit{{/capture}} value="{{$txt['61389::56188_08']}}"  class="{{$classAttributeTmp40}}"></input>
									</div>
									<div class="n61389_legend">{{$txt['61389::n56203_031b']}}
										<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/need.gif?r=1570606529" alt="{{$txt['61389::n56203_010b']}}"></img>{{$txt['61389::n56203_031c']}}
									</div>
								</div>
							</div>
						</form>
					</div>
					<script class="ajaxLoad">
var txt_askforproduct_email = '{{$txt['61389::56188_01w']}}';
var txt_askforproduct_product = '{{$txt['61389::56188_01p']}}';
askforproduct.init();
					</script>

					<!--Karta produktu - gwarancja (projector_warranty, 56191.1)-->
					{{if  $xml->getItem("page/projector/product/warranty") and !( $xml->getItem("page/projector/product/warranty") == (string) '')}}
						<div class="component_projector_warranty" id="{{$txt['56191::56191_01']}}">
							<div class="n56191_main">
								<div class="n56191_sub">
									{{if  $xml->getItem("page/projector/product/warranty/@gfx")}}
										<div class="n56191_icon">
											<img class="projector_firmlogo_55916" src="{{$xml->getItemEscape("page/projector/product/warranty/@gfx")}}" alt="{{$xml->getItemEscape("page/projector/product/warranty/@name")}}"></img>
										</div>
									{{/if}}
									{{if !( $xml->getItem("page/projector/product/warranty/@gfx"))}}
										<h3 class="n56191_label">{{$txt['56191::56191_02']}}{{$xml->getItem("page/projector/product/warranty/@name")}}
											{{if  $xml->getItem("page/projector/product/warranty[@type='seller']")}}
												{{$txt['56191::56191_02seller']}}
											{{/if}}
											{{if  $xml->getItem("page/projector/product/warranty[@type='producer']")}}
												{{$txt['56191::56191_02producer']}}
											{{/if}}
											{{if  $xml->getItem("page/projector/product/warranty/@period")  gt (string) 0}}
												{{$txt['56191::56191_02period']}}{{$xml->getItem("page/projector/product/warranty/@period")}}
											{{/if}}
											{{if  $xml->getItem("page/projector/product/warranty/@period")  == (string) 1}}
												{{$txt['56191::56191_02periodOne']}}
											{{/if}}
											{{if  $xml->getItem("page/projector/product/warranty/@period")  gt (string) 1}}
												{{$txt['56191::56191_02periodMulti']}}
											{{/if}}
										</h3>
									{{/if}}
									<div class="n56191_desc">{{$xml->getItem("page/projector/product/warranty/text()")}}
									</div>
								</div>
							</div>
						</div>
					{{/if}}
					<!--Karta produktu - załączniki (projector_enclosures, 68814.1)-->
					{{if (( $xml->getItem("/shop/page/projector/product/enclosures/documents")) or ( $xml->getItem("/shop/page/projector/product/enclosures/audio"))  or ( $xml->getItem("/shop/page/projector/product/enclosures/other"))  or ( $xml->getItem("/shop/page/projector/product/enclosures/images_attachments/item")) or ( $xml->getItem("/shop/page/projector/product/enclosures/video/item")))}}
						<div class="component_projector_enclosures" id="{{$txt['68814::56259_01']}}">
							<div class="n56259_main">
								{{capture name="n68814_showlabel" assign="n68814_showlabel"}}
									{{$txt['68814::n68814_showlabel']}}
								{{/capture}}
								{{if $n68814_showlabel}}
									<div class="n68814_label">
										<span class="n68814_2_label">{{$n68814_showlabel}}</span>
									</div>
								{{/if}}
								<ul>
									{{foreach from=$xml->getList("/shop/page/projector/product/enclosures/*") item=loop2350}}
										{{foreach from=$loop2350->getList("item") item=loop2352}}
											<li {{assign "classAttributeTmp41" ""}}{{if $loop2352->getItem("@extension") == (string) 'swf'}}{{capture name="classAttributeTmp41" assign="classAttributeTmp41"}}e_swf{{/capture}}{{elseif $loop2352->getItem("@type") == (string) 'video'}}{{capture name="classAttributeTmp41" assign="classAttributeTmp41"}}e_video{{/capture}}{{elseif $loop2352->getItem("@type") == (string) 'audio/mpeg'}}{{capture name="classAttributeTmp41" assign="classAttributeTmp41"}}e_audio{{/capture}}{{elseif $loop2352->getItem("@type") == (string) 'image/image'}}{{capture name="classAttributeTmp41" assign="classAttributeTmp41"}}e_image{{/capture}}{{elseif $loop2352->getItem("@type") == (string) 'documents'}}{{capture name="classAttributeTmp41" assign="classAttributeTmp41"}}e_documents{{/capture}}{{else}}{{capture name="classAttributeTmp41" assign="classAttributeTmp41"}}e_download{{/capture}}{{/if}}  class="{{$classAttributeTmp41}}">
												<a class="enclosure_name" data-mobile-class="btn-small" {{if $loop2352->getItem("@type") == (string) 'image/image' or $loop2352->getItem("@type") == (string) 'documents'}} target="_blank"{{/if}} href="{{$loop2352->getItemEscape("@url")}}">{{$txt['68814::56259_05i']}}{{$loop2352->getItemEscape("@name")}}</a>
												{{if  $loop2352->getItem("@extension")  == (string) 'swf'}}
													<a data-mobile-class="hide" class="enclosure_show_swf" href="{{$loop2352->getItemEscape("@url")}}&#160;amp;preview=true">{{$txt['68814::56259_066z']}}</a>
												{{elseif  $loop2352->getItem("@type")  == (string) 'video'}}
													<a data-mobile-class="hide" class="enclosure_video_play" href="{{$loop2352->getItemEscape("@url")}}">{{$txt['68814::56259_05']}}</a>
													<input type="hidden" name="enclosure_play_position" value="{{$loop2352@iteration}}"></input>
												{{elseif  $loop2352->getItem("@type")  == (string) 'audio/mpeg'}}
													<a data-mobile-class="hide" class="enclosure_audio_play" href="{{$loop2352->getItemEscape("/shop/@baseurl")}}{{$loop2352->getItemEscape("@url")}}">{{$txt['68814::56259_04']}}</a>
													<input type="hidden" name="enclosure_play_position" value="{{$loop2352@iteration}}"></input>
												{{elseif  $loop2352->getItem("@type")  == (string) 'image/image'}}
													<a target="_blank" data-mobile-class="hide" class="enclosure_show_image" href="{{$loop2352->getItemEscape("@url")}}">{{$txt['68814::56259_06']}}</a>
												{{else}}
													<a data-mobile-class="hide" class="enclosure_download" {{if $loop2352->getItem("@type") == (string) 'documents'}} target="_blank"{{/if}} href="{{$loop2352->getItemEscape("@url")}}">{{$txt['68814::56259_03']}}</a>
												{{/if}}
											</li>
										{{/foreach}}
									{{/foreach}}
									{{if  $xml->getItem("/shop/page/projector/product/enclosures/video/item")}}
										<script>
                                var enclosures_video_obj  = [
{{foreach from=$xml->getList("/shop/page/projector/product/enclosures/video/item") item=loop2415}}{{if !( $loop2415@iteration   == (string) 1)}},{{/if}}{
                                    title:"{{$loop2415->getItemEscape("@name")}}",
                                    free:true,
                                    m4v:"{{$loop2415->getItemEscape("/shop/@baseurl")}}{{$loop2415->getItemEscape("@url")}}",
                                    }
{{/foreach}}
                                ]
                            										</script>

									{{/if}}
									{{if  $xml->getItem("/shop/page/projector/product/enclosures/audio/item")}}
										<script>
                                var enclosures_audio_obj  = [
{{foreach from=$xml->getList("/shop/page/projector/product/enclosures/audio/item") item=loop2430}}{{if !( $loop2430@iteration   == (string) 1)}},{{/if}}{
                                    {{capture name="audio_position" assign="audio_position"}}{{$loop2430@iteration}}{{/capture}}
                                    title:"{{$loop2430->getItemEscape("@name")}}",
                                    free:true,
                                    mp3:"{{$loop2430->getItemEscape("/shop/@baseurl")}}{{$loop2430->getItemEscape("@url")}}",
                                    {{if  $loop2430->getItem("/shop/page/projector/product/enclosures/images/enclosure[@position = $audio_position]/@url")}}
                                            poster:"{{$loop2430->getItemEscape("/shop/page/projector/product/enclosures/images/enclosure[@position = $audio_position]/@url")}}"
                                        {{else}}
                                            poster:"{{$loop2430->getItemEscape("/shop/page/projector/product/enclosures/images/enclosure[1]/@url")}}"
                                        {{/if}}
                                    }
{{/foreach}}
                                ]
                            										</script>

									{{/if}}
									{{if  $xml->getItem("/shop/page/projector/product/enclosures/images_attachments/item")}}
										<script>
                                var enclosures_images_obj = new Object();
                                {{if !(count( $xml->getList("/shop/page/projector/product/enclosures/images_attachments/item"))  == (string) 1)}}{{foreach from=$xml->getList("/shop/page/projector/product/enclosures/images_attachments/item") item=loop2452}}
                                        enclosures_images_obj[{{$loop2452->getItemEscape("@position")}}]=new Array('{{$loop2452->getItemEscape("@url")}}','1','1');
{{/foreach}}{{/if}}										</script>

									{{/if}}
								</ul>
							</div>
						</div>
					{{/if}}
					<!--Facebook comments (projector_facebook_comments, 65612.1)-->
					{{if  $xml->getItem("page/facebook_comments")}}
						<div {{assign "classAttributeTmp42" ""}}{{capture name="classAttributeTmp42" assign="classAttributeTmp42"}}projector_fb_comments{{/capture}}{{if $xml->getItem("page/projector/products_associated_zone2/product")}}{{capture name="classAttributeTmp42" assign="classAttributeTmp42"}}projector_fb_comments_short{{/capture}}{{/if}} id="{{$txt['65612::62639_01']}}"  class="{{$classAttributeTmp42}}">
							<div {{assign "classAttributeTmp43" ""}}{{capture name="classAttributeTmp43" assign="classAttributeTmp43"}}projector_fb_comments_label{{/capture}}{{capture name="classAttributeTmp43" assign="classAttributeTmp43"}}big_label projector_fb_comments_label{{/capture}}  class="{{$classAttributeTmp43}}">{{$txt['65612::62639_00']}}
							</div>
							<div id="fb-root">
							</div>
							<script src="//connect.facebook.net/{{if $xml->getItem("/shop/language/@id") == (string) 'pol'}}pl_PL{{else}}en_US{{/if}}/all.js#xfbml=1">							</script>

							<div class="fb-comments" data-href="{{$xml->getItemEscape("/shop/@baseurl")}}{{$xml->getItemEscape("substring-after(/shop/page/projector/product/@link,'/')")}}" data-num-posts="{{$txt['65612::62639_02']}}" data-width="{{$txt['65612::62639_03']}}" data-colorscheme="{{$txt['65612::62639_04']}}">
							</div>
						</div>
					{{/if}}
					<!--Produkty powiązane z tym produktem - strefa 1 (projector_associated_zone1, 102148.1)-->
					<iaiajaxstart iai-ajax-id="projector_associated_zone1" iai-ajax-generated="true"/>
					{{if  $xml->getItem("page/projector/products_associated_zone1")}}
						<div class="main_hotspot mrg-b clearfix" id="products_associated_zone1">
							{{if  $xml->getItem("page/projector/products_associated_zone1/product") or  $xml->getItem("page/projector/products_associated_zone1/opinion")}}
								<h2>
									<span class="big_label">
										{{if  $xml->getItem("page/projector/products_associated_zone1/@name")}}
											{{$xml->getItemEscape("page/projector/products_associated_zone1/@name")}}
										{{else}}
											{{$txt['102148::58826_label']}}
										{{/if}}
										{{$txt['102148::58826_label-after']}}</span>
								</h2>
								<div class="col-bg-1 align_row main_hotspot_sub" data-align="a.product-icon img#css">
									<div {{assign "classAttributeTmp44" ""}}{{capture name="classAttributeTmp44" assign="classAttributeTmp44"}}products_wrapper row clearfix{{/capture}} data-column="{{$txt['102148::7487444_hotspot_column']}}" data-wrapType="{{$txt['102148::7487444_hotspot_wrapType']}}" {{if (count( $xml->getList("page/projector/products_associated_zone1/product")) == (string) 1) or (count( $xml->getList("page/projector/products_associated_zone1/opinion")) == (string) 1)}}{{capture name="classAttributeTmp44" assign="classAttributeTmp44"}}products_wrapper row clearfix col-md-3 col-xs-6{{/capture}}{{/if}}{{if (count( $xml->getList("page/projector/products_associated_zone1/product")) == (string) 2) or (count( $xml->getList("page/projector/products_associated_zone1/opinion")) == (string) 2)}}{{capture name="classAttributeTmp44" assign="classAttributeTmp44"}}products_wrapper row clearfix col-md-6 col-xs-12{{/capture}}{{/if}}   class="{{$classAttributeTmp44}}">
										{{foreach from=$xml->getList("page/projector/products_associated_zone1/*") item=loop2514}}
											{{capture name="var_name" assign="var_name"}}
												{{if  $loop2514->getItem("product")}}
													{{$loop2514->getItem("product/name/text()")}}
												{{else}}
													{{$loop2514->getItem("name/text()")}}
												{{/if}}
											{{/capture}}
											{{capture name="var_icon" assign="var_icon"}}
												{{if  $loop2514->getItem("product")}}
													{{$loop2514->getItemEscape("product/icon")}}
												{{else}}
													{{$loop2514->getItemEscape("icon")}}
												{{/if}}
											{{/capture}}
											{{capture name="var_icon_small" assign="var_icon_small"}}
												{{if  $loop2514->getItem("product")}}
													{{$loop2514->getItemEscape("product/icon_small")}}
												{{else}}
													{{$loop2514->getItemEscape("icon_small")}}
												{{/if}}
											{{/capture}}
											{{capture name="var_link" assign="var_link"}}
												{{if  $loop2514->getItem("product")}}
													{{$loop2514->getItemEscape("product/@link")}}
												{{else}}
													{{$loop2514->getItemEscape("@link")}}
												{{/if}}
											{{/capture}}
											<div {{assign "classAttributeTmp45" ""}}{{capture name="classAttributeTmp45" assign="classAttributeTmp45"}}product_wrapper col-md-3 col-xs-6{{/capture}}{{capture name="classAttributeTmp45" assign="classAttributeTmp45"}}{{$txt['102148::product_wrapper_col']}} type_{{$loop2514->getItemEscape("name(.)")}}{{/capture}}  class="{{$classAttributeTmp45}}">
												<a class="product-icon" href="{{$var_link}}" title="{{$var_name}}" data-product-id="{{$loop2514->getItemEscape("@id")}}">
													<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/loader.gif?r=1570606529" class="b-lazy" data-src-small="{{$loop2514->getItem("$var_icon_small")}}" data-src="{{$loop2514->getItem("$var_icon")}}" alt="{{$loop2514->getItem("$var_name")}}"></img></a>
												<h3>
													<a class="product-name" href="{{$var_link}}" title="{{$var_name}}">{{$var_name}}</a>
												</h3>
												{{capture name="var_size_min_formatted" assign="var_size_min_formatted"}}
													{{if  $loop2514->getItem("product")}}
														{{$loop2514->getItemEscape("product/price/@size_min_formatted")}}
													{{else}}
														{{$loop2514->getItemEscape("price/@size_min_formatted")}}
													{{/if}}
												{{/capture}}
												{{capture name="var_size_max_formatted" assign="var_size_max_formatted"}}
													{{if  $loop2514->getItem("product")}}
														{{$loop2514->getItemEscape("product/price/@size_max_formatted")}}
													{{else}}
														{{$loop2514->getItemEscape("price/@size_max_formatted")}}
													{{/if}}
												{{/capture}}
												{{capture name="var_points" assign="var_points"}}
													{{if  $loop2514->getItem("product")}}
														{{$loop2514->getItemEscape("product/price/@points")}}
													{{else}}
														{{$loop2514->getItemEscape("price/@points")}}
													{{/if}}
												{{/capture}}
												{{capture name="var_value" assign="var_value"}}
													{{if  $loop2514->getItem("product")}}
														{{$loop2514->getItemEscape("product/price/@size_min")}}
													{{else}}
														{{$loop2514->getItemEscape("price/@size_min")}}
													{{/if}}
												{{/capture}}
												{{capture name="var_price_formatted" assign="var_price_formatted"}}
													{{if  $loop2514->getItem("price/@price_unit_formatted") and  $loop2514->getItem("sizes/@unit")}}
														{{$loop2514->getItemEscape("price/@price_unit_formatted")}}{{literal}}/{{/literal}}{{$loop2514->getItemEscape("sizes/@unit_sellby")}}{{literal}}{{/literal}}{{$loop2514->getItemEscape("sizes/@unit")}}
													{{elseif  $loop2514->getItem("product/price/@price_unit_formatted") and  $loop2514->getItem("product/sizes/@unit")}}
														{{$loop2514->getItemEscape("product/price/@price_unit_formatted")}}{{literal}}/{{/literal}}{{$loop2514->getItemEscape("product/sizes/@unit_sellby")}}{{literal}}{{/literal}}{{$loop2514->getItemEscape("product/sizes/@unit")}}
													{{else}}
														{{$var_size_min_formatted}}
													{{/if}}
												{{/capture}}
												{{capture name="var_maxprice_formatted" assign="var_maxprice_formatted"}}
													{{if  $loop2514->getItem("price/@maxprice_unit_formatted")}}
														{{$loop2514->getItemEscape("price/@maxprice_unit_formatted")}}
													{{elseif  $loop2514->getItem("product/price/@maxprice_unit_formatted")}}
														{{$loop2514->getItemEscape("product/price/@maxprice_unit_formatted")}}
													{{elseif  $loop2514->getItem("product")}}
														{{$loop2514->getItemEscape("product/price/@maxprice_formatted")}}
													{{else}}
														{{$loop2514->getItemEscape("price/@maxprice_formatted")}}
													{{/if}}
												{{/capture}}
												{{capture name="var_size_min_maxprice_formatted" assign="var_size_min_maxprice_formatted"}}
													{{if  $loop2514->getItem("product")}}
														{{$loop2514->getItemEscape("product/price/@size_min_maxprice_formatted")}}
													{{else}}
														{{$loop2514->getItemEscape("price/@size_min_maxprice_formatted")}}
													{{/if}}
												{{/capture}}
												{{capture name="var_size_max_maxprice_formatted" assign="var_size_max_maxprice_formatted"}}
													{{if  $loop2514->getItem("product")}}
														{{$loop2514->getItemEscape("product/price/@size_max_maxprice_formatted")}}
													{{else}}
														{{$loop2514->getItemEscape("price/@size_max_maxprice_formatted")}}
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
																<span class="currency">{{$txt['102148::58826_012']}}</span></span>
														{{/if}}
													{{elseif ($var_value  == (string) 0) and $var_points  == (string) ''}}
														<a class="fon_price" data-mobile-class="btn-small" title="{{$txt['102148::58826_009']}}" href="{{$loop2514->getItemEscape("/shop/contact/link/@url")}}">{{$txt['102148::58826_010']}}</a>
													{{else}}
														<span class="price">{{$txt['102148::58826_003']}}{{$var_price_formatted}}</span>
														{{if $var_maxprice_formatted  neq (string) ''}}
															<del class="max-price">{{$txt['102148::58826_006']}}{{$var_maxprice_formatted}}</del>
														{{/if}}
														{{if $var_points  neq (string) ''}}
															<span class="point-price">{{$var_points}}
																<span class="currency">{{$txt['102148::58826_012']}}</span></span>
														{{/if}}
													{{/if}}
													{{if  $loop2514->getItem("price/@unit_converted_price_formatted")}}
														<small class="s_unit_converted_price">{{$loop2514->getItemEscape("price/@unit_converted_price_formatted")}}{{literal}}/{{/literal}}{{$loop2514->getItemEscape("price/@unit_converted_format")}}</small>
													{{/if}}
												</div>
												{{if  $loop2514->getItem("sizes/size/@type")  == (string) 'uniw'}}
													<form action="/basketchange.php" method="post">
														<input type="hidden" name="product" value="{{$loop2514->getItemEscape("@id")}}"></input>
														<input type="hidden" value="uniw" name="size"/>
														<input type="hidden" value="1" name="number"/>
														<button type="submit" class="btn">{{$txt['102148::352412_1_addtobasket']}}
														</button>
													</form>
												{{else}}
													<div class="basket_buttons_container">
														<button type="submit" class="btn show_sizes_toplayer">{{$txt['102148::352412_1_addtobasket']}}
														</button>
														<div class="product_size_list">
															<h3>{{$txt['102148::6346345_choosesize']}}
															</h3>
															<form action="/basketchange.php" method="post">
																<input type="hidden" name="product" value="{{$loop2514->getItemEscape("@id")}}"></input>
																<select name="size">
																	{{foreach from=$loop2514->getList("sizes/size") item=loop2610}}
																		<option value="{{$loop2610->getItemEscape("@type")}}">{{$loop2610->getItemEscape("@name")}}
																		</option>
																	{{/foreach}}
																</select>
																<input type="hidden" value="1" name="number"/>
																<button type="submit" class="btn">{{$txt['102148::352412_1_addtobasket']}}
																</button>
															</form>
														</div>
													</div>
												{{/if}}
												{{if  $loop2514->getItem("client/@client")}}
													<div class="client">{{$loop2514->getItem("client/@client")}}
													</div>
												{{/if}}
												{{if  $loop2514->getItem("@note")}}
													<div class="note">
														<span>
															<i {{assign "classAttributeTmp46" ""}}{{capture name="classAttributeTmp46" assign="classAttributeTmp46"}}icon-star{{/capture}}{{if $loop2514->getItem("@note") gt (string) 0.5}}{{capture name="classAttributeTmp46" assign="classAttributeTmp46"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp46}}"></i>
															<i {{assign "classAttributeTmp47" ""}}{{capture name="classAttributeTmp47" assign="classAttributeTmp47"}}icon-star{{/capture}}{{if $loop2514->getItem("@note") gt (string) 1.5}}{{capture name="classAttributeTmp47" assign="classAttributeTmp47"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp47}}"></i>
															<i {{assign "classAttributeTmp48" ""}}{{capture name="classAttributeTmp48" assign="classAttributeTmp48"}}icon-star{{/capture}}{{if $loop2514->getItem("@note") gt (string) 2.5}}{{capture name="classAttributeTmp48" assign="classAttributeTmp48"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp48}}"></i>
															<i {{assign "classAttributeTmp49" ""}}{{capture name="classAttributeTmp49" assign="classAttributeTmp49"}}icon-star{{/capture}}{{if $loop2514->getItem("@note") gt (string) 3.5}}{{capture name="classAttributeTmp49" assign="classAttributeTmp49"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp49}}"></i>
															<i {{assign "classAttributeTmp50" ""}}{{capture name="classAttributeTmp50" assign="classAttributeTmp50"}}icon-star{{/capture}}{{if $loop2514->getItem("@note") gt (string) 4.5}}{{capture name="classAttributeTmp50" assign="classAttributeTmp50"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp50}}"></i></span>
														<small>{{$txt['102148::58826_oc']}}{{$loop2514->getItem("@note")}}{{$txt['102148::58826_oce']}}</small>
													</div>
												{{/if}}
												{{if  $loop2514->getItem("content")}}
													<div class="cleardescription">{{$loop2514->getItem("content")}}
													</div>
												{{/if}}
											</div>
										{{/foreach}}
									</div>
								</div>
							{{else}}
								data-ajaxload="true"data-pagetype="projector"
							{{/if}}
						</div>
					{{/if}}
					<iaiajaxend/>
					<!--Produkty powiązane z tym produktem - strefa 2 (projector_associated_zone2, 102149.1)-->
					<iaiajaxstart iai-ajax-id="projector_associated_zone2" iai-ajax-generated="true"/>
					{{if  $xml->getItem("page/projector/products_associated_zone2")}}
						<div class="main_hotspot mrg-b clearfix" id="products_associated_zone2">
							{{if  $xml->getItem("page/projector/products_associated_zone2/product") or  $xml->getItem("page/projector/products_associated_zone2/opinion")}}
								<h2>
									<span class="big_label">
										{{if  $xml->getItem("page/projector/products_associated_zone2/@name")}}
											{{$xml->getItemEscape("page/projector/products_associated_zone2/@name")}}
										{{else}}
											{{$txt['102149::58826_label']}}
										{{/if}}
										{{$txt['102149::58826_label-after']}}</span>
								</h2>
								<div class="col-bg-1 align_row main_hotspot_sub" data-align="a.product-icon img#css">
									<div {{assign "classAttributeTmp51" ""}}{{capture name="classAttributeTmp51" assign="classAttributeTmp51"}}products_wrapper row clearfix{{/capture}} data-column="{{$txt['102149::7487444_hotspot_column']}}" data-wrapType="{{$txt['102149::7487444_hotspot_wrapType']}}" {{if (count( $xml->getList("page/projector/products_associated_zone2/product")) == (string) 1) or (count( $xml->getList("page/projector/products_associated_zone2/opinion")) == (string) 1)}}{{capture name="classAttributeTmp51" assign="classAttributeTmp51"}}products_wrapper row clearfix col-md-3 col-xs-6{{/capture}}{{/if}}{{if (count( $xml->getList("page/projector/products_associated_zone2/product")) == (string) 2) or (count( $xml->getList("page/projector/products_associated_zone2/opinion")) == (string) 2)}}{{capture name="classAttributeTmp51" assign="classAttributeTmp51"}}products_wrapper row clearfix col-md-6 col-xs-12{{/capture}}{{/if}}   class="{{$classAttributeTmp51}}">
										{{foreach from=$xml->getList("page/projector/products_associated_zone2/*") item=loop2693}}
											{{capture name="var_name" assign="var_name"}}
												{{if  $loop2693->getItem("product")}}
													{{$loop2693->getItem("product/name/text()")}}
												{{else}}
													{{$loop2693->getItem("name/text()")}}
												{{/if}}
											{{/capture}}
											{{capture name="var_icon" assign="var_icon"}}
												{{if  $loop2693->getItem("product")}}
													{{$loop2693->getItemEscape("product/icon")}}
												{{else}}
													{{$loop2693->getItemEscape("icon")}}
												{{/if}}
											{{/capture}}
											{{capture name="var_icon_small" assign="var_icon_small"}}
												{{if  $loop2693->getItem("product")}}
													{{$loop2693->getItemEscape("product/icon_small")}}
												{{else}}
													{{$loop2693->getItemEscape("icon_small")}}
												{{/if}}
											{{/capture}}
											{{capture name="var_link" assign="var_link"}}
												{{if  $loop2693->getItem("product")}}
													{{$loop2693->getItemEscape("product/@link")}}
												{{else}}
													{{$loop2693->getItemEscape("@link")}}
												{{/if}}
											{{/capture}}
											<div {{assign "classAttributeTmp52" ""}}{{capture name="classAttributeTmp52" assign="classAttributeTmp52"}}product_wrapper col-md-3 col-xs-6{{/capture}}{{capture name="classAttributeTmp52" assign="classAttributeTmp52"}}{{$txt['102149::product_wrapper_col']}} type_{{$loop2693->getItemEscape("name(.)")}}{{/capture}}  class="{{$classAttributeTmp52}}">
												<a class="product-icon" href="{{$var_link}}" title="{{$var_name}}" data-product-id="{{$loop2693->getItemEscape("@id")}}">
													<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/loader.gif?r=1570606529" class="b-lazy" data-src-small="{{$loop2693->getItem("$var_icon_small")}}" data-src="{{$loop2693->getItem("$var_icon")}}" alt="{{$loop2693->getItem("$var_name")}}"></img></a>
												<h3>
													<a class="product-name" href="{{$var_link}}" title="{{$var_name}}">{{$var_name}}</a>
												</h3>
												{{capture name="var_size_min_formatted" assign="var_size_min_formatted"}}
													{{if  $loop2693->getItem("product")}}
														{{$loop2693->getItemEscape("product/price/@size_min_formatted")}}
													{{else}}
														{{$loop2693->getItemEscape("price/@size_min_formatted")}}
													{{/if}}
												{{/capture}}
												{{capture name="var_size_max_formatted" assign="var_size_max_formatted"}}
													{{if  $loop2693->getItem("product")}}
														{{$loop2693->getItemEscape("product/price/@size_max_formatted")}}
													{{else}}
														{{$loop2693->getItemEscape("price/@size_max_formatted")}}
													{{/if}}
												{{/capture}}
												{{capture name="var_points" assign="var_points"}}
													{{if  $loop2693->getItem("product")}}
														{{$loop2693->getItemEscape("product/price/@points")}}
													{{else}}
														{{$loop2693->getItemEscape("price/@points")}}
													{{/if}}
												{{/capture}}
												{{capture name="var_value" assign="var_value"}}
													{{if  $loop2693->getItem("product")}}
														{{$loop2693->getItemEscape("product/price/@size_min")}}
													{{else}}
														{{$loop2693->getItemEscape("price/@size_min")}}
													{{/if}}
												{{/capture}}
												{{capture name="var_price_formatted" assign="var_price_formatted"}}
													{{if  $loop2693->getItem("price/@price_unit_formatted") and  $loop2693->getItem("sizes/@unit")}}
														{{$loop2693->getItemEscape("price/@price_unit_formatted")}}{{literal}}/{{/literal}}{{$loop2693->getItemEscape("sizes/@unit_sellby")}}{{literal}}{{/literal}}{{$loop2693->getItemEscape("sizes/@unit")}}
													{{elseif  $loop2693->getItem("product/price/@price_unit_formatted") and  $loop2693->getItem("product/sizes/@unit")}}
														{{$loop2693->getItemEscape("product/price/@price_unit_formatted")}}{{literal}}/{{/literal}}{{$loop2693->getItemEscape("product/sizes/@unit_sellby")}}{{literal}}{{/literal}}{{$loop2693->getItemEscape("product/sizes/@unit")}}
													{{else}}
														{{$var_size_min_formatted}}
													{{/if}}
												{{/capture}}
												{{capture name="var_maxprice_formatted" assign="var_maxprice_formatted"}}
													{{if  $loop2693->getItem("price/@maxprice_unit_formatted")}}
														{{$loop2693->getItemEscape("price/@maxprice_unit_formatted")}}
													{{elseif  $loop2693->getItem("product/price/@maxprice_unit_formatted")}}
														{{$loop2693->getItemEscape("product/price/@maxprice_unit_formatted")}}
													{{elseif  $loop2693->getItem("product")}}
														{{$loop2693->getItemEscape("product/price/@maxprice_formatted")}}
													{{else}}
														{{$loop2693->getItemEscape("price/@maxprice_formatted")}}
													{{/if}}
												{{/capture}}
												{{capture name="var_size_min_maxprice_formatted" assign="var_size_min_maxprice_formatted"}}
													{{if  $loop2693->getItem("product")}}
														{{$loop2693->getItemEscape("product/price/@size_min_maxprice_formatted")}}
													{{else}}
														{{$loop2693->getItemEscape("price/@size_min_maxprice_formatted")}}
													{{/if}}
												{{/capture}}
												{{capture name="var_size_max_maxprice_formatted" assign="var_size_max_maxprice_formatted"}}
													{{if  $loop2693->getItem("product")}}
														{{$loop2693->getItemEscape("product/price/@size_max_maxprice_formatted")}}
													{{else}}
														{{$loop2693->getItemEscape("price/@size_max_maxprice_formatted")}}
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
																<span class="currency">{{$txt['102149::58826_012']}}</span></span>
														{{/if}}
													{{elseif ($var_value  == (string) 0) and $var_points  == (string) ''}}
														<a class="fon_price" data-mobile-class="btn-small" title="{{$txt['102149::58826_009']}}" href="{{$loop2693->getItemEscape("/shop/contact/link/@url")}}">{{$txt['102149::58826_010']}}</a>
													{{else}}
														<span class="price">{{$txt['102149::58826_003']}}{{$var_price_formatted}}</span>
														{{if $var_maxprice_formatted  neq (string) ''}}
															<del class="max-price">{{$txt['102149::58826_006']}}{{$var_maxprice_formatted}}</del>
														{{/if}}
														{{if $var_points  neq (string) ''}}
															<span class="point-price">{{$var_points}}
																<span class="currency">{{$txt['102149::58826_012']}}</span></span>
														{{/if}}
													{{/if}}
													{{if  $loop2693->getItem("price/@unit_converted_price_formatted")}}
														<small class="s_unit_converted_price">{{$loop2693->getItemEscape("price/@unit_converted_price_formatted")}}{{literal}}/{{/literal}}{{$loop2693->getItemEscape("price/@unit_converted_format")}}</small>
													{{/if}}
												</div>
												{{if  $loop2693->getItem("sizes/size/@type")  == (string) 'uniw'}}
													<form action="/basketchange.php" method="post">
														<input type="hidden" name="product" value="{{$loop2693->getItemEscape("@id")}}"></input>
														<input type="hidden" value="uniw" name="size"/>
														<input type="hidden" value="1" name="number"/>
														<button type="submit" class="btn">{{$txt['102149::352412_1_addtobasket']}}
														</button>
													</form>
												{{else}}
													<div class="basket_buttons_container">
														<button type="submit" class="btn show_sizes_toplayer">{{$txt['102149::352412_1_addtobasket']}}
														</button>
														<div class="product_size_list">
															<h3>{{$txt['102149::6346345_choosesize']}}
															</h3>
															<form action="/basketchange.php" method="post">
																<input type="hidden" name="product" value="{{$loop2693->getItemEscape("@id")}}"></input>
																<select name="size">
																	{{foreach from=$loop2693->getList("sizes/size") item=loop2789}}
																		<option value="{{$loop2789->getItemEscape("@type")}}">{{$loop2789->getItemEscape("@name")}}
																		</option>
																	{{/foreach}}
																</select>
																<input type="hidden" value="1" name="number"/>
																<button type="submit" class="btn">{{$txt['102149::352412_1_addtobasket']}}
																</button>
															</form>
														</div>
													</div>
												{{/if}}
												{{if  $loop2693->getItem("client/@client")}}
													<div class="client">{{$loop2693->getItem("client/@client")}}
													</div>
												{{/if}}
												{{if  $loop2693->getItem("@note")}}
													<div class="note">
														<span>
															<i {{assign "classAttributeTmp53" ""}}{{capture name="classAttributeTmp53" assign="classAttributeTmp53"}}icon-star{{/capture}}{{if $loop2693->getItem("@note") gt (string) 0.5}}{{capture name="classAttributeTmp53" assign="classAttributeTmp53"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp53}}"></i>
															<i {{assign "classAttributeTmp54" ""}}{{capture name="classAttributeTmp54" assign="classAttributeTmp54"}}icon-star{{/capture}}{{if $loop2693->getItem("@note") gt (string) 1.5}}{{capture name="classAttributeTmp54" assign="classAttributeTmp54"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp54}}"></i>
															<i {{assign "classAttributeTmp55" ""}}{{capture name="classAttributeTmp55" assign="classAttributeTmp55"}}icon-star{{/capture}}{{if $loop2693->getItem("@note") gt (string) 2.5}}{{capture name="classAttributeTmp55" assign="classAttributeTmp55"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp55}}"></i>
															<i {{assign "classAttributeTmp56" ""}}{{capture name="classAttributeTmp56" assign="classAttributeTmp56"}}icon-star{{/capture}}{{if $loop2693->getItem("@note") gt (string) 3.5}}{{capture name="classAttributeTmp56" assign="classAttributeTmp56"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp56}}"></i>
															<i {{assign "classAttributeTmp57" ""}}{{capture name="classAttributeTmp57" assign="classAttributeTmp57"}}icon-star{{/capture}}{{if $loop2693->getItem("@note") gt (string) 4.5}}{{capture name="classAttributeTmp57" assign="classAttributeTmp57"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp57}}"></i></span>
														<small>{{$txt['102149::58826_oc']}}{{$loop2693->getItem("@note")}}{{$txt['102149::58826_oce']}}</small>
													</div>
												{{/if}}
												{{if  $loop2693->getItem("content")}}
													<div class="cleardescription">{{$loop2693->getItem("content")}}
													</div>
												{{/if}}
											</div>
										{{/foreach}}
									</div>
								</div>
							{{else}}
								data-ajaxLoad="true"data-pageType="projector"
							{{/if}}
						</div>
					{{/if}}
					<iaiajaxend/>
					<!--Produkty powiązane z tym produktem - strefa 3 (projector_associated_zone3, 102150.1)-->
					<iaiajaxstart iai-ajax-id="projector_associated_zone3" iai-ajax-generated="true"/>
					{{if  $xml->getItem("page/projector/products_associated_zone3")}}
						<div class="main_hotspot mrg-b clearfix" id="products_associated_zone3">
							{{if  $xml->getItem("page/projector/products_associated_zone3/product") or  $xml->getItem("page/projector/products_associated_zone3/opinion")}}
								<h2>
									<span class="big_label">
										{{if  $xml->getItem("page/projector/products_associated_zone3/@name")}}
											{{$xml->getItemEscape("page/projector/products_associated_zone3/@name")}}
										{{else}}
											{{$txt['102150::58826_label']}}
										{{/if}}
										{{$txt['102150::58826_label-after']}}</span>
								</h2>
								<div class="col-bg-1 align_row main_hotspot_sub" data-align="a.product-icon img#css">
									<div {{assign "classAttributeTmp58" ""}}{{capture name="classAttributeTmp58" assign="classAttributeTmp58"}}products_wrapper row clearfix{{/capture}} data-column="{{$txt['102150::7487444_hotspot_column']}}" data-wrapType="{{$txt['102150::7487444_hotspot_wrapType']}}" {{if (count( $xml->getList("page/projector/products_associated_zone3/product")) == (string) 1) or (count( $xml->getList("page/projector/products_associated_zone3/opinion")) == (string) 1)}}{{capture name="classAttributeTmp58" assign="classAttributeTmp58"}}products_wrapper row clearfix col-md-3 col-xs-6{{/capture}}{{/if}}{{if (count( $xml->getList("page/projector/products_associated_zone3/product")) == (string) 2) or (count( $xml->getList("page/projector/products_associated_zone3/opinion")) == (string) 2)}}{{capture name="classAttributeTmp58" assign="classAttributeTmp58"}}products_wrapper row clearfix col-md-6 col-xs-12{{/capture}}{{/if}}   class="{{$classAttributeTmp58}}">
										{{foreach from=$xml->getList("page/projector/products_associated_zone3/*") item=loop2872}}
											{{capture name="var_name" assign="var_name"}}
												{{if  $loop2872->getItem("product")}}
													{{$loop2872->getItem("product/name/text()")}}
												{{else}}
													{{$loop2872->getItem("name/text()")}}
												{{/if}}
											{{/capture}}
											{{capture name="var_icon" assign="var_icon"}}
												{{if  $loop2872->getItem("product")}}
													{{$loop2872->getItemEscape("product/icon")}}
												{{else}}
													{{$loop2872->getItemEscape("icon")}}
												{{/if}}
											{{/capture}}
											{{capture name="var_icon_small" assign="var_icon_small"}}
												{{if  $loop2872->getItem("product")}}
													{{$loop2872->getItemEscape("product/icon_small")}}
												{{else}}
													{{$loop2872->getItemEscape("icon_small")}}
												{{/if}}
											{{/capture}}
											{{capture name="var_link" assign="var_link"}}
												{{if  $loop2872->getItem("product")}}
													{{$loop2872->getItemEscape("product/@link")}}
												{{else}}
													{{$loop2872->getItemEscape("@link")}}
												{{/if}}
											{{/capture}}
											<div {{assign "classAttributeTmp59" ""}}{{capture name="classAttributeTmp59" assign="classAttributeTmp59"}}product_wrapper col-md-3 col-xs-6{{/capture}}{{capture name="classAttributeTmp59" assign="classAttributeTmp59"}}{{$txt['102150::product_wrapper_col']}} type_{{$loop2872->getItemEscape("name(.)")}}{{/capture}}  class="{{$classAttributeTmp59}}">
												<a class="product-icon" href="{{$var_link}}" title="{{$var_name}}" data-product-id="{{$loop2872->getItemEscape("@id")}}">
													<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/loader.gif?r=1570606529" class="b-lazy" data-src-small="{{$loop2872->getItem("$var_icon_small")}}" data-src="{{$loop2872->getItem("$var_icon")}}" alt="{{$loop2872->getItem("$var_name")}}"></img></a>
												<h3>
													<a class="product-name" href="{{$var_link}}" title="{{$var_name}}">{{$var_name}}</a>
												</h3>
												{{capture name="var_size_min_formatted" assign="var_size_min_formatted"}}
													{{if  $loop2872->getItem("product")}}
														{{$loop2872->getItemEscape("product/price/@size_min_formatted")}}
													{{else}}
														{{$loop2872->getItemEscape("price/@size_min_formatted")}}
													{{/if}}
												{{/capture}}
												{{capture name="var_size_max_formatted" assign="var_size_max_formatted"}}
													{{if  $loop2872->getItem("product")}}
														{{$loop2872->getItemEscape("product/price/@size_max_formatted")}}
													{{else}}
														{{$loop2872->getItemEscape("price/@size_max_formatted")}}
													{{/if}}
												{{/capture}}
												{{capture name="var_points" assign="var_points"}}
													{{if  $loop2872->getItem("product")}}
														{{$loop2872->getItemEscape("product/price/@points")}}
													{{else}}
														{{$loop2872->getItemEscape("price/@points")}}
													{{/if}}
												{{/capture}}
												{{capture name="var_value" assign="var_value"}}
													{{if  $loop2872->getItem("product")}}
														{{$loop2872->getItemEscape("product/price/@size_min")}}
													{{else}}
														{{$loop2872->getItemEscape("price/@size_min")}}
													{{/if}}
												{{/capture}}
												{{capture name="var_price_formatted" assign="var_price_formatted"}}
													{{if  $loop2872->getItem("price/@price_unit_formatted") and  $loop2872->getItem("sizes/@unit")}}
														{{$loop2872->getItemEscape("price/@price_unit_formatted")}}{{literal}}/{{/literal}}{{$loop2872->getItemEscape("sizes/@unit_sellby")}}{{literal}}{{/literal}}{{$loop2872->getItemEscape("sizes/@unit")}}
													{{elseif  $loop2872->getItem("product/price/@price_unit_formatted") and  $loop2872->getItem("product/sizes/@unit")}}
														{{$loop2872->getItemEscape("product/price/@price_unit_formatted")}}{{literal}}/{{/literal}}{{$loop2872->getItemEscape("product/sizes/@unit_sellby")}}{{literal}}{{/literal}}{{$loop2872->getItemEscape("product/sizes/@unit")}}
													{{else}}
														{{$var_size_min_formatted}}
													{{/if}}
												{{/capture}}
												{{capture name="var_maxprice_formatted" assign="var_maxprice_formatted"}}
													{{if  $loop2872->getItem("price/@maxprice_unit_formatted")}}
														{{$loop2872->getItemEscape("price/@maxprice_unit_formatted")}}
													{{elseif  $loop2872->getItem("product/price/@maxprice_unit_formatted")}}
														{{$loop2872->getItemEscape("product/price/@maxprice_unit_formatted")}}
													{{elseif  $loop2872->getItem("product")}}
														{{$loop2872->getItemEscape("product/price/@maxprice_formatted")}}
													{{else}}
														{{$loop2872->getItemEscape("price/@maxprice_formatted")}}
													{{/if}}
												{{/capture}}
												{{capture name="var_size_min_maxprice_formatted" assign="var_size_min_maxprice_formatted"}}
													{{if  $loop2872->getItem("product")}}
														{{$loop2872->getItemEscape("product/price/@size_min_maxprice_formatted")}}
													{{else}}
														{{$loop2872->getItemEscape("price/@size_min_maxprice_formatted")}}
													{{/if}}
												{{/capture}}
												{{capture name="var_size_max_maxprice_formatted" assign="var_size_max_maxprice_formatted"}}
													{{if  $loop2872->getItem("product")}}
														{{$loop2872->getItemEscape("product/price/@size_max_maxprice_formatted")}}
													{{else}}
														{{$loop2872->getItemEscape("price/@size_max_maxprice_formatted")}}
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
																<span class="currency">{{$txt['102150::58826_012']}}</span></span>
														{{/if}}
													{{elseif ($var_value  == (string) 0) and $var_points  == (string) ''}}
														<a class="fon_price" data-mobile-class="btn-small" title="{{$txt['102150::58826_009']}}" href="{{$loop2872->getItemEscape("/shop/contact/link/@url")}}">{{$txt['102150::58826_010']}}</a>
													{{else}}
														<span class="price">{{$txt['102150::58826_003']}}{{$var_price_formatted}}</span>
														{{if $var_maxprice_formatted  neq (string) ''}}
															<del class="max-price">{{$txt['102150::58826_006']}}{{$var_maxprice_formatted}}</del>
														{{/if}}
														{{if $var_points  neq (string) ''}}
															<span class="point-price">{{$var_points}}
																<span class="currency">{{$txt['102150::58826_012']}}</span></span>
														{{/if}}
													{{/if}}
													{{if  $loop2872->getItem("price/@unit_converted_price_formatted")}}
														<small class="s_unit_converted_price">{{$loop2872->getItemEscape("price/@unit_converted_price_formatted")}}{{literal}}/{{/literal}}{{$loop2872->getItemEscape("price/@unit_converted_format")}}</small>
													{{/if}}
												</div>
												{{if  $loop2872->getItem("sizes/size/@type")  == (string) 'uniw'}}
													<form action="/basketchange.php" method="post">
														<input type="hidden" name="product" value="{{$loop2872->getItemEscape("@id")}}"></input>
														<input type="hidden" value="uniw" name="size"/>
														<input type="hidden" value="1" name="number"/>
														<button type="submit" class="btn">{{$txt['102150::352412_1_addtobasket']}}
														</button>
													</form>
												{{else}}
													<div class="basket_buttons_container">
														<button type="submit" class="btn show_sizes_toplayer">{{$txt['102150::352412_1_addtobasket']}}
														</button>
														<div class="product_size_list">
															<h3>{{$txt['102150::6346345_choosesize']}}
															</h3>
															<form action="/basketchange.php" method="post">
																<input type="hidden" name="product" value="{{$loop2872->getItemEscape("@id")}}"></input>
																<select name="size">
																	{{foreach from=$loop2872->getList("sizes/size") item=loop2969}}
																		<option value="{{$loop2969->getItemEscape("@type")}}">{{$loop2969->getItemEscape("@name")}}
																		</option>
																	{{/foreach}}
																</select>
																<input type="hidden" value="1" name="number"/>
																<button type="submit" class="btn">{{$txt['102150::352412_1_addtobasket']}}
																</button>
															</form>
														</div>
													</div>
												{{/if}}
												{{if  $loop2872->getItem("client/@client")}}
													<div class="client">{{$loop2872->getItem("client/@client")}}
													</div>
												{{/if}}
												{{if  $loop2872->getItem("@note")}}
													<div class="note">
														<span>
															<i {{assign "classAttributeTmp60" ""}}{{capture name="classAttributeTmp60" assign="classAttributeTmp60"}}icon-star{{/capture}}{{if $loop2872->getItem("@note") gt (string) 0.5}}{{capture name="classAttributeTmp60" assign="classAttributeTmp60"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp60}}"></i>
															<i {{assign "classAttributeTmp61" ""}}{{capture name="classAttributeTmp61" assign="classAttributeTmp61"}}icon-star{{/capture}}{{if $loop2872->getItem("@note") gt (string) 1.5}}{{capture name="classAttributeTmp61" assign="classAttributeTmp61"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp61}}"></i>
															<i {{assign "classAttributeTmp62" ""}}{{capture name="classAttributeTmp62" assign="classAttributeTmp62"}}icon-star{{/capture}}{{if $loop2872->getItem("@note") gt (string) 2.5}}{{capture name="classAttributeTmp62" assign="classAttributeTmp62"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp62}}"></i>
															<i {{assign "classAttributeTmp63" ""}}{{capture name="classAttributeTmp63" assign="classAttributeTmp63"}}icon-star{{/capture}}{{if $loop2872->getItem("@note") gt (string) 3.5}}{{capture name="classAttributeTmp63" assign="classAttributeTmp63"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp63}}"></i>
															<i {{assign "classAttributeTmp64" ""}}{{capture name="classAttributeTmp64" assign="classAttributeTmp64"}}icon-star{{/capture}}{{if $loop2872->getItem("@note") gt (string) 4.5}}{{capture name="classAttributeTmp64" assign="classAttributeTmp64"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp64}}"></i></span>
														<small>{{$txt['102150::58826_oc']}}{{$loop2872->getItem("@note")}}{{$txt['102150::58826_oce']}}</small>
													</div>
												{{/if}}
												{{if  $loop2872->getItem("content")}}
													<div class="cleardescription">{{$loop2872->getItem("content")}}
													</div>
												{{/if}}
											</div>
										{{/foreach}}
									</div>
								</div>
							{{else}}
								data-ajaxLoad="true"data-pageType="projector"
							{{/if}}
						</div>
					{{/if}}
					<iaiajaxend/>
					<!--Produkty powiązane z tym produktem - strefa 4 (projector_associated_zone4, 102151.1)-->
					<iaiajaxstart iai-ajax-id="projector_associated_zone4" iai-ajax-generated="true"/>
					{{if  $xml->getItem("page/projector/products_associated_zone4")}}
						<div class="main_hotspot mrg-b clearfix" id="products_associated_zone4">
							{{if  $xml->getItem("page/projector/products_associated_zone4/product") or  $xml->getItem("page/projector/products_associated_zone4/opinion")}}
								<div class="big_label">
									{{if  $xml->getItem("page/projector/products_associated_zone4/@name")}}
										{{$xml->getItemEscape("page/projector/products_associated_zone4/@name")}}
									{{else}}
										{{$txt['102151::58826_label']}}
									{{/if}}
									{{$txt['102151::58826_label-after']}}
								</div>
								<div class="col-bg-1 align_row main_hotspot_sub" data-align="a.product-icon img#css">
									<div {{assign "classAttributeTmp65" ""}}{{capture name="classAttributeTmp65" assign="classAttributeTmp65"}}products_wrapper row clearfix{{/capture}} data-column="{{$txt['102151::7487444_hotspot_column']}}" data-wrapType="{{$txt['102151::7487444_hotspot_wrapType']}}" {{if (count( $xml->getList("page/projector/products_associated_zone4/product")) == (string) 1) or (count( $xml->getList("page/projector/products_associated_zone4/opinion")) == (string) 1)}}{{capture name="classAttributeTmp65" assign="classAttributeTmp65"}}products_wrapper row clearfix col-md-3 col-xs-6{{/capture}}{{/if}}{{if (count( $xml->getList("page/projector/products_associated_zone4/product")) == (string) 2) or (count( $xml->getList("page/projector/products_associated_zone4/opinion")) == (string) 2)}}{{capture name="classAttributeTmp65" assign="classAttributeTmp65"}}products_wrapper row clearfix col-md-6 col-xs-12{{/capture}}{{/if}}   class="{{$classAttributeTmp65}}">
										{{foreach from=$xml->getList("page/projector/products_associated_zone4/*") item=loop3050}}
											{{capture name="var_name" assign="var_name"}}
												{{if  $loop3050->getItem("product")}}
													{{$loop3050->getItem("product/name/text()")}}
												{{else}}
													{{$loop3050->getItem("name/text()")}}
												{{/if}}
											{{/capture}}
											{{capture name="var_icon" assign="var_icon"}}
												{{if  $loop3050->getItem("product")}}
													{{$loop3050->getItemEscape("product/icon")}}
												{{else}}
													{{$loop3050->getItemEscape("icon")}}
												{{/if}}
											{{/capture}}
											{{capture name="var_icon_small" assign="var_icon_small"}}
												{{if  $loop3050->getItem("product")}}
													{{$loop3050->getItemEscape("product/icon_small")}}
												{{else}}
													{{$loop3050->getItemEscape("icon_small")}}
												{{/if}}
											{{/capture}}
											{{capture name="var_link" assign="var_link"}}
												{{if  $loop3050->getItem("product")}}
													{{$loop3050->getItemEscape("product/@link")}}
												{{else}}
													{{$loop3050->getItemEscape("@link")}}
												{{/if}}
											{{/capture}}
											<div {{assign "classAttributeTmp66" ""}}{{capture name="classAttributeTmp66" assign="classAttributeTmp66"}}product_wrapper col-md-3 col-xs-6{{/capture}}{{capture name="classAttributeTmp66" assign="classAttributeTmp66"}}{{$txt['102151::product_wrapper_col']}} type_{{$loop3050->getItemEscape("name(.)")}}{{/capture}}  class="{{$classAttributeTmp66}}">
												<a class="product-icon" href="{{$var_link}}" title="{{$var_name}}" data-product-id="{{$loop3050->getItemEscape("@id")}}">
													<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/loader.gif?r=1570606529" class="b-lazy" data-src-small="{{$loop3050->getItem("$var_icon_small")}}" data-src="{{$loop3050->getItem("$var_icon")}}" alt="{{$loop3050->getItem("$var_name")}}"></img></a>
												<a class="product-name" href="{{$var_link}}" title="{{$var_name}}">{{$var_name}}</a>
												{{capture name="var_size_min_formatted" assign="var_size_min_formatted"}}
													{{if  $loop3050->getItem("product")}}
														{{$loop3050->getItemEscape("product/price/@size_min_formatted")}}
													{{else}}
														{{$loop3050->getItemEscape("price/@size_min_formatted")}}
													{{/if}}
												{{/capture}}
												{{capture name="var_size_max_formatted" assign="var_size_max_formatted"}}
													{{if  $loop3050->getItem("product")}}
														{{$loop3050->getItemEscape("product/price/@size_max_formatted")}}
													{{else}}
														{{$loop3050->getItemEscape("price/@size_max_formatted")}}
													{{/if}}
												{{/capture}}
												{{capture name="var_points" assign="var_points"}}
													{{if  $loop3050->getItem("product")}}
														{{$loop3050->getItemEscape("product/price/@points")}}
													{{else}}
														{{$loop3050->getItemEscape("price/@points")}}
													{{/if}}
												{{/capture}}
												{{capture name="var_value" assign="var_value"}}
													{{if  $loop3050->getItem("product")}}
														{{$loop3050->getItemEscape("product/price/@size_min")}}
													{{else}}
														{{$loop3050->getItemEscape("price/@size_min")}}
													{{/if}}
												{{/capture}}
												{{capture name="var_price_formatted" assign="var_price_formatted"}}
													{{if  $loop3050->getItem("price/@price_unit_formatted") and  $loop3050->getItem("sizes/@unit")}}
														{{$loop3050->getItemEscape("price/@price_unit_formatted")}}{{literal}}/{{/literal}}{{$loop3050->getItemEscape("sizes/@unit_sellby")}}{{literal}}{{/literal}}{{$loop3050->getItemEscape("sizes/@unit")}}
													{{elseif  $loop3050->getItem("product/price/@price_unit_formatted") and  $loop3050->getItem("product/sizes/@unit")}}
														{{$loop3050->getItemEscape("product/price/@price_unit_formatted")}}{{literal}}/{{/literal}}{{$loop3050->getItemEscape("product/sizes/@unit_sellby")}}{{literal}}{{/literal}}{{$loop3050->getItemEscape("product/sizes/@unit")}}
													{{else}}
														{{$var_size_min_formatted}}
													{{/if}}
												{{/capture}}
												{{capture name="var_maxprice_formatted" assign="var_maxprice_formatted"}}
													{{if  $loop3050->getItem("price/@maxprice_unit_formatted")}}
														{{$loop3050->getItemEscape("price/@maxprice_unit_formatted")}}
													{{elseif  $loop3050->getItem("product/price/@maxprice_unit_formatted")}}
														{{$loop3050->getItemEscape("product/price/@maxprice_unit_formatted")}}
													{{elseif  $loop3050->getItem("product")}}
														{{$loop3050->getItemEscape("product/price/@maxprice_formatted")}}
													{{else}}
														{{$loop3050->getItemEscape("price/@maxprice_formatted")}}
													{{/if}}
												{{/capture}}
												{{capture name="var_size_min_maxprice_formatted" assign="var_size_min_maxprice_formatted"}}
													{{if  $loop3050->getItem("product")}}
														{{$loop3050->getItemEscape("product/price/@size_min_maxprice_formatted")}}
													{{else}}
														{{$loop3050->getItemEscape("price/@size_min_maxprice_formatted")}}
													{{/if}}
												{{/capture}}
												{{capture name="var_size_max_maxprice_formatted" assign="var_size_max_maxprice_formatted"}}
													{{if  $loop3050->getItem("product")}}
														{{$loop3050->getItemEscape("product/price/@size_max_maxprice_formatted")}}
													{{else}}
														{{$loop3050->getItemEscape("price/@size_max_maxprice_formatted")}}
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
																<span class="currency">{{$txt['102151::58826_012']}}</span></span>
														{{/if}}
													{{elseif ($var_value  == (string) 0) and $var_points  == (string) ''}}
														<a class="fon_price" data-mobile-class="btn-small" title="{{$txt['102151::58826_009']}}" href="{{$loop3050->getItemEscape("/shop/contact/link/@url")}}">{{$txt['102151::58826_010']}}</a>
													{{else}}
														<span class="price">{{$txt['102151::58826_003']}}{{$var_price_formatted}}</span>
														{{if $var_maxprice_formatted  neq (string) ''}}
															<del class="max-price">{{$txt['102151::58826_006']}}{{$var_maxprice_formatted}}</del>
														{{/if}}
														{{if $var_points  neq (string) ''}}
															<span class="point-price">{{$var_points}}
																<span class="currency">{{$txt['102151::58826_012']}}</span></span>
														{{/if}}
													{{/if}}
													{{if  $loop3050->getItem("price/@unit_converted_price_formatted")}}
														<small class="s_unit_converted_price">{{$loop3050->getItemEscape("price/@unit_converted_price_formatted")}}{{literal}}/{{/literal}}{{$loop3050->getItemEscape("price/@unit_converted_format")}}</small>
													{{/if}}
												</div>
												{{if  $loop3050->getItem("sizes/size/@type")  == (string) 'uniw'}}
													<form action="/basketchange.php" method="post">
														<input type="hidden" name="product" value="{{$loop3050->getItemEscape("@id")}}"></input>
														<input type="hidden" value="uniw" name="size"/>
														<input type="hidden" value="1" name="number"/>
														<button type="submit" class="btn">{{$txt['102151::352412_1_addtobasket']}}
														</button>
													</form>
												{{else}}
													<div class="basket_buttons_container">
														<button type="submit" class="btn show_sizes_toplayer">{{$txt['102151::352412_1_addtobasket']}}
														</button>
														<div class="product_size_list">
															<h3>{{$txt['102151::6346345_choosesize']}}
															</h3>
															<form action="/basketchange.php" method="post">
																<input type="hidden" name="product" value="{{$loop3050->getItemEscape("@id")}}"></input>
																<select name="size">
																	{{foreach from=$loop3050->getList("sizes/size") item=loop3147}}
																		<option value="{{$loop3147->getItemEscape("@type")}}">{{$loop3147->getItemEscape("@name")}}
																		</option>
																	{{/foreach}}
																</select>
																<input type="hidden" value="1" name="number"/>
																<button type="submit" class="btn">{{$txt['102151::352412_1_addtobasket']}}
																</button>
															</form>
														</div>
													</div>
												{{/if}}
												{{if  $loop3050->getItem("client/@client")}}
													<div class="client">{{$loop3050->getItem("client/@client")}}
													</div>
												{{/if}}
												{{if  $loop3050->getItem("@note")}}
													<div class="note">
														<span>
															<i {{assign "classAttributeTmp67" ""}}{{capture name="classAttributeTmp67" assign="classAttributeTmp67"}}icon-star{{/capture}}{{if $loop3050->getItem("@note") gt (string) 0.5}}{{capture name="classAttributeTmp67" assign="classAttributeTmp67"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp67}}"></i>
															<i {{assign "classAttributeTmp68" ""}}{{capture name="classAttributeTmp68" assign="classAttributeTmp68"}}icon-star{{/capture}}{{if $loop3050->getItem("@note") gt (string) 1.5}}{{capture name="classAttributeTmp68" assign="classAttributeTmp68"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp68}}"></i>
															<i {{assign "classAttributeTmp69" ""}}{{capture name="classAttributeTmp69" assign="classAttributeTmp69"}}icon-star{{/capture}}{{if $loop3050->getItem("@note") gt (string) 2.5}}{{capture name="classAttributeTmp69" assign="classAttributeTmp69"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp69}}"></i>
															<i {{assign "classAttributeTmp70" ""}}{{capture name="classAttributeTmp70" assign="classAttributeTmp70"}}icon-star{{/capture}}{{if $loop3050->getItem("@note") gt (string) 3.5}}{{capture name="classAttributeTmp70" assign="classAttributeTmp70"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp70}}"></i>
															<i {{assign "classAttributeTmp71" ""}}{{capture name="classAttributeTmp71" assign="classAttributeTmp71"}}icon-star{{/capture}}{{if $loop3050->getItem("@note") gt (string) 4.5}}{{capture name="classAttributeTmp71" assign="classAttributeTmp71"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp71}}"></i></span>
														<small>{{$txt['102151::58826_oc']}}{{$loop3050->getItem("@note")}}{{$txt['102151::58826_oce']}}</small>
													</div>
												{{/if}}
												{{if  $loop3050->getItem("content")}}
													<div class="cleardescription">{{$loop3050->getItem("content")}}
													</div>
												{{/if}}
											</div>
										{{/foreach}}
									</div>
								</div>
							{{else}}
								data-ajaxLoad="true"data-pageType="projector"
							{{/if}}
						</div>
					{{/if}}
					<iaiajaxend/>
					<!--player video w karcie produktu (projector_video, 68815.1)-->
					{{if ( $xml->getItem("/shop/page/projector/product/enclosures/documents")) or ( $xml->getItem("/shop/page/projector/product/enclosures/audio"))  or ( $xml->getItem("/shop/page/projector/product/enclosures/other"))  or ( $xml->getItem("/shop/page/projector/product/enclosures/images_attachments/item")) or ( $xml->getItem("/shop/page/projector/product/enclosures/video/item"))}}
						<div style="display:none;" class="projector_video_cover">
						</div>
						<div class="projector_video">
							<a href="javascript:;" class="projector_video_close">
								<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/zamknij.gif?r=1570606529" alt="Zamknij" class="projector_photo_close_55916"/></a>
							<div id="jp_container_N" class="jp-video jp-video-270p">
								<div class="jp-type-playlist">
									<div id="jquery_jplayer_N" class="jp-jplayer">
									</div>
									<div class="jp-gui">
										<div class="jp-video-play">
											<a href="javascript:;" class="jp-video-play-icon" tabindex="1">
												play</a>
										</div>
										<div class="jp-interface">
											<div class="jp-progress">
												<div class="jp-seek-bar">
													<div class="jp-play-bar">
													</div>
												</div>
											</div>
											<div class="jp-current-time">
											</div>
											<div class="jp-duration">
											</div>
											<div class="jp-title">
												<ul>
													<li/>
												</ul>
											</div>
											<div class="jp-controls-holder">
												<ul class="jp-controls">
													<li>
														<a href="javascript:;" class="jp-previous" tabindex="1">previous</a>
													</li>
													<li>
														<a href="javascript:;" class="jp-play" tabindex="1">play</a>
													</li>
													<li>
														<a href="javascript:;" class="jp-pause" tabindex="1">pause</a>
													</li>
													<li>
														<a href="javascript:;" class="jp-next" tabindex="1">next</a>
													</li>
													<li>
														<a href="javascript:;" class="jp-stop" tabindex="1">stop</a>
													</li>
													<li>
														<a href="javascript:;" class="jp-mute" tabindex="1" title="mute">mute</a>
													</li>
													<li>
														<a href="javascript:;" class="jp-unmute" tabindex="1" title="unmute">unmute</a>
													</li>
													<li>
														<a href="javascript:;" class="jp-volume-max" tabindex="1" title="max volume">maxvolume</a>
													</li>
												</ul>
												<div class="jp-volume-bar">
													<div class="jp-volume-bar-value">
													</div>
												</div>
												<ul class="jp-toggles">
													<li>
														<a href="javascript:;" class="jp-full-screen" tabindex="1" title="full screen">fullscreen</a>
													</li>
													<li>
														<a href="javascript:;" class="jp-restore-screen" tabindex="1" title="restore screen">restorescreen</a>
													</li>
													<li>
														<a href="javascript:;" class="jp-shuffle" tabindex="1" title="shuffle">shuffle</a>
													</li>
													<li>
														<a href="javascript:;" class="jp-shuffle-off" tabindex="1" title="shuffle off">shuffleoff</a>
													</li>
													<li>
														<a href="javascript:;" class="jp-repeat" tabindex="1" title="repeat">repeat</a>
													</li>
													<li>
														<a href="javascript:;" class="jp-repeat-off" tabindex="1" title="repeat off">repeatoff</a>
													</li>
												</ul>
											</div>
										</div>
									</div>
									<div class="jp-playlist">
										<ul>
											<li/>
										</ul>
									</div>
									<div class="jp-no-solution">
										<span>UpdateRequired</span>Toplaythemediayouwillneedtoeitherupdateyourbrowsertoarecentversionorupdateyour
										<a href="http://get.adobe.com/flashplayer/" target="_blank">Flashplugin</a>.
									</div>
								</div>
							</div>
						</div>
						<div style="display:none;">
							<object type="application/x-shockwave-flash" data="/gfx/__IAI_TEMPLATE_LANG_639_1__/Jplayer.swf" width="" height="" id="Jplayer">
								<param name="movie" value="/gfx/__IAI_TEMPLATE_LANG_639_1__/Jplayer.swf" />
								<param name="wmode" value="" />
								<img src="zaslepka.png" width="" height="" alt="Jplayer" />
							</object>
						</div>
						<script>
$('a.projector_video_close, div.projector_video_cover').live('click',function(){
    $('div.projector_video_cover, div.projector_video').hide();
    myPlaylist.remove();
})
var myPlaylist = new jPlayerPlaylist({
    jPlayer: "#jquery_jplayer_N",
    cssSelectorAncestor: "#jp_container_N"
}, [
    {
    }
], {
    playlistOptions: {
        enableRemoveControls: true,
        autoPlay: true
    },
    swfPath: $('#Jplayer').attr('data'),
    solution: "flash, html",
        supplied: "webmv, ogv, m4v, oga, mp3",
        smoothPlayBar: true,
        keyEnabled: true,
        audioFullScreen: true
});
						</script>

					{{/if}}
					<!--Zdjęcia produktu (projector_photos, 77802.1)-->
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
