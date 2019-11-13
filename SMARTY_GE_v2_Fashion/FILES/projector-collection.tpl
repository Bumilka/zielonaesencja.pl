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
					<aside {{assign "classAttributeTmp2" ""}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}span3{{/capture}}{{if $xml->getItem("page/@type") == (string) 'projector'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['73991::70925_projector_a_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'search'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['73991::70925_search_a_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'main'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['73991::70925_main_a_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'blog-list' or $xml->getItem("page/@type") == (string) 'blog-item'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['73991::70925_blog_a_class']}}{{/capture}}{{else}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['73991::70925_otherwise_a_class']}}{{/capture}}{{/if}}  class="{{$classAttributeTmp2}}">
						{{include file="component_menu_filter_79091.tpl"}}
						{{include file="component_menu_buttons_77612.tpl"}}
						{{include file="component_menu_additional1_76965.tpl"}}
					</aside>
				{{/if}}
				{{if !( $xml->getItem("action/set_render/item")) or ( $xml->getItem("action/set_render/item/@name")  == (string) 'content')}}
					<div {{assign "classAttributeTmp3" ""}}  id="content"{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}span9{{/capture}}{{if $xml->getItem("page[@type='projector']")}} itemscope="itemscope" itemtype="http://schema.org/Product" {{/if}}{{if $xml->getItem("page/@type") == (string) 'projector'}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}{{$txt['73991::70925_projector_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'search'}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}{{$txt['73991::70925_search_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'main'}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}{{$txt['73991::70925_main_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'navigation'}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}{{$txt['73991::70925_navigation_page_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'blog-list' or $xml->getItem("page/@type") == (string) 'blog-item'}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}{{$txt['73991::70925_blog_c_class']}}{{/capture}}{{else}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}{{$txt['73991::70925_otherwise_c_class']}}{{/capture}}{{/if}}  class="{{$classAttributeTmp3}}">
						{{include file="component_menu_messages_67953.tpl"}}
						<!--Warianty produktu (projector_collection_productversions, 81021.1)-->
						{{if  $xml->getItem("compare/@count")  gt (string) 0}}
							<div id="menu_compare_product">
								<div class="big_label">{{$txt['81021::55103_002']}}
								</div>
								<div class="compare_product_sub align_row" data-align="img#css">
									{{foreach from=$xml->getList("compare/product") item=loop304}}
										<a href="{{$loop304->getItemEscape("@removelink")}}">
											<img src="{{$loop304->getItemEscape("iconsmall")}}" alt="{{$loop304->getItem("name")}}"></img></a>
									{{/foreach}}
								</div>
								{{if  $xml->getItem("compare/@count")  gt (string) 1}}
									<div class="compare_buttons">
										<a class="btn-small" href="settings.php?comparers=remove&#160;amp;product= {{foreach from=$xml->getList("compare/product") item=loop320}}{{$loop320->getItemEscape("@id")}}{{if !(count( $loop320->getList("../product")) == (string) $loop320@iteration )}},{{/if}}{{/foreach}} " title="{{$txt['81021::55103_00_1b']}}">{{$txt['81021::55103_00_2b']}}</a>
										<a class="btn-small" href="product-compare.php" title="{{$txt['81021::55103_003']}}" target="{{$txt['81021::55103_023']}}">{{$txt['81021::55103_004']}}</a>
									</div>
								{{/if}}
							</div>
						{{/if}}
						<!--Dokładne dane o produkcie (projector_collection_details, 81023.1)-->
						{{capture name="showComments" assign="showComments"}}
							{{$txt['81023::57649_showComment']}}
						{{/capture}}
						{{capture name="param_projector" assign="param_projector"}}
							{{$txt['81023::58230_setParam']}}
						{{/capture}}
						{{capture name="param_kropa" assign="param_kropa"}}
							{{$txt['81023::n55363_kropa']}}
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
            {{if  $xml->getItem("page/projector/product/@product_type") == (string)'product_bundle'}}
                    "unit":"{{$txt['81023::n55363_400_zestaw']}}",
                {{else}}
                    "unit":"{{$xml->getItem("page/projector/product/sizes/@unit")}}",
                {{/if}}
            "unit_sellby":"{{$xml->getItemEscape("page/projector/product/sizes/@unit_sellby")}}",
            "unit_precision":"{{$xml->getItemEscape("page/projector/product/sizes/@unit_precision")}}", 
            "base_price":{
{{foreach from=$xml->getList("/shop/page/projector/product/sizes/prices/@*") item=loop367}}
                "{{$loop367->getName()}}":"{{$loop367->getItemEscape(".")}}",  
{{/foreach}}{{foreach from=$xml->getList("/shop/page/projector/product/price/@*") item=loop372}}
                "{{$loop372->getName()}}":"{{$loop372->getItemEscape(".")}}"{{if  $loop372@iteration   neq (string)  $loop372@total }},{{/if}}{{/foreach}}
            },
            "order_quantity_range":{
{{foreach from=$xml->getList("/shop/page/projector/product/order_quantity_range/*") item=loop381}}
                "{{$loop381->getName()}}":"{{$loop381->getItemEscape(".")}}"{{if  $loop381@iteration   neq (string)  $loop381@total }},{{/if}}{{/foreach}}
             },
            "sizes":{
{{foreach from=$xml->getList("/shop/page/projector/product/sizes/size") item=loop390}}
                "{{$loop390->getItemEscape("@type")}}":
                {
{{foreach from=$loop390->getList("@*") item=loop394}}
                    "{{$loop394->getName()}}":"{{$loop394->getItemEscape(".")}}",
{{/foreach}}{{foreach from=$loop390->getList("/shop/page/projector/product/bundle_price") item=loop399}}
                    "{{$loop399->getName()}}":{ 
{{foreach from=$loop399->getList("@*") item=loop402}}
                        "{{$loop402->getName()}}":"{{$loop402->getItemEscape(".")}}"{{if  $loop402@iteration   neq (string)  $loop402@total }},{{/if}}{{/foreach}}
                    },
{{/foreach}}{{if  $loop390->getItem("price/rebateNumber/rebate")}}
                    "rebateNumber":[ 
{{foreach from=$loop390->getList("price/rebateNumber/rebate") item=loop412}}
                        { 
{{foreach from=$loop412->getList("@*") item=loop415}}
                            "{{$loop415->getName()}}":"{{$loop415->getItemEscape(".")}}"{{if  $loop415@iteration   neq (string)  $loop415@total }},{{/if}}{{/foreach}}
                        }{{if  $loop412@iteration   neq (string)  $loop412@total }},{{/if}}{{/foreach}}
                    ],
                {{/if}}{{if  $loop390->getItem("availability/shipping_time")}}
                    "shipping_time":{ 
{{foreach from=$loop390->getList("availability/shipping_time") item=loop428}}{{foreach from=$loop428->getList("@*") item=loop430}}
                            "{{$loop430->getName()}}":"{{$loop430->getItem(".")}}"{{if  $loop430@iteration   neq (string)  $loop430@total }},{{/if}}{{/foreach}}{{/foreach}}
                    },
                {{/if}}{{foreach from=$loop390->getList("node()") item=loop441}}
                    "{{$loop441->getName()}}":{ 
{{foreach from=$loop441->getList("@*") item=loop444}}
                        "{{$loop444->getName()}}":"{{$loop444->getItemEscape(".")}}"{{if  $loop444@iteration   neq (string)  $loop444@total }},{{/if}}{{/foreach}}
                    }{{if  $loop441@iteration   neq (string)  $loop441@total }},{{/if}}{{/foreach}}
                }{{if  $loop390@iteration   neq (string)  $loop390@total }},{{/if}}{{/foreach}}
            }     
            }  
        						</script>

						<form {{assign "classAttributeTmp4" ""}}  id="projector_form" action="basketchange.php" method="post"{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}bundled_collection{{/capture}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}{{$txt['81023::n55363_class']}} bundled_collection{{/capture}}  class="{{$classAttributeTmp4}}">
							<input id="projector_product_hidden" type="hidden" name="product" value="{{$xml->getItemEscape("page/projector/product/@id")}}"></input>
							<input id="projector_size_hidden" type="hidden" name="size" value="{{$xml->getItemEscape("page/projector/product/sizes/size/@type")}}"></input>
							<input id="projector_mode_hidden" type="hidden" name="mode" value="1"/>
							{{if  $xml->getItem("page/projector/product/exchange/@exchange_id")}}
								<input id="projector_exchange_id_hidden" type="hidden" name="exchange_id" value="{{$xml->getItemEscape("page/projector/product/exchange/@exchange_id")}}"></input>
								<input id="projector_change_hidden" type="hidden" name="change" value="change"/>
							{{/if}}
							<div class="projector_navigation">
								{{if  $xml->getItem("page/projector/product/products_other_founds")}}
									<div class="products_other_founds">
										<a class="next" href="{{$xml->getItemEscape("page/projector/product/products_other_founds/@next")}}">{{$txt['81023::n57558_002']}}</a>
										<a class="previous" href="{{$xml->getItemEscape("page/projector/product/products_other_founds/@previous")}}">{{$txt['81023::n57558_001']}}</a>
									</div>
								{{/if}}
								<div class="label_icons">
									{{if  $xml->getItem("/shop/page/projector/product/@promotion")}}
										<span class="promo">{{$txt['81023::53885_307pro']}}</span>
									{{/if}}
									{{if  $xml->getItem("/shop/page/projector/product/@new")}}
										<span class="newproducts">{{$txt['81023::53885_307n']}}</span>
									{{/if}}
									{{if  $xml->getItem("/shop/page/projector/product/@promotion") and  $xml->getItem("/shop/page/projector/product/@new")}}
									{{elseif  $xml->getItem("/shop/page/projector/product/@promotion") or  $xml->getItem("/shop/page/projector/product/@new")}}
										{{if  $xml->getItem("/shop/page/projector/product/@bestseller")}}
											<span class="bestseller">{{$txt['81023::53885_307b']}}</span>
										{{elseif  $xml->getItem("/shop/page/projector/product/@discount")}}
											<span class="discount">{{$txt['81023::53885_307pr']}}</span>
										{{elseif  $xml->getItem("/shop/page/projector/product/@distinguished")}}
											<span class="distinguished">{{$txt['81023::53885_307p']}}</span>
										{{/if}}
									{{else}}
										{{if  $xml->getItem("/shop/page/projector/product/@bestseller")}}
											<span class="bestseller">{{$txt['81023::53885_307b']}}</span>
										{{/if}}
										{{if  $xml->getItem("/shop/page/projector/product/@discount")}}
											<span class="discount">{{$txt['81023::53885_307pr']}}</span>
										{{/if}}
										{{if  $xml->getItem("/shop/page/projector/product/@distinguished") and !( $xml->getItem("/shop/page/projector/product/@bestseller") and  $xml->getItem("/shop/page/projector/product/@discount"))}}
											<span class="distinguished">{{$txt['81023::53885_307p']}}</span>
										{{/if}}
									{{/if}}
								</div>
								<h1 itemprop="name">{{$xml->getItem("/shop/page/projector/product/name")}}
								</h1>
								{{if  $xml->getItem("page/projector/product/description") and  $xml->getItem("page/projector/product/description")  neq (string) ''}}
									<div {{assign "classAttributeTmp5" ""}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}projector_description{{/capture}} itemprop="description"{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}projector_description description{{/capture}}  class="{{$classAttributeTmp5}}">{{$xml->getItem("page/projector/product/description/text()")}}
									</div>
								{{/if}}
							</div>
							<div {{assign "classAttributeTmp6" ""}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}photos{{/capture}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}photos{{$txt['81023::n55363_class1']}}{{/capture}}  class="{{$classAttributeTmp6}}">
								{{if  $xml->getItem("/shop/page/projector/product/enclosures/images")}}
									<ul class="bxslider">
										{{foreach from=$xml->getList("/shop/page/projector/product/enclosures/images/enclosure") item=loop558}}
											<li>
												<a class="projector_medium_image" data-imagelightbox="f" href="{{$loop558->getItem("@url")}}">
													<img class="photo" itemprop="image" alt="{{$loop558->getItem("/shop/page/projector/product/name")}}" src="{{$loop558->getItemEscape("@medium")}}"></img></a>
											</li>
										{{/foreach}}
										{{foreach from=$xml->getList("/shop/page/projector/bundled/product") item=loop571}}
											<li>
												<a class="projector_medium_image" data-imagelightbox="f" href="{{$loop571->getItem("enclosures/images/enclosure[1]/@url")}}">
													<img class="photo" itemprop="image" alt="{{$loop571->getItem("name")}}" src="{{$loop571->getItemEscape("enclosures/images/enclosure[1]/@medium")}}"></img></a>
											</li>
										{{/foreach}}
									</ul>
								{{/if}}
								{{capture name="enclosureCount" assign="enclosureCount"}}
									{{$xml->getItemEscape("count(page/projector/product/enclosures/images/enclosure)")}}
								{{/capture}}
								{{if ($enclosureCount  gt (string) 1) or  $xml->getItem("/shop/page/projector/bundled/product")}}
									<div id="bx-pager" class="enclosures align_row" data-align="img#css">
										{{foreach from=$xml->getList("page/projector/product/enclosures/images/enclosure") item=loop589}}
											<a href="" data-slide-index="{{$loop589@iteration-1}}">
												<img alt="" src="{{$loop589->getItemEscape("@icon")}}"></img></a>
										{{/foreach}}
										{{foreach from=$xml->getList("/shop/page/projector/bundled/product") item=loop597}}
											<a href="" data-slide-index="{{$loop597->getItemEscape("$enclosureCount + position() - 1")}}">
												<img alt="" src="{{$loop597->getItemEscape("enclosures/images/enclosure[1]/@icon")}}"></img></a>
										{{/foreach}}
									</div>
								{{/if}}
								{{if  $xml->getItem("page/projector/bookmarklets/item")}}
									<div class="bookmarklets_big">
										<ul>
											{{foreach from=$xml->getList("page/projector/bookmarklets/item") item=loop611}}
												<li>{{$loop611->getItem("text()")}}
												</li>
											{{/foreach}}
										</ul>
									</div>
								{{/if}}
							</div>
							<div {{assign "classAttributeTmp7" ""}}{{capture name="classAttributeTmp7" assign="classAttributeTmp7"}}product_info{{/capture}}{{capture name="classAttributeTmp7" assign="classAttributeTmp7"}}product_info{{$txt['81023::n55363_class2']}}{{/capture}}  class="{{$classAttributeTmp7}}">
								{{if ( $xml->getItem("page/projector/product/multiversions")) and (count( $xml->getList("page/projector/product/multiversions/multi_version"))  gt (string) 1)}}
									<div id="multi_versions">
										{{foreach from=$xml->getList("page/projector/product/multiversions/multi_version") item=loop627}}
											<div class="multi_version product_section">
												<label>{{$loop627->getItem("@name")}}
												</label>
												<div class="fancy-select" id="mw_{{$loop627->getItemEscape("@id")}}">
													<div class="trigger">
														{{foreach from=$loop627->getList("item[@selected='true']/values/value") item=loop635}}
															{{if !( $loop635@iteration   == (string) 1)}}
																{{$txt['81023::n55363_345']}}
															{{/if}}
															{{$loop635->getItem("@name")}}
														{{/foreach}}
													</div>
													<ul class="options">
														{{foreach from=$loop627->getList("item") item=loop640}}
															{{capture name="value_name" assign="value_name"}}
																{{foreach from=$loop640->getList("values/value") item=loop643}}
																	{{if !( $loop643@iteration   == (string) 1)}}
																		{{$txt['81023::n55363_345']}}
																	{{/if}}
																	{{$loop643->getItem("@name")}}
																{{/foreach}}
															{{/capture}}
															<li class="{{if $loop640->getItem("@disabled") == (string)'true'}}disabled {{/if}}{{if $loop640->getItem("@selected") == (string)'true'}}selected{{/if}}" id="v{{$loop640->getItem("values/@id")}}" data-values_id="{{$loop640->getItem("values/@id")}}" data-value="{{$loop640@iteration}}" data-title="{{$value_name}}" data-product="{{$loop640->getItemEscape("products/product/@product_id")}}">
																<a title="{{$value_name}}" href="{{$loop640->getItemEscape("products/product/@url")}}">
																	{{foreach from=$loop640->getList("values/value") item=loop658}}
																		{{if  $loop658->getItem("@gfx")}}
																			<span class="gfx">
																				<img src="{{$loop658->getItemEscape("@gfx")}}" alt="{{$value_name}}"></img></span>
																		{{/if}}
																	{{/foreach}}
																	<span>
																		<span>{{$loop640->getItem("$value_name")}}</span>
																		{{foreach from=$loop640->getList("values/value") item=loop672}}
																			{{if  $loop672->getItem("description")}}
																				<div class="description">{{$loop672->getItem("description")}}
																				</div>
																			{{/if}}
																		{{/foreach}}
																		<p class="conflict_txt">{{$txt['81023::n55363_co']}}
																		</p></span></a>
															</li>
														{{/foreach}}
													</ul>
													<p class="conflict_txt">{{$txt['81023::n55363_coz']}}
													</p>
													{{if  $loop627->getItem("description")}}
														<div class="description">{{$loop627->getItem("description")}}
														</div>
													{{/if}}
												</div>
												{{if  $loop627->getItem("@gfx")}}
													<div class="gfx">
														<img src="{{$loop627->getItemEscape("@gfx")}}" alt="{{$loop627->getItemEscape("@name")}}"></img>
													</div>
												{{/if}}
											</div>
										{{/foreach}}
									</div>
								{{/if}}
								{{if ( $xml->getItem("page/projector/product/versions/@count")  gt (string) 0) and (count( $xml->getList("page/projector/product/multiversions/multi_version"))  == (string) 1)}}
									<div class="product_section versions">
										<label class="projector_label">{{$txt['81023::n55363_400_11111']}}{{$xml->getItemEscape("page/projector/product/versions/@name")}}
										</label>
										<div class="product_section_sub">
											{{foreach from=$xml->getList("page/projector/product/versions/version") item=loop707}}
												<a {{assign "classAttributeTmp8" ""}}{{capture name="classAttributeTmp8" assign="classAttributeTmp8"}}select_button{{/capture}} title="{{$loop707->getItemEscape("@name")}}" href="{{$loop707->getItemEscape("@link")}}" {{if $loop707->getItem("@gfx")}}{{capture name="classAttributeTmp8" assign="classAttributeTmp8"}}select_button gfx{{/capture}}{{if $loop707->getItem("@id") == (string) $loop707->getItem("/shop/page/projector/product/@id")}}{{capture name="classAttributeTmp8" assign="classAttributeTmp8"}}select_button gfx active{{/capture}}{{/if}}  class="{{$classAttributeTmp8}}">
													<img src="{{$loop707->getItemEscape("@gfx")}}" alt="{{$loop707->getItemEscape("@name")}}"></img>
												{{else}}
													href="{{$loop707->getItemEscape("@link")}}"
													{{if  $loop707->getItem("@id")  == (string)  $loop707->getItem("/shop/page/projector/product/@id")}}
														class="select_buttonactive"
													{{/if}}
													{{$loop707->getItemEscape("@name")}}
												{{/if}}
												</a>
										{{/foreach}}
									</div>
								</div>
							{{/if}}
							<div class="product_section sizes" id="projector_sizes_cont">
								<label class="projector_label">{{$txt['81023::n55363_400']}}
								</label>
								<div class="product_section_sub">
									{{foreach from=$xml->getList("page/projector/product/sizes/size") item=loop740}}
										{{if ( $loop740->getItem("@amount")  gt (string) 0) or ( $loop740->getItem("@amount")  == (string) '-1')}}
											<label class="select_button" data-type="{{$loop740->getItemEscape("@type")}}">{{$loop740->getItemEscape("@description")}}
											</label>
										{{else}}
											<label class="select_button disabled" data-type="{{$loop740->getItemEscape("@type")}}">{{$loop740->getItemEscape("@description")}}
											</label>
										{{/if}}
									{{/foreach}}
									{{if (( $xml->getItem("page/projector/text_sizesgroup")) and ( $xml->getItem("page/projector/text_sizesgroup")  neq (string) '')) or  $xml->getItem("/shop/page/projector/product/sizes_chart")}}
										<a href="#show_size_cms" class="show_size_cms">{{$txt['81023::n55363_table']}}</a>
									{{/if}}
								</div>
							</div>
							<div class="product_section" id="projector_status_description_wrapper" style="display:none">
								<label>{{$txt['81023::53676_dos']}}
								</label>
								<div>
									{{if  $xml->getItem("/shop/page/projector/product/sizes/size/availability/@status_gfx")}}
										<img id="projector_status_gfx" class="projector_status_gfx" alt="status_icon" src="{{$xml->getItemEscape("/shop/page/projector/product/sizes/size/availability/@status_gfx")}}"></img>
									{{/if}}
									<span class="projector_status_description" id="projector_status_description">{{$xml->getItemEscape("/shop/page/projector/product/sizes/size/availability/@status_description")}}</span>
								</div>
							</div>
							<div class="product_section tell_availability" id="projector_tell_availability" style="display:none">
								<label>{{$txt['81023::53676_availabilit']}}
								</label>
								<div class="product_section_sub">
									<a {{assign "classAttributeTmp9" ""}}  href="#showAvabilityDialog"{{capture name="classAttributeTmp9" assign="classAttributeTmp9"}}projector_tell_availability{{/capture}} id="projector_tell_availability_link" onclick="showAvabilityDialog();return false;"{{capture name="classAttributeTmp9" assign="classAttributeTmp9"}}btn-small projector_tell_availabilit{{/capture}}  class="{{$classAttributeTmp9}}">{{$txt['81023::53676_dost']}}</a>
								</div>
							</div>
							<div class="product_section" id="projector_shipping_info" style="display:none;">
								<label>{{$txt['81023::53676_wys']}}
								</label>
								<div>
									<span class="projector_delivery_days" id="projector_delivery_days">
										{{if ( $xml->getItem("/shop/page/projector/product/sizes/size/availability/shipping_time/@week_amount")  == (string) 0) and ( $xml->getItem("/shop/page/projector/product/sizes/size/availability/shipping_time/@hours")  == (string) 0) and ( $xml->getItem("/shop/page/projector/product/sizes/size/availability/shipping_time/@minutes")  == (string) 0)}}
											{{if  $xml->getItem("/shop/page/projector/product/sizes/size/availability/shipping_time/@today")  == (string) 'true'}}
												{{$txt['81023::64594_js_txt_46']}}
											{{elseif  $xml->getItem("/shop/page/projector/product/sizes/size/availability/shipping_time/@week_day")  == (string) 1}}
												{{$txt['81023::64594_js_txt_47']}}
											{{elseif  $xml->getItem("/shop/page/projector/product/sizes/size/availability/shipping_time/@week_day")  == (string) 2}}
												{{$txt['81023::64594_js_txt_48']}}
											{{elseif  $xml->getItem("/shop/page/projector/product/sizes/size/availability/shipping_time/@week_day")  == (string) 3}}
												{{$txt['81023::64594_js_txt_49']}}
											{{elseif  $xml->getItem("/shop/page/projector/product/sizes/size/availability/shipping_time/@week_day")  == (string) 4}}
												{{$txt['81023::64594_js_txt_50']}}
											{{elseif  $xml->getItem("/shop/page/projector/product/sizes/size/availability/shipping_time/@week_day")  == (string) 5}}
												{{$txt['81023::64594_js_txt_51']}}
											{{elseif  $xml->getItem("/shop/page/projector/product/sizes/size/availability/shipping_time/@week_day")  == (string) 6}}
												{{$txt['81023::64594_js_txt_52']}}
											{{elseif  $xml->getItem("/shop/page/projector/product/sizes/size/availability/shipping_time/@week_day")  == (string) 7}}
												{{$txt['81023::64594_js_txt_53']}}
											{{/if}}
										{{elseif  $xml->getItem("page/projector/product/sizes/size/availability/shipping_time/@days")}}
											{{$txt['81023::64594_js_txt_18']}}
											{{if  $xml->getItem("page/projector/product/sizes/size/availability/shipping_time/@days")  gt (string) 0}}
												{{$xml->getItemEscape("page/projector/product/sizes/size/availability/shipping_time/@days")}}
												{{if  $xml->getItem("page/projector/product/sizes/size/availability/shipping_time/@days")  == (string)'1'}}
													{{$txt['81023::64594_js_txt_11a']}}
												{{else}}
													{{$txt['81023::64594_js_txt_11']}}
												{{/if}}
											{{/if}}
											{{if  $xml->getItem("page/projector/product/sizes/size/availability/shipping_time/@hours")  gt (string) 0}}
												{{$xml->getItemEscape("page/projector/product/sizes/size/availability/shipping_time/@hours")}}{{$txt['81023::64594_js_txt_12']}}
											{{/if}}
											{{if  $xml->getItem("page/projector/product/sizes/size/availability/shipping_time/@minutes")  gt (string) 0}}
												{{$xml->getItemEscape("page/projector/product/sizes/size/availability/shipping_time/@minutes")}}{{$txt['81023::64594_js_txt_12c']}}
											{{/if}}
										{{/if}}
										</span>
									<a class="shipping_info" href="#shipping_info" title="{{$txt['81023::57295_019a']}}">{{$txt['81023::57295_019a']}}</a>
								</div>
							</div>
							<div id="projector_prices_wrapper" itemprop="offers" itemscope="" itemtype="http://schema.org/Offer">
								<div {{assign "styleAttributeTmp1" ""}}  class="product_section" id="projector_price_srp_wrapper"{{capture name="styleAttributeTmp1" assign="styleAttributeTmp1"}}display:none{{/capture}}{{if !( $xml->getItem("page/projector/product/price/@srp"))}}{{capture name="styleAttributeTmp1" assign="styleAttributeTmp1"}}display:none;{{/capture}}{{/if}}  style="{{$styleAttributeTmp1}}">
									<label class="projector_label">{{$txt['81023::53676_400ckat']}}
									</label>
									<div>
										<span class="projector_price_srp" id="projector_price_srp">{{$xml->getItemEscape("page/projector/product/price/@srp_formatted")}}</span>
									</div>
								</div>
								<div class="product_section" id="projector_price_value_wrapper">
									<label class="projector_label">{{$txt['81023::53676_400']}}
									</label>
									<div>
										<div id="projector_price_maxprice_wrapper" {{if !( $xml->getItem("page/projector/product/price/@maxprice_formatted"))}} style="display:none;"{{/if}}>
											<del class="projector_price_maxprice" id="projector_price_maxprice">
												{{if  $xml->getItem("/shop/page/projector/product/price/@size_min_maxprice_formatted")  neq (string)  $xml->getItem("/shop/page/projector/product/price/@size_max_maxprice_formatted")}}
													<span>{{$xml->getItemEscape("/shop/page/projector/product/price/@size_min_maxprice_formatted")}}</span>
													<b>-</b>
													<span>{{$xml->getItemEscape("/shop/page/projector/product/price/@size_max_maxprice_formatted")}}</span>
												{{elseif  $xml->getItem("page/projector/product/price/@maxprice_formatted")}}
													{{$xml->getItemEscape("page/projector/product/price/@maxprice_formatted")}}
												{{/if}}
												</del>
											<span class="projector_price_yousave" id="projector_price_yousave">
												{{if  $xml->getItem("/shop/page/projector/product/bundle_price/@amount_diff_gross")}}
													{{$txt['81023::60089_js_txt_6']}}{{$xml->getItemEscape("/shop/page/projector/product/bundle_price/@percent_diff")}}{{$txt['81023::60089_js_txt_7']}}
													<span class="projector_price">{{$xml->getItemEscape("/shop/page/projector/product/bundle_price/@amount_diff_gross")}}
														<span class="projector_currency">{{$xml->getItemEscape("/shop/currency/@name")}}</span></span>{{$txt['81023::53676_in_bundle']}}
												{{elseif  $xml->getItem("page/projector/product/price/@yousave_percent")}}
													{{$txt['81023::60089_js_txt_6']}}{{$xml->getItemEscape("page/projector/product/price/@yousave_percent")}}{{$txt['81023::60089_js_txt_7']}}
													<span class="projector_price">{{$xml->getItemEscape("page/projector/product/price/@yousave_formatted")}}</span>{{$txt['81023::n56245_nawias3']}}
												{{else}}
													style="display:none;"
												{{/if}}
												</span>
										</div>
										{{if  $xml->getItem("page/projector/product/price/@phone_price") == (string)'true'}}
											<strong class="projector_price_value" id="projector_price_value">{{$xml->getItemEscape("page/projector/product/price/@status_description_tel")}}</strong>
										{{else}}
											<strong class="projector_price_value" id="projector_price_value">
												{{if  $xml->getItem("/shop/page/projector/product/sizes/prices") and  $xml->getItem("/shop/page/projector/product/sizes/prices/@maxprice_formatted")  neq (string)  $xml->getItem("/shop/page/projector/product/sizes/prices/@minprice_formatted")}}
													{{$xml->getItemEscape("/shop/page/projector/product/sizes/prices/@minprice_formatted")}}-{{$xml->getItemEscape("/shop/page/projector/product/sizes/prices/@maxprice_formatted")}}
												{{else}}
													{{$xml->getItemEscape("page/projector/product/price/@price_formatted")}}
												{{/if}}
												</strong>
											<meta itemprop="priceCurrency" content="PLN" content="{{$xml->getItemEscape("/shop/currency/@id")}}"/>
											<meta itemprop="price" content="0.00" content="{{$xml->getItemEscape("page/projector/product/price/@value")}}"/>
											<div class="price_gross_info">
												<small class="projector_price_unit_sep">{{$txt['81023::53676_un_sep']}}</small>
												<small class="projector_price_unit_sellby" id="projector_price_unit_sellby" style="display:none">{{$xml->getItemEscape("/shop/page/projector/product/sizes/@unit_sellby")}}</small>
												<small class="projector_price_unit" id="projector_price_unit">{{$xml->getItemEscape("/shop/page/projector/product/sizes/@unit")}}</small>
												{{if !( $xml->getItem("/shop/client_data/@uses_vat") == (string)'false')}}
													<span>{{$txt['81023::57295_019b']}}
														{{if !( $xml->getItem("/shop/page/projector/product/@product_type")  == (string) 'product_virtual')}}
															{{$txt['81023::57295_019plus']}}
															<a class="shipping_info" target="blank" title="{{$txt['81023::57295_019a']}}" href="{{$xml->getItemEscape("/shop/action/shipping_cost/@url")}}">{{$txt['81023::57295_019']}}</a>
														{{/if}}
														</span>
												{{/if}}
												{{if  $xml->getItem("page/projector/product/sizes/size[1]/price/rebateNumber")}}
													<span id="projector_rebateNumber">
														<span id="projector_rebatenumber">{{$txt['81023::53676_za']}}
															<span class="product_section rebates_sub">
																<span id="projector_product_rebatenumber_threshold">{{$xml->getItemEscape("page/projector/product/sizes/size/price/rebateNumber/@nextthreshold")}}</span>{{$txt['81023::53676_spa']}}{{$xml->getItemEscape("page/projector/product/sizes/@unit")}}{{$txt['81023::53676_rab']}}
																<strong>
																	<span id="projector_product_rebatenumber_value">{{$xml->getItemEscape("page/projector/product/sizes/size[1]/price/rebateNumber/@nextvalue")}}{{$txt['81023::53676_pro']}}</span></strong></span></span>
														<div class="tooltipContent">
															{{foreach from=$xml->getList("page/projector/product/sizes/size[1]/price/rebateNumber/rebate") item=loop948}}
																<div class="rebatenumber_rebate">
																	<strong>{{$txt['81023::53676_rabat']}}
																		<span>{{$loop948->getItemEscape("@value")}}{{$txt['81023::53676_pro']}}</span></strong>{{$txt['81023::53676_za2']}}
																	<span>{{$loop948->getItemEscape("@threshold")}}</span>{{$txt['81023::53676_spa']}}{{$loop948->getItemEscape("/shop/page/projector/product/sizes/@unit")}}
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
										<label class="projector_label">{{$txt['81023::53676_c_con']}}
										</label>
										<span class="unit_converted_price" id="unit_converted_price">{{$xml->getItemEscape("/shop/page/projector/product/price/@unit_converted_price_formatted")}}{{$txt['81023::53676_un_sep']}}{{$xml->getItemEscape("/shop/page/projector/product/price/@unit_converted_format")}}</span>
									</div>
								{{/if}}
								{{if  $xml->getItem("page/projector/product/sizes/@unit_sellby")  neq (string) '1'}}
									<div id="projector_sellbyrecount" class="projector_sellbyrecount product_section">
										<label class="projector_label">{{$txt['81023::n57981_sprz_po']}}
										</label>
										<span>{{$xml->getItemEscape("page/projector/product/sizes/@unit_sellby")}}{{$txt['81023::n57981_sprz_po_spacja']}}{{$xml->getItemEscape("page/projector/product/sizes/@unit")}}{{$txt['81023::n57981_sprz_po_nl']}}{{$xml->getItemEscape("/shop/page/projector/product/price/@price_formatted")}}{{$txt['81023::n57981_sprz_po_un_sep']}}{{$xml->getItemEscape("page/projector/product/sizes/@unit")}}{{$txt['81023::n57981_sprz_po_nr']}}</span>
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
									{{$txt['81023::57295_019pr']}}
								{{/capture}}
								{{if $advanceprice_txt and  $xml->getItem("page/projector/product/price/@advanceprice_formatted")}}
									<div id="projector_advanceprice_wrapper">{{$advanceprice_txt}}
										<b id="projector_advanceprice">{{$xml->getItemEscape("page/projector/product/price/@advanceprice_formatted")}}</b>{{$txt['81023::57295_019prkr']}}
									</div>
								{{/if}}
							</div>
							{{if $showComments}}
								<div class="product_section comment">
									<div class="product_section_sub">
										<label>{{$txt['81023::54710_401grawer']}}
										</label>
										<div>
											<textarea name="comment" maxlength="255"></textarea>
										</div>
									</div>
								</div>
							{{/if}}
							<div id="projector_buy_section" class="clearfix product_section">
								<label class="projector_label">{{$txt['81023::54710_455']}}
								</label>
								<div class="projector_buttons" id="projector_buttons">
									{{if !( $xml->getItem("/shop/page/projector/product/@product_type")  == (string) 'product_virtual')}}
										<input class="projector_number" name="number" id="projector_number" type="hidden" value="{{$xml->getItemEscape("/shop/page/projector/product/sizes/@unit_sellby")}}" {{if $xml->getItem("page/projector/product/exchange/@exchange_id")}} disabled="disabled" {{/if}}></input>
									{{/if}}
									<a onclick="$('body').toggleClass('bundled_open');" class="collection_configure btn-large" id="collection_configure">{{$txt['81023::53676_8001']}}</a>
									<button {{assign "classAttributeTmp10" ""}}  style="display:none;"{{capture name="classAttributeTmp10" assign="classAttributeTmp10"}}projector_butttons_buy{{/capture}} id="projector_button_basket" type="submit"{{capture name="classAttributeTmp10" assign="classAttributeTmp10"}}btn-large projector_butttons_buy{{/capture}}{{if $xml->getItem("page/projector/product/exchange/@exchange_id")}}{{capture name="classAttributeTmp10" assign="classAttributeTmp10"}}btn-large projector_butttons_buy projector_butttons_exchange{{/capture}}{{/if}} title="{{$txt['81023::53676_800']}}"   class="{{$classAttributeTmp10}}">
										{{if  $xml->getItem("page/projector/product/exchange/@exchange_id")}}
											{{$txt['81023::53676_004_alt']}}
										{{else}}
											{{$txt['81023::53676_004']}}
										{{/if}}
									</button>
									<a href="#add_favorite" class="projector_buttons_obs" id="projector_button_observe" onclick="$('#projector_mode_hidden').val(2);$('#projector_form').submit();" data-mobile-class="btn-small" title="{{$txt['81023::53676_801']}}">{{$txt['81023::53676_005']}}</a>
									{{if  $xml->getItem("/shop/compare[@active='y']")}}
										<a class="projector_prodstock_compare" data-mobile-class="btn-small" href="settings.php?comparers=add&#160;amp;product={{$xml->getItemEscape("page/projector/product/@id")}}" title="{{$txt['81023::54089_00_1']}}">{{$txt['81023::54089_00_2']}}</a>
									{{/if}}
								</div>
							</div>
							<div class="product_section points" id="projector_points_wrapper" {{if !( $xml->getItem("/shop/page/projector/product/@for_points") == (string)'true' or $xml->getItem("page/projector/product/price/@points") gt (string) 0 )}} style="display:none;" {{/if}}>
								<div class="product_section_sub">
									<div class="projector_points_sub_wrapper">
										<div class="projector_price_points_wrapper" id="projector_price_points_wrapper">
											<label class="projector_label">{{$txt['81023::53676_c_pkt']}}
											</label>
											<span class="projector_price_points" id="projector_price_points">{{$xml->getItemEscape("page/projector/product/price/@points")}}
												<span class="projector_currency">{{$txt['81023::53676_pkt']}}</span></span>
										</div>
										<div class="projector_price_points_recive_wrapper" id="projector_price_points_recive_wrapper" {{if !( $xml->getItem("page/projector/product/price/@points_recive") and $xml->getItem("page/projector/product/price/@points_recive") gt (string) 0)}} style="display:none;" {{/if}}>
											<label class="projector_label">{{$txt['81023::53676_pont_zy']}}
											</label>
											<span class="projector_points_recive_points" id="projector_points_recive_points">{{$xml->getItemEscape("page/projector/product/price/@points_recive")}}
												<span class="projector_currency">{{$txt['81023::53676_pkt']}}</span></span>
										</div>
									</div>
									<button id="projector_button_points_basket" type="submit" name="forpoints" value="1" class="btn" {{if !( $xml->getItem("/shop/page/projector/product/@for_points") == (string)'true')}} style="display:none;" {{/if}}>{{$txt['81023::53676_point_buy']}}
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
        					</script>

					<!--Karta produktu - Kolekcje (projector_collection_bundle_zone, 81027.1)-->
					{{if  $xml->getItem("page/projector/bundled/product")}}
						<div id="projector_bundle_zone">
							<a class="collection_close" href="#collection_close">{{$txt['81027::n55363_400_close']}}</a>
							<div class="big_label_collection">
								<h2 class="big_label product_bundle">
									{{if  $xml->getItem("/shop/page/projector/bundled/@collection") == (string)'true'}}
										{{$txt['81027::n55363_400_tk']}}
									{{else}}
										{{$txt['81027::n55363_400_tz']}}
									{{/if}}
								</h2>
								<label class="checkallcollection">
									<span>{{$txt['81027::n55363_400_zw']}}</span>
									<input type="checkbox" value="" checked="checked"/>
								</label>
							</div>
							<div class="product_bundle">
								<ul class="product_bundle">
									{{foreach from=$xml->getList("page/projector/bundled/product") item=loop1145}}
										<li class="product_bundle" rel="#projector_image_bundled{{$loop1145@iteration}}">
											<div class="display_table product_bundle_item">
												{{if  $loop1145->getItem("@link")  neq (string) ''}}
													{{literal}}
													<a class="product_bundle_icon display_table_cell" href="{{/literal}}{{$loop1145->getItemEscape("@link")}}{{literal}}" >{{/literal}}
													{{else}}
														{{literal}}
														<span class="product_bundle_icon display_table_cell">{{/literal}}
														{{/if}}
														<img src="{{$loop1145->getItemEscape("enclosures/images/enclosure[1]/@icon")}}" alt="{{$loop1145->getItemEscape("name")}}"></img>
														{{if  $loop1145->getItem("@link")  neq (string) ''}}
															{{literal}}</a>{{/literal}}
													{{else}}
														{{literal}}</span>{{/literal}}
												{{/if}}
												<div class="display_table_cell">
													{{if  $loop1145->getItem("@link")  neq (string) ''}}
														{{literal}}
														<a class="product-name" href="{{/literal}}{{$loop1145->getItemEscape("@link")}}{{literal}}" >{{/literal}}
														{{else}}
															{{literal}}
															<span class="product-name">{{/literal}}
															{{/if}}
															{{$loop1145->getItemEscape("name")}}
															{{if  $loop1145->getItem("@link")  neq (string) ''}}
																{{literal}}</a>{{/literal}}
														{{else}}
															{{literal}}</span>{{/literal}}
													{{/if}}
													{{if  $loop1145->getItem("firm/@name")}}
														<div class="firm">{{$txt['81027::53676_prod']}}
															<b>{{$loop1145->getItemEscape("firm/@name")}}</b>
														</div>
													{{/if}}
													{{if  $loop1145->getItem("price/@value")  gt (string) 0}}
														<div class="price">{{$txt['81027::53676_cpk0']}}
															<b>{{$loop1145->getItemEscape("price/@price_formatted")}}</b>
														</div>
													{{/if}}
													{{if  $loop1145->getItem("@link")  neq (string) ''}}
														<a class="link" href="{{$loop1145->getItemEscape("@link")}}">{{$txt['81027::53676_pdkp']}}</a>
													{{/if}}
													<div {{assign "classAttributeTmp11" ""}}{{capture name="classAttributeTmp11" assign="classAttributeTmp11"}}bundled_availability{{/capture}}{{if $loop1145->getItem("sizes/size[1]/availability/@status") == (string) 'disable'}}{{capture name="classAttributeTmp11" assign="classAttributeTmp11"}}bundled_availability disabled{{/capture}}{{/if}}   class="{{$classAttributeTmp11}}">
														{{if  $loop1145->getItem("multiversions") and  $loop1145->getItem("versions/@version_choice") == (string)'true'}}
															{{$txt['81027::53676_bundled_availability_colection']}}
														{{else}}
															{{$txt['81027::53676_bundled_availability']}}
														{{/if}}
													</div>
												</div>
												<div class="selected_options display_table_cell">
													{{foreach from=$loop1145->getList("multiversions/multi_version") item=loop1211}}
														<span class="bundle_selected_item" id="mw_{{$loop1211->getItemEscape("../../@id")}}{{$loop1211->getItemEscape("@id")}}_selected">
															{{if !( $loop1211@iteration   == (string) 1)}}
																{{$txt['81027::n55363_prz']}}
															{{/if}}
															<b>{{$loop1211->getItem("@name")}}{{$txt['81027::n55363_pp']}}</b>
															<span>
																{{foreach from=$loop1211->getList("item[@selected='true']/values/value") item=loop1216}}
																	{{if !( $loop1216@iteration   == (string) 1)}}
																		{{$txt['81027::n55363_345']}}
																	{{/if}}
																	{{$loop1216->getItem("@name")}}
																{{/foreach}}
																</span></span>
													{{/foreach}}
													{{if  $loop1145->getItem("sizes/size/@type") == (string)'onesize'}}
													{{else}}
														<span class="bundle_selected_item" id="s_{{$loop1145->getItemEscape("@id")}}_selected">
															{{if  $loop1145->getItem("multiversions/multi_version")}}
																{{$txt['81027::n55363_prz']}}
															{{/if}}
															<b>{{$txt['81027::n55363_rzad']}}{{$txt['81027::n55363_pp']}}</b>
															<span>{{$loop1145->getItemEscape("sizes/size[(@amount > 0) or (@amount = '-1')]/@description")}}</span></span>
													{{/if}}
												</div>
												<div class="bundled_checkbox display_table_cell">
													<input type="checkbox" value="" checked="checked"/>
													<input type="hidden" class="bundled_quantity" name="bundled_quantity[{{$loop1145->getItemEscape("@id")}}]" value="{{$loop1145->getItemEscape("sizes/@unit_sellby")}}" data-amount="{{$loop1145->getItemEscape("sizes/size[1]/@amount")}}" data-unit_sellby="{{$loop1145->getItemEscape("sizes/@unit_sellby")}}" data-unit="{{$loop1145->getItemEscape("sizes/@unit")}}" data-unit_precision="{{$loop1145->getItemEscape("sizes/@unit_precision")}}"></input>
													<input type="hidden" class="bundled_product" name="bundled_product[{{$loop1145->getItemEscape("@id")}}]" value="{{$loop1145->getItemEscape("@product_id")}}"></input>
												</div>
											</div>
											<div class="configure_product_wrapp">
												<a {{assign "hrefAttributeTmp60" ""}}{{capture name="hrefAttributeTmp60" assign="hrefAttributeTmp60"}}#{{/capture}} class="show_configure_product"{{capture name="hrefAttributeTmp60" assign="hrefAttributeTmp60"}}#configure_product_{{$loop1145->getItemEscape("@product_id")}}{{/capture}} data-toggletxt="{{$txt['81027::53676_zdks']}}" {{if !( $loop1145->getItem("multiversions") and $loop1145->getItem("versions/@version_choice") == (string)'true') and ( $loop1145->getItem("sizes/size/@type") == (string)'onesize')}} style="display:none;" {{/if}}  href="{{$hrefAttributeTmp60}}">{{$txt['81027::53676_pdks']}}</a>
												<div class="configure_product" id="configure_product_{{$loop1145->getItemEscape("@product_id")}}">
													<h3>{{$txt['81027::n55363_400_tzc']}}
													</h3>
													{{if  $loop1145->getItem("multiversions") and  $loop1145->getItem("versions/@version_choice") == (string)'true'}}
														<div class="multi_versions row clearfix">
															{{foreach from=$loop1145->getList("multiversions/multi_version") item=loop1266}}
																{{capture name="bundle_id" assign="bundle_id"}}
																	{{$loop1266->getItemEscape("../../@id")}}
																{{/capture}}
																<div class="multi_version product_section col-md-6">
																	<label>{{$loop1266->getItem("@name")}}
																	</label>
																	<div class="fancy-select" id="mw_{{$bundle_id}}{{$loop1266->getItemEscape("@id")}}">
																		<div class="trigger">
																			{{foreach from=$loop1266->getList("item[@selected='true']/values/value") item=loop1275}}
																				{{if !( $loop1275@iteration   == (string) 1)}}
																					{{$txt['81027::n55363_345']}}
																				{{/if}}
																				{{$loop1275->getItem("@name")}}
																			{{/foreach}}
																		</div>
																		<ul class="options">
																			{{foreach from=$loop1266->getList("item") item=loop1280}}
																				{{capture name="value_name" assign="value_name"}}
																					{{foreach from=$loop1280->getList("values/value") item=loop1283}}
																						{{if !( $loop1283@iteration   == (string) 1)}}
																							{{$txt['81027::n55363_345']}}
																						{{/if}}
																						{{$loop1283->getItem("@name")}}
																					{{/foreach}}
																				{{/capture}}
																				<li class="{{if $loop1280->getItem("@disabled") == (string)'true'}}disabled {{/if}}{{if $loop1280->getItem("@selected") == (string)'true'}}selected{{/if}}" id="v{{$bundle_id}}{{$loop1280->getItem("values/@id")}}" data-values_id="{{$loop1280->getItem("values/@id")}}" data-value="{{$loop1280@iteration}}" data-title="{{$value_name}}" data-product="{{$loop1280->getItemEscape("products/product/@product_id")}}" data-bundle_product="{{$bundle_id}}">
																					<a title="{{$value_name}}" href="{{$loop1280->getItemEscape("products/product/@url")}}">
																						{{foreach from=$loop1280->getList("values/value") item=loop1299}}
																							{{if  $loop1299->getItem("@gfx")}}
																								<span class="gfx">
																									<img src="{{$loop1299->getItemEscape("@gfx")}}" alt="{{$value_name}}"></img></span>
																							{{/if}}
																						{{/foreach}}
																						<span>
																							<span>{{$loop1280->getItem("$value_name")}}</span>
																							{{foreach from=$loop1280->getList("values/value") item=loop1313}}
																								{{if  $loop1313->getItem("description")}}
																									<div class="description">{{$loop1313->getItem("description")}}
																									</div>
																								{{/if}}
																							{{/foreach}}
																							<p class="conflict_txt">{{$txt['81027::n55363_co']}}
																							</p></span></a>
																				</li>
																			{{/foreach}}
																		</ul>
																		<p class="conflict_txt">{{$txt['81027::n55363_coz']}}
																		</p>
																		{{if  $loop1266->getItem("description")}}
																			<div class="description">{{$loop1266->getItem("description")}}
																			</div>
																		{{/if}}
																	</div>
																	{{if  $loop1266->getItem("@gfx")}}
																		<div class="gfx">
																			<img src="{{$loop1266->getItemEscape("@gfx")}}" alt="{{$loop1266->getItemEscape("@name")}}"></img>
																		</div>
																	{{/if}}
																</div>
															{{/foreach}}
														</div>
													{{/if}}
													{{if  $loop1145->getItem("sizes/size/@type") == (string)'onesize'}}
														<input {{assign "valueAttributeTmp63" ""}}  type="hidden"{{capture name="valueAttributeTmp63" assign="valueAttributeTmp63"}}{{/capture}} name="bundled_size[{{$loop1145->getItemEscape("@id")}}]"{{capture name="valueAttributeTmp63" assign="valueAttributeTmp63"}}{{$loop1145->getItemEscape("sizes/size[1]/@type")}}{{/capture}}  value="{{$valueAttributeTmp63}}"></input>
													{{else}}
														<div class="product_bundle_size" id="s_{{$loop1145->getItemEscape("@id")}}">
															<div class="product_bundle_size_title">{{$txt['81027::n55363_rza']}}
															</div>
															{{foreach from=$loop1145->getList("sizes/size") item=loop1350}}
																<label {{assign "classAttributeTmp12" ""}}{{capture name="classAttributeTmp12" assign="classAttributeTmp12"}}select_button{{/capture}}{{if $loop1350->getItem("@amount") == (string) 0}}{{capture name="classAttributeTmp12" assign="classAttributeTmp12"}}select_button disabled{{/capture}}{{/if}} data-type="{{$loop1350->getItemEscape("@type")}}" data-amount="{{$loop1350->getItemEscape("@amount")}}"  class="{{$classAttributeTmp12}}">{{$loop1350->getItemEscape("@description")}}
																</label>
															{{/foreach}}
															<input type="hidden" value="" name="bundled_size[{{$loop1145->getItemEscape("@id")}}]"></input>
														</div>
													{{/if}}
													{{if  $loop1145->getItem("sizes_chart")}}
														<a href="#show_size_colection" class="show_size_colection" data-id="#component_colection_sizes_chart_{{$loop1145->getItemEscape("sizes_chart/@id")}}_{{$loop1145->getItemEscape("../@id")}}">{{$txt['81027::n55363_table']}}</a>
														<div class="component_projector_sizes_chart" style="display:none;" id="component_colection_sizes_chart_{{$loop1145->getItemEscape("sizes_chart/@id")}}_{{$loop1145->getItemEscape("../@id")}}">
															{{if  $loop1145->getItem("sizes_chart/descriptions/description")}}
																<h2>{{$txt['81027::56195_02']}}
																</h2>
																<table {{assign "classAttributeTmp13" ""}}{{capture name="classAttributeTmp13" assign="classAttributeTmp13"}}table-condensed{{/capture}}{{capture name="classAttributeTmp13" assign="classAttributeTmp13"}}ui-responsive table-stroke ui-table ui-table-reflow table-condensed{{/capture}}  class="{{$classAttributeTmp13}}">
																	<thead>
																		<tr>
																			<th class="table-first-column">{{$txt['81027::56195_03']}}
																			</th>
																			{{foreach from=$loop1145->getList("sizes_chart/descriptions/description") item=loop1380}}
																				<th>{{$loop1380->getItem("@name")}}
																				</th>
																			{{/foreach}}
																		</tr>
																	</thead>
																	<tbody>
																		{{foreach from=$loop1145->getList("sizes_chart/sizes/size") item=loop1391}}
																			<tr>
																				<td class="table-first-column">{{$loop1391->getItem("@description")}}
																				</td>
																				{{foreach from=$loop1391->getList("description") item=loop1397}}
																					<td>{{$loop1397->getItem("@text")}}
																					</td>
																				{{/foreach}}
																			</tr>
																		{{/foreach}}
																	</tbody>
																</table>
															{{/if}}
															<div class="sizes_chart_cms">
																{{if  $loop1145->getItem("product/sizes_chart/text")}}
																	{{$loop1145->getItem("product/sizes_chart/text")}}
																{{/if}}
															</div>
														</div>
													{{/if}}
													<div class="bundle_info">
														<span>{{$txt['81027::53676_wocc']}}</span>
														<a {{assign "hrefAttributeTmp61" ""}}{{capture name="hrefAttributeTmp61" assign="hrefAttributeTmp61"}}#{{/capture}} class="btn-small"{{capture name="hrefAttributeTmp61" assign="hrefAttributeTmp61"}}#select_collection_{{$loop1145->getItemEscape("@id")}}{{/capture}}  href="{{$hrefAttributeTmp61}}">{{$txt['81027::53676_wyb']}}</a>
													</div>
												</div>
											</div>
										</li>
									{{/foreach}}
								</ul>
								<div class="clearBoth">
								</div>
							</div>
							<div class="bundle_rabat" {{if $xml->getItem("/shop/page/projector/product/bundle_price/@amount_diff_gross") == (string) 0}} style="display:none" {{/if}}>
								<h2>{{$txt['81027::53676_zrkt']}}
								</h2>
								<div class="price_gross">{{$txt['81027::53676_cpk']}}
									<b>{{$xml->getItemEscape("/shop/page/projector/product/bundle_price/@price_gross")}}{{$xml->getItemEscape("/shop/currency/@name")}}</b>
								</div>
								{{if  $xml->getItem("/shop/page/projector/bundled/@left_quantity")}}
									<div>
										<b>{{$txt['81027::53676_cpk1']}}{{$xml->getItemEscape("/shop/page/projector/bundled/@left_quantity")}}{{$txt['81027::53676_cpk2']}}</b>
									</div>
								{{/if}}
								<div class="amount_diff_gross" id="amount_diff_gross">{{$txt['81027::53676_cpk3']}}
									<b>{{$xml->getItemEscape("/shop/page/projector/product/bundle_price/@amount_diff_gross_formatted")}}</b>
								</div>
							</div>
						</div>
					{{/if}}
					{{if  $xml->getItem("page/projector/bundle/product")}}
						<div id="projector_bundle_zone2">
							<h2 {{assign "classAttributeTmp14" ""}}{{capture name="classAttributeTmp14" assign="classAttributeTmp14"}}product_bundle{{/capture}} id="product_bundle_label_2"{{capture name="classAttributeTmp14" assign="classAttributeTmp14"}}big_label product_bundle{{/capture}}  class="{{$classAttributeTmp14}}">{{$txt['81027::n55363_400_z_t']}}
							</h2>
							<table class="product_bundle">
								<tr>
									<th class="product_bundle_icon"/>
									<th class="product_bundle_name"/>
									<th>{{$txt['81027::n55363_400_c_p_z']}}
									</th>
									<th>{{$txt['81027::n55363_400_c_z']}}
									</th>
								</tr>
								{{foreach from=$xml->getList("page/projector/bundle/product") item=loop1472}}
									<tr>
										<td class="product_bundle_icon">
											<a href="{{$loop1472->getItemEscape("@link")}}">
												<img alt="product_bundle_icon" alt="{{$loop1472->getItemEscape("name")}}" src="{{$loop1472->getItemEscape("icon")}}"></img></a>
										</td>
										<td class="product_bundle_name">
											<a href="{{$loop1472->getItemEscape("@link")}}">{{$loop1472->getItemEscape("name")}}</a>
										</td>
										<td class="product_bundle_price_value">
											<span>{{$loop1472->getItemEscape("bundle_price/@price_gross")}}{{$loop1472->getItemEscape("/shop/currency/@name")}}</span>
										</td>
										<td class="product_bundle_price_gross">
											{{if  $loop1472->getItem("price/@value")  gt (string) 0}}
												<span>{{$loop1472->getItemEscape("price/@value")}}{{$loop1472->getItemEscape("/shop/currency/@name")}}</span>
												<small>{{$txt['81027::53676_400osz']}}({{$loop1472->getItemEscape("bundle_price/@percent_diff")}}%)</small>
											{{else}}
												<a href="contact.php">{{$txt['81027::n55363_400_fon']}}</a>
											{{/if}}
										</td>
									</tr>
								{{/foreach}}
							</table>
						</div>
					{{/if}}
					<script type="text/javascript" class="ajaxLoad">
     var bundle_title =   "{{$txt['81027::n55363_400_c_p_z']}}";
					</script>

					<!--Karta produktu - bannery (projector_collection_banner, 81019.1)-->
					{{if  $xml->getItem("page/projector/product/payment/instalment") or  $xml->getItem("page/projector/product/sizes_version/@stocks_link") or  $xml->getItem("page/projector/product/sizes/@stocks_link") and !( $xml->getItem("/shop/page/projector/product/price/@value")  == (string) 0)}}
						<div id="n67367" class="clearfix">
							{{if  $xml->getItem("page/projector/product/sizes_version/@stocks_link") or  $xml->getItem("page/projector/product/sizes/@stocks_link") and !( $xml->getItem("/shop/page/projector/product/price/@value")  == (string) 0)}}
								<div id="n67367_stocks" class="n67367_stocks">
									<h3>{{$txt['81019::n67367_oo_label']}}
									</h3>
									<div class="n67367_stocks_txt">{{$txt['81019::n67367_oo_opis']}}
									</div>
									<a {{assign "hrefAttributeTmp62" ""}}{{capture name="hrefAttributeTmp62" assign="hrefAttributeTmp62"}}{{$xml->getItemEscape("page/projector/product/sizes_version/@stocks_link")}}{{/capture}}{{if $xml->getItem("page/projector/product/sizes/@stocks_link")}}{{capture name="hrefAttributeTmp62" assign="hrefAttributeTmp62"}}{{$xml->getItemEscape("page/projector/product/sizes/@stocks_link")}}{{/capture}}{{/if}} title="{{$txt['81019::n67367_oo_button_title']}}"  href="{{$hrefAttributeTmp62}}">{{$txt['81019::n67367_oo_button_title']}}</a>
								</div>
							{{/if}}
							{{if  $xml->getItem("page/projector/product/payment/instalment")}}
								<div id="n67367_instalment" class="n67367_instalment">
									<h3>{{$txt['81019::n67367_raty_label']}}
									</h3>
									{{foreach from=$xml->getList("/shop/page/projector/product/payment/instalment[@selected='true']") item=loop1539}}
										<div class="instalment_value_1">
											{{if  $loop1539->getItem("@value_formatted")}}
												<img class="instalment_value_1" src="{{$loop1539->getItemEscape("@gfx_small")}}" alt="{{$loop1539->getItemEscape("@name")}}"></img>
												<span class="instalment_value_1">{{$txt['81019::n67367_mbraty_txt']}}
													<b>{{$loop1539->getItemEscape("@value_formatted")}}</b>{{$txt['81019::n67367_mbraty_txt2']}}</span>
												<span class="n67367_section_txt">{{$loop1539->getItemEscape("@name")}}{{$txt['81019::n67367_raty_opis']}}</span>
												<small class="instalment_value_2">{{$txt['81019::n67367_mbraty_txt3']}}{{$loop1539->getItemEscape("@minprice")}}{{$loop1539->getItemEscape("/shop/currency/@name")}}{{$txt['81019::n67367_mbraty_txt4']}}{{$loop1539->getItemEscape("@maxprice")}}{{$loop1539->getItemEscape("/shop/currency/@name")}}</small>
												{{if  $loop1539->getItem("note")}}
													<span class="btn_note">{{$txt['81019::n67367_mbraty_txt5']}}</span>
													<div class="tooltipContent">{{$loop1539->getItem("note/text()")}}
													</div>
												{{/if}}
											{{else}}
												<span class="n67367_section_txt">{{$loop1539->getItemEscape("@name")}}{{$txt['81019::n67367_raty_opis']}}</span>
											{{/if}}
										</div>
									{{/foreach}}
									<ul class="n67367_instalment">
										{{foreach from=$xml->getList("page/projector/product/payment/instalment") item=loop1575}}
											<li data-name="{{$loop1575->getItemEscape("@name")}}">
												<a onclick=" calculate_instalments('{{$loop1575->getItemEscape("@minprice")}}','{{$loop1575->getItemEscape("@maxprice")}}','{{$loop1575->getItemEscape("@priceTotal")}}','{{$loop1575->getItemEscape("@alert")}}',$(this).attr('data-window'),'{{$loop1575->getItemEscape("@maxquantity")}}','{{$loop1575->getItemEscape("@name")}}'); return false;" href="javascript:{{$loop1575->getItemEscape("@calculate")}}" data-window="{{$loop1575->getItemEscape("@calculatePrice")}}">
													<span>{{$txt['81019::n67367_oblicz_rate']}}{{$loop1575->getItemEscape("@name")}}</span>
													<img src="{{$loop1575->getItemEscape("@gfx")}}" alt="{{$loop1575->getItemEscape("@name")}}"></img></a>
											</li>
										{{/foreach}}
									</ul>
								</div>
							{{/if}}
						</div>
					{{/if}}
					<!--Karta produktu - załączniki (projector_collection_enclosures, 81001.1)-->
					{{if ( $xml->getItem("/shop/page/projector/product/enclosures/documents")) or ( $xml->getItem("/shop/page/projector/product/enclosures/audio"))  or ( $xml->getItem("/shop/page/projector/product/enclosures/other"))  or ( $xml->getItem("/shop/page/projector/product/enclosures/images_attachments/item")) or ( $xml->getItem("/shop/page/projector/product/enclosures/video/item"))}}
						<div class="component_projector_enclosures" id="{{$txt['81001::56259_01']}}">
							<div class="n56259_main">
								{{capture name="n68814_showlabel" assign="n68814_showlabel"}}
									{{$txt['81001::n68814_showlabel']}}
								{{/capture}}
								{{if $n68814_showlabel}}
									<div class="n68814_label">
										<span class="n68814_2_label">{{$n68814_showlabel}}</span>
									</div>
								{{/if}}
								<ul>
									{{foreach from=$xml->getList("/shop/page/projector/product/enclosures/*") item=loop1620}}
										{{foreach from=$loop1620->getList("item") item=loop1622}}
											<li {{assign "classAttributeTmp15" ""}}{{if $loop1622->getItem("@extension") == (string) 'swf'}}{{capture name="classAttributeTmp15" assign="classAttributeTmp15"}}e_swf{{/capture}}{{elseif $loop1622->getItem("@type") == (string) 'video'}}{{capture name="classAttributeTmp15" assign="classAttributeTmp15"}}e_video{{/capture}}{{elseif $loop1622->getItem("@type") == (string) 'audio/mpeg'}}{{capture name="classAttributeTmp15" assign="classAttributeTmp15"}}e_audio{{/capture}}{{elseif $loop1622->getItem("@type") == (string) 'image/image'}}{{capture name="classAttributeTmp15" assign="classAttributeTmp15"}}e_image{{/capture}}{{elseif $loop1622->getItem("@type") == (string) 'documents'}}{{capture name="classAttributeTmp15" assign="classAttributeTmp15"}}e_documents{{/capture}}{{else}}{{capture name="classAttributeTmp15" assign="classAttributeTmp15"}}e_download{{/capture}}{{/if}}  class="{{$classAttributeTmp15}}">
												<a class="enclosure_name" data-mobile-class="btn-small" href="{{$loop1622->getItemEscape("@url")}}">{{$txt['81001::56259_05i']}}{{$loop1622->getItemEscape("@name")}}</a>
												{{if  $loop1622->getItem("@extension")  == (string) 'swf'}}
													<a data-mobile-class="hide" class="enclosure_show_swf" href="{{$loop1622->getItemEscape("@url")}}&#160;amp;preview=true">{{$txt['81001::56259_066z']}}</a>
												{{elseif  $loop1622->getItem("@type")  == (string) 'video'}}
													<a data-mobile-class="hide" class="enclosure_video_play" href="{{$loop1622->getItemEscape("@url")}}">{{$txt['81001::56259_05']}}</a>
													<input type="hidden" name="enclosure_play_position" value="{{$loop1622@iteration}}"></input>
												{{elseif  $loop1622->getItem("@type")  == (string) 'audio/mpeg'}}
													<a data-mobile-class="hide" class="enclosure_audio_play" href="{{$loop1622->getItemEscape("/shop/@baseurl")}}{{$loop1622->getItemEscape("@url")}}">{{$txt['81001::56259_04']}}</a>
													<input type="hidden" name="enclosure_play_position" value="{{$loop1622@iteration}}"></input>
												{{elseif  $loop1622->getItem("@type")  == (string) 'image/image'}}
													<a data-mobile-class="hide" class="enclosure_show_image" href="{{$loop1622->getItemEscape("@url")}}">{{$txt['81001::56259_06']}}</a>
												{{else}}
													<a data-mobile-class="hide" class="enclosure_download" href="{{$loop1622->getItemEscape("@url")}}">{{$txt['81001::56259_03']}}</a>
												{{/if}}
											</li>
										{{/foreach}}
									{{/foreach}}
									{{if  $xml->getItem("/shop/page/projector/product/enclosures/video/item")}}
										<script type="text/javascript">
var enclosures_video_obj  = [
{{foreach from=$xml->getList("/shop/page/projector/product/enclosures/video/item") item=loop1686}}{{if !( $loop1686@iteration   == (string) 1)}},{{/if}}{
            title:"{{$loop1686->getItemEscape("@name")}}",
free:true,
            m4v:"{{$loop1686->getItemEscape("/shop/@baseurl")}}{{$loop1686->getItemEscape("@url")}}",
            }
{{/foreach}}
        ]
    										</script>

									{{/if}}
									{{if  $xml->getItem("/shop/page/projector/product/enclosures/audio/item")}}
										<script type="text/javascript">
var enclosures_audio_obj  = [
{{foreach from=$xml->getList("/shop/page/projector/product/enclosures/audio/item") item=loop1701}}{{if !( $loop1701@iteration   == (string) 1)}},{{/if}}{
            {{capture name="audio_position" assign="audio_position"}}{{$loop1701@iteration}}{{/capture}} 
            title:"{{$loop1701->getItemEscape("@name")}}",
            free:true,
            mp3:"{{$loop1701->getItemEscape("/shop/@baseurl")}}{{$loop1701->getItemEscape("@url")}}",
            {{if  $loop1701->getItem("/shop/page/projector/product/enclosures/images/enclosure[@position = $audio_position]/@url")}}
                     poster:"{{$loop1701->getItemEscape("/shop/page/projector/product/enclosures/images/enclosure[@position = $audio_position]/@url")}}"                            
                {{else}}
                    poster:"{{$loop1701->getItemEscape("/shop/page/projector/product/enclosures/images/enclosure[1]/@url")}}"
                {{/if}}
            }
{{/foreach}}
        ]
    										</script>

									{{/if}}
									{{if  $xml->getItem("/shop/page/projector/product/enclosures/images_attachments/item")}}
										<script type="text/javascript">
    var enclosures_images_obj = new Object();
     {{if !(count( $xml->getList("/shop/page/projector/product/enclosures/images_attachments/item"))  == (string) 1)}}{{foreach from=$xml->getList("/shop/page/projector/product/enclosures/images_attachments/item") item=loop1723}}
    enclosures_images_obj[{{$loop1723->getItemEscape("@position")}}]=new Array('{{$loop1723->getItemEscape("@url")}}','1','1');
{{/foreach}}{{/if}}										</script>

									{{/if}}
								</ul>
							</div>
						</div>
					{{/if}}
					<!--Powiadomienia (projector_collection_notice, 80997.1)-->
					{{capture name="required_68516" assign="required_68516"}}
						{{$txt['80997::68516_required']}}
					{{/capture}}
					<div id="avabilityDialog" class="avabilityDialog" style="display:none;">
						<div class="avabilityDialog_sub">
							<a href="#" id="avabilityDialog_close" class="avabilityDialog_close">
								<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/zamknij.gif?r=1570606529" alt="Zamknij" class="avabilityDialog_close"/></a>
							<h2>{{$txt['80997::54426_avability']}}
							</h2>
							<div class="avabilityDialog_pr_info">
								<img alt="smallFoto" class="avabilityDialog" src="{{$xml->getItemEscape("page/projector/product/enclosures/images/enclosure/@icon")}}" alt="{{$xml->getItem("/shop/page/projector/product/name")}}"></img>
								<ul class="avabilityDialog_pr_info">
									<li id="avability_product_name">
										<strong>{{$xml->getItem("/shop/page/projector/product/name")}}</strong>
									</li>
									{{if  $xml->getItem("page/projector/product/@code")}}
										<li id="avability_product_code">
											<span>{{$txt['80997::53676_005_kodav']}}</span>
											<strong>{{$xml->getItemEscape("page/projector/product/@code")}}</strong>
										</li>
									{{/if}}
									{{if ( $xml->getItem("page/projector/product/versions/@count")  gt (string) 0)}}
										<li id="avability_product_version">
											<span>{{$xml->getItemEscape("page/projector/product/versions/@name")}}{{$txt['80997::53676_005_kr']}}</span>
											<strong>{{$xml->getItemEscape("page/projector/product/versions/version[@id = /shop/page/projector/product/@id]/@name")}}</strong>
										</li>
									{{/if}}
									<li id="avability_product_size">
										<span style="display: block;">{{$txt['80997::53676_005_roz']}}</span>
										{{foreach from=$xml->getList("page/projector/product/sizes/size") item=loop1774}}
											{{if  $loop1774->getItem("@amount")  == (string) 0}}
												<label class="select_button" data-type="{{$loop1774->getItemEscape("@type")}}">{{$loop1774->getItemEscape("@description")}}
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
								<div class="avabilityDialog_text1">{{$txt['80997::53676_005_text1']}}
								</div>
								<input type="hidden" name="avability_track" value="only_one"/>
								<div class="avabilityDialog_text2">{{$txt['80997::53676_005_text2']}}
								</div>
								<div class="avabilityDialog_email">
									<label>{{$txt['80997::53676_005_email']}}
									</label>
									<input type="text" name="email" id="avabilityDialog_email" value="{{$xml->getItemEscape("page/projector/sender/@email")}}"></input>
									<span class="validation_icons">
										<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/correct.png?r=1570606529" alt="correct" class="correct_icon" style="display:none;"/>
										<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/incorrect.png?r=1570606529" alt="incorrect" class="incorrect_icon" style="display:none;"/></span>
								</div>
								<div class="avabilityDialog_tel" id="avabilityDialog_tel">
									<label>
										<input type="checkbox"/>
										<span>{{$txt['80997::53676_005_phone']}}</span>
									</label>
									<div class="avabilityDialog_tel2" id="avabilityDialog_phone2">
										<label class="avabilityDialog_tel">{{$txt['80997::53676_005_phone2']}}
										</label>
										<input type="text" name="phone" id="avabilityDialog_phone"/>
										<span class="validation_icons">
											<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/correct.png?r=1570606529" alt="correct" class="correct_icon" style="display:none;"/>
											<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/incorrect.png?r=1570606529" alt="incorrect" class="incorrect_icon" style="display:none;"/></span>
									</div>
								</div>
								<div class="avabilityDialog_text3">{{$txt['80997::53676_005_text3']}}
								</div>
								<div id="avabilityDialog_buttons1" class="avabilityDialog_buttons1">
									<button {{assign "classAttributeTmp16" ""}}  type="submit" id="avabilityDialog_submit"{{capture name="classAttributeTmp16" assign="classAttributeTmp16"}}avabilityDialog_submit{{/capture}}{{capture name="classAttributeTmp16" assign="classAttributeTmp16"}}btn avabilityDialog_submit{{/capture}}  class="{{$classAttributeTmp16}}">{{$txt['80997::53676_button_1']}}
									</button>
									{{if $required_68516}}
										<div class="order_open_required">{{$txt['80997::68516_003']}}
											<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/need.gif?r=1570606529" alt="{{$txt['80997::n56203_010b']}}" title="{{$txt['80997::n56203_010b']}}"></img>{{$required_68516}}
										</div>
									{{/if}}
								</div>
							</form>
						</div>
					</div>
					<script type="text/javascript" class="ajaxLoad">
    projector_notice_init();
					</script>

					<!--Product questions (projector_collection_product_questions, 80987.1)-->
					{{if count( $xml->getList("page/projector/questions/question"))}}
						<div class="product_questions_list" id="product_questions_list">
							<div {{assign "classAttributeTmp17" ""}}{{capture name="classAttributeTmp17" assign="classAttributeTmp17"}}product_questions_list_label{{/capture}}{{capture name="classAttributeTmp17" assign="classAttributeTmp17"}}product_questions_list_label big_label{{/capture}}  class="{{$classAttributeTmp17}}">
								<span class="product_questions_list_label">{{$txt['80987::product_questions_list_label']}}</span>
							</div>
							<div class="product_questions_list_sub">
								{{foreach from=$xml->getList("page/projector/questions/question") item=loop1865}}
									<div class="product_question">{{$loop1865->getItemEscape("@question")}}
									</div>
									<div class="product_question_answer">{{$loop1865->getItem("@answer")}}
									</div>
								{{/foreach}}
							</div>
						</div>
					{{/if}}
					<!--Długi opis produktu z HTML (projector_collection_longdescription, 81007.1)-->
					{{if  $xml->getItem("page/projector/product/vlongdescription") and !( $xml->getItem("page/projector/product/vlongdescription")  == (string) '')}}
						<div {{assign "classAttributeTmp18" ""}}{{capture name="classAttributeTmp18" assign="classAttributeTmp18"}}projector_longdescription cm{{/capture}}{{capture name="classAttributeTmp18" assign="classAttributeTmp18"}}projector_longdescription cm {{$txt['81007::n55363_class']}}{{/capture}} id="{{$txt['81007::56174_1']}}"  class="{{$classAttributeTmp18}}">{{$xml->getItem("page/projector/product/vlongdescription/text()")}}
						</div>
					{{/if}}
					<!--Karta produktu - słownik opisu (projector_collection_dictionary, 80999.1)-->
					{{if count( $xml->getList("/shop/page/projector/product/dictionary/items"))  gt (string) 0}}
						<div class="component_projector_dictionary" id="{{$txt['80999::56173_01']}}">
							<div class="n56173_main">
								<div class="n56173_label">
									<span class="n56173_2_label">{{$txt['80999::56173_02']}}</span>
								</div>
								<div class="n56173_sub">
									<table class="n54117_dictionary">
										{{foreach from=$xml->getList("/shop/page/projector/product/dictionary/items/item") item=loop1891}}
											{{if  $loop1891->getItem("@type")  == (string) 'group'}}
												<tr>
													<td class="n54117_group" colspan="2">
														<div class="n54117_group">
															{{if  $loop1891->getItem("desc")  neq (string) ''}}
																<span class="n54117_name_group">{{$loop1891->getItemEscape("@name")}}</span>
															{{else}}
																<span class="n54117_name2_group">{{$loop1891->getItemEscape("@name")}}</span>
															{{/if}}
															{{if  $loop1891->getItem("desc")  neq (string) ''}}
																<img class="qmark2 showTip" src="/gfx/__IAI_TEMPLATE_LANG_639_1__/qmark2.gif?r=1570606529" alt="" title=""></img>
																<div class="tooltipContent">{{$loop1891->getItem("desc")}}
																</div>
															{{/if}}
														</div>
													</td>
												</tr>
											{{/if}}
											{{if  $loop1891->getItem("@type")  == (string) 'element'}}
												<tr>
													<td {{assign "classAttributeTmp19" ""}}{{if $loop1891@iteration % 2}}{{capture name="classAttributeTmp19" assign="classAttributeTmp19"}}n54117_item_a1{{/capture}}{{else}}{{capture name="classAttributeTmp19" assign="classAttributeTmp19"}}n54117_item_a2{{/capture}}{{/if}}  class="{{$classAttributeTmp19}}">
														<span>{{$loop1891->getItemEscape("@name")}}</span>
														<span class="n67256colon">{{$txt['80999::n54117_444']}}</span>
														{{if  $loop1891->getItem("desc")  neq (string) ''}}
															<img class="qmark showTip" src="/gfx/__IAI_TEMPLATE_LANG_639_1__/qmark2.gif?r=1570606529" alt="" title=""></img>
															<div class="tooltipContent">{{$loop1891->getItem("desc")}}
															</div>
														{{/if}}
													</td>
													<td {{assign "classAttributeTmp20" ""}}{{if $loop1891@iteration % 2}}{{capture name="classAttributeTmp20" assign="classAttributeTmp20"}}n54117_item_b1{{/capture}}{{else}}{{capture name="classAttributeTmp20" assign="classAttributeTmp20"}}n54117_item_b2{{/capture}}{{/if}}   class="{{$classAttributeTmp20}}">
														{{foreach from=$loop1891->getList("values/value") item=loop1931}}
															{{if  $loop1931@iteration   gt (string) 1}}
																{{$txt['80999::n54117_444c']}}
															{{/if}}
															<div class="n54117_item_b_sub">
																{{if  $loop1931->getItem("desc")  neq (string) ''}}
																	<span class="n54117_name_sub">{{$loop1931->getItem("@value")}}</span>
																{{else}}
																	{{$loop1931->getItem("@value")}}
																{{/if}}
																{{if  $loop1931->getItem("desc")  neq (string) ''}}
																	<img class="qmark showTip" src="/gfx/__IAI_TEMPLATE_LANG_639_1__/qmark.gif?r=1570606529" alt="" title=""></img>
																	<div class="tooltipContent">{{$loop1931->getItem("desc")}}
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
					<!--CMS w karcie produktu (projector_collection_cms, 80985.1)-->
					{{if  $xml->getItem("page/projector/text/body")}}
						<div {{assign "classAttributeTmp21" ""}}{{capture name="classAttributeTmp21" assign="classAttributeTmp21"}}component_projector_cms{{/capture}} id="{{$txt['80985::56196_01']}}"{{capture name="classAttributeTmp21" assign="classAttributeTmp21"}}component_projector_cms cm{{/capture}}  class="{{$classAttributeTmp21}}">
							<div class="n56196_main">
								<div class="n56196_sub">{{$xml->getItem("page/projector/text/body")}}
								</div>
							</div>
						</div>
					{{/if}}
					<!--Produkty powiązane z tym produktem - strefa 1 (projector_collection_associated_zone1, 81009.1)-->
					{{if  $xml->getItem("page/projector/products_associated_zone1/product") or  $xml->getItem("page/projector/products_associated_zone1/opinion")}}
						<div class="main_hotspot mrg-b clearfix" id="products_associated_zone1">
							<div class="big_label">
								{{if  $xml->getItem("page/projector/products_associated_zone1/@name")}}
									{{$xml->getItemEscape("page/projector/products_associated_zone1/@name")}}
								{{else}}
									{{$txt['81009::58826_label']}}
								{{/if}}
								{{$txt['81009::58826_label-after']}}
							</div>
							<div class="col-bg-1 align_row main_hotspot_sub" data-align="a.product-icon img#css">
								<div {{assign "classAttributeTmp22" ""}}{{capture name="classAttributeTmp22" assign="classAttributeTmp22"}}products_wrapper row clearfix{{/capture}}{{if (count( $xml->getList("page/projector/products_associated_zone1/product")) == (string) 1) or (count( $xml->getList("page/projector/products_associated_zone1/opinion")) == (string) 1)}}{{capture name="classAttributeTmp22" assign="classAttributeTmp22"}}products_wrapper row clearfix col-md-3 col-xs-6{{/capture}}{{/if}}{{if (count( $xml->getList("page/projector/products_associated_zone1/product")) == (string) 2) or (count( $xml->getList("page/projector/products_associated_zone1/opinion")) == (string) 2)}}{{capture name="classAttributeTmp22" assign="classAttributeTmp22"}}products_wrapper row clearfix col-md-6 col-xs-12{{/capture}}{{/if}}   class="{{$classAttributeTmp22}}">
									{{foreach from=$xml->getList("page/projector/products_associated_zone1/*") item=loop2008}}
										{{capture name="var_name" assign="var_name"}}
											{{if  $loop2008->getItem("product")}}
												{{$loop2008->getItem("product/name/text()")}}
											{{else}}
												{{$loop2008->getItem("name/text()")}}
											{{/if}}
										{{/capture}}
										{{capture name="var_icon" assign="var_icon"}}
											{{if  $loop2008->getItem("product")}}
												{{$loop2008->getItemEscape("product/icon")}}
											{{else}}
												{{$loop2008->getItemEscape("icon")}}
											{{/if}}
										{{/capture}}
										{{capture name="var_icon_small" assign="var_icon_small"}}
											{{if  $loop2008->getItem("product")}}
												{{$loop2008->getItemEscape("product/icon_small")}}
											{{else}}
												{{$loop2008->getItemEscape("icon_small")}}
											{{/if}}
										{{/capture}}
										{{capture name="var_link" assign="var_link"}}
											{{if  $loop2008->getItem("product")}}
												{{$loop2008->getItemEscape("product/@link")}}
											{{else}}
												{{$loop2008->getItemEscape("@link")}}
											{{/if}}
										{{/capture}}
										<div {{assign "classAttributeTmp23" ""}}{{capture name="classAttributeTmp23" assign="classAttributeTmp23"}}product_wrapper col-md-3 col-xs-6{{/capture}}{{capture name="classAttributeTmp23" assign="classAttributeTmp23"}}{{$txt['81009::product_wrapper_col']}} type_{{$loop2008->getItemEscape("name(.)")}}{{/capture}}  class="{{$classAttributeTmp23}}">
											<a class="product-icon" href="{{$var_link}}" title="{{$var_name}}">
												<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/loader.gif?r=1570606529" class="b-lazy" data-src-small="{{$loop2008->getItem("$var_icon_small")}}" data-src="{{$loop2008->getItem("$var_icon")}}" alt="{{$loop2008->getItem("$var_name")}}"></img></a>
											<a class="product-name" href="{{$var_link}}" title="{{$var_name}}">{{$var_name}}</a>
											{{capture name="var_size_min_formatted" assign="var_size_min_formatted"}}
												{{if  $loop2008->getItem("product")}}
													{{$loop2008->getItemEscape("product/price/@size_min_formatted")}}
												{{else}}
													{{$loop2008->getItemEscape("price/@size_min_formatted")}}
												{{/if}}
											{{/capture}}
											{{capture name="var_size_max_formatted" assign="var_size_max_formatted"}}
												{{if  $loop2008->getItem("product")}}
													{{$loop2008->getItemEscape("product/price/@size_max_formatted")}}
												{{else}}
													{{$loop2008->getItemEscape("price/@size_max_formatted")}}
												{{/if}}
											{{/capture}}
											{{capture name="var_points" assign="var_points"}}
												{{if  $loop2008->getItem("product")}}
													{{$loop2008->getItemEscape("product/price/@points")}}
												{{else}}
													{{$loop2008->getItemEscape("price/@points")}}
												{{/if}}
											{{/capture}}
											{{capture name="var_value" assign="var_value"}}
												{{if  $loop2008->getItem("product")}}
													{{$loop2008->getItemEscape("product/price/@value")}}
												{{else}}
													{{$loop2008->getItemEscape("price/@value")}}
												{{/if}}
											{{/capture}}
											{{capture name="var_price_formatted" assign="var_price_formatted"}}
												{{if  $loop2008->getItem("product")}}
													{{$loop2008->getItemEscape("product/price/@price_formatted")}}
												{{else}}
													{{$loop2008->getItemEscape("price/@price_formatted")}}
												{{/if}}
											{{/capture}}
											{{capture name="var_maxprice_formatted" assign="var_maxprice_formatted"}}
												{{if  $loop2008->getItem("product")}}
													{{$loop2008->getItemEscape("product/price/@maxprice_formatted")}}
												{{else}}
													{{$loop2008->getItemEscape("price/@maxprice_formatted")}}
												{{/if}}
											{{/capture}}
											{{capture name="var_size_min_maxprice_formatted" assign="var_size_min_maxprice_formatted"}}
												{{if  $loop2008->getItem("product")}}
													{{$loop2008->getItemEscape("product/price/@size_min_maxprice_formatted")}}
												{{else}}
													{{$loop2008->getItemEscape("price/@size_min_maxprice_formatted")}}
												{{/if}}
											{{/capture}}
											{{capture name="var_size_max_maxprice_formatted" assign="var_size_max_maxprice_formatted"}}
												{{if  $loop2008->getItem("product")}}
													{{$loop2008->getItemEscape("product/price/@size_max_maxprice_formatted")}}
												{{else}}
													{{$loop2008->getItemEscape("price/@size_max_maxprice_formatted")}}
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
															<span class="currency">{{$txt['81009::58826_012']}}</span></span>
													{{/if}}
												{{elseif ($var_value  == (string) 0) and $var_points  == (string) ''}}
													<a class="fon_price" data-mobile-class="btn-small" title="{{$txt['81009::58826_009']}}" href="{{$loop2008->getItemEscape("/shop/contact/link/@url")}}">{{$txt['81009::58826_010']}}</a>
												{{else}}
													<span class="price">{{$txt['81009::58826_003']}}{{$var_price_formatted}}</span>
													{{if $var_maxprice_formatted  neq (string) ''}}
														<del class="max-price">{{$txt['81009::58826_006']}}{{$var_maxprice_formatted}}</del>
													{{/if}}
													{{if $var_points  neq (string) ''}}
														<span class="point-price">{{$var_points}}
															<span class="currency">{{$txt['81009::58826_012']}}</span></span>
													{{/if}}
												{{/if}}
											</div>
											{{if  $loop2008->getItem("client/@client")}}
												<div class="client">{{$loop2008->getItem("client/@client")}}
												</div>
											{{/if}}
											{{if  $loop2008->getItem("@note")}}
												<div class="note">
													<span>
														<i {{assign "classAttributeTmp24" ""}}{{capture name="classAttributeTmp24" assign="classAttributeTmp24"}}icon-star{{/capture}}{{if $loop2008->getItem("@note") gt (string) 0.5}}{{capture name="classAttributeTmp24" assign="classAttributeTmp24"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp24}}"></i>
														<i {{assign "classAttributeTmp25" ""}}{{capture name="classAttributeTmp25" assign="classAttributeTmp25"}}icon-star{{/capture}}{{if $loop2008->getItem("@note") gt (string) 1.5}}{{capture name="classAttributeTmp25" assign="classAttributeTmp25"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp25}}"></i>
														<i {{assign "classAttributeTmp26" ""}}{{capture name="classAttributeTmp26" assign="classAttributeTmp26"}}icon-star{{/capture}}{{if $loop2008->getItem("@note") gt (string) 2.5}}{{capture name="classAttributeTmp26" assign="classAttributeTmp26"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp26}}"></i>
														<i {{assign "classAttributeTmp27" ""}}{{capture name="classAttributeTmp27" assign="classAttributeTmp27"}}icon-star{{/capture}}{{if $loop2008->getItem("@note") gt (string) 3.5}}{{capture name="classAttributeTmp27" assign="classAttributeTmp27"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp27}}"></i>
														<i {{assign "classAttributeTmp28" ""}}{{capture name="classAttributeTmp28" assign="classAttributeTmp28"}}icon-star{{/capture}}{{if $loop2008->getItem("@note") gt (string) 4.5}}{{capture name="classAttributeTmp28" assign="classAttributeTmp28"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp28}}"></i></span>
													<small>{{$txt['81009::58826_oc']}}{{$loop2008->getItem("@note")}}{{$txt['81009::58826_oce']}}</small>
												</div>
											{{/if}}
											{{if  $loop2008->getItem("content")}}
												<div class="cleardescription">{{$loop2008->getItem("content")}}
												</div>
											{{/if}}
										</div>
									{{/foreach}}
								</div>
							</div>
						</div>
					{{/if}}
					<!--Produkty powiązane z tym produktem - strefa 2 (projector_collection_associated_zone2, 81011.1)-->
					{{if  $xml->getItem("page/projector/products_associated_zone2/product") or  $xml->getItem("page/projector/products_associated_zone2/opinion")}}
						<div class="main_hotspot mrg-b clearfix" id="products_associated_zone2">
							<div class="big_label">
								{{if  $xml->getItem("page/projector/products_associated_zone2/@name")}}
									{{$xml->getItemEscape("page/projector/products_associated_zone2/@name")}}
								{{else}}
									{{$txt['81011::58826_label']}}
								{{/if}}
								{{$txt['81011::58826_label-after']}}
							</div>
							<div class="col-bg-1 align_row main_hotspot_sub" data-align="a.product-icon img#css">
								<div {{assign "classAttributeTmp29" ""}}{{capture name="classAttributeTmp29" assign="classAttributeTmp29"}}products_wrapper row clearfix{{/capture}}{{if (count( $xml->getList("page/projector/products_associated_zone2/product")) == (string) 1) or (count( $xml->getList("page/projector/products_associated_zone2/opinion")) == (string) 1)}}{{capture name="classAttributeTmp29" assign="classAttributeTmp29"}}products_wrapper row clearfix col-md-3 col-xs-6{{/capture}}{{/if}}{{if (count( $xml->getList("page/projector/products_associated_zone2/product")) == (string) 2) or (count( $xml->getList("page/projector/products_associated_zone2/opinion")) == (string) 2)}}{{capture name="classAttributeTmp29" assign="classAttributeTmp29"}}products_wrapper row clearfix col-md-6 col-xs-12{{/capture}}{{/if}}   class="{{$classAttributeTmp29}}">
									{{foreach from=$xml->getList("page/projector/products_associated_zone2/*") item=loop2150}}
										{{capture name="var_name" assign="var_name"}}
											{{if  $loop2150->getItem("product")}}
												{{$loop2150->getItem("product/name/text()")}}
											{{else}}
												{{$loop2150->getItem("name/text()")}}
											{{/if}}
										{{/capture}}
										{{capture name="var_icon" assign="var_icon"}}
											{{if  $loop2150->getItem("product")}}
												{{$loop2150->getItemEscape("product/icon")}}
											{{else}}
												{{$loop2150->getItemEscape("icon")}}
											{{/if}}
										{{/capture}}
										{{capture name="var_icon_small" assign="var_icon_small"}}
											{{if  $loop2150->getItem("product")}}
												{{$loop2150->getItemEscape("product/icon_small")}}
											{{else}}
												{{$loop2150->getItemEscape("icon_small")}}
											{{/if}}
										{{/capture}}
										{{capture name="var_link" assign="var_link"}}
											{{if  $loop2150->getItem("product")}}
												{{$loop2150->getItemEscape("product/@link")}}
											{{else}}
												{{$loop2150->getItemEscape("@link")}}
											{{/if}}
										{{/capture}}
										<div {{assign "classAttributeTmp30" ""}}{{capture name="classAttributeTmp30" assign="classAttributeTmp30"}}product_wrapper col-md-3 col-xs-6{{/capture}}{{capture name="classAttributeTmp30" assign="classAttributeTmp30"}}{{$txt['81011::product_wrapper_col']}} type_{{$loop2150->getItemEscape("name(.)")}}{{/capture}}  class="{{$classAttributeTmp30}}">
											<a class="product-icon" href="{{$var_link}}" title="{{$var_name}}">
												<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/loader.gif?r=1570606529" class="b-lazy" data-src-small="{{$loop2150->getItem("$var_icon_small")}}" data-src="{{$loop2150->getItem("$var_icon")}}" alt="{{$loop2150->getItem("$var_name")}}"></img></a>
											<a class="product-name" href="{{$var_link}}" title="{{$var_name}}">{{$var_name}}</a>
											{{capture name="var_size_min_formatted" assign="var_size_min_formatted"}}
												{{if  $loop2150->getItem("product")}}
													{{$loop2150->getItemEscape("product/price/@size_min_formatted")}}
												{{else}}
													{{$loop2150->getItemEscape("price/@size_min_formatted")}}
												{{/if}}
											{{/capture}}
											{{capture name="var_size_max_formatted" assign="var_size_max_formatted"}}
												{{if  $loop2150->getItem("product")}}
													{{$loop2150->getItemEscape("product/price/@size_max_formatted")}}
												{{else}}
													{{$loop2150->getItemEscape("price/@size_max_formatted")}}
												{{/if}}
											{{/capture}}
											{{capture name="var_points" assign="var_points"}}
												{{if  $loop2150->getItem("product")}}
													{{$loop2150->getItemEscape("product/price/@points")}}
												{{else}}
													{{$loop2150->getItemEscape("price/@points")}}
												{{/if}}
											{{/capture}}
											{{capture name="var_value" assign="var_value"}}
												{{if  $loop2150->getItem("product")}}
													{{$loop2150->getItemEscape("product/price/@value")}}
												{{else}}
													{{$loop2150->getItemEscape("price/@value")}}
												{{/if}}
											{{/capture}}
											{{capture name="var_price_formatted" assign="var_price_formatted"}}
												{{if  $loop2150->getItem("product")}}
													{{$loop2150->getItemEscape("product/price/@price_formatted")}}
												{{else}}
													{{$loop2150->getItemEscape("price/@price_formatted")}}
												{{/if}}
											{{/capture}}
											{{capture name="var_maxprice_formatted" assign="var_maxprice_formatted"}}
												{{if  $loop2150->getItem("product")}}
													{{$loop2150->getItemEscape("product/price/@maxprice_formatted")}}
												{{else}}
													{{$loop2150->getItemEscape("price/@maxprice_formatted")}}
												{{/if}}
											{{/capture}}
											{{capture name="var_size_min_maxprice_formatted" assign="var_size_min_maxprice_formatted"}}
												{{if  $loop2150->getItem("product")}}
													{{$loop2150->getItemEscape("product/price/@size_min_maxprice_formatted")}}
												{{else}}
													{{$loop2150->getItemEscape("price/@size_min_maxprice_formatted")}}
												{{/if}}
											{{/capture}}
											{{capture name="var_size_max_maxprice_formatted" assign="var_size_max_maxprice_formatted"}}
												{{if  $loop2150->getItem("product")}}
													{{$loop2150->getItemEscape("product/price/@size_max_maxprice_formatted")}}
												{{else}}
													{{$loop2150->getItemEscape("price/@size_max_maxprice_formatted")}}
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
															<span class="currency">{{$txt['81011::58826_012']}}</span></span>
													{{/if}}
												{{elseif ($var_value  == (string) 0) and $var_points  == (string) ''}}
													<a class="fon_price" data-mobile-class="btn-small" title="{{$txt['81011::58826_009']}}" href="{{$loop2150->getItemEscape("/shop/contact/link/@url")}}">{{$txt['81011::58826_010']}}</a>
												{{else}}
													<span class="price">{{$txt['81011::58826_003']}}{{$var_price_formatted}}</span>
													{{if $var_maxprice_formatted  neq (string) ''}}
														<del class="max-price">{{$txt['81011::58826_006']}}{{$var_maxprice_formatted}}</del>
													{{/if}}
													{{if $var_points  neq (string) ''}}
														<span class="point-price">{{$var_points}}
															<span class="currency">{{$txt['81011::58826_012']}}</span></span>
													{{/if}}
												{{/if}}
											</div>
											{{if  $loop2150->getItem("client/@client")}}
												<div class="client">{{$loop2150->getItem("client/@client")}}
												</div>
											{{/if}}
											{{if  $loop2150->getItem("@note")}}
												<div class="note">
													<span>
														<i {{assign "classAttributeTmp31" ""}}{{capture name="classAttributeTmp31" assign="classAttributeTmp31"}}icon-star{{/capture}}{{if $loop2150->getItem("@note") gt (string) 0.5}}{{capture name="classAttributeTmp31" assign="classAttributeTmp31"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp31}}"></i>
														<i {{assign "classAttributeTmp32" ""}}{{capture name="classAttributeTmp32" assign="classAttributeTmp32"}}icon-star{{/capture}}{{if $loop2150->getItem("@note") gt (string) 1.5}}{{capture name="classAttributeTmp32" assign="classAttributeTmp32"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp32}}"></i>
														<i {{assign "classAttributeTmp33" ""}}{{capture name="classAttributeTmp33" assign="classAttributeTmp33"}}icon-star{{/capture}}{{if $loop2150->getItem("@note") gt (string) 2.5}}{{capture name="classAttributeTmp33" assign="classAttributeTmp33"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp33}}"></i>
														<i {{assign "classAttributeTmp34" ""}}{{capture name="classAttributeTmp34" assign="classAttributeTmp34"}}icon-star{{/capture}}{{if $loop2150->getItem("@note") gt (string) 3.5}}{{capture name="classAttributeTmp34" assign="classAttributeTmp34"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp34}}"></i>
														<i {{assign "classAttributeTmp35" ""}}{{capture name="classAttributeTmp35" assign="classAttributeTmp35"}}icon-star{{/capture}}{{if $loop2150->getItem("@note") gt (string) 4.5}}{{capture name="classAttributeTmp35" assign="classAttributeTmp35"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp35}}"></i></span>
													<small>{{$txt['81011::58826_oc']}}{{$loop2150->getItem("@note")}}{{$txt['81011::58826_oce']}}</small>
												</div>
											{{/if}}
											{{if  $loop2150->getItem("content")}}
												<div class="cleardescription">{{$loop2150->getItem("content")}}
												</div>
											{{/if}}
										</div>
									{{/foreach}}
								</div>
							</div>
						</div>
					{{/if}}
					<!--Produkty powiązane z tym produktem - strefa 3 (projector_collection_associated_zone3, 81013.1)-->
					{{if  $xml->getItem("page/projector/products_associated_zone3/product") or  $xml->getItem("page/projector/products_associated_zone3/opinion")}}
						<div class="main_hotspot mrg-b clearfix" id="products_associated_zone3">
							<div class="big_label">
								{{if  $xml->getItem("page/projector/products_associated_zone3/@name")}}
									{{$xml->getItemEscape("page/projector/products_associated_zone3/@name")}}
								{{else}}
									{{$txt['81013::58826_label']}}
								{{/if}}
								{{$txt['81013::58826_label-after']}}
							</div>
							<div class="col-bg-1 align_row main_hotspot_sub" data-align="a.product-icon img#css">
								<div {{assign "classAttributeTmp36" ""}}{{capture name="classAttributeTmp36" assign="classAttributeTmp36"}}products_wrapper row clearfix{{/capture}}{{if (count( $xml->getList("page/projector/products_associated_zone3/product")) == (string) 1) or (count( $xml->getList("page/projector/products_associated_zone3/opinion")) == (string) 1)}}{{capture name="classAttributeTmp36" assign="classAttributeTmp36"}}products_wrapper row clearfix col-md-3 col-xs-6{{/capture}}{{/if}}{{if (count( $xml->getList("page/projector/products_associated_zone3/product")) == (string) 2) or (count( $xml->getList("page/projector/products_associated_zone3/opinion")) == (string) 2)}}{{capture name="classAttributeTmp36" assign="classAttributeTmp36"}}products_wrapper row clearfix col-md-6 col-xs-12{{/capture}}{{/if}}   class="{{$classAttributeTmp36}}">
									{{foreach from=$xml->getList("page/projector/products_associated_zone3/*") item=loop2293}}
										{{capture name="var_name" assign="var_name"}}
											{{if  $loop2293->getItem("product")}}
												{{$loop2293->getItem("product/name/text()")}}
											{{else}}
												{{$loop2293->getItem("name/text()")}}
											{{/if}}
										{{/capture}}
										{{capture name="var_icon" assign="var_icon"}}
											{{if  $loop2293->getItem("product")}}
												{{$loop2293->getItemEscape("product/icon")}}
											{{else}}
												{{$loop2293->getItemEscape("icon")}}
											{{/if}}
										{{/capture}}
										{{capture name="var_icon_small" assign="var_icon_small"}}
											{{if  $loop2293->getItem("product")}}
												{{$loop2293->getItemEscape("product/icon_small")}}
											{{else}}
												{{$loop2293->getItemEscape("icon_small")}}
											{{/if}}
										{{/capture}}
										{{capture name="var_link" assign="var_link"}}
											{{if  $loop2293->getItem("product")}}
												{{$loop2293->getItemEscape("product/@link")}}
											{{else}}
												{{$loop2293->getItemEscape("@link")}}
											{{/if}}
										{{/capture}}
										<div {{assign "classAttributeTmp37" ""}}{{capture name="classAttributeTmp37" assign="classAttributeTmp37"}}product_wrapper col-md-3 col-xs-6{{/capture}}{{capture name="classAttributeTmp37" assign="classAttributeTmp37"}}{{$txt['81013::product_wrapper_col']}} type_{{$loop2293->getItemEscape("name(.)")}}{{/capture}}  class="{{$classAttributeTmp37}}">
											<a class="product-icon" href="{{$var_link}}" title="{{$var_name}}">
												<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/loader.gif?r=1570606529" class="b-lazy" data-src-small="{{$loop2293->getItem("$var_icon_small")}}" data-src="{{$loop2293->getItem("$var_icon")}}" alt="{{$loop2293->getItem("$var_name")}}"></img></a>
											<a class="product-name" href="{{$var_link}}" title="{{$var_name}}">{{$var_name}}</a>
											{{capture name="var_size_min_formatted" assign="var_size_min_formatted"}}
												{{if  $loop2293->getItem("product")}}
													{{$loop2293->getItemEscape("product/price/@size_min_formatted")}}
												{{else}}
													{{$loop2293->getItemEscape("price/@size_min_formatted")}}
												{{/if}}
											{{/capture}}
											{{capture name="var_size_max_formatted" assign="var_size_max_formatted"}}
												{{if  $loop2293->getItem("product")}}
													{{$loop2293->getItemEscape("product/price/@size_max_formatted")}}
												{{else}}
													{{$loop2293->getItemEscape("price/@size_max_formatted")}}
												{{/if}}
											{{/capture}}
											{{capture name="var_points" assign="var_points"}}
												{{if  $loop2293->getItem("product")}}
													{{$loop2293->getItemEscape("product/price/@points")}}
												{{else}}
													{{$loop2293->getItemEscape("price/@points")}}
												{{/if}}
											{{/capture}}
											{{capture name="var_value" assign="var_value"}}
												{{if  $loop2293->getItem("product")}}
													{{$loop2293->getItemEscape("product/price/@value")}}
												{{else}}
													{{$loop2293->getItemEscape("price/@value")}}
												{{/if}}
											{{/capture}}
											{{capture name="var_price_formatted" assign="var_price_formatted"}}
												{{if  $loop2293->getItem("product")}}
													{{$loop2293->getItemEscape("product/price/@price_formatted")}}
												{{else}}
													{{$loop2293->getItemEscape("price/@price_formatted")}}
												{{/if}}
											{{/capture}}
											{{capture name="var_maxprice_formatted" assign="var_maxprice_formatted"}}
												{{if  $loop2293->getItem("product")}}
													{{$loop2293->getItemEscape("product/price/@maxprice_formatted")}}
												{{else}}
													{{$loop2293->getItemEscape("price/@maxprice_formatted")}}
												{{/if}}
											{{/capture}}
											{{capture name="var_size_min_maxprice_formatted" assign="var_size_min_maxprice_formatted"}}
												{{if  $loop2293->getItem("product")}}
													{{$loop2293->getItemEscape("product/price/@size_min_maxprice_formatted")}}
												{{else}}
													{{$loop2293->getItemEscape("price/@size_min_maxprice_formatted")}}
												{{/if}}
											{{/capture}}
											{{capture name="var_size_max_maxprice_formatted" assign="var_size_max_maxprice_formatted"}}
												{{if  $loop2293->getItem("product")}}
													{{$loop2293->getItemEscape("product/price/@size_max_maxprice_formatted")}}
												{{else}}
													{{$loop2293->getItemEscape("price/@size_max_maxprice_formatted")}}
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
															<span class="currency">{{$txt['81013::58826_012']}}</span></span>
													{{/if}}
												{{elseif ($var_value  == (string) 0) and $var_points  == (string) ''}}
													<a class="fon_price" data-mobile-class="btn-small" title="{{$txt['81013::58826_009']}}" href="{{$loop2293->getItemEscape("/shop/contact/link/@url")}}">{{$txt['81013::58826_010']}}</a>
												{{else}}
													<span class="price">{{$txt['81013::58826_003']}}{{$var_price_formatted}}</span>
													{{if $var_maxprice_formatted  neq (string) ''}}
														<del class="max-price">{{$txt['81013::58826_006']}}{{$var_maxprice_formatted}}</del>
													{{/if}}
													{{if $var_points  neq (string) ''}}
														<span class="point-price">{{$var_points}}
															<span class="currency">{{$txt['81013::58826_012']}}</span></span>
													{{/if}}
												{{/if}}
											</div>
											{{if  $loop2293->getItem("client/@client")}}
												<div class="client">{{$loop2293->getItem("client/@client")}}
												</div>
											{{/if}}
											{{if  $loop2293->getItem("@note")}}
												<div class="note">
													<span>
														<i {{assign "classAttributeTmp38" ""}}{{capture name="classAttributeTmp38" assign="classAttributeTmp38"}}icon-star{{/capture}}{{if $loop2293->getItem("@note") gt (string) 0.5}}{{capture name="classAttributeTmp38" assign="classAttributeTmp38"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp38}}"></i>
														<i {{assign "classAttributeTmp39" ""}}{{capture name="classAttributeTmp39" assign="classAttributeTmp39"}}icon-star{{/capture}}{{if $loop2293->getItem("@note") gt (string) 1.5}}{{capture name="classAttributeTmp39" assign="classAttributeTmp39"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp39}}"></i>
														<i {{assign "classAttributeTmp40" ""}}{{capture name="classAttributeTmp40" assign="classAttributeTmp40"}}icon-star{{/capture}}{{if $loop2293->getItem("@note") gt (string) 2.5}}{{capture name="classAttributeTmp40" assign="classAttributeTmp40"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp40}}"></i>
														<i {{assign "classAttributeTmp41" ""}}{{capture name="classAttributeTmp41" assign="classAttributeTmp41"}}icon-star{{/capture}}{{if $loop2293->getItem("@note") gt (string) 3.5}}{{capture name="classAttributeTmp41" assign="classAttributeTmp41"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp41}}"></i>
														<i {{assign "classAttributeTmp42" ""}}{{capture name="classAttributeTmp42" assign="classAttributeTmp42"}}icon-star{{/capture}}{{if $loop2293->getItem("@note") gt (string) 4.5}}{{capture name="classAttributeTmp42" assign="classAttributeTmp42"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp42}}"></i></span>
													<small>{{$txt['81013::58826_oc']}}{{$loop2293->getItem("@note")}}{{$txt['81013::58826_oce']}}</small>
												</div>
											{{/if}}
											{{if  $loop2293->getItem("content")}}
												<div class="cleardescription">{{$loop2293->getItem("content")}}
												</div>
											{{/if}}
										</div>
									{{/foreach}}
								</div>
							</div>
						</div>
					{{/if}}
					<!--Produkty powiązane z tym produktem - strefa 4 (projector_collection_associated_zone4, 81015.1)-->
					{{if  $xml->getItem("page/projector/products_associated_zone4/product") or  $xml->getItem("page/projector/products_associated_zone4/opinion")}}
						<div class="main_hotspot mrg-b clearfix" id="products_associated_zone4">
							<div class="big_label">
								{{if  $xml->getItem("page/projector/products_associated_zone4/@name")}}
									{{$xml->getItemEscape("page/projector/products_associated_zone4/@name")}}
								{{else}}
									{{$txt['81015::58826_label']}}
								{{/if}}
								{{$txt['81015::58826_label-after']}}
							</div>
							<div class="col-bg-1 align_row main_hotspot_sub" data-align="a.product-icon img#css">
								<div {{assign "classAttributeTmp43" ""}}{{capture name="classAttributeTmp43" assign="classAttributeTmp43"}}products_wrapper row clearfix{{/capture}}{{if (count( $xml->getList("page/projector/products_associated_zone4/product")) == (string) 1) or (count( $xml->getList("page/projector/products_associated_zone4/opinion")) == (string) 1)}}{{capture name="classAttributeTmp43" assign="classAttributeTmp43"}}products_wrapper row clearfix col-md-3 col-xs-6{{/capture}}{{/if}}{{if (count( $xml->getList("page/projector/products_associated_zone4/product")) == (string) 2) or (count( $xml->getList("page/projector/products_associated_zone4/opinion")) == (string) 2)}}{{capture name="classAttributeTmp43" assign="classAttributeTmp43"}}products_wrapper row clearfix col-md-6 col-xs-12{{/capture}}{{/if}}   class="{{$classAttributeTmp43}}">
									{{foreach from=$xml->getList("page/projector/products_associated_zone4/*") item=loop2438}}
										{{capture name="var_name" assign="var_name"}}
											{{if  $loop2438->getItem("product")}}
												{{$loop2438->getItem("product/name/text()")}}
											{{else}}
												{{$loop2438->getItem("name/text()")}}
											{{/if}}
										{{/capture}}
										{{capture name="var_icon" assign="var_icon"}}
											{{if  $loop2438->getItem("product")}}
												{{$loop2438->getItemEscape("product/icon")}}
											{{else}}
												{{$loop2438->getItemEscape("icon")}}
											{{/if}}
										{{/capture}}
										{{capture name="var_icon_small" assign="var_icon_small"}}
											{{if  $loop2438->getItem("product")}}
												{{$loop2438->getItemEscape("product/icon_small")}}
											{{else}}
												{{$loop2438->getItemEscape("icon_small")}}
											{{/if}}
										{{/capture}}
										{{capture name="var_link" assign="var_link"}}
											{{if  $loop2438->getItem("product")}}
												{{$loop2438->getItemEscape("product/@link")}}
											{{else}}
												{{$loop2438->getItemEscape("@link")}}
											{{/if}}
										{{/capture}}
										<div {{assign "classAttributeTmp44" ""}}{{capture name="classAttributeTmp44" assign="classAttributeTmp44"}}product_wrapper col-md-3 col-xs-6{{/capture}}{{capture name="classAttributeTmp44" assign="classAttributeTmp44"}}{{$txt['81015::product_wrapper_col']}} type_{{$loop2438->getItemEscape("name(.)")}}{{/capture}}  class="{{$classAttributeTmp44}}">
											<a class="product-icon" href="{{$var_link}}" title="{{$var_name}}">
												<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/loader.gif?r=1570606529" class="b-lazy" data-src-small="{{$loop2438->getItem("$var_icon_small")}}" data-src="{{$loop2438->getItem("$var_icon")}}" alt="{{$loop2438->getItem("$var_name")}}"></img></a>
											<a class="product-name" href="{{$var_link}}" title="{{$var_name}}">{{$var_name}}</a>
											{{capture name="var_size_min_formatted" assign="var_size_min_formatted"}}
												{{if  $loop2438->getItem("product")}}
													{{$loop2438->getItemEscape("product/price/@size_min_formatted")}}
												{{else}}
													{{$loop2438->getItemEscape("price/@size_min_formatted")}}
												{{/if}}
											{{/capture}}
											{{capture name="var_size_max_formatted" assign="var_size_max_formatted"}}
												{{if  $loop2438->getItem("product")}}
													{{$loop2438->getItemEscape("product/price/@size_max_formatted")}}
												{{else}}
													{{$loop2438->getItemEscape("price/@size_max_formatted")}}
												{{/if}}
											{{/capture}}
											{{capture name="var_points" assign="var_points"}}
												{{if  $loop2438->getItem("product")}}
													{{$loop2438->getItemEscape("product/price/@points")}}
												{{else}}
													{{$loop2438->getItemEscape("price/@points")}}
												{{/if}}
											{{/capture}}
											{{capture name="var_value" assign="var_value"}}
												{{if  $loop2438->getItem("product")}}
													{{$loop2438->getItemEscape("product/price/@value")}}
												{{else}}
													{{$loop2438->getItemEscape("price/@value")}}
												{{/if}}
											{{/capture}}
											{{capture name="var_price_formatted" assign="var_price_formatted"}}
												{{if  $loop2438->getItem("product")}}
													{{$loop2438->getItemEscape("product/price/@price_formatted")}}
												{{else}}
													{{$loop2438->getItemEscape("price/@price_formatted")}}
												{{/if}}
											{{/capture}}
											{{capture name="var_maxprice_formatted" assign="var_maxprice_formatted"}}
												{{if  $loop2438->getItem("product")}}
													{{$loop2438->getItemEscape("product/price/@maxprice_formatted")}}
												{{else}}
													{{$loop2438->getItemEscape("price/@maxprice_formatted")}}
												{{/if}}
											{{/capture}}
											{{capture name="var_size_min_maxprice_formatted" assign="var_size_min_maxprice_formatted"}}
												{{if  $loop2438->getItem("product")}}
													{{$loop2438->getItemEscape("product/price/@size_min_maxprice_formatted")}}
												{{else}}
													{{$loop2438->getItemEscape("price/@size_min_maxprice_formatted")}}
												{{/if}}
											{{/capture}}
											{{capture name="var_size_max_maxprice_formatted" assign="var_size_max_maxprice_formatted"}}
												{{if  $loop2438->getItem("product")}}
													{{$loop2438->getItemEscape("product/price/@size_max_maxprice_formatted")}}
												{{else}}
													{{$loop2438->getItemEscape("price/@size_max_maxprice_formatted")}}
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
															<span class="currency">{{$txt['81015::58826_012']}}</span></span>
													{{/if}}
												{{elseif ($var_value  == (string) 0) and $var_points  == (string) ''}}
													<a class="fon_price" data-mobile-class="btn-small" title="{{$txt['81015::58826_009']}}" href="{{$loop2438->getItemEscape("/shop/contact/link/@url")}}">{{$txt['81015::58826_010']}}</a>
												{{else}}
													<span class="price">{{$txt['81015::58826_003']}}{{$var_price_formatted}}</span>
													{{if $var_maxprice_formatted  neq (string) ''}}
														<del class="max-price">{{$txt['81015::58826_006']}}{{$var_maxprice_formatted}}</del>
													{{/if}}
													{{if $var_points  neq (string) ''}}
														<span class="point-price">{{$var_points}}
															<span class="currency">{{$txt['81015::58826_012']}}</span></span>
													{{/if}}
												{{/if}}
											</div>
											{{if  $loop2438->getItem("client/@client")}}
												<div class="client">{{$loop2438->getItem("client/@client")}}
												</div>
											{{/if}}
											{{if  $loop2438->getItem("@note")}}
												<div class="note">
													<span>
														<i {{assign "classAttributeTmp45" ""}}{{capture name="classAttributeTmp45" assign="classAttributeTmp45"}}icon-star{{/capture}}{{if $loop2438->getItem("@note") gt (string) 0.5}}{{capture name="classAttributeTmp45" assign="classAttributeTmp45"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp45}}"></i>
														<i {{assign "classAttributeTmp46" ""}}{{capture name="classAttributeTmp46" assign="classAttributeTmp46"}}icon-star{{/capture}}{{if $loop2438->getItem("@note") gt (string) 1.5}}{{capture name="classAttributeTmp46" assign="classAttributeTmp46"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp46}}"></i>
														<i {{assign "classAttributeTmp47" ""}}{{capture name="classAttributeTmp47" assign="classAttributeTmp47"}}icon-star{{/capture}}{{if $loop2438->getItem("@note") gt (string) 2.5}}{{capture name="classAttributeTmp47" assign="classAttributeTmp47"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp47}}"></i>
														<i {{assign "classAttributeTmp48" ""}}{{capture name="classAttributeTmp48" assign="classAttributeTmp48"}}icon-star{{/capture}}{{if $loop2438->getItem("@note") gt (string) 3.5}}{{capture name="classAttributeTmp48" assign="classAttributeTmp48"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp48}}"></i>
														<i {{assign "classAttributeTmp49" ""}}{{capture name="classAttributeTmp49" assign="classAttributeTmp49"}}icon-star{{/capture}}{{if $loop2438->getItem("@note") gt (string) 4.5}}{{capture name="classAttributeTmp49" assign="classAttributeTmp49"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp49}}"></i></span>
													<small>{{$txt['81015::58826_oc']}}{{$loop2438->getItem("@note")}}{{$txt['81015::58826_oce']}}</small>
												</div>
											{{/if}}
											{{if  $loop2438->getItem("content")}}
												<div class="cleardescription">{{$loop2438->getItem("content")}}
												</div>
											{{/if}}
										</div>
									{{/foreach}}
								</div>
							</div>
						</div>
					{{/if}}
					<!--Facebook comments (projector_collection_facebook_comments, 80991.1)-->
					{{if  $xml->getItem("page/facebook_comments")}}
						<div {{assign "classAttributeTmp50" ""}}{{capture name="classAttributeTmp50" assign="classAttributeTmp50"}}projector_fb_comments{{/capture}}{{if $xml->getItem("page/projector/products_associated_zone2/product")}}{{capture name="classAttributeTmp50" assign="classAttributeTmp50"}}projector_fb_comments_short{{/capture}}{{/if}} id="{{$txt['80991::62639_01']}}"  class="{{$classAttributeTmp50}}">
							<div {{assign "classAttributeTmp51" ""}}{{capture name="classAttributeTmp51" assign="classAttributeTmp51"}}projector_fb_comments_label{{/capture}}{{capture name="classAttributeTmp51" assign="classAttributeTmp51"}}big_label projector_fb_comments_label{{/capture}}  class="{{$classAttributeTmp51}}">{{$txt['80991::62639_00']}}
							</div>
							<div id="fb-root">
							</div>
							<script src="//connect.facebook.net/{{if $xml->getItem("/shop/language/@id") == (string) 'pol'}}pl_PL{{else}}en_US{{/if}}/all.js#xfbml=1">							</script>

							<div class="fb-comments" data-href="{{$xml->getItemEscape("/shop/@baseurl")}}{{$xml->getItemEscape("substring-before(substring-after(/shop/navigation/current/@curr_url, '/'),'.html')")}}" data-num-posts="{{$txt['80991::62639_02']}}" data-width="{{$txt['80991::62639_03']}}" data-colorscheme="{{$txt['80991::62639_04']}}">
							</div>
						</div>
					{{/if}}
					<!--Ukrywanie innych komponentów projektora (projector_collection_components_hiding, 81005.1)-->
					<div class="n58676">
						<div id="tabs_58676">
						</div>
					</div>
					<div class="clearBoth" style="height: 0px;">
					</div>
					<script type="text/javascript" class="ajaxLoad">{{if  $xml->getItem("page/projector/sender[@link_opinion='true']")}}hoverscallback = function(){$('#opinions_58676').click();location.hash = '#opinions_58676';};{{/if}}$(function(){initHovers('tabs_58676',optionsHovers('{{$xml->getItemEscape("page/projector/comments/@all")}}','{{$xml->getItemEscape("page/projector/comments/@avg")}}'),'true');})  
					</script>

					<!--Opinie o produkcie (projector_collection_opinions, 81017.1)-->
					{{if ( $xml->getItem("page/projector/comments/@all")  gt (string) '0') or !( $xml->getItem("/shop/basket/@login")) or ( $xml->getItem("/shop/basket/@login")  == (string) '') or ( $xml->getItem("page/projector/sender/@active")  == (string) 'true')}}
						<div class="component_projector_opinions" id="{{$txt['81017::56197_01']}}">
							<div class="n68503_label">
								<span class="n68503_label">{{$txt['81017::56197_02']}}</span>
							</div>
							<div class="n68503_main1">
								<div class="n68503_sub">
									{{if  $xml->getItem("page/projector/comments/@all")  gt (string) '0'}}
										<div class="n68503_stats_info">
											<div class="n68503_stats">
												<span class="n68503_stats_amount">{{$txt['81017::56197_03']}}{{$xml->getItemEscape("page/projector/comments/@all")}}</span>
												<span class="n68503_stats_average">{{$txt['81017::56197_04']}}{{$xml->getItemEscape("page/projector/comments/@avg")}}</span>
											</div>
										</div>
										{{foreach from=$xml->getList("page/projector/comments/opinions/opinion") item=loop2611}}
											{{if !( $loop2611->getCurrent()  == (string) '')}}
												<div class="n68503_opinions display_table" itemprop="review" itemscope="" itemtype="http://schema.org/Review">
													<div class="display_table_cell comments_note_description">
														<div class="n68503_opinion display_table_row">
															<div class="display_table_cell">
																{{if ( $loop2611->getItem("@note"))}}
																	<b class="n56197_ratting">{{$txt['81017::56197_06']}}</b>
																	<span class="n68503_stars" itemprop="reviewRating" itemscope="" itemtype="http://schema.org/Rating">
																		<meta itemprop="worstRating" content="1"/>
																		<meta itemprop="ratingValue" content="{{$loop2611->getItemEscape("round(@note)")}}"/>
																		<meta itemprop="bestRating" content="5"/>
																		<div class="note">
																			<span>
																				<i {{assign "classAttributeTmp52" ""}}{{capture name="classAttributeTmp52" assign="classAttributeTmp52"}}icon-star{{/capture}}{{if $loop2611->getItem("@note") gt (string) 0.5}}{{capture name="classAttributeTmp52" assign="classAttributeTmp52"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp52}}"></i>
																				<i {{assign "classAttributeTmp53" ""}}{{capture name="classAttributeTmp53" assign="classAttributeTmp53"}}icon-star{{/capture}}{{if $loop2611->getItem("@note") gt (string) 1.5}}{{capture name="classAttributeTmp53" assign="classAttributeTmp53"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp53}}"></i>
																				<i {{assign "classAttributeTmp54" ""}}{{capture name="classAttributeTmp54" assign="classAttributeTmp54"}}icon-star{{/capture}}{{if $loop2611->getItem("@note") gt (string) 2.5}}{{capture name="classAttributeTmp54" assign="classAttributeTmp54"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp54}}"></i>
																				<i {{assign "classAttributeTmp55" ""}}{{capture name="classAttributeTmp55" assign="classAttributeTmp55"}}icon-star{{/capture}}{{if $loop2611->getItem("@note") gt (string) 3.5}}{{capture name="classAttributeTmp55" assign="classAttributeTmp55"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp55}}"></i>
																				<i {{assign "classAttributeTmp56" ""}}{{capture name="classAttributeTmp56" assign="classAttributeTmp56"}}icon-star{{/capture}}{{if $loop2611->getItem("@note") gt (string) 4.5}}{{capture name="classAttributeTmp56" assign="classAttributeTmp56"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp56}}"></i></span>
																		</div></span>
																{{/if}}
															</div>
															<div class="display_table_cell">
																<b class="n68503_author_title">{{$txt['81017::56197_05']}}</b>
																<span class="n68503_author_desc" itemprop="author">{{$loop2611->getItemEscape("@client")}}</span>
															</div>
														</div>
														{{if  $loop2611->getItem("@image_small")}}
															<div class="n68503_item">
																<div class="n68503_photo">
																	<img class="n57494" onclick="Popup.show('{{$loop2611->getItemEscape("@image_large")}}',{{$loop2611->getItemEscape("@width_large")}},{{$loop2611->getItemEscape("@height_large")}});return false;" src="{{$loop2611->getItemEscape("@image_small")}}" title="{{$loop2611->getItemEscape("/shop/page/projector/product/name")}}" alt="{{$loop2611->getItemEscape("/shop/page/projector/product/name")}}"></img>
																</div>
																<div class="n68503_desc" itemprop="description">
																	<span class="n68503_desc">{{$loop2611->getItem(".")}}</span>
																</div>
															</div>
														{{else}}
															<div class="n68503_item">
																<span class="n68503_desc_one" itemprop="description">{{$loop2611->getItem(".")}}</span>
															</div>
														{{/if}}
													</div>
													{{if  $loop2611->getItem("@source")  neq (string) 'shop'}}
														<div class="display_table_cell comments_source">{{$txt['81017::56197_08klient']}}
															<b>{{$loop2611->getItem("@source")}}</b>
														</div>
													{{/if}}
												</div>
											{{/if}}
										{{/foreach}}
										{{if  $xml->getItem("page/projector/comments[@limited='true']")}}
											<div class="n56197_all_opinions">
												<a class="n56197_all_opinions" href=" {{$xml->getItemEscape("page/projector/comments/@link")}} ">{{$txt['81017::56197_08a']}}</a>
											</div>
										{{/if}}
									{{/if}}
									<div id="n54150_hidden" class="hidden_55773">
										{{if  $xml->getItem("page/projector/sender/@active")  == (string) 'false'}}
											<div class="n56197_login">
												<span class="n56197_login">{{$txt['81017::56197_08']}}</span>
											</div>
										{{else}}
										{{/if}}
									</div>
								</div>
							</div>
						</div>
					{{/if}}
					<!--Formularz dodawania opinii (projector_collection_opinions_add, 80993.1)-->
					{{if  $xml->getItem("page/projector/sender[@active='true']")}}
						<div class="n56914" id="{{$txt['80993::56197_01']}}">
							{{if  $xml->getItem("page/projector/sender[@active='true']")}}
								<div class="n56914_label">
									<span class="n56914_label">
										{{if  $xml->getItem("page/projector/comments/opinionClient/opinion")}}
											{{$txt['80993::53789_001b']}}
										{{else}}
											{{$txt['80993::53789_001']}}
										{{/if}}
										</span>
								</div>
							{{/if}}
							<div class="n56914_sub">
								{{if  $xml->getItem("page/projector/sender[@active='true']")}}
									{{if ( $xml->getItem("page/projector/comments/opinionClient/opinion/@stat")  == (string) 'y')}}
										<div class="n56914_info2">{{$txt['80993::53789_002a']}}
										</div>
									{{else}}
										<form id="form" enctype="multipart/form-data" action="settings.php" method="post">
											<div class="n56914_info">
												{{if ( $xml->getItem("page/projector/comments/opinionClient/opinion/@stat")  == (string) 'n')}}
													{{$txt['80993::53789_003']}}
												{{else}}
													{{if ( $xml->getItem("page/projector/comments/@all")  == (string) '0')}}
														{{$txt['80993::53789_005']}}
														{{if ( $xml->getItem("page/projector/comments/opinionClient/@points"))}}
															{{$txt['80993::53789_006']}}
															<span class="n59203_opinion_points">{{$xml->getItemEscape("page/projector/comments/opinionClient/@points")}}{{$txt['80993::53789_007']}}</span>{{$txt['80993::53789_009']}}
														{{/if}}
														{{$txt['80993::53789_008']}}
													{{else}}
														{{$txt['80993::53789_004']}}
														{{if ( $xml->getItem("page/projector/comments/opinionClient/@points"))}}
															{{$txt['80993::53789_006']}}
															<span class="n59203_opinion_points">{{$xml->getItemEscape("page/projector/comments/opinionClient/@points")}}{{$txt['80993::53789_007']}}</span>{{$txt['80993::53789_009']}}
														{{/if}}
													{{/if}}
												{{/if}}
											</div>
											<div class="n56914_add">
												<div class="n56914_notes" {{if $xml->getItem("page/projector/comments/notes/complex")}} id="complex_notes" {{/if}}>
													<div class="n56914_name">{{$txt['80993::51408_002']}}
													</div>
													<div class="n56914_note_items">
														{{if  $xml->getItem("page/projector/comments/notes/complex")}}
															{{foreach from=$xml->getList("page/projector/comments/notes/complex/item") item=loop2785}}
																<div class="opinion_note">
																	<span class="opinion_star">{{$loop2785->getItemEscape("@name")}}</span>
																	{{foreach from=$loop2785->getList("i") item=loop2789}}
																		<a href="#" class="opinion_star" rel="{{$loop2789->getItemEscape("@value")}}" title=" {{$loop2789->getItemEscape("@value")}}{{$txt['80993::51408_002dz']}}{{$loop2789->getItemEscape("../@range")}} ">
																			<span>{{$loop2789->getItemEscape("@name")}}</span></a>
																	{{/foreach}}
																	<b/>
																	<input {{assign "valueAttributeTmp64" ""}}  type="hidden" name="complexnote[{{$loop2785->getItemEscape("@id")}}]" {{if $loop2785->getItem("@id") == (string) $loop2785->getItem("../selected/item/@id")}}{{capture name="current_note" assign="current_note"}}{{$loop2785->getItemEscape("@id")}}{{/capture}}{{capture name="valueAttributeTmp64" assign="valueAttributeTmp64"}}{{$loop2785->getItemEscape("../selected/item[@id = $current_note]/@value")}}{{/capture}}{{else}}{{capture name="valueAttributeTmp64" assign="valueAttributeTmp64"}}{{$loop2785->getItemEscape("@range")}}{{/capture}}{{/if}}  value="{{$valueAttributeTmp64}}"></input>
																</div>
															{{/foreach}}
														{{else}}
															<div class="opinion_note">
																{{foreach from=$xml->getList("page/projector/comments/opinionClient/notes/note") item=loop2816}}
																	<a href="#" class="opinion_star" rel="{{$loop2816->getItemEscape("@value")}}" title=" {{$loop2816->getItemEscape("@value")}}{{$txt['80993::51408_002dz']}}{{$loop2816->getItemEscape("count(../note)")}} ">
																		<span>{{$loop2816->getItemEscape("@value")}}</span></a>
																{{/foreach}}
																<b/>
																<input {{assign "valueAttributeTmp65" ""}}  type="hidden" name="note"{{capture name="valueAttributeTmp65" assign="valueAttributeTmp65"}}{{$xml->getItemEscape("@value")}}{{/capture}}{{if $xml->getItem("page/projector/comments/opinionClient/notes/note/@selected") == (string) 'true'}}{{capture name="valueAttributeTmp65" assign="valueAttributeTmp65"}}{{$xml->getItemEscape("page/projector/comments/opinionClient/notes/note[@selected = 'true']/@value")}}{{/capture}}{{else}}{{capture name="valueAttributeTmp65" assign="valueAttributeTmp65"}}{{$xml->getItemEscape("count(page/projector/comments/opinionClient/notes/note)")}}{{/capture}}{{/if}}  value="{{$valueAttributeTmp65}}"></input>
															</div>
														{{/if}}
													</div>
												</div>
												<div class="n56914_text">
													<div class="n56914_name">{{$txt['80993::51408_003']}}
													</div>
													<textarea id="addopp" class="projector_opinions_opinion" name="opinion" cols="60" rows="7">{{$xml->getItemEscape("page/projector/comments/opinionClient/opinion")}}</textarea>
												</div>
												{{if ( $xml->getItem("page/projector/comments/opinionClient/image/@enabled") == (string)'true')}}
													<div class="n56914_opinion_foto">
														<div class="n56914_name">{{$txt['80993::53757_001']}}
														</div>
														<input class="n53757_photo" type="file" name="opinion_photo" size="{{$txt['80993::54114_input']}}" {{if $xml->getItem("/shop/form_data/upload_file/max_filesize/@bytes")}} data-max_filesize="{{$xml->getItemEscape("/shop/form_data/upload_file/max_filesize/@bytes")}}" {{/if}}></input>
													</div>
												{{/if}}
												<div class="n56914_button">
													<input type="hidden" name="product" value="{{$xml->getItemEscape("page/projector/product/@id")}}"></input>
													<button {{assign "classAttributeTmp57" ""}}  type="submit" name="akcja" {{if $xml->getItem("page/projector/comments/opinionClient/opinion")}} title="{{$txt['80993::54114_900b']}}"{{capture name="classAttributeTmp57" assign="classAttributeTmp57"}}btn-small projector_opinions_button_edit{{/capture}} {{$txt['80993::51408_004']}} {{else}} title="{{$txt['80993::54114_900']}}"{{capture name="classAttributeTmp57" assign="classAttributeTmp57"}}btn-small projector_opinions_button{{/capture}} {{$txt['80993::51408_004b']}} {{/if}}  class="{{$classAttributeTmp57}}">
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
					<!--Zadaj pytanie o produkt (projector_collection_askforproduct, 80989.1)-->
					<div class="component_projector_askforproduct" id="{{$txt['80989::56188_01']}}">
						<a id="askforproduct" href="#askforproduct_close"></a>
						<form action="settings.php" class="projector_askforproduct" method="post">
							<div class="n61389_label">
								<span class="n61389_label">{{$txt['80989::56188_02']}}</span>
							</div>
							<div class="n61389_main">
								<div class="n61389_sub">
									<h3 class="n61389_desc">{{$txt['80989::56188_03']}}
									</h3>
									<input type="hidden" name="question_product_id" value="{{$xml->getItemEscape("page/projector/product/@id")}}"></input>
									<input type="hidden" name="question_action" value="add"/>
									<div class="form">
										{{if  $xml->getItem("page/projector/sender/@email") == (string)''}}
											<div class="n61389_left2">
												<span class="title_email">{{$txt['80989::56188_06']}}</span>
											</div>
										{{/if}}
										<div class="n61389_right2">
											{{if  $xml->getItem("page/projector/sender/@email") neq (string)''}}
												<input id="askforproduct_email" class="n61389_form" type="hidden" name="question_email" value="{{$xml->getItemEscape("page/projector/sender/@email")}}"></input>
											{{else}}
												<input id="askforproduct_email" class="n61389_form" type="text" name="question_email" value="{{$xml->getItemEscape("page/projector/sender/@email")}}"></input>
												<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/need.gif?r=1570606529" alt="{{$txt['80989::n56203_010b']}}"></img>
											{{/if}}
										</div>
									</div>
									<div class="form" id="form_textarea2">
										<div class="n61389_left3">
											<span class="title_pytanie">{{$txt['80989::56188_07']}}</span>
										</div>
										<div class="n61389_right3">
											<textarea class="n61389_body" id="n56188_question" name="product_question" rows="6" cols="52"></textarea>
											<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/need.gif?r=1570606529" alt="{{$txt['80989::n56203_010b']}}"></img>
										</div>
									</div>
									<div class="n61389_submit">
										<input {{assign "classAttributeTmp58" ""}}{{capture name="classAttributeTmp58" assign="classAttributeTmp58"}}n61389_submit{{/capture}} type="submit"{{capture name="classAttributeTmp58" assign="classAttributeTmp58"}}btn-small n61389_submit{{/capture}} value="{{$txt['80989::56188_08']}}"  class="{{$classAttributeTmp58}}"></input>
									</div>
									<div class="n61389_legend">{{$txt['80989::n56203_031b']}}
										<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/need.gif?r=1570606529" alt="{{$txt['80989::n56203_010b']}}"></img>{{$txt['80989::n56203_031c']}}
									</div>
								</div>
							</div>
						</form>
					</div>
					<script type="text/javascript" class="ajaxLoad">
var txt_askforproduct_email = '{{$txt['80989::56188_01w']}}';
var txt_askforproduct_product = '{{$txt['80989::56188_01p']}}';
askforproduct.init();
					</script>

					<!--Karta produktu - gwarancja (projector_collection_warranty, 80983.1)-->
					{{if  $xml->getItem("page/projector/product/warranty") and !( $xml->getItem("page/projector/product/warranty") == (string) '')}}
						<div class="component_projector_warranty" id="{{$txt['80983::56191_01']}}">
							<div class="n56191_main">
								<div class="n56191_sub">
									{{if  $xml->getItem("page/projector/product/warranty/@gfx")}}
										<div class="n56191_icon">
											<img class="projector_firmlogo_55916" src="{{$xml->getItemEscape("page/projector/product/warranty/@gfx")}}" alt="{{$xml->getItemEscape("page/projector/product/warranty/@name")}}"></img>
										</div>
									{{/if}}
									{{if !( $xml->getItem("page/projector/product/warranty/@gfx"))}}
										<h3 class="n56191_label">{{$txt['80983::56191_02']}}{{$xml->getItem("page/projector/product/warranty/@name")}}
											{{if  $xml->getItem("page/projector/product/warranty[@type='seller']")}}
												{{$txt['80983::56191_02seller']}}
											{{/if}}
											{{if  $xml->getItem("page/projector/product/warranty[@type='producer']")}}
												{{$txt['80983::56191_02producer']}}
											{{/if}}
											{{if  $xml->getItem("page/projector/product/warranty/@period")  gt (string) 0}}
												{{$txt['80983::56191_02period']}}{{$xml->getItem("page/projector/product/warranty/@period")}}
											{{/if}}
											{{if  $xml->getItem("page/projector/product/warranty/@period")  == (string) 1}}
												{{$txt['80983::56191_02periodOne']}}
											{{/if}}
											{{if  $xml->getItem("page/projector/product/warranty/@period")  gt (string) 1}}
												{{$txt['80983::56191_02periodMulti']}}
											{{/if}}
										</h3>
									{{/if}}
									<div class="n56191_desc">{{$xml->getItem("page/projector/product/warranty/text()")}}
									</div>
								</div>
							</div>
						</div>
					{{/if}}
					<!--CMS w karcie produktu dla rozmiarów (projector_collection_cms_sizes, 80995.1)-->
					{{if  $xml->getItem("/shop/page/projector/product/sizes_chart")}}
						<div class="component_projector_sizes_chart" id="{{$txt['80995::56195_01']}}">
							{{if  $xml->getItem("/shop/page/projector/product/sizes_chart/descriptions/description")}}
								<h2>{{$txt['80995::56195_02']}}
								</h2>
								<table {{assign "classAttributeTmp13" ""}}{{capture name="classAttributeTmp13" assign="classAttributeTmp13"}}table-condensed{{/capture}}{{capture name="classAttributeTmp13" assign="classAttributeTmp13"}}ui-responsive table-stroke ui-table ui-table-reflow table-condensed{{/capture}}  class="{{$classAttributeTmp13}}">
									<thead>
										<tr>
											<th class="table-first-column">{{$txt['80995::56195_03']}}
											</th>
											{{foreach from=$xml->getList("/shop/page/projector/product/sizes_chart/descriptions/description") item=loop3019}}
												<th>{{$loop3019->getItem("@name")}}
												</th>
											{{/foreach}}
										</tr>
									</thead>
									<tbody>
										{{foreach from=$xml->getList("/shop/page/projector/product/sizes_chart/sizes/size") item=loop3030}}
											<tr>
												<td class="table-first-column">{{$loop3030->getItem("@description")}}
												</td>
												{{foreach from=$loop3030->getList("description") item=loop3037}}
													<td>{{$loop3037->getItem("@text")}}
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
						<div class="component_projector_sizes_chart" id="{{$txt['80995::56195_01']}}">
							<div class="sizes_chart_cms">{{$xml->getItem("/shop/page/projector/text_sizesgroup")}}
							</div>
						</div>
					{{/if}}
					<!--player video w karcie produktu (projector_collection_video, 81003.1)-->
					{{if ( $xml->getItem("/shop/page/projector/product/enclosures/documents")) or ( $xml->getItem("/shop/page/projector/product/enclosures/audio"))  or ( $xml->getItem("/shop/page/projector/product/enclosures/other"))  or ( $xml->getItem("/shop/page/projector/product/enclosures/images_attachments/item")) or ( $xml->getItem("/shop/page/projector/product/enclosures/video/item"))}}
						<div style="display:none;" class="projector_collection_video_cover">
						</div>
						<div class="projector_collection_video">
							<a href="javascript:;" class="projector_collection_video_close">
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
						</div>
						<script type="text/javascript">
$('a.projector_collection_video_close, div.projector_collection_video_cover').live('click',function(){
	$('div.projector_collection_video_cover, div.projector_collection_video').hide();
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
					<!--Zdjęcia produktu (projector_collection_photos, 81025.1)-->
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
