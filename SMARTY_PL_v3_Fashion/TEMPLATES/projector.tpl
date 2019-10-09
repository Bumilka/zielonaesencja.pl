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
			<script type="text/javascript" src="/gfx/{{$xml->getItemEscape("language/@id")}}/projector_details.js.gzip?r=1570606968">			</script>

			<script type="text/javascript" src="/gfx/{{$xml->getItemEscape("language/@id")}}/projector_bundle_zone.js.gzip?r=1570606968">			</script>

			<script type="text/javascript" src="/gfx/{{$xml->getItemEscape("language/@id")}}/projector_projector_opinons_form.js.gzip?r=1570606968">			</script>

			<script type="text/javascript" src="/gfx/{{$xml->getItemEscape("language/@id")}}/projector_video.js.gzip?r=1570606968">			</script>

			<script type="text/javascript" src="/gfx/{{$xml->getItemEscape("language/@id")}}/projector_photos.js.gzip?r=1570606968">			</script>

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
					<aside {{assign "classAttributeTmp2" ""}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}span3{{/capture}}{{if $xml->getItem("page/@type") == (string) 'projector'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['107419::70925_projector_a_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'search'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['107419::70925_search_a_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'main'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['107419::70925_main_a_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'blog-item'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['107419::70925_blog_item_a_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'blog-list'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['107419::70925_blog_list_a_class']}}{{/capture}}{{else}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['107419::70925_otherwise_a_class']}}{{/capture}}{{/if}}  class="{{$classAttributeTmp2}}">
						{{include file="component_menu_additional1_106528.tpl"}}
					</aside>
				{{/if}}
				{{if !( $xml->getItem("action/set_render/item")) or ( $xml->getItem("action/set_render/item/@name")  == (string) 'content')}}
					<div {{assign "classAttributeTmp3" ""}}  id="content"{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}span9{{/capture}}{{if $xml->getItem("page/@type") == (string) 'projector'}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}{{$txt['107419::70925_projector_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'search'}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}{{$txt['107419::70925_search_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'main'}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}{{$txt['107419::70925_main_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'navigation'}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}{{$txt['107419::70925_navigation_page_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'blog-list'}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}{{$txt['107419::70925_blog_list_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'blog-item'}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}{{$txt['107419::70925_blog_item_c_class']}}{{/capture}}{{else}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}{{$txt['107419::70925_otherwise_c_class']}}{{/capture}}{{/if}}  class="{{$classAttributeTmp3}}">
						{{include file="component_menu_messages_106608.tpl"}}
						<!--Warianty produktu (projector_productversions, 106652.1)-->
						{{if  $xml->getItem("compare/@count")  gt (string) 0 or  $xml->getItem("/shop/page/@cache_html")  == (string) 'true'}}
							<div id="menu_compare_product" {{if $xml->getItem("/shop/page[@cache_html='true']")}} style="display:none" {{/if}}>
								<div class="big_label">{{$txt['106652::55103_002']}}
								</div>
								<div class="compare_product_sub align_row" data-align="img#css">
									{{foreach from=$xml->getList("compare/product") item=loop259}}
										<a href="{{$loop259->getItemEscape("@link")}}">
											<img src="{{$loop259->getItemEscape("iconsmall")}}" alt="{{$loop259->getItem("name")}}"></img></a>
									{{/foreach}}
								</div>
								<div class="compare_buttons">
									<a {{assign "hrefAttributeTmp57" ""}}  class="btn-small" id="comparers_remove_btn"{{capture name="hrefAttributeTmp57" assign="hrefAttributeTmp57"}}settings.php?comparers=remove&#160;amp;product= {{foreach from=$xml->getList("compare/product") item=loop274}}{{$loop274->getItemEscape("@id")}}{{if !(count( $loop274->getList("../product")) == (string) $loop274@iteration )}},{{/if}}{{/foreach}}{{/capture}}{{if $xml->getItem("/shop/action/settings/@url")}}{{capture name="hrefAttributeTmp57" assign="hrefAttributeTmp57"}}{{$xml->getItemEscape("/shop/action/settings/@url")}}?comparers=remove&#160;amp;product= {{foreach from=$xml->getList("compare/product") item=loop279}}{{$loop279->getItemEscape("@id")}}{{if !(count( $loop279->getList("../product")) == (string) $loop279@iteration )}},{{/if}}{{/foreach}}{{/capture}}{{if $xml->getItem("/shop/page[@cache_html='true']")}}{{capture name="hrefAttributeTmp57" assign="hrefAttributeTmp57"}}{{$xml->getItemEscape("/shop/action/settings/@url")}}?comparers=remove&#160;amp;product=###{{/capture}}{{/if}}{{/if}} title="{{$txt['106652::55103_00_1b']}}"  href="{{$hrefAttributeTmp57}}">{{$txt['106652::55103_00_2b']}}</a>
									{{if  $xml->getItem("compare/@count")  gt (string) 1 or  $xml->getItem("/shop/page/@cache_html")  == (string) 'true'}}
										<a {{assign "hrefAttributeTmp58" ""}}  class="btn-small"{{capture name="hrefAttributeTmp58" assign="hrefAttributeTmp58"}}product-compare.php{{/capture}}{{if $xml->getItem("/shop/action/productCompare/@url")}}{{capture name="hrefAttributeTmp58" assign="hrefAttributeTmp58"}}{{$xml->getItemEscape("/shop/action/productCompare/@url")}}{{/capture}}{{/if}} title="{{$txt['106652::55103_003']}}" target="{{$txt['106652::55103_023']}}"  href="{{$hrefAttributeTmp58}}">
											<span>{{$txt['106652::55103_004']}}</span>
											<span class="d-sm-none">({{$xml->getItemEscape("compare/@count")}})</span></a>
									{{/if}}
								</div>
								{{if  $xml->getItem("/shop/page[@cache_html='true']")}}
									<script>
                            app_shop.run(function(){ menu_compare_cache(); }, 'all');
                        									</script>

								{{/if}}
							</div>
						{{/if}}
						<!--Dokładne dane o produkcie (projector_details, 106647.1)-->
						{{capture name="showComments" assign="showComments"}}
							{{$txt['106647::57649_showComment']}}
						{{/capture}}
						{{capture name="thresholdEnd_enable" assign="thresholdEnd_enable"}}
							{{$txt['106647::57649_threshold_1']}}
						{{/capture}}
						{{capture name="param_projector" assign="param_projector"}}
							{{$txt['106647::58230_setParam']}}
						{{/capture}}
						{{capture name="param_kropa" assign="param_kropa"}}
							{{$txt['106647::n55363_kropa']}}
						{{/capture}}
						{{capture name="amount_txt" assign="amount_txt"}}
							{{$txt['106647::n55363_amount_txt']}}
						{{/capture}}
						{{capture name="amount_txt2" assign="amount_txt2"}}
							{{$txt['106647::n55363_amount_txt2']}}
						{{/capture}}
						{{capture name="fashion_view" assign="fashion_view"}}
							{{$txt['106647::n55363_fashion_view']}}
						{{/capture}}
						{{capture name="sizes_projector" assign="sizes_projector"}}
							{{$txt['106647::n55363_sizes_projector']}}
						{{/capture}}
						{{capture name="points_in_prices_section" assign="points_in_prices_section"}}
							{{$txt['106647::35241243_prices_points']}}
						{{/capture}}
						{{capture name="disable_projectorv3_ajax" assign="disable_projectorv3_ajax"}}
							{{$txt['106647::424123121_disable_projectorv3_js']}}
						{{/capture}}
						{{capture name="magnify1" assign="magnify1"}}
							{{$txt['106647::n55363_magnify1']}}
						{{/capture}}
						{{capture name="advanceprice_txt" assign="advanceprice_txt"}}
							{{$txt['106647::57295_019pr']}}
						{{/capture}}
						{{capture name="suma_cen_txt" assign="suma_cen_txt"}}
							{{$txt['106647::53676_400sum']}}
						{{/capture}}
						{{capture name="wysylka_bundle_txt" assign="wysylka_bundle_txt"}}
							{{$txt['106647::53676_wysa']}}
						{{/capture}}
						{{capture name="cena_bundle_txt" assign="cena_bundle_txt"}}
							{{$txt['106647::53676_400a']}}
						{{/capture}}
						{{capture name="brutto_bundle_txt" assign="brutto_bundle_txt"}}
							{{$txt['106647::57295_019ba']}}
						{{/capture}}
						{{capture name="taniej_bundle_txt" assign="taniej_bundle_txt"}}
							{{$txt['106647::53676_taniejo']}}
						{{/capture}}
						{{capture name="projector_form_privacy_info_text1" assign="projector_form_privacy_info_text1"}}
							{{$txt['106647::3524123_projector_privacy']}}
						{{/capture}}
						{{capture name="projector_form_privacy_info_text2" assign="projector_form_privacy_info_text2"}}
							{{$txt['106647::3524123_projector_privacy3']}}
						{{/capture}}
						{{capture name="dokoszyka_bundle_txt" assign="dokoszyka_bundle_txt"}}
							{{$txt['106647::54710_455a']}}
						{{/capture}}
						{{capture name="dokoszykabu_bundle_txt" assign="dokoszykabu_bundle_txt"}}
							{{$txt['106647::53676_004a']}}
						{{/capture}}
						<script class="ajaxLoad">
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
                "product_id": '{{$xml->getItemEscape("/shop/page/projector/product/@id")}}',
                {{if  $xml->getItem("/shop/page/projector/product[@for_points='true']")}}
                    "for_points": '{{$xml->getItemEscape("/shop/page/projector/product/@for_points")}}',
                {{/if}}
                "currency":"{{$xml->getItemEscape("/shop/currency/@name")}}",
                "product_type":"{{$xml->getItemEscape("page/projector/product/@product_type")}}",
                "unit":"{{$xml->getItem("page/projector/product/sizes/@unit")}}",
                "unit_plural":"{{$xml->getItem("page/projector/product/sizes/@unit_plural")}}",
                "unit_sellby":"{{$xml->getItemEscape("page/projector/product/sizes/@unit_sellby")}}",
                "unit_precision":"{{$xml->getItemEscape("page/projector/product/sizes/@unit_precision")}}",
                "base_price":{
{{foreach from=$xml->getList("/shop/page/projector/product/sizes/prices/@*") item=loop355}}
                    "{{$loop355->getName()}}":"{{$loop355->getItemEscape(".")}}",
{{/foreach}}{{foreach from=$xml->getList("/shop/page/projector/product/price/@*") item=loop360}}
                    "{{$loop360->getName()}}":"{{$loop360->getItemEscape(".")}}"{{if  $loop360@iteration   neq (string)  $loop360@total }},{{/if}}{{/foreach}}
                },
                "order_quantity_range":{
{{foreach from=$xml->getList("/shop/page/projector/product/order_quantity_range/*") item=loop367}}
                    "{{$loop367->getName()}}":"{{$loop367->getItemEscape(".")}}"{{if  $loop367@iteration   neq (string)  $loop367@total }},{{/if}}{{/foreach}}
                }
                {{if $disable_projectorv3_ajax  == (string) '0'}}
                    ,
                    "sizes":{
{{foreach from=$xml->getList("/shop/page/projector/product/sizes/size") item=loop376}}
                    "{{$loop376->getItemEscape("@type")}}":
                    {
{{foreach from=$loop376->getList("@*") item=loop380}}
                        "{{$loop380->getName()}}":"{{$loop380->getItemEscape(".")}}",
{{/foreach}}{{foreach from=$loop376->getList("/shop/page/projector/product/bundle_price") item=loop385}}
                        "{{$loop385->getName()}}":{
{{foreach from=$loop385->getList("@*") item=loop388}}
                        "{{$loop388->getName()}}":"{{$loop388->getItemEscape(".")}}"{{if  $loop388@iteration   neq (string)  $loop388@total }},{{/if}}{{/foreach}}
                        },
{{/foreach}}{{if  $loop376->getItem("price/rebateNumber/rebate")}}
                        "rebateNumber":[
{{foreach from=$loop376->getList("price/rebateNumber/rebate") item=loop398}}
                        {
{{foreach from=$loop398->getList("@*") item=loop401}}
                            "{{$loop401->getName()}}":"{{$loop401->getItemEscape(".")}}"{{if  $loop401@iteration   neq (string)  $loop401@total }},{{/if}}{{/foreach}}
                        }{{if  $loop398@iteration   neq (string)  $loop398@total }},{{/if}}{{/foreach}}
                        ],
                    {{/if}}{{if  $loop376->getItem("availability/shipping_time")}}
                        "shipping_time":{
{{foreach from=$loop376->getList("availability/shipping_time ") item=loop413}}{{foreach from=$loop413->getList("@*") item=loop415}}
                            "{{$loop415->getName()}}":"{{$loop415->getItem(".")}}"{{if  $loop415@iteration   neq (string)  $loop415@total }},{{/if}}{{/foreach}}{{/foreach}}
                        },
                    {{/if}}{{if  $loop376->getItem("availability/delay_time")}}
                        "delay_time":{
{{foreach from=$loop376->getList("availability/delay_time") item=loop426}}{{foreach from=$loop426->getList("@*") item=loop428}}
                            "{{$loop428->getName()}}":"{{$loop428->getItem(".")}}"{{if  $loop428@iteration   neq (string)  $loop428@total }},{{/if}}{{/foreach}}{{/foreach}}
                        },
                    {{/if}}{{foreach from=$loop376->getList("node()") item=loop437}}
                        "{{$loop437->getName()}}":{
{{foreach from=$loop437->getList("@*") item=loop440}}
                        "{{$loop440->getName()}}":"{{$loop440->getItemEscape(".")}}"{{if  $loop440@iteration   neq (string)  $loop440@total }},{{/if}}{{/foreach}}
                        }{{if  $loop437@iteration   neq (string)  $loop437@total }},{{/if}}{{/foreach}}
                    }{{if  $loop376@iteration   neq (string)  $loop376@total }},{{/if}}{{/foreach}}
                    }
                {{/if}}
                }
                var  trust_level = '{{$xml->getItemEscape("/shop/@trust_level")}}';
            						</script>

						<form id="projector_form" action="/basketchange.php" method="post" {{if $xml->getItem("/shop/action/basketChange/@url")}} action="{{$xml->getItemEscape("/shop/action/basketChange/@url")}}" {{/if}} data-product_id="{{$xml->getItemEscape("/shop/page/projector/product/@id")}}" class=" {{$txt['106647::n55363_class']}} {{if $xml->getItem("/shop/page/projector/bundled[@collection='true']")}} collection{{/if}}{{if $xml->getItem("/shop/page/projector/product[@price_from_formula='true']")}} price_from_formula{{/if}}{{if $fashion_view and !($fashion_view == (string) '0')}} fashion_view{{/if}} ">
							<input id="projector_product_hidden" type="hidden" name="product" value="{{$xml->getItemEscape("page/projector/product/@id")}}"></input>
							<input {{assign "valueAttributeTmp69" ""}}  id="projector_size_hidden" type="hidden" name="size" autocomplete="off" {{if $xml->getItem("page/projector/product/sizes/size[@selected='true']")}}{{capture name="valueAttributeTmp69" assign="valueAttributeTmp69"}}{{$xml->getItemEscape("page/projector/product/sizes/size[@selected='true']/@type")}}{{/capture}}{{elseif $xml->getItem("page/projector/product/sizes/size/@type") == (string) 'onesize'}}{{capture name="valueAttributeTmp69" assign="valueAttributeTmp69"}}{{$xml->getItemEscape("page/projector/product/sizes/size/@type")}}{{/capture}}{{/if}}  value="{{$valueAttributeTmp69}}"></input>
							<input id="projector_mode_hidden" type="hidden" name="mode" value="1"/>
							{{if  $xml->getItem("page/projector/product/exchange/@exchange_id")}}
								<input id="projector_exchange_id_hidden" type="hidden" name="exchange_id" value="{{$xml->getItemEscape("page/projector/product/exchange/@exchange_id")}}"></input>
								<input id="projector_change_hidden" type="hidden" name="change" value="change"/>
							{{/if}}
							<div class="projector_navigation pb-3 d-md-flex flex-column-reverse">
								<div class="projector_navigation_sub">
									<div class="label_icons">
										{{if  $xml->getItem("/shop/page/projector/product/@promotion")}}
											<span class="promo">{{$txt['106647::53885_307pro']}}</span>
										{{/if}}
										{{if  $xml->getItem("/shop/page/projector/product/@new")}}
											<span class="newproducts">{{$txt['106647::53885_307n']}}</span>
										{{/if}}
										{{if  $xml->getItem("/shop/page/projector/product/@promotion") and  $xml->getItem("/shop/page/projector/product/@new")}}
										{{elseif  $xml->getItem("/shop/page/projector/product/@promotion") or  $xml->getItem("/shop/page/projector/product/@new")}}
											{{if  $xml->getItem("/shop/page/projector/product/@bestseller")}}
												<span class="bestseller">{{$txt['106647::53885_307b']}}</span>
											{{elseif  $xml->getItem("/shop/page/projector/product/@discount")}}
												<span class="discount">{{$txt['106647::53885_307pr']}}</span>
											{{elseif  $xml->getItem("/shop/page/projector/product/@distinguished")}}
												<span class="distinguished">{{$txt['106647::53885_307p']}}</span>
											{{/if}}
										{{else}}
											{{if  $xml->getItem("/shop/page/projector/product/@bestseller")}}
												<span class="bestseller">{{$txt['106647::53885_307b']}}</span>
											{{/if}}
											{{if  $xml->getItem("/shop/page/projector/product/@discount")}}
												<span class="discount">{{$txt['106647::53885_307pr']}}</span>
											{{/if}}
											{{if  $xml->getItem("/shop/page/projector/product/@distinguished") and !( $xml->getItem("/shop/page/projector/product/@bestseller") and  $xml->getItem("/shop/page/projector/product/@discount"))}}
												<span class="distinguished">{{$txt['106647::53885_307p']}}</span>
											{{/if}}
										{{/if}}
									</div>
									<h1>{{$xml->getItem("/shop/page/projector/product/name")}}
									</h1>
									{{if  $xml->getItem("page/projector/product/description") and  $xml->getItem("page/projector/product/description")  neq (string) ''}}
										<div class="projector_description description">{{$xml->getItem("page/projector/product/description/text()")}}
										</div>
									{{/if}}
								</div>
								{{if  $xml->getItem("/shop/page/projector/product/firm/@icon") and !( $xml->getItem("/shop/page/projector/product/firm/@icon")  == (string) '')}}
									<div class="projector_firm_logo d-none d-md-block ml-auto">
										<a class="product_firm_logo" href="{{$xml->getItemEscape("/shop/page/projector/product/firm/@productslink")}}">
											<img src="{{$xml->getItemEscape("/shop/page/projector/product/firm/@icon")}}" title="{{$xml->getItemEscape("/shop/page/projector/product/firm/@name")}}" alt="{{$xml->getItemEscape("/shop/page/projector/product/firm/@name")}}"></img></a>
									</div>
								{{/if}}
							</div>
							<div id="projector_photos" class="photos col-12 col-sm-6 pb-4">
								{{if  $xml->getItem("/shop/page/projector/product/enclosures/images")}}
									<ul id="projector_slider">
										{{foreach from=$xml->getList("/shop/page/projector/product/enclosures/images/enclosure") item=loop560}}
											<li>
												<a class="projector_medium_image" data-imagelightbox="f" href="{{$loop560->getItem("@url")}}">
													<img class="photo slick-loading" alt="{{$loop560->getItem("/shop/page/projector/product/name")}}" data-lazy="{{$loop560->getItemEscape("@medium")}}" {{if $magnify1}} data-zoom-image="{{$loop560->getItemEscape("@url")}}"{{/if}}></img>
													{{if $magnify1}}
														<span>{{$txt['106647::n55363_magnify1']}}</span>
													{{/if}}
													</a>
											</li>
										{{/foreach}}
										{{foreach from=$xml->getList("/shop/page/projector/bundled/product") item=loop575}}
											<li>
												<a class="projector_medium_image" data-imagelightbox="f" href="{{$loop575->getItem("enclosures/images/enclosure[1]/@url")}}">
													<img class="photo slick-loading" alt="{{$loop575->getItem("name")}}" data-lazy="{{$loop575->getItemEscape("enclosures/images/enclosure[1]/@medium")}}" {{if $magnify1}} data-zoom-image="{{$loop575->getItemEscape("enclosures/images/enclosure[1]/@url")}}"{{/if}}></img>
													{{if $magnify1}}
														<span>{{$txt['106647::n55363_magnify1']}}</span>
													{{/if}}
													</a>
											</li>
										{{/foreach}}
									</ul>
								{{/if}}
								{{capture name="enclosureCount" assign="enclosureCount"}}
									{{$xml->getItemEscape("count(page/projector/product/enclosures/images/enclosure)")}}
								{{/capture}}
								{{if ($enclosureCount  gt (string) 1) or  $xml->getItem("/shop/page/projector/bundled/product")}}
									<div {{assign "classAttributeTmp4" ""}}  id="projector_pager"{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}enclosures align_row{{/capture}} data-align="img#css" {{if $magnify1}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}enclosures{{/capture}} data-align=""{{/if}}  class="{{$classAttributeTmp4}}">
										{{foreach from=$xml->getList("page/projector/product/enclosures/images/enclosure") item=loop596}}
											<a href="" data-slick-index="{{$loop596@iteration-1}}">
												<img alt="" src="{{$loop596->getItemEscape("@icon")}}"></img></a>
										{{/foreach}}
										{{foreach from=$xml->getList("/shop/page/projector/bundled/product") item=loop604}}
											<a href="" data-slick-index="{{$loop604->getItemEscape("$enclosureCount + position() - 1")}}">
												<img alt="" src="{{$loop604->getItemEscape("enclosures/images/enclosure[1]/@icon")}}"></img></a>
										{{/foreach}}
									</div>
								{{/if}}
							</div>
							<div id="projector_details" class="product_info col-12 col-sm-6">
								{{if !( $xml->getItem("page/projector/product/firm/@name")  == (string) '') or ( $xml->getItem("page/projector/product/@code")) or ( $xml->getItem("page/projector/product/series")) or ( $xml->getItem("page/projector/product/warranty/@name")) or ( $xml->getItem("page/projector/product/traits/trait"))}}
									<div class="product_info_top">
										{{if !( $xml->getItem("page/projector/product/firm/@name")  == (string) '')}}
											<div class="producer item_info">
												<span>{{$txt['106647::53311_1243']}}</span>
												<a class="brand" title="{{$txt['106647::54827_401']}}" href="{{$xml->getItem("page/projector/product/firm/@productslink")}}">{{$xml->getItem("page/projector/product/firm/@name")}}</a>
											</div>
										{{/if}}
										{{if  $xml->getItem("page/projector/product/@code")}}
											<div class="code item_info">
												<span>{{$txt['106647::53676_005_kod']}}</span>
												<strong>{{$xml->getItemEscape("page/projector/product/@code")}}</strong>
											</div>
										{{/if}}
										{{if  $xml->getItem("page/projector/product/series")}}
											<div class="series item_info">
												<span>{{$txt['106647::40141_001be']}}</span>
												<a title="{{$txt['106647::54827_402']}}" href="{{$xml->getItemEscape("page/projector/product/series/@link")}}">{{$xml->getItemEscape("page/projector/product/series/@name")}}</a>
											</div>
										{{/if}}
										{{if  $xml->getItem("page/projector/product/warranty/@name")}}
											<div class="warranty item_info">
												<span>{{$txt['106647::53983_400']}}</span>
												<a href="#tabs_58676" title="{{$txt['106647::54827_40']}}">{{$xml->getItemEscape("page/projector/product/warranty/@name")}}</a>
											</div>
										{{/if}}
										{{if !($param_projector)}}
											{{if  $xml->getItem("page/projector/product/traits/trait[not(contains(@groupdescription, 'gs1:'))]")}}
												{{foreach from=$xml->getList("page/projector/product/traits/trait") item=loop661}}
													{{if !( $loop661->getItem("contains(@groupdescription, 'gs1:')"))}}
														{{if !( $loop661->getItem("@groupid")  == (string)  $loop661->getItem("preceding-sibling::trait/@groupid"))}}
															<div class="item_info">
																<span>{{$loop661->getItemEscape("@groupdescription")}}{{$txt['106647::58668_traitseparator']}}</span>
																<strong class="lt_description dright">
																	{{if  $loop661->getItem("@gfx")}}
																		<a class="param_trait_gfx" href="{{$loop661->getItemEscape("@link")}}">
																			<img class="list_traits_gfx" src="{{$loop661->getItemEscape("@gfx")}}" alt="{{$loop661->getItemEscape("@traitdescription")}}"></img></a>
																	{{else}}
																		<a class="param_trait" href="{{$loop661->getItemEscape("@link")}}">{{$loop661->getItemEscape("@traitdescription")}}</a>
																	{{/if}}
																	{{if  $loop661->getItem("@groupid")  == (string)  $loop661->getItem("following-sibling::trait/@groupid")}}
																		{{capture name="temporaryGroup" assign="temporaryGroup"}}
																			{{$loop661->getItemEscape("@groupid")}}
																		{{/capture}}
																		{{foreach from=$loop661->getList("following-sibling::trait[(@groupid = {{$temporaryGroup}})]") item=loop681}}
																			{{if  $loop681->getItem("@gfx")}}
																				<a href="{{$loop681->getItemEscape("@link")}}">
																					<img class="list_traits_gfx" src="{{$loop681->getItemEscape("@gfx")}}" alt="{{$loop681->getItemEscape("@traitdescription")}}"></img></a>
																			{{else}}
																				{{$txt['106647::n58633_traitseparator']}}
																				<a href="{{$loop681->getItemEscape("@link")}}">{{$loop681->getItemEscape("@traitdescription")}}</a>
																			{{/if}}
																		{{/foreach}}
																	{{/if}}
																	</strong>
															</div>
														{{/if}}
													{{/if}}
												{{/foreach}}
											{{/if}}
										{{/if}}
									</div>
								{{/if}}
								{{if ( $xml->getItem("page/projector/product/multiversions")) and (count( $xml->getList("page/projector/product/multiversions/multi_version"))  gt (string) 1)}}
									<div id="multi_versions">
										{{foreach from=$xml->getList("page/projector/product/multiversions/multi_version") item=loop708}}
											<div class="multi_version product_section">
												<div class="fancy-select" id="mw_{{$loop708->getItemEscape("@id")}}">
													<div class="trigger">
														{{if  $loop708->getItem("item[@selected='true']/values/value")}}
															{{foreach from=$loop708->getList("item[@selected='true']/values/value") item=loop715}}
																{{if !( $loop715@iteration   == (string) 1)}}
																	{{$txt['106647::n55363_345']}}
																{{/if}}
																<em class="multiversion_label">{{$loop715->getItem("../../../@name")}}:</em>
																<span class="multiversion_value">{{$loop715->getItem("@name")}}</span>
															{{/foreach}}
														{{else}}
															{{$txt['106647::463634_choose']}}
														{{/if}}
													</div>
													<ul class="options">
														{{foreach from=$loop708->getList("item") item=loop728}}
															{{capture name="value_name" assign="value_name"}}
																{{foreach from=$loop728->getList("values/value") item=loop730}}
																	{{if !( $loop730@iteration   == (string) 1)}}
																		{{$txt['106647::n55363_345']}}
																	{{/if}}
																	{{$loop730->getItem("@name")}}
																{{/foreach}}
															{{/capture}}
															<li class="{{if $loop728->getItem("@disabled") == (string)'true'}}disabled {{/if}}{{if $loop728->getItem("@selected") == (string)'true'}}selected{{/if}}" id="v{{$loop728->getItem("values/@id")}}" data-values_id="{{$loop728->getItem("values/@id")}}" data-value="{{$loop728@iteration}}" data-title="{{$value_name}}" data-product="{{$loop728->getItemEscape("products/product/@product_id")}}">
																<a title="{{$value_name}}" href="{{$loop728->getItemEscape("products/product/@url")}}">
																	{{foreach from=$loop728->getList("values/value") item=loop744}}
																		{{if  $loop744->getItem("@gfx")}}
																			<span class="gfx">
																				<img src="{{$loop744->getItemEscape("@gfx")}}" alt="{{$value_name}}"></img></span>
																		{{/if}}
																	{{/foreach}}
																	<span>
																		<span>
																			<em class="multiversion_label">{{$loop728->getItem("../@name")}}:</em>
																			<span class="multiversion_value">{{$loop728->getItem("$value_name")}}</span></span>
																		{{foreach from=$loop728->getList("values/value") item=loop758}}
																			{{if  $loop758->getItem("description")}}
																				<div class="description">{{$loop758->getItem("description")}}
																				</div>
																			{{/if}}
																		{{/foreach}}
																		<p class="conflict_txt">{{$txt['106647::n55363_co']}}
																		</p></span></a>
															</li>
														{{/foreach}}
													</ul>
													<p class="conflict_txt">{{$txt['106647::n55363_coz']}}
													</p>
													{{if  $loop708->getItem("description")}}
														<div class="description">{{$loop708->getItem("description")}}
														</div>
													{{/if}}
												</div>
												{{if  $loop708->getItem("@gfx")}}
													<div class="gfx">
														<img src="{{$loop708->getItemEscape("@gfx")}}" alt="{{$loop708->getItemEscape("@name")}}"></img>
													</div>
												{{/if}}
											</div>
										{{/foreach}}
									</div>
								{{/if}}
								{{if ( $xml->getItem("page/projector/product/versions/@count")  gt (string) 0) and (count( $xml->getList("page/projector/product/multiversions/multi_version"))  == (string) 1)}}
									{{if  $xml->getItem("page/projector/product/versions/@count")  gt (string) 9 or count( $xml->getList("page/projector/product/versions/version[not(@gfx)]"))  gt (string) 0}}
										<div class="product_section versions mb-3">
											<div class="fancy-select">
												<div class="trigger">
													<div class="version_label">{{$txt['106647::n55363_400_11111']}}{{$xml->getItemEscape("page/projector/product/versions/@name")}}:
													</div>
													<span class="version_selected_name">{{$xml->getItemEscape("page/projector/product/versions/version[@id = /shop/page/projector/product/@id]/@name")}}</span>
												</div>
												<ul class="options">
													{{foreach from=$xml->getList("page/projector/product/versions/version") item=loop795}}
														<li>
															<a {{assign "classAttributeTmp5" ""}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}version_item{{/capture}} title="{{$loop795->getItemEscape("@name")}}" href="{{$loop795->getItemEscape("@link")}}" {{if $loop795->getItem("@id") == (string) $loop795->getItem("/shop/page/projector/product/@id")}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}version_item selected{{/capture}}{{/if}}  class="{{$classAttributeTmp5}}">
																{{if  $loop795->getItem("@gfx")}}
																	<span class="gfx">
																		<img src="{{$loop795->getItemEscape("@gfx")}}" alt="{{$loop795->getItemEscape("@name")}}"></img></span>
																{{/if}}
																<span class="version_name">{{$loop795->getItemEscape("@name")}}</span></a>
														</li>
													{{/foreach}}
												</ul>
											</div>
										</div>
									{{else}}
										<div class="product_section versions row mx-n2">
											{{foreach from=$xml->getList("page/projector/product/versions/version") item=loop822}}
												<div class="col-4 col-md-2 p-2 select_link">
													<a {{if $loop822->getItem("@id") == (string) $loop822->getItem("/shop/page/projector/product/@id")}} class="selected" {{/if}} title="{{$loop822->getItemEscape("@name")}}" href="{{$loop822->getItemEscape("@link")}}">
														{{if  $loop822->getItem("@gfx")}}
															<span class="gfx">
																<img src="{{$loop822->getItemEscape("@gfx")}}" alt="{{$loop822->getItemEscape("@name")}}"></img></span>
														{{/if}}
														</a>
												</div>
											{{/foreach}}
										</div>
									{{/if}}
								{{/if}}
								<div {{assign "classAttributeTmp6" ""}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}product_section sizes row mx-n2{{/capture}} id="projector_sizes_cont" {{if $xml->getItem("/shop/page/projector/product/sizes/size/@type") == (string) 'onesize' or $xml->getItem("/shop/page/projector/product/sizes/size/@type") == (string) 'uniw'}} style="display:none;" {{/if}}{{if (( $xml->getItem("page/projector/text_sizesgroup")) and ( $xml->getItem("page/projector/text_sizesgroup") neq (string) '')) or $xml->getItem("/shop/page/projector/product/sizes_chart") and (count( $xml->getList("/shop/page/projector/product/sizes/size")) gt (string) 6)}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}sizes sizes_projector col-md-7 col-sm-12 col-xs-12{{/capture}}{{/if}}  class="{{$classAttributeTmp6}}">
									{{if (count( $xml->getList("/shop/page/projector/product/sizes/size"))  gt (string) 6) and (!($sizes_projector  == (string) '0') or !($fashion_view  == (string) '0'))}}
										<select name="projector_sizes" id="projector_sizes_select" class="col px-2">
											<option value="">{{$txt['106647::3453424_choose_size']}}
											</option>
											{{foreach from=$xml->getList("page/projector/product/sizes/size") item=loop857}}
												<option class="size_{{$loop857->getItemEscape("@type")}}{{if ( $loop857->getItem("@amount") == (string) '0')}} disabled{{/if}}" {{if $loop857->getItem("@selected") == (string)'true'}} selected="selected"{{/if}} value="{{$loop857->getItemEscape("@type")}}" data-count="{{$loop857->getItemEscape("@amount")}}" {{if $loop857->getItem("availability/@status_id")}} data-statusid="{{$loop857->getItemEscape("availability/@status_id")}}" {{/if}}>{{$loop857->getItemEscape("@description")}}
												</option>
											{{/foreach}}
										</select>
									{{else}}
										{{foreach from=$xml->getList("page/projector/product/sizes/size") item=loop873}}
											<div class="col-3 p-2">
												{{if ( $loop873->getItem("@amount")  gt (string) 0) or ( $loop873->getItem("@amount")  == (string) '-1')}}
													<a {{assign "classAttributeTmp7" ""}}{{capture name="classAttributeTmp7" assign="classAttributeTmp7"}}select_button{{/capture}}{{if $loop873->getItem("@selected") == (string)'true'}}{{capture name="classAttributeTmp7" assign="classAttributeTmp7"}}select_button active{{/capture}}{{/if}} href="{{$loop873->getItemEscape("/shop/page/projector/product/@link")}}?selected_size={{$loop873->getItemEscape("@type")}}" data-type="{{$loop873->getItemEscape("@type")}}"  class="{{$classAttributeTmp7}}">{{$loop873->getItemEscape("@description")}}</a>
												{{else}}
													<a {{assign "classAttributeTmp8" ""}}{{capture name="classAttributeTmp8" assign="classAttributeTmp8"}}select_button disabled{{/capture}}{{if $loop873->getItem("@selected") == (string)'true'}}{{capture name="classAttributeTmp8" assign="classAttributeTmp8"}}select_button disabled active{{/capture}}{{/if}} href="{{$loop873->getItemEscape("/shop/page/projector/product/@link")}}?selected_size={{$loop873->getItemEscape("@type")}}" data-type="{{$loop873->getItemEscape("@type")}}"  class="{{$classAttributeTmp8}}">{{$loop873->getItemEscape("@description")}}</a>
												{{/if}}
											</div>
										{{/foreach}}
									{{/if}}
								</div>
								{{if (( $xml->getItem("page/projector/text_sizesgroup")) and ( $xml->getItem("page/projector/text_sizesgroup")  neq (string) '')) or  $xml->getItem("/shop/page/projector/product/sizes_chart")}}
									<div {{assign "classAttributeTmp9" ""}}{{capture name="classAttributeTmp9" assign="classAttributeTmp9"}}product_section show_size{{/capture}} id="projector_show_size" {{if ($fashion_view and !($fashion_view == (string) '0')) or ($sizes_projector and !($sizes_projector == (string) '0')) and (count( $xml->getList("/shop/page/projector/product/sizes/size")) gt (string) 6)}}{{capture name="classAttributeTmp9" assign="classAttributeTmp9"}}show_sizes_projector col-md-5 col-sm-12 col-xs-12{{/capture}}{{/if}}  class="{{$classAttributeTmp9}}">
										<div class="product_section_sub">
											<a href="#show_size_cms" class="show_size_cms">{{$txt['106647::n55363_table']}}</a>
										</div>
									</div>
								{{/if}}
								<div class="projector_product_status_wrapper" {{if !( $xml->getItem("/shop/page/projector/product/sizes/size[@selected='true']"))}} style="display:none"{{/if}}>
									<div id="projector_status_description_wrapper" {{if !( $xml->getItem("/shop/page/projector/product/sizes/size[@selected='true']"))}} style="display:none"{{/if}}>
										<label>{{$txt['106647::53676_dos']}}
										</label>
										<div>
											{{if  $xml->getItem("/shop/page/projector/product/sizes/size/availability/@status_gfx")}}
												<img id="projector_status_gfx" class="projector_status_gfx" alt="status_icon" src="{{if $xml->getItem("/shop/page/projector/product/sizes/size[@selected='true']/availability/@status_gfx")}}{{$xml->getItemEscape("/shop/page/projector/product/sizes/size[@selected='true']/availability/@status_gfx")}}{{else}}{{$xml->getItemEscape("/shop/page/projector/product/sizes/size/availability/@status_gfx")}}{{/if}}"></img>
											{{/if}}
											{{if $amount_txt and !( $xml->getItem("/shop/page/projector/product/@product_type")  == (string) 'product_bundle')}}
												<span class="projector_amount" id="projector_amount" {{if $xml->getItem("/shop/page/projector/product/sizes/size[@selected='true']")}} style="display:none"{{/if}}>
													<strong>
														{{if $fashion_view and !($fashion_view  == (string) '0')}}
															{{$xml->getItem("$amount_txt2")}}
														{{else}}
															{{$xml->getItem("$amount_txt")}}
														{{/if}}
														</strong>
													{{if $fashion_view and !($fashion_view  == (string) '0')}}
														{{$txt['106647::4635324_instock']}}
													{{/if}}
													</span>
											{{/if}}
											<span class="projector_status_description" id="projector_status_description">
												{{if  $xml->getItem("/shop/page/projector/product/sizes/size[@selected='true']/availability/@status_description")}}
													{{$xml->getItemEscape("/shop/page/projector/product/sizes/size[@selected='true']/availability/@status_description")}}
												{{else}}
													{{$xml->getItemEscape("/shop/page/projector/product/sizes/size/availability/@status_description")}}
												{{/if}}
												</span>
										</div>
									</div>
									{{if ( $xml->getItem("/shop/page/projector/product/sizes/size/availability/delay_time/@unknown_delivery_time")  == (string) 'true') or ( $xml->getItem("/shop/page/projector/bundled/product/sizes/size/availability/delay_time/@unknown_delivery_time")  == (string) 'true')}}
										<div id="projector_shipping_unknown" {{if !( $xml->getItem("/shop/page/projector/product/sizes/size[@selected='true']"))}} style="display:none" {{/if}}>
											<span>
												<a target="_blank" href="{{$xml->getItemEscape("/shop/contact/link/@url")}}">{{$txt['106647::64594_665_ut']}}</a>{{$txt['106647::64594_666_ut']}}</span>
										</div>
									{{/if}}
									{{if !( $xml->getItem("/shop/page/projector/product/@product_type")  == (string) 'product_service')}}
										<div id="projector_shipping_info" {{if !( $xml->getItem("/shop/page/projector/product/sizes/size[@selected='true']"))}} style="display:none"{{/if}}>
											<label>
												{{if  $xml->getItem("/shop/page/projector/bundled/@collection")  == (string) 'true' and $wysylka_bundle_txt}}
													{{$xml->getItem("$wysylka_bundle_txt")}}
												{{else}}
													{{$txt['106647::53676_wys']}}
												{{/if}}
											</label>
											<div>
												<span class="projector_delivery_days" id="projector_delivery_days">
													{{if  $xml->getItem("/shop/page/projector/product/sizes/size[@selected='true']")}}
														{{if ( $xml->getItem("/shop/page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@week_amount")  == (string) 0) and ( $xml->getItem("/shop/page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@hours")  == (string) 0) and ( $xml->getItem("/shop/page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@minutes")  == (string) 0)}}
															{{if  $xml->getItem("/shop/page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@today")  == (string) 'true'}}
																{{$txt['106647::64594_js_txt_46']}}
															{{elseif  $xml->getItem("/shop/page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@week_day")  == (string) 1}}
																{{$txt['106647::64594_js_txt_47']}}
															{{elseif  $xml->getItem("/shop/page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@week_day")  == (string) 2}}
																{{$txt['106647::64594_js_txt_48']}}
															{{elseif  $xml->getItem("/shop/page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@week_day")  == (string) 3}}
																{{$txt['106647::64594_js_txt_49']}}
															{{elseif  $xml->getItem("/shop/page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@week_day")  == (string) 4}}
																{{$txt['106647::64594_js_txt_50']}}
															{{elseif  $xml->getItem("/shop/page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@week_day")  == (string) 5}}
																{{$txt['106647::64594_js_txt_51']}}
															{{elseif  $xml->getItem("/shop/page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@week_day")  == (string) 6}}
																{{$txt['106647::64594_js_txt_52']}}
															{{elseif  $xml->getItem("/shop/page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@week_day")  == (string) 7}}
																{{$txt['106647::64594_js_txt_53']}}
															{{/if}}
														{{elseif  $xml->getItem("page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@days")}}
															{{$txt['106647::64594_js_txt_18']}}
															{{if  $xml->getItem("page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@days")  gt (string) 0}}
																{{$xml->getItemEscape("page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@days")}}
																{{if  $xml->getItem("page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@days")  == (string)'1'}}
																	{{$txt['106647::64594_js_txt_11a']}}
																{{else}}
																	{{$txt['106647::64594_js_txt_11']}}
																{{/if}}
															{{/if}}
															{{if  $xml->getItem("page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@hours")  gt (string) 0}}
																{{$xml->getItemEscape("page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@hours")}}{{$txt['106647::64594_js_txt_12']}}
															{{/if}}
															{{if  $xml->getItem("page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@minutes")  gt (string) 0}}
																{{$xml->getItemEscape("page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@minutes")}}{{$txt['106647::64594_js_txt_12c']}}
															{{/if}}
														{{/if}}
													{{else}}
														{{if ( $xml->getItem("/shop/page/projector/product/sizes/size/availability/shipping_time/@week_amount")  == (string) 0) and ( $xml->getItem("/shop/page/projector/product/sizes/size/availability/shipping_time/@hours")  == (string) 0) and ( $xml->getItem("/shop/page/projector/product/sizes/size/availability/shipping_time/@minutes")  == (string) 0)}}
															{{if  $xml->getItem("/shop/page/projector/product/sizes/size/availability/shipping_time/@today")  == (string) 'true'}}
																{{$txt['106647::64594_js_txt_46']}}
															{{elseif  $xml->getItem("/shop/page/projector/product/sizes/size/availability/shipping_time/@week_day")  == (string) 1}}
																{{$txt['106647::64594_js_txt_47']}}
															{{elseif  $xml->getItem("/shop/page/projector/product/sizes/size/availability/shipping_time/@week_day")  == (string) 2}}
																{{$txt['106647::64594_js_txt_48']}}
															{{elseif  $xml->getItem("/shop/page/projector/product/sizes/size/availability/shipping_time/@week_day")  == (string) 3}}
																{{$txt['106647::64594_js_txt_49']}}
															{{elseif  $xml->getItem("/shop/page/projector/product/sizes/size/availability/shipping_time/@week_day")  == (string) 4}}
																{{$txt['106647::64594_js_txt_50']}}
															{{elseif  $xml->getItem("/shop/page/projector/product/sizes/size/availability/shipping_time/@week_day")  == (string) 5}}
																{{$txt['106647::64594_js_txt_51']}}
															{{elseif  $xml->getItem("/shop/page/projector/product/sizes/size/availability/shipping_time/@week_day")  == (string) 6}}
																{{$txt['106647::64594_js_txt_52']}}
															{{elseif  $xml->getItem("/shop/page/projector/product/sizes/size/availability/shipping_time/@week_day")  == (string) 7}}
																{{$txt['106647::64594_js_txt_53']}}
															{{/if}}
														{{elseif  $xml->getItem("page/projector/product/sizes/size/availability/shipping_time/@days")}}
															{{$txt['106647::64594_js_txt_18']}}
															{{if  $xml->getItem("page/projector/product/sizes/size/availability/shipping_time/@days")  gt (string) 0}}
																{{$xml->getItemEscape("page/projector/product/sizes/size/availability/shipping_time/@days")}}
																{{if  $xml->getItem("page/projector/product/sizes/size/availability/shipping_time/@days")  == (string)'1'}}
																	{{$txt['106647::64594_js_txt_11a']}}
																{{else}}
																	{{$txt['106647::64594_js_txt_11']}}
																{{/if}}
															{{/if}}
															{{if  $xml->getItem("page/projector/product/sizes/size/availability/shipping_time/@hours")  gt (string) 0}}
																{{$xml->getItemEscape("page/projector/product/sizes/size/availability/shipping_time/@hours")}}{{$txt['106647::64594_js_txt_12']}}
															{{/if}}
															{{if  $xml->getItem("page/projector/product/sizes/size/availability/shipping_time/@minutes")  gt (string) 0}}
																{{$xml->getItemEscape("page/projector/product/sizes/size/availability/shipping_time/@minutes")}}{{$txt['106647::64594_js_txt_12c']}}
															{{/if}}
														{{/if}}
													{{/if}}
													</span>
											</div>
											<a class="shipping_info" href="#shipping_info" title="{{$txt['106647::57295_019a']}}">{{$txt['106647::57295_019a']}}</a>
										</div>
									{{/if}}
								</div>
								<div id="projector_prices_wrapper">
									<div class="product_section" id="projector_price_srp_wrapper" {{if !( $xml->getItem("page/projector/product/price/@srp")) and !( $xml->getItem("/shop/page/projector/product/sizes/size[@selected='true']/price/@srp_formatted"))}} style="display:none;" {{/if}}>
										<label class="projector_label">{{$txt['106647::53676_400ckat']}}
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
										<label class="projector_label">
											{{if  $xml->getItem("/shop/page/projector/bundled/@collection")  == (string) 'true' and $cena_bundle_txt}}
												{{$xml->getItem("$cena_bundle_txt")}}
											{{else}}
												{{$txt['106647::53676_400']}}
											{{/if}}
										</label>
										<div class="projector_price_subwrapper">
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
											</div>
											{{if  $xml->getItem("page/projector/product/price/@value")  == (string) 0}}
												<strong class="projector_price_value" id="projector_price_value">
													<a {{assign "hrefAttributeTmp59" ""}}{{capture name="hrefAttributeTmp59" assign="hrefAttributeTmp59"}}/contact-pol.html{{/capture}} target="_blank"{{capture name="hrefAttributeTmp59" assign="hrefAttributeTmp59"}}{{$xml->getItemEscape("/shop/contact/link/@url")}}{{/capture}}  href="{{$hrefAttributeTmp59}}">
														<img src="{{$xml->getItemEscape("/shop/page/projector/product/sizes/size/availability/@status_gfx_tel")}} " alt="{{$xml->getItemEscape("/shop/page/projector/product/sizes/size/availability/@status_description_tel")}} "></img></a></strong>
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
													<script class="ajaxLoad">
                                                $('#projector_price_value').html(format_price("{{$xml->getItemEscape("/shop/page/projector/product/sizes/prices/@minprice * page/projector/product/sizes/@unit_sellby")}}",{mask: app_shop.vars.currency_format,currency: "{{$xml->getItemEscape("/shop/currency/@name")}}",currency_space: app_shop.vars.currency_space,currency_before_price: app_shop.vars.currency_before_value})+' - '+format_price("{{$xml->getItemEscape("/shop/page/projector/product/sizes/prices/@maxprice * page/projector/product/sizes/@unit_sellby")}}",{mask: app_shop.vars.currency_format,currency: "{{$xml->getItemEscape("/shop/currency/@name")}}",currency_space: app_shop.vars.currency_space,currency_before_price: app_shop.vars.currency_before_value}));
                                            													</script>

												{{/if}}
												<div class="price_gross_info">
													<small class="projector_price_unit_sep">{{$txt['106647::53676_un_sep']}}</small>
													<small class="projector_price_unit_sellby" id="projector_price_unit_sellby" style="display:none">{{$xml->getItemEscape("/shop/page/projector/product/sizes/@unit_sellby")}}</small>
													<small class="projector_price_unit" id="projector_price_unit">{{$xml->getItemEscape("/shop/page/projector/product/sizes/@unit")}}</small>
													<span>
														{{if !( $xml->getItem("/shop/contact/owner/@vat_registered")  == (string) 'false')}}
															{{if !( $xml->getItem("/shop/contact/owner/@vat_registered")  == (string) 'false') and !( $xml->getItem("/shop/client_data/@uses_vat") == (string)'false')}}
																{{if  $xml->getItem("/shop/page/projector/bundled/@collection")  == (string) 'true' and $brutto_bundle_txt}}
																	{{$xml->getItem("$brutto_bundle_txt")}}
																{{else}}
																	{{$txt['106647::57295_019b']}}
																{{/if}}
															{{/if}}
														{{/if}}
														</span>
													{{if  $xml->getItem("page/projector/product/sizes/size[1]/price/rebateNumber")}}
														<span id="projector_rebateNumber">
															<span id="projector_rebatenumber">{{$txt['106647::53676_za']}}
																<span class="product_section rebates_sub">
																	<span id="projector_product_rebatenumber_threshold">{{$xml->getItemEscape("format-number(page/projector/product/sizes/size/price/rebateNumber/@nextthreshold, '#')")}}</span>{{$txt['106647::53676_spa']}}{{$xml->getItemEscape("page/projector/product/sizes/@unit")}}{{$txt['106647::53676_rab']}}
																	<strong>
																		<span id="projector_product_rebatenumber_value">
																			{{if  $xml->getItem("contains(page/projector/product/sizes/size[1]/price/rebateNumber/@nextvalue, '.00')")}}
																				{{$xml->getItemEscape("format-number(page/projector/product/sizes/size[1]/price/rebateNumber/@nextvalue, '#')")}}{{$txt['106647::53676_pro']}}
																			{{else}}
																				{{$xml->getItemEscape("page/projector/product/sizes/size[1]/price/rebateNumber/@nextvalue")}}{{$txt['106647::53676_pro']}}
																			{{/if}}
																			</span></strong></span></span>
															<div class="tooltipContent">
																{{foreach from=$xml->getList("page/projector/product/sizes/size[1]/price/rebateNumber/rebate") item=loop1173}}
																	<div class="rebatenumber_rebate">
																		<strong>{{$txt['106647::53676_rabat']}}
																			<span>
																				{{if  $loop1173->getItem("contains(@value, '.00')")}}
																					{{$loop1173->getItemEscape("format-number(@value, '#')")}}{{$txt['106647::53676_pro']}}
																				{{else}}
																					{{$loop1173->getItemEscape("@value")}}{{$txt['106647::53676_pro']}}
																				{{/if}}
																				</span></strong>
																		{{if $thresholdEnd_enable and ( $loop1173->getItem("@threshold")  == (string)  $loop1173->getItem("@threshold_end"))}}
																			{{$txt['106647::57649_threshold_1']}}
																		{{else}}
																			{{$txt['106647::53676_za2']}}
																		{{/if}}
																		<span>{{$loop1173->getItemEscape("format-number(@threshold, '#')")}}</span>{{$txt['106647::53676_spa']}}{{$loop1173->getItemEscape("/shop/page/projector/product/sizes/@unit")}}
																		{{if $thresholdEnd_enable and !( $loop1173->getItem("@threshold")  == (string)  $loop1173->getItem("@threshold_end"))}}
																			{{$txt['106647::57649_threshold_2']}}
																			<span>{{$loop1173->getItemEscape("format-number(@threshold_end, '#')")}}</span>{{$txt['106647::53676_spa']}}{{$loop1173->getItemEscape("/shop/page/projector/product/sizes/@unit")}}
																		{{/if}}
																	</div>
																{{/foreach}}
															</div></span>
													{{/if}}
												</div>
											{{/if}}
											<div class="instalment_yousave">
												<span id="projector_instalment_wrapper"></span>
												{{if  $xml->getItem("/shop/page/projector/product/bundle_price/@amount_diff_gross") and  $xml->getItem("/shop/page/projector/bundled/@collection")  == (string) 'true' and $taniej_bundle_txt}}
													<span class="projector_price_yousave" id="projector_price_yousave_bundle" {{if $xml->getItem("/shop/page/projector/product/bundle_price/@amount_diff_gross") == (string) '0.00'}} style="display:none;" {{/if}}>{{$xml->getItem("$taniej_bundle_txt")}}
														<span class="percent_diff">{{$xml->getItemEscape("/shop/page/projector/product/bundle_price/@percent_diff")}}</span>{{$txt['106647::53676_pro']}}{{$txt['106647::n56245_stats_1']}}
														<span class="amount_diff_gross">{{$xml->getItemEscape("/shop/page/projector/product/bundle_price/@amount_diff_gross_formatted")}}</span>{{$txt['106647::n56245_stats_2']}}</span>
												{{else}}
													<span class="projector_price_yousave" id="projector_price_yousave">
														{{if  $xml->getItem("/shop/page/projector/product/bundle_price/@amount_diff_gross")}}
															<span class="projector_price_save_text">{{$txt['106647::60089_js_txt_6']}}</span>
															<span class="projector_price_save_percent">{{$xml->getItemEscape("/shop/page/projector/product/bundle_price/@percent_diff")}}{{$txt['106647::60089_js_txt_7']}}</span>
															<span class="projector_price_save_value">(
																<span class="projector_price">{{$xml->getItemEscape("/shop/page/projector/product/bundle_price/@amount_diff_gross")}}
																	<span class="projector_currency">{{$xml->getItemEscape("/shop/currency/@name")}}</span></span>){{$txt['106647::53676_in_bundle']}}</span>
														{{elseif  $xml->getItem("/shop/page/projector/product/sizes/size[@selected='true']/price/@yousave_percent")}}
															<span class="projector_price_save_text">{{$txt['106647::60089_js_txt_6']}}</span>
															<span class="projector_price_save_percent">{{$xml->getItemEscape("/shop/page/projector/product/sizes/size[@selected='true']/price/@yousave_percent")}}{{$txt['106647::60089_js_txt_7']}}</span>
															<span class="projector_price_save_value">(
																<span class="projector_price">{{$xml->getItemEscape("/shop/page/projector/product/sizes/size[@selected='true']/price/@yousave_formatted")}}</span>{{$txt['106647::n56245_nawias3']}}</span>
														{{elseif  $xml->getItem("page/projector/product/price/@yousave_percent")}}
															<span class="projector_price_save_text">{{$txt['106647::60089_js_txt_6']}}</span>
															<span class="projector_price_save_percent">{{$xml->getItemEscape("page/projector/product/price/@yousave_percent")}}{{$txt['106647::60089_js_txt_7']}}</span>
															<span class="projector_price_save_value">(
																<span class="projector_price">{{$xml->getItemEscape("page/projector/product/price/@yousave_formatted")}}</span>{{$txt['106647::n56245_nawias3']}}</span>
														{{else}}
															style="display:none;"
														{{/if}}
														</span>
												{{/if}}
											</div>
										</div>
									</div>
									{{if  $xml->getItem("/shop/page/projector/product/price/@unit_converted_price_formatted")}}
										<div id="projector_unit_converted_price" class="projector_unit_converted_price product_section">
											<label class="projector_label">{{$txt['106647::53676_c_con']}}
											</label>
											<span class="unit_converted_price" id="unit_converted_price">{{$xml->getItemEscape("/shop/page/projector/product/price/@unit_converted_price_formatted")}}{{$txt['106647::53676_un_sep']}}{{$xml->getItemEscape("/shop/page/projector/product/price/@unit_converted_format")}}</span>
										</div>
									{{/if}}
									{{if  $xml->getItem("/shop/page/projector/product/bundle_price/@price_gross") and $suma_cen_txt}}
										<div id="projector_bundle_price_gross" class="product_section">
											<label class="projector_label">{{$xml->getItem("$suma_cen_txt")}}
											</label>
											<strong class="projector_bundle_sum_price">
												<span class="projector_price">{{$xml->getItemEscape("/shop/page/projector/product/bundle_price/@price_gross")}}
													<span class="projector_currency">{{$xml->getItemEscape("/shop/currency/@name")}}</span></span></strong>
										</div>
									{{/if}}
									{{if  $xml->getItem("page/projector/product/sizes/@unit_sellby")  neq (string) '1'}}
										<div id="projector_sellbyrecount" class="projector_sellbyrecount product_section">
											<label class="projector_label">{{$txt['106647::n57981_sprz_po']}}
											</label>
											<span>{{$xml->getItemEscape("page/projector/product/sizes/@unit_sellby")}}{{$txt['106647::n57981_sprz_po_spacja']}}{{$xml->getItemEscape("page/projector/product/sizes/@unit")}}
												<span id="projector_sellbyprice_wrapper" style="display:none;">{{$txt['106647::n57981_sprz_po_nl']}}
													<span id="projector_sellbyprice">{{$xml->getItemEscape("/shop/page/projector/product/price/@price_formatted")}}</span>{{$txt['106647::n57981_sprz_po_un_sep']}}{{$xml->getItemEscape("page/projector/product/sizes/@unit")}}{{$txt['106647::n57981_sprz_po_nr']}}</span></span>
										</div>
									{{/if}}
									{{if $advanceprice_txt and  $xml->getItem("page/projector/product/price/@advanceprice_formatted")}}
										<div id="projector_advanceprice_wrapper">{{$xml->getItem("$advanceprice_txt")}}
											<b id="projector_advanceprice">{{$xml->getItemEscape("page/projector/product/price/@advanceprice_formatted")}}</b>{{$txt['106647::57295_019prkr']}}
										</div>
									{{/if}}
								</div>
								{{if $showComments}}
									<div class="product_section comment">
										<div class="product_section_sub">
											<label>{{$txt['106647::54710_401grawer']}}
											</label>
											<div>
												<textarea name="comment" maxlength="255"></textarea>
											</div>
										</div>
									</div>
								{{/if}}
								<div {{assign "classAttributeTmp10" ""}}{{capture name="classAttributeTmp10" assign="classAttributeTmp10"}}product_section tell_availability{{/capture}} id="projector_tell_availability" {{if !( $xml->getItem("/shop/page/projector/product/sizes/size[@selected='true']/availability/@status") == (string) 'disable')}} style="display:none" {{/if}}{{if $fashion_view and !($fashion_view == (string) '0')}}{{capture name="classAttributeTmp10" assign="classAttributeTmp10"}}product_section tell_availability col-md-7 col-sm-12 col-xs-12{{/capture}}{{/if}}  class="{{$classAttributeTmp10}}">
									<label>{{$txt['106647::53676_availabilit']}}
									</label>
									<div class="product_section_sub">
										<div class="form-group">
											<div class="input-group has-feedback has-required">
												<div class="input-group-addon">
													<i class="icon-envelope-alt"/>
												</div>
												<input type="text" class="form-control validate" name="email" data-validation-url="/ajax/client-new.php?validAjax=true" data-validation="client_email" required="required" disabled="disabled" placeholder="{{$txt['106647::53676_placeholder1']}}"></input>
												<span class="form-control-feedback"></span>
											</div>
										</div>
										<div class="checkbox" style="display:none;" id="sms_active_checkbox">
											<label>
												<input type="checkbox"/>{{$txt['106647::53676_005_phone']}}
											</label>
										</div>
										<div class="form-group" style="display:none;" id="sms_active_group">
											<div class="input-group has-feedback has-required">
												<div class="input-group-addon">
													<i class="icon-phone"/>
												</div>
												<input type="text" class="form-control validate" name="phone" data-validation-url="/ajax/client-new.php?validAjax=true" data-validation="client_phone" required="required" disabled="disabled" placeholder="{{$txt['106647::53676_placeholder2']}}"></input>
												<span class="form-control-feedback"></span>
											</div>
										</div>
										{{if $projector_form_privacy_info_text1}}
											<p class="form-privacy-info">{{$projector_form_privacy_info_text1}}
												<a href="{{$xml->getItemEscape("/shop/action/private_policy/@url")}}">{{$txt['106647::3524123_projector_privacy2']}}</a>{{$projector_form_privacy_info_text2}}
											</p>
										{{/if}}
										<div class="form-group">
											<button type="submit" class="btn-large">{{$txt['106647::53676_button_1']}}
											</button>
										</div>
										<div class="form-group">
											<p>{{$txt['106647::53676_005_text3']}}
											</p>
										</div>
									</div>
								</div>
								<div id="projector_buy_section" class="product_section">
									<label class="projector_label" {{if $xml->getItem("/shop/page/projector/product[@product_type='product_virtual']")}} style="visibility: hidden;" {{/if}} >
										{{if  $xml->getItem("/shop/page/projector/bundled/@collection")  == (string) 'true' and $dokoszyka_bundle_txt}}
											{{$xml->getItem("$dokoszyka_bundle_txt")}}
										{{else}}
											{{$txt['106647::54710_455']}}
										{{/if}}
									</label>
									<div class="projector_buttons" id="projector_buttons">
										{{if !( $xml->getItem("/shop/page/projector/product/@product_type")  == (string) 'product_virtual')}}
											<div class="projector_number" id="projector_number_cont">
												{{if !( $xml->getItem("page/projector/product/exchange/@exchange_id"))}}
													<button id="projector_number_down" class="projector_number_down" type="button">{{$txt['106647::54710_455min']}}
													</button>
												{{/if}}
												<input class="projector_number" name="number" id="projector_number" value="{{$xml->getItemEscape("/shop/page/projector/product/sizes/@unit_sellby")}}" {{if $xml->getItem("page/projector/product/exchange/@exchange_id")}} disabled="disabled" {{/if}}></input>
												{{if !( $xml->getItem("page/projector/product/exchange/@exchange_id"))}}
													<button id="projector_number_up" class="projector_number_up" type="button">{{$txt['106647::54710_455max']}}
													</button>
												{{/if}}
											</div>
										{{/if}}
										<button {{assign "classAttributeTmp11" ""}}{{capture name="classAttributeTmp11" assign="classAttributeTmp11"}}btn-large projector_butttons_buy{{/capture}} id="projector_button_basket" type="submit" {{if $xml->getItem("page/projector/product/exchange/@exchange_id")}}{{capture name="classAttributeTmp11" assign="classAttributeTmp11"}}btn-large projector_butttons_buy projector_butttons_exchange{{/capture}}{{/if}} title="{{$txt['106647::53676_800']}}"   class="{{$classAttributeTmp11}}">
											{{if  $xml->getItem("page/projector/product/exchange/@exchange_id")}}
												{{$txt['106647::53676_004_alt']}}
											{{elseif  $xml->getItem("/shop/page/projector/bundled/@collection")  == (string) 'true' and $dokoszykabu_bundle_txt}}
												{{$xml->getItem("$dokoszykabu_bundle_txt")}}
											{{else}}
												{{$txt['106647::53676_004']}}
											{{/if}}
										</button>
										<a href="#add_favorite" class="projector_buttons_obs" id="projector_button_observe" title="{{$txt['106647::53676_801']}}">{{$txt['106647::53676_005']}}</a>
										{{if  $xml->getItem("/shop/compare[@active='y']")}}
											<a {{assign "hrefAttributeTmp60" ""}}  class="projector_prodstock_compare"{{capture name="hrefAttributeTmp60" assign="hrefAttributeTmp60"}}settings.php?comparers=add&#160;amp;product={{$xml->getItemEscape("page/projector/product/@id")}}{{/capture}}{{if $xml->getItem("/shop/action/settings/@url")}}{{capture name="hrefAttributeTmp60" assign="hrefAttributeTmp60"}}{{$xml->getItemEscape("/shop/action/settings/@url")}}?comparers=add&#160;amp;product={{$xml->getItemEscape("page/projector/product/@id")}}{{/capture}}{{/if}} title="{{$txt['106647::54089_00_1']}}"  href="{{$hrefAttributeTmp60}}">{{$txt['106647::54089_00_2']}}</a>
										{{/if}}
									</div>
								</div>
								{{if $points_in_prices_section}}
									<div id="projector_points_wrapper" class="points_price_section" {{if !( $xml->getItem("/shop/page/projector/product/@for_points") == (string)'true' or $xml->getItem("page/projector/product/price/@points") gt (string) 0 )}} style="display:none;"{{/if}}>
										<div class="product_points_wrapper">
											{{if  $xml->getItem("page/projector/product/price/@points")}}
												<div class="product_points_section">
													<label class="projector_label">{{$txt['106647::53676_c_pkt']}}
													</label>
													<span class="point_price" id="projector_price_points">{{$xml->getItemEscape("page/projector/product/price/@points")}}
														<span class="projector_currency">{{$txt['106647::53676_pkt']}}</span></span>
												</div>
											{{/if}}
											{{if  $xml->getItem("page/projector/product/price/@points_recive")}}
												<div class="product_points_section" {{if !( $xml->getItem("page/projector/product/price/@points_recive") and $xml->getItem("page/projector/product/price/@points_recive") gt (string) 0)}} style="display:none;" {{/if}}>
													<label class="projector_label">{{$txt['106647::53676_pont_zy']}}
													</label>
													<span class="point_price" id="projector_points_recive_points">{{$xml->getItemEscape("page/projector/product/price/@points_recive")}}
														<span class="projector_currency">{{$txt['106647::53676_pkt']}}</span></span>
												</div>
											{{/if}}
										</div>
										<div class="product_points_buy" {{if !( $xml->getItem("/shop/page/projector/product/@for_points") == (string)'true')}} style="display:none;" {{/if}}>
											<div>
												<button id="projector_button_points_basket" type="submit" name="forpoints" value="1" class="btn">{{$txt['106647::53676_point_buy']}}
												</button>
											</div>
										</div>
									</div>
								{{/if}}
								{{if !($points_in_prices_section)}}
									<div class="product_section points points_price_old_section" id="projector_points_wrapper" {{if !( $xml->getItem("/shop/page/projector/product/@for_points") == (string)'true' or $xml->getItem("page/projector/product/price/@points") gt (string) 0 )}} style="display:none;" {{/if}}>
										<div class="product_section_sub">
											<div class="projector_points_sub_wrapper">
												<div class="projector_price_points_wrapper" id="projector_price_points_wrapper">
													<label class="projector_label">{{$txt['106647::53676_c_pkt']}}
													</label>
													<span class="projector_price_points" id="projector_price_points">{{$xml->getItemEscape("page/projector/product/price/@points")}}
														<span class="projector_currency">{{$txt['106647::53676_pkt']}}</span></span>
												</div>
												<div class="projector_price_points_recive_wrapper" id="projector_price_points_recive_wrapper" {{if !( $xml->getItem("page/projector/product/price/@points_recive") and $xml->getItem("page/projector/product/price/@points_recive") gt (string) 0)}} style="display:none;" {{/if}}>
													<label class="projector_label">{{$txt['106647::53676_pont_zy']}}
													</label>
													<span class="projector_points_recive_points" id="projector_points_recive_points">{{$xml->getItemEscape("page/projector/product/price/@points_recive")}}
														<span class="projector_currency">{{$txt['106647::53676_pkt']}}</span></span>
												</div>
											</div>
											<button id="projector_button_points_basket" type="submit" name="forpoints" value="1" class="btn" {{if !( $xml->getItem("/shop/page/projector/product/@for_points") == (string)'true')}} style="display:none;" {{/if}}>{{$txt['106647::53676_point_buy']}}
											</button>
										</div>
									</div>
								{{/if}}
							</div>
							{{if  $xml->getItem("/shop[@trust_level='1']")}}
								<div id="superfairshop_info">
									<div class="superfairshop_info_wrapper">
										<div>
											<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/iai_security_supershop.png?r=1570606968" alt="SuperFair.Shop badge"/>
											<strong>{{$txt['106647::53676_superfairshop1']}}</strong>
											<p>{{$txt['106647::53676_superfairshop2']}}
											</p>
											<p>{{$txt['106647::53676_superfairshop3']}}
											</p>
										</div>
									</div>
								</div>
							{{/if}}
						</form>
						<div id="projector_rebatenumber_tip_copy" style="display:none;">
							<img class="projector_rebatenumber_tip" src="/gfx/__IAI_TEMPLATE_LANG_639_1__/help_tip.png?r=1570606968" alt="tip"/>
						</div>
						<div id="alert_cover" class="projector_alert_55916" style="display:none" onclick="Alertek.hide_alert();">
						</div>
						<script class="ajaxLoad">
                app_shop.vars.contact_link = "{{$xml->getItemEscape("/shop/contact/link/@url")}}";
            						</script>

						{{if  $xml->getItem("/shop/@get_ajax_projector_xml")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/projector/bookmarklets/item/@icon_small")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/projector/product/products_other_founds")}}
						{{/if}}
						<!--Karta produktu - Zestawy (projector_bundle_zone, 106653.1)-->
						{{if  $xml->getItem("page/projector/bundled/product")}}
							<div id="projector_bundle_product" >
								{{if  $xml->getItem("/shop/page/projector/bundled/@left_quantity") and !( $xml->getItem("/shop/page/projector/product/bundle_price/@amount_diff_gross")  == (string) '0.00')}}
									<div class="bundle_rabat bg_alter">
										<h2>{{$txt['106653::53676_zrkt']}}
										</h2>
										<div>
											<span>{{$txt['106653::53676_cpk1']}}{{$xml->getItemEscape("/shop/page/projector/bundled/@left_quantity")}}{{$txt['106653::53676_cpk2']}}</span>
										</div>
									</div>
								{{/if}}
								<h2 class="big_label product_bundle">
									{{if  $xml->getItem("/shop/page/projector/bundled/@collection") == (string)'true'}}
										{{$txt['106653::n55363_400_tk']}}
									{{else}}
										{{$txt['106653::n55363_400_tz']}}
									{{/if}}
								</h2>
								<div class="product_bundle">
									<ul class="product_bundle">
										{{foreach from=$xml->getList("page/projector/bundled/product") item=loop1538}}
											<li class="product_bundle" rel="#projector_image_bundled{{$loop1538@iteration}}">
												{{if  $loop1538->getItem("/shop/page/projector/bundled[@collection='true']")}}
													<div class="product_bundle_quantity">
														<input type="checkbox" class="bundled_quantity" name="bundled_quantity[{{$loop1538->getItemEscape("@id")}}]" value="{{$loop1538->getItemEscape("sizes/@unit_sellby")}}" data-amount=" {{if $loop1538->getItem("sizes/size[@amount!=0][1]/@amount")}}{{$loop1538->getItemEscape("sizes/size[@amount!=0][1]/@amount")}}{{else}}{{$loop1538->getItemEscape("sizes/size[1]/@amount")}}{{/if}} " data-unit_sellby="{{$loop1538->getItemEscape("sizes/@unit_sellby")}}" data-unit="{{$loop1538->getItemEscape("sizes/@unit")}}" data-unit_precision="{{$loop1538->getItemEscape("sizes/@unit_precision")}}" id="bundled_quantity_{{$loop1538->getItemEscape("@id")}}" {{if count( $loop1538->getList("sizes/size[@amount=0]")) neq (string) count( $loop1538->getList("sizes/size"))}} checked="checked"{{/if}}></input>
														<label for="bundled_quantity_{{$loop1538->getItemEscape("@id")}}">
														</label>
													</div>
												{{/if}}
												<input type="hidden" class="bundled_product" name="bundled_product[{{$loop1538->getItemEscape("@id")}}]" value="{{$loop1538->getItemEscape("@product_id")}}"></input>
												{{if  $loop1538->getItem("@link")  neq (string) ''}}
													{{literal}}
													<a class="product_bundle_icon" href="{{/literal}}{{$loop1538->getItemEscape("@link")}}{{literal}}" >{{/literal}}
													{{else}}
														{{literal}}
														<span class="product_bundle_icon">{{/literal}}
														{{/if}}
														<img src="{{$loop1538->getItemEscape("enclosures/images/enclosure[1]/@icon")}}" alt="{{$loop1538->getItemEscape("name")}}"></img>
														{{if  $loop1538->getItem("@link")  neq (string) ''}}
															{{literal}}</a>{{/literal}}
													{{else}}
														{{literal}}</span>{{/literal}}
												{{/if}}
												<div class="bundled_name">
													{{if  $loop1538->getItem("@link")  neq (string) ''}}
														{{literal}}
														<a class="product-name" href="{{/literal}}{{$loop1538->getItemEscape("@link")}}{{literal}}" >{{/literal}}
														{{else}}
															{{literal}}
															<span class="product-name">{{/literal}}
															{{/if}}
															{{if  $loop1538->getItem("@bundle_quantity") and  $loop1538->getItem("@bundle_quantity")  gt (string) 1}}
																<strong>{{$loop1538->getItemEscape("@bundle_quantity")}}{{$txt['106653::53676_400x']}}</strong>
															{{/if}}
															{{$loop1538->getItemEscape("name")}}
															{{if  $loop1538->getItem("@link")  neq (string) ''}}
																{{literal}}</a>{{/literal}}
														{{else}}
															{{literal}}</span>{{/literal}}
													{{/if}}
													{{if  $loop1538->getItem("price/@value")  gt (string) 0}}
														<div class="price">{{$txt['106653::53676_cpk0']}}
															<b>{{$loop1538->getItemEscape("price/@price_formatted")}}</b>
															{{if  $loop1538->getItem("sizes/@unit")}}
																<span>
																	/{{$loop1538->getItemEscape("sizes/@unit")}}</span>
															{{/if}}
														</div>
													{{/if}}
													<div {{assign "styleAttributeTmp1" ""}}  class="bundled_availability"{{capture name="styleAttributeTmp1" assign="styleAttributeTmp1"}}display:none;{{/capture}}{{if count( $loop1538->getList("sizes/size[@amount=0]")) == (string) count( $loop1538->getList("sizes/size"))}}{{capture name="styleAttributeTmp1" assign="styleAttributeTmp1"}}display:block;{{/capture}}{{/if}}   style="{{$styleAttributeTmp1}}">
														{{if  $loop1538->getItem("multiversions") and  $loop1538->getItem("versions/@version_choice") == (string)'true'}}
															{{$txt['106653::53676_bundled_availability_colection']}}
														{{else}}
															{{$txt['106653::53676_bundled_availability']}}
														{{/if}}
													</div>
												</div>
												<div>
													<div class="bundled_options_select">
														{{if  $loop1538->getItem("multiversions") and  $loop1538->getItem("versions/@version_choice") == (string)'true'}}
															<div class="bundled_multi_versions clearfix">
																{{foreach from=$loop1538->getList("multiversions/multi_version") item=loop1616}}
																	{{capture name="bundle_id" assign="bundle_id"}}
																		{{$loop1616->getItemEscape("../../@id")}}
																	{{/capture}}
																	<div class="bundled_multi_version">
																		<div class="fancy-select" id="mw_{{$bundle_id}}{{$loop1616->getItemEscape("@id")}}">
																			<div class="trigger">{{$loop1616->getItem("@name")}}:
																				<span>
																					{{foreach from=$loop1616->getList("item[@selected='true']/values/value") item=loop1621}}
																						{{if !( $loop1621@iteration   == (string) 1)}}
																							{{$txt['106653::n55363_345']}}
																						{{/if}}
																						{{$loop1621->getItem("@name")}}
																					{{/foreach}}
																					</span>
																			</div>
																			<ul class="options">
																				{{foreach from=$loop1616->getList("item") item=loop1626}}
																					{{capture name="value_name" assign="value_name"}}
																						{{foreach from=$loop1626->getList("values/value") item=loop1628}}
																							{{if !( $loop1628@iteration   == (string) 1)}}
																								{{$txt['106653::n55363_345']}}
																							{{/if}}
																							{{$loop1628->getItem("@name")}}
																						{{/foreach}}
																					{{/capture}}
																					<li class="{{if $loop1626->getItem("@disabled") == (string)'true'}}disabled {{/if}}{{if $loop1626->getItem("@selected") == (string)'true'}}selected{{/if}}" id="v{{$bundle_id}}{{$loop1626->getItem("values/@id")}}" data-values_id="{{$loop1626->getItem("values/@id")}}" data-value="{{$loop1626@iteration}}" data-title="{{$value_name}}" data-product="{{$loop1626->getItemEscape("products/product/@product_id")}}" data-bundle_product="{{$bundle_id}}">
																						<a title="{{$value_name}}" href="{{$loop1626->getItemEscape("products/product/@url")}}">
																							{{foreach from=$loop1626->getList("values/value") item=loop1644}}
																								{{if  $loop1644->getItem("@gfx")}}
																									<span class="gfx">
																										<img src="{{$loop1644->getItemEscape("@gfx")}}" alt="{{$value_name}}"></img></span>
																								{{/if}}
																							{{/foreach}}
																							<span>
																								<span>{{$loop1626->getItem("$value_name")}}</span>
																								{{foreach from=$loop1626->getList("values/value") item=loop1658}}
																									{{if  $loop1658->getItem("description")}}
																										<div class="description">{{$loop1658->getItem("description")}}
																										</div>
																									{{/if}}
																								{{/foreach}}
																								<p class="conflict_txt">{{$txt['106653::n55363_co']}}
																								</p></span></a>
																					</li>
																				{{/foreach}}
																			</ul>
																			<p class="conflict_txt">{{$txt['106653::n55363_coz']}}
																			</p>
																			{{if  $loop1616->getItem("description")}}
																				<div class="description">{{$loop1616->getItem("description")}}
																				</div>
																			{{/if}}
																		</div>
																		{{if  $loop1616->getItem("@gfx")}}
																			<div class="gfx">
																				<img src="{{$loop1616->getItemEscape("@gfx")}}" alt="{{$loop1616->getItemEscape("@name")}}"></img>
																			</div>
																		{{/if}}
																	</div>
																{{/foreach}}
															</div>
														{{/if}}
														{{if  $loop1538->getItem("sizes/size/@type") == (string)'onesize'}}
															<input {{assign "valueAttributeTmp70" ""}}  class="product_bundle_size" type="hidden"{{capture name="valueAttributeTmp70" assign="valueAttributeTmp70"}}{{/capture}} name="bundled_size[{{$loop1538->getItemEscape("@id")}}]"{{capture name="valueAttributeTmp70" assign="valueAttributeTmp70"}}{{$loop1538->getItemEscape("sizes/size[1]/@type")}}{{/capture}}  value="{{$valueAttributeTmp70}}"></input>
														{{else}}
															<select class="product_bundle_size" id="s_{{$loop1538->getItemEscape("@id")}}" name="bundled_size[{{$loop1538->getItemEscape("@id")}}]" data-label="{{$txt['106653::n55363_rza']}}">
																{{foreach from=$loop1538->getList("sizes/size") item=loop1696}}
																	<option {{assign "classAttributeTmp12" ""}}{{capture name="classAttributeTmp12" assign="classAttributeTmp12"}}enabled{{/capture}}{{if $loop1696->getItem("@amount") neq (string) 0 and ( $loop1696->getItem("@type") == (string) $loop1696->getItem("../size[@amount!=0][1]/@type"))}} selected="selected" {{/if}}{{if $loop1696->getItem("@amount") == (string) 0}}{{capture name="classAttributeTmp12" assign="classAttributeTmp12"}}disabled{{/capture}}{{/if}} value="{{$loop1696->getItemEscape("@type")}}" data-amount="{{$loop1696->getItemEscape("@amount")}}" {{$loop1696->getItemEscape("@description")}}  class="{{$classAttributeTmp12}}">
																		{{if  $loop1696->getItem("@amount")  == (string) 0}}
																			{{$txt['106653::n55363_rza_brak']}}
																		{{/if}}
																	</option>
																{{/foreach}}
															</select>
														{{/if}}
													</div>
													{{if  $loop1538->getItem("sizes_chart")}}
														<a href="#show_size_bundle" class="show_size_bundle" data-id="#component_colection_sizes_chart_{{$loop1538->getItemEscape("sizes_chart/@id")}}_{{$loop1538->getItemEscape("../@id")}}">{{$txt['106653::n55363_table']}}</a>
														<div class="component_projector_sizes_chart" style="display:none;" id="component_colection_sizes_chart_{{$loop1538->getItemEscape("sizes_chart/@id")}}_{{$loop1538->getItemEscape("../@id")}}">
															{{if  $loop1538->getItem("sizes_chart/descriptions/description")}}
																<h2>{{$txt['106653::56195_02']}}
																</h2>
																<table {{assign "classAttributeTmp13" ""}}{{capture name="classAttributeTmp13" assign="classAttributeTmp13"}}table-condensed{{/capture}}{{capture name="classAttributeTmp13" assign="classAttributeTmp13"}}ui-responsive table-stroke ui-table ui-table-reflow table-condensed{{/capture}}  class="{{$classAttributeTmp13}}">
																	<thead>
																		<tr>
																			<th class="table-first-column">{{$txt['106653::56195_03']}}
																			</th>
																			{{foreach from=$loop1538->getList("sizes_chart/descriptions/description") item=loop1727}}
																				<th>{{$loop1727->getItem("@name")}}
																				</th>
																			{{/foreach}}
																		</tr>
																	</thead>
																	<tbody>
																		{{foreach from=$loop1538->getList("sizes_chart/sizes/size") item=loop1737}}
																			<tr>
																				<td class="table-first-column">{{$loop1737->getItem("@description")}}
																				</td>
																				{{foreach from=$loop1737->getList("description") item=loop1743}}
																					<td>{{$loop1743->getItem("@text")}}
																					</td>
																				{{/foreach}}
																			</tr>
																		{{/foreach}}
																	</tbody>
																</table>
															{{/if}}
															<div class="sizes_chart_cms">
																{{if  $loop1538->getItem("sizes_chart/text")}}
																	{{$loop1538->getItem("sizes_chart/text")}}
																{{/if}}
															</div>
														</div>
													{{/if}}
												</div>
											</li>
										{{/foreach}}
									</ul>
									<div class="clearBoth">
									</div>
								</div>
							</div>
						{{/if}}
						{{if  $xml->getItem("page/projector/bundle/product")}}
							<div id="projector_bundle_zone2" >
								<h2 {{assign "classAttributeTmp14" ""}}{{capture name="classAttributeTmp14" assign="classAttributeTmp14"}}product_bundle{{/capture}} id="product_bundle_label_2"{{capture name="classAttributeTmp14" assign="classAttributeTmp14"}}big_label product_bundle{{/capture}}  class="{{$classAttributeTmp14}}">{{$txt['106653::n55363_400_z_t']}}
								</h2>
								<table class="product_bundle">
									<tr>
										<th class="product_bundle_icon"/>
										<th class="product_bundle_name"/>
										<th>{{$txt['106653::n55363_400_c_p_z']}}
										</th>
										<th>{{$txt['106653::n55363_400_c_z']}}
										</th>
									</tr>
									{{foreach from=$xml->getList("page/projector/bundle/product") item=loop1785}}
										<tr>
											<td class="product_bundle_icon">
												<a href="{{$loop1785->getItemEscape("@link")}}">
													<img alt="product_bundle_icon" alt="{{$loop1785->getItemEscape("name")}}" src="{{$loop1785->getItemEscape("icon")}}"></img></a>
											</td>
											<td class="product_bundle_name">
												<a href="{{$loop1785->getItemEscape("@link")}}">{{$loop1785->getItemEscape("name")}}</a>
											</td>
											<td class="product_bundle_price_value">
												<span>{{$loop1785->getItemEscape("bundle_price/@price_gross_formatted")}}</span>
											</td>
											<td class="product_bundle_price_gross">
												{{if  $loop1785->getItem("price/@value")  gt (string) 0}}
													<span>{{$loop1785->getItemEscape("price/@price_formatted")}}</span>
													<small>{{$txt['106653::53676_400osz']}}({{$loop1785->getItemEscape("bundle_price/@percent_diff")}}%)</small>
												{{else}}
													<a href="contact.php">{{$txt['106653::n55363_400_fon']}}</a>
												{{/if}}
											</td>
										</tr>
									{{/foreach}}
								</table>
							</div>
						{{/if}}
						<script class="ajaxLoad">
                var bundle_title =   "{{$txt['106653::n55363_400_c_p_z']}}";
            						</script>

						<!--Karta produktu - bannery (projector_banner, 106656.1)-->
						{{if  $xml->getItem("page/projector/returns_config/@active") == (string)'y' or  $xml->getItem("page/projector/product/payment/instalment") or  $xml->getItem("page/projector/product/sizes_version/@stocks_link") or  $xml->getItem("page/projector/product/sizes/@stocks_link") and !( $xml->getItem("/shop/page/projector/product/price/@value")  == (string) 0)}}
							<div id="n67367" class="clearfix">
								{{if  $xml->getItem("page/projector/returns_config/@active") == (string)'y' and !( $xml->getItem("page/projector/product/@product_type")  == (string) 'product_virtual' or  $xml->getItem("page/projector/product/@product_type")  == (string) 'product_service')}}
									<div id="n67367_returns" class="n67367_returns">
										{{if  $xml->getItem("page/projector/returns_config/@returns_shop_shipping_cost")  == (string) 'shop' or  $xml->getItem("page/projector/returns_config/@returns_shop_shipping_cost")  == (string) 'shopBalance'}}
											<h3 data-mobile-class="big_label">{{$txt['106656::n67367_returns_label_3shop']}}
											</h3>
										{{else}}
											<h3 data-mobile-class="big_label">{{$txt['106656::n67367_returns_label']}}
											</h3>
										{{/if}}
										<div class="n67367_returns_txt">{{$txt['106656::n67367_returns_opis1']}}
											<b>{{$xml->getItemEscape("page/projector/returns_config/@days_to_return")}}</b>{{$txt['106656::n67367_returns_opis3']}}
										</div>
										<a class="n67367_more" href="/Darmowe-zwroty-Poczta-Polska-cabout-pol-15.html" title="{{$txt['106656::n67367_returns_button_title']}}" data-less="{{$txt['106656::n67367_returns_button_title_less']}}">{{$txt['106656::n67367_returns_button_title']}}</a>
										<div class="n67367_returns_moretext">
											<div class="n67367_texts n67367_text1">
												<strong>
													<b>{{$xml->getItemEscape("page/projector/returns_config/@days_to_return")}}</b>{{$txt['106656::n67367_returns_label_1']}}</strong>
												<div>{{$txt['106656::n67367_returns_text_1a']}}
													<b>{{$xml->getItemEscape("page/projector/returns_config/@days_to_return")}}</b>{{$txt['106656::n67367_returns_text_1b']}}
												</div>
											</div>
											<div class="n67367_texts n67367_text2">
												{{if  $xml->getItem("page/projector/returns_config/@returns_shop_shipping_active")  == (string) 'y'}}
													<strong>{{$txt['106656::n67367_returns_label_2_poczta']}}</strong>
													<div>{{$txt['106656::n67367_returns_text_2_poczta']}}
													</div>
												{{else}}
													<strong>{{$txt['106656::n67367_returns_label_2']}}</strong>
													<div>{{$txt['106656::n67367_returns_text_2']}}
													</div>
												{{/if}}
											</div>
											<div {{assign "classAttributeTmp15" ""}}{{capture name="classAttributeTmp15" assign="classAttributeTmp15"}}n67367_texts n67367_text3{{/capture}}{{capture name="classAttributeTmp15" assign="classAttributeTmp15"}}n67367_texts n67367_text3 n67367_text3_{{$xml->getItemEscape("page/projector/returns_config/@returns_shop_shipping_cost")}}{{/capture}}  class="{{$classAttributeTmp15}}">
												{{if  $xml->getItem("page/projector/returns_config/@returns_shop_shipping_cost")  == (string) 'clientDEFAULT'}}
													<strong>{{$txt['106656::n67367_returns_label_3client']}}</strong>
													<div>{{$txt['106656::n67367_returns_text_3client']}}
													</div>
												{{elseif  $xml->getItem("page/projector/returns_config/@returns_shop_shipping_cost")  == (string) 'shop'}}
													<strong>{{$txt['106656::n67367_returns_label_3shop']}}</strong>
													<div>{{$txt['106656::n67367_returns_text_3shop']}}
													</div>
												{{elseif  $xml->getItem("page/projector/returns_config/@returns_shop_shipping_cost")  == (string) 'shopBalance'}}
													<strong>{{$txt['106656::n67367_returns_label_3shopBalance']}}</strong>
													<div>{{$txt['106656::n67367_returns_text_3shopBalance']}}
													</div>
												{{else}}
													<strong>{{$txt['106656::n67367_returns_label_3']}}</strong>
													<div>{{$txt['106656::n67367_returns_text_3']}}
													</div>
												{{/if}}
											</div>
											<div class="clear">
											</div>
											{{if  $xml->getItem("page/projector/returns_config/@returns_shop_shipping_link")  == (string) 'y'}}
												<a href="/Darmowe-zwroty-Poczta-Polska-cabout-pol-15.html" class="btn-large n67367_returns_seemore" title="{{$txt['106656::n67367_returns_button_nore']}}">{{$txt['106656::n67367_returns_button_nore_title']}}</a>
											{{else}}
											{{/if}}
										</div>
									</div>
								{{/if}}
								{{if !( $xml->getItem("page/projector/product/@product_type")  == (string) 'product_service')}}
									{{if  $xml->getItem("page/projector/product/sizes_version/@stocks_link") or  $xml->getItem("page/projector/product/sizes/@stocks_link") and !( $xml->getItem("/shop/page/projector/product/price/@value")  == (string) 0)}}
										<div id="n67367_stocks" class="n67367_stocks">
											<h3 data-mobile-class="big_label">{{$txt['106656::n67367_oo_label']}}
											</h3>
											<div class="n67367_stocks_txt">{{$txt['106656::n67367_oo_opis']}}
											</div>
											<a {{assign "hrefAttributeTmp61" ""}}{{capture name="hrefAttributeTmp61" assign="hrefAttributeTmp61"}}{{$xml->getItemEscape("page/projector/product/sizes_version/@stocks_link")}}{{/capture}}{{if $xml->getItem("page/projector/product/sizes/@stocks_link")}}{{capture name="hrefAttributeTmp61" assign="hrefAttributeTmp61"}}{{$xml->getItemEscape("page/projector/product/sizes/@stocks_link")}}{{/capture}}{{/if}} title="{{$txt['106656::n67367_oo_button_title']}}"  href="{{$hrefAttributeTmp61}}">{{$txt['106656::n67367_oo_button_title']}}</a>
										</div>
									{{/if}}
								{{/if}}
								{{if  $xml->getItem("page/projector/product/payment/instalment")}}
									<div id="n67367_instalment" class="n67367_instalment">
										<h3 data-mobile-class="big_label">{{$txt['106656::n67367_raty_label']}}
										</h3>
										{{foreach from=$xml->getList("/shop/page/projector/product/payment/instalment[@selected='true']") item=loop1912}}
											<div class="instalment_value_1">
												{{if  $loop1912->getItem("@value_formatted")}}
													<img class="instalment_value_1" src="{{$loop1912->getItemEscape("@gfx_small")}}" alt="{{$loop1912->getItemEscape("@name")}}"></img>
													<span class="instalment_value_1">{{$txt['106656::n67367_mbraty_txt']}}
														<b>{{$loop1912->getItemEscape("@value_formatted")}}</b>{{$txt['106656::n67367_mbraty_txt2']}}</span>
													<span class="n67367_section_txt">{{$loop1912->getItemEscape("@name")}}{{$txt['106656::n67367_raty_opis']}}</span>
													<small class="instalment_value_2">{{$txt['106656::n67367_mbraty_txt3']}}{{$loop1912->getItemEscape("@minprice")}}{{$loop1912->getItemEscape("/shop/currency/@name")}}{{$txt['106656::n67367_mbraty_txt4']}}{{$loop1912->getItemEscape("@maxprice")}}{{$loop1912->getItemEscape("/shop/currency/@name")}}</small>
													{{if  $loop1912->getItem("note")}}
														<span class="btn_note">{{$txt['106656::n67367_mbraty_txt5']}}</span>
														<div class="tooltipContent">{{$loop1912->getItem("note/text()")}}
														</div>
													{{/if}}
												{{else}}
													<span class="n67367_section_txt">{{$loop1912->getItemEscape("@name")}}{{$txt['106656::n67367_raty_opis']}}</span>
												{{/if}}
											</div>
										{{/foreach}}
										<ul class="n67367_instalment">
											{{foreach from=$xml->getList("page/projector/product/payment/instalment") item=loop1945}}
												<li data-name="{{$loop1945->getItemEscape("@name")}}">
													<a class="instalments{{$loop1945->getItem("@name")}}" onclick=" calculate_instalments('{{$loop1945->getItemEscape("@minprice")}}','{{$loop1945->getItemEscape("@maxprice")}}','{{$loop1945->getItemEscape("@priceTotal")}}','{{$loop1945->getItemEscape("@alert")}}',$(this).attr('data-window'),'{{$loop1945->getItemEscape("@maxquantity")}}','{{$loop1945->getItemEscape("@name")}}'); return false;" href="javascript:{{$loop1945->getItemEscape("@calculate")}}" data-window="{{$loop1945->getItemEscape("@calculatePrice")}}">
														<span>{{$txt['106656::n67367_oblicz_rate']}}{{$loop1945->getItemEscape("@name")}}</span>
														<img src="{{$loop1945->getItemEscape("@gfx")}}" alt="{{$loop1945->getItemEscape("@name")}}"></img></a>
												</li>
											{{/foreach}}
										</ul>
									</div>
								{{/if}}
							</div>
						{{/if}}
						<!--Długi opis produktu z HTML (projector_longdescription, 106664.1)-->
						{{if  $xml->getItem("page/projector/product/vlongdescription") and !( $xml->getItem("page/projector/product/vlongdescription")  == (string) '')}}
							<div {{assign "classAttributeTmp16" ""}}{{capture name="classAttributeTmp16" assign="classAttributeTmp16"}}projector_longdescription cm{{/capture}}{{if ( $xml->getItem("/shop/page/projector/product/dictionary/items/item") and !(count( $xml->getList("/shop/page/projector/product/dictionary/items/item")) gt (string) 6)) and (!(count( $xml->getList("page/projector/questions/question"))))}}{{capture name="classAttributeTmp16" assign="classAttributeTmp16"}}projector_longdescription cm longdescription_small{{/capture}}{{/if}} id="{{$txt['106664::56174_1']}}"  class="{{$classAttributeTmp16}}">{{$xml->getItem("page/projector/product/vlongdescription/text()")}}
							</div>
						{{/if}}
						<!--Karta produktu - słownik opisu (projector_dictionary, 106665.1)-->
						{{if count( $xml->getList("/shop/page/projector/product/dictionary/items"))  gt (string) 0}}
							<div {{assign "classAttributeTmp17" ""}}{{capture name="classAttributeTmp17" assign="classAttributeTmp17"}}component_projector_dictionary{{/capture}} id="{{$txt['106665::56173_01']}}" {{if $xml->getItem("/shop/page/projector/product/dictionary/items/item") and !(count( $xml->getList("/shop/page/projector/product/dictionary/items/item")) gt (string) 6)}}{{capture name="classAttributeTmp17" assign="classAttributeTmp17"}}dictionary_small{{/capture}}{{/if}}  class="{{$classAttributeTmp17}}">
								<div class="n56173_main">
									<div class="n56173_label">
										<span class="n56173_2_label">{{$txt['106665::56173_02']}}</span>
									</div>
									<div class="n56173_sub">
										<table class="n54117_dictionary">
											{{foreach from=$xml->getList("/shop/page/projector/product/dictionary/items/item") item=loop1987}}
												{{if  $loop1987->getItem("@type")  == (string) 'group'}}
													<tr class="group">
														<td class="n54117_group" colspan="2">
															<div class="n54117_group">
																{{if  $loop1987->getItem("desc")  neq (string) ''}}
																	<span class="n54117_name_group big_label">{{$loop1987->getItemEscape("@name")}}</span>
																{{else}}
																	<span class="n54117_name2_group big_label">{{$loop1987->getItemEscape("@name")}}</span>
																{{/if}}
																{{if  $loop1987->getItem("desc")  neq (string) ''}}
																	<img class="qmark2 showTip" src="/gfx/__IAI_TEMPLATE_LANG_639_1__/qmark2.gif?r=1570606968" alt="" title=""></img>
																	<div class="tooltipContent">{{$loop1987->getItem("desc")}}
																	</div>
																{{/if}}
															</div>
														</td>
													</tr>
												{{/if}}
												{{if  $loop1987->getItem("@type")  == (string) 'element'}}
													<tr {{assign "classAttributeTmp18" ""}}{{capture name="classAttributeTmp18" assign="classAttributeTmp18"}}element{{/capture}}{{if $loop1987->getItem("following-sibling::item[1]/@type") == (string) 'group'}}{{capture name="classAttributeTmp18" assign="classAttributeTmp18"}}element group_next{{/capture}}{{/if}}  class="{{$classAttributeTmp18}}">
														<td {{assign "classAttributeTmp19" ""}}{{if $loop1987@iteration % 2}}{{capture name="classAttributeTmp19" assign="classAttributeTmp19"}}n54117_item_a1{{/capture}}{{else}}{{capture name="classAttributeTmp19" assign="classAttributeTmp19"}}n54117_item_a2{{/capture}}{{/if}}  class="{{$classAttributeTmp19}}">
															<span>{{$loop1987->getItemEscape("@name")}}</span>
															<span class="n67256colon">{{$txt['106665::n54117_444']}}</span>
															{{if  $loop1987->getItem("desc")  neq (string) ''}}
																<img class="qmark showTip" src="/gfx/__IAI_TEMPLATE_LANG_639_1__/qmark2.gif?r=1570606968" alt="" title=""></img>
																<div class="tooltipContent">{{$loop1987->getItem("desc")}}
																</div>
															{{/if}}
														</td>
														<td {{assign "classAttributeTmp20" ""}}{{if $loop1987@iteration % 2}}{{capture name="classAttributeTmp20" assign="classAttributeTmp20"}}n54117_item_b1{{/capture}}{{else}}{{capture name="classAttributeTmp20" assign="classAttributeTmp20"}}n54117_item_b2{{/capture}}{{/if}}   class="{{$classAttributeTmp20}}">
															{{foreach from=$loop1987->getList("values/value") item=loop2028}}
																{{if  $loop2028@iteration   gt (string) 1}}
																	{{$txt['106665::n54117_444c']}}
																{{/if}}
																<div class="n54117_item_b_sub">
																	{{if  $loop2028->getItem("desc")  neq (string) ''}}
																		<span class="n54117_name_sub">{{$loop2028->getItem("@value")}}</span>
																	{{else}}
																		{{$loop2028->getItem("@value")}}
																	{{/if}}
																	{{if  $loop2028->getItem("desc")  neq (string) ''}}
																		<img class="qmark showTip" src="/gfx/__IAI_TEMPLATE_LANG_639_1__/qmark.gif?r=1570606968" alt="" title=""></img>
																		<div class="tooltipContent">{{$loop2028->getItem("desc")}}
																		</div>
																	{{/if}}
																</div>
															{{/foreach}}
														</td>
													</tr>
												{{/if}}
											{{/foreach}}
										</table>
									</div>
								</div>
								{{if  $xml->getItem("/shop/page/projector/product/dictionary/items/item") and !(count( $xml->getList("/shop/page/projector/product/dictionary/items/item"))  gt (string) 6)}}
									{{if  $xml->getItem("page/projector/product/warranty")}}
										<div class="component_projector_warranty" id="{{$txt['106665::56191_01_08765']}}">
											<div class="n56191_main">
												<div class="n56191_sub">
													<h2>{{$txt['106665::56191_02']}}{{$xml->getItem("page/projector/product/warranty/@name")}}
													</h2>
													<h3 class="n56191_label">{{$xml->getItem("page/projector/product/warranty")}}
													</h3>
												</div>
											</div>
										</div>
									{{/if}}
									{{if ( $xml->getItem("/shop/page/projector/product/enclosures/documents")) or ( $xml->getItem("/shop/page/projector/product/enclosures/audio"))  or ( $xml->getItem("/shop/page/projector/product/enclosures/other"))  or ( $xml->getItem("/shop/page/projector/product/enclosures/images_attachments/item")) or ( $xml->getItem("/shop/page/projector/product/enclosures/video/item"))}}
										<div class="component_projector_enclosures" id="{{$txt['106665::56259_01']}}">
											<div class="n56259_main">
												{{capture name="n68814_showlabel" assign="n68814_showlabel"}}
													{{$txt['106665::n68814_showlabel_enclosures']}}
												{{/capture}}
												{{if $n68814_showlabel}}
													<div class="n68814_label">
														<span class="n68814_2_label">
															<h2>{{$n68814_showlabel}}
															</h2></span>
													</div>
												{{/if}}
												<ul>
													{{foreach from=$xml->getList("/shop/page/projector/product/enclosures/*") item=loop2090}}
														{{foreach from=$loop2090->getList("item") item=loop2092}}
															<li>
																<i class="icon-download-alt"/>
																<a class="enclosure_name" {{if $loop2092->getItem("@type") == (string) 'image/image' or $loop2092->getItem("@type") == (string) 'documents'}} target="_blank"{{/if}} href="{{$loop2092->getItemEscape("@url")}}">{{$txt['106665::56259_05i']}}{{$loop2092->getItemEscape("@name")}}</a>
															</li>
														{{/foreach}}
													{{/foreach}}
													{{if  $xml->getItem("/shop/page/projector/product/enclosures/video/item")}}
														<script>
                                                var enclosures_video_obj  = [
{{foreach from=$xml->getList("/shop/page/projector/product/enclosures/video/item") item=loop2110}}{{if !( $loop2110@iteration   == (string) 1)}},{{/if}}{
                                                    title:"{{$loop2110->getItemEscape("@name")}}",
                                                    free:true,
                                                    m4v:"{{$loop2110->getItemEscape("/shop/@baseurl")}}{{$loop2110->getItemEscape("@url")}}",
                                                    }
{{/foreach}}
                                                ]
                                            														</script>

													{{/if}}
													{{if  $xml->getItem("/shop/page/projector/product/enclosures/audio/item")}}
														<script>
                                                var enclosures_audio_obj  = [
{{foreach from=$xml->getList("/shop/page/projector/product/enclosures/audio/item") item=loop2125}}{{if !( $loop2125@iteration   == (string) 1)}},{{/if}}{
                                                    {{capture name="audio_position" assign="audio_position"}}{{$loop2125@iteration}}{{/capture}}
                                                    title:"{{$loop2125->getItemEscape("@name")}}",
                                                    free:true,
                                                    mp3:"{{$loop2125->getItemEscape("/shop/@baseurl")}}{{$loop2125->getItemEscape("@url")}}",
                                                    {{if  $loop2125->getItem("/shop/page/projector/product/enclosures/images/enclosure[@position = $audio_position]/@url")}}
                                                            poster:"{{$loop2125->getItemEscape("/shop/page/projector/product/enclosures/images/enclosure[@position = $audio_position]/@url")}}"
                                                        {{else}}
                                                            poster:"{{$loop2125->getItemEscape("/shop/page/projector/product/enclosures/images/enclosure[1]/@url")}}"
                                                        {{/if}}
                                                    }
{{/foreach}}
                                                ]
                                            														</script>

													{{/if}}
													{{if  $xml->getItem("/shop/page/projector/product/enclosures/images_attachments/item")}}
														<script>
                                                var enclosures_images_obj = new Object();
                                                {{if !(count( $xml->getList("/shop/page/projector/product/enclosures/images_attachments/item"))  == (string) 1)}}{{foreach from=$xml->getList("/shop/page/projector/product/enclosures/images_attachments/item") item=loop2147}}
                                                        enclosures_images_obj[{{$loop2147->getItemEscape("@position")}}]=new Array('{{$loop2147->getItemEscape("@url")}}','1','1');
{{/foreach}}{{/if}}														</script>

													{{/if}}
												</ul>
											</div>
										</div>
									{{/if}}
								{{/if}}
							</div>
						{{/if}}
						<!--Product questions (projector_product_questions, 106670.1)-->
						{{if count( $xml->getList("page/projector/questions/question"))}}
							<div {{assign "classAttributeTmp21" ""}}{{capture name="classAttributeTmp21" assign="classAttributeTmp21"}}product_questions_list{{/capture}} id="product_questions_list" {{if $xml->getItem("/shop/page/projector/product/dictionary/items/item") and !(count( $xml->getList("/shop/page/projector/product/dictionary/items/item")) gt (string) 6)}}{{capture name="classAttributeTmp21" assign="classAttributeTmp21"}}product_questions_list product_questions_small{{/capture}}{{/if}}  class="{{$classAttributeTmp21}}">
								<div {{assign "classAttributeTmp22" ""}}{{capture name="classAttributeTmp22" assign="classAttributeTmp22"}}product_questions_list_label{{/capture}}{{capture name="classAttributeTmp22" assign="classAttributeTmp22"}}product_questions_list_label big_label{{/capture}}  class="{{$classAttributeTmp22}}">
									<span class="product_questions_list_label">{{$txt['106670::product_questions_list_label']}}</span>
								</div>
								<div class="product_questions_list_sub">
									{{foreach from=$xml->getList("page/projector/questions/question") item=loop2173}}
										<div class="product_question_container">
											<div class="product_question">
												<a href="#showDescription">{{$loop2173->getItemEscape("@question")}}
													<span>{{$txt['106670::352213_5_question']}}</span></a>
											</div>
											<div class="product_question_answer">{{$loop2173->getItem("@answer")}}
											</div>
										</div>
									{{/foreach}}
								</div>
								<a id="send_question_button" href="#showQuestionDialog" class="btn-large">{{$txt['106670::2412355_send_question']}}</a>
							</div>
							<div class="clearfix">
							</div>
						{{/if}}
						<!--Zadaj pytanie o produkt (projector_askforproduct, 106673.1)-->
						<div class="component_projector_askforproduct" {{if count( $xml->getList("page/projector/questions/question"))}} style="display:none;" {{/if}} id="{{$txt['106673::56188_01']}}">
							<a id="askforproduct" href="#askforproduct_close"></a>
							<form action="/settings.php" class="projector_askforproduct" method="post" novalidate="novalidate">
								<div class="big_label">{{$txt['106673::56188_02']}}
								</div>
								<div class="projector_askforproduct_sub">
									<h3 class="projector_askforproduct_desc">{{$txt['106673::56188_03']}}
									</h3>
									<input type="hidden" name="question_product_id" value="{{$xml->getItemEscape("page/projector/product/@id")}}"></input>
									<input type="hidden" name="question_action" value="add"/>
									<div class="row flex-column align-items-center">
										<div class="form-group col-12 col-sm-7">
											<div class="has-feedback has-required">
												<input {{assign "classAttributeTmp23" ""}}  id="askforproduct_email" type="email"{{capture name="classAttributeTmp23" assign="classAttributeTmp23"}}form-control validate{{/capture}} name="question_email" {{if $xml->getItem("page/projector/sender/@email") and !( $xml->getItem("page/projector/sender/@email") == (string) '') }}{{capture name="classAttributeTmp23" assign="classAttributeTmp23"}}form-control validate focused{{/capture}}{{/if}} value="{{$xml->getItemEscape("page/projector/sender/@email")}}" required="required"  class="{{$classAttributeTmp23}}"></input>
												<label for="askforproduct_email" class="control-label">{{$txt['106673::91488_e-mail']}}
												</label>
												<span class="form-control-feedback"></span>
											</div>
										</div>
										<div class="form-group col-12 col-sm-7">
											<div class="has-feedback has-required">
												<textarea id="askforproduct_question" rows="6" cols="52" class="form-control validate" name="product_question" minlength="3" required="required"></textarea>
												<label for="askforproduct_question" class="control-label">{{$txt['106673::91488_question']}}
												</label>
												<span class="form-control-feedback"></span>
											</div>
										</div>
									</div>
									{{capture name="form_privacy_info_text1" assign="form_privacy_info_text1"}}
										{{$txt['106673::3524123_projector_privacy']}}
									{{/capture}}
									{{capture name="form_privacy_info_text2" assign="form_privacy_info_text2"}}
										{{$txt['106673::3524123_projector_privacy3']}}
									{{/capture}}
									{{if $form_privacy_info_text1}}
										<p class="form-privacy-info">{{$form_privacy_info_text1}}
											<a href="{{$xml->getItemEscape("/shop/action/private_policy/@url")}}">{{$txt['106673::3524123_projector_privacy2']}}</a>{{$form_privacy_info_text2}}
										</p>
									{{/if}}
									<div class="projector_askforproduct_submit">
										<div >
											<button id="submit_question_form" type="submit" class="btn">{{$txt['106673::91488_button']}}
											</button>
											<div class="button_legend">{{$txt['106673::91488_button_legend']}}
											</div>
										</div>
									</div>
								</div>
							</form>
						</div>
						{{if  $xml->getItem("/shop/@projector_askforproduct")}}
						{{/if}}
						<!--Karta produktu - gwarancja (projector_warranty, 106675.1)-->
						{{if  $xml->getItem("page/projector/product/warranty") and !( $xml->getItem("page/projector/product/warranty") == (string) '') and (!( $xml->getItem("/shop/page/projector/product/dictionary/items/item")) or ( $xml->getItem("/shop/page/projector/product/dictionary/items/item") and count( $xml->getList("/shop/page/projector/product/dictionary/items/item"))  gt (string) 6))}}
							<div class="component_projector_warranty" id="{{$txt['106675::56191_01']}}">
								<div class="n56191_main">
									<div class="n56191_sub">
										{{if  $xml->getItem("page/projector/product/warranty/@gfx")}}
											<div class="n56191_icon">
												<img class="projector_firmlogo_55916" src="{{$xml->getItemEscape("page/projector/product/warranty/@gfx")}}" alt="{{$xml->getItemEscape("page/projector/product/warranty/@name")}}"></img>
											</div>
										{{/if}}
										{{if !( $xml->getItem("page/projector/product/warranty/@gfx"))}}
											<h3 class="n56191_label">{{$txt['106675::56191_02']}}{{$xml->getItem("page/projector/product/warranty/@name")}}
												{{if  $xml->getItem("page/projector/product/warranty[@type='seller']")}}
													{{$txt['106675::56191_02seller']}}
												{{/if}}
												{{if  $xml->getItem("page/projector/product/warranty[@type='producer']")}}
													{{$txt['106675::56191_02producer']}}
												{{/if}}
												{{if  $xml->getItem("page/projector/product/warranty/@period")  gt (string) 0}}
													{{$txt['106675::56191_02period']}}{{$xml->getItem("page/projector/product/warranty/@period")}}
												{{/if}}
												{{if  $xml->getItem("page/projector/product/warranty/@period")  == (string) 1}}
													{{$txt['106675::56191_02periodOne']}}
												{{/if}}
												{{if  $xml->getItem("page/projector/product/warranty/@period")  gt (string) 1}}
													{{$txt['106675::56191_02periodMulti']}}
												{{/if}}
											</h3>
										{{/if}}
										<div class="n56191_desc">{{$xml->getItem("/shop/page/projector/product/warranty/text() ")}}
										</div>
									</div>
								</div>
							</div>
						{{/if}}
						<!--Karta produktu - załączniki (projector_enclosures, 106674.1)-->
						{{if (( $xml->getItem("/shop/page/projector/product/enclosures/documents")) or ( $xml->getItem("/shop/page/projector/product/enclosures/audio"))  or ( $xml->getItem("/shop/page/projector/product/enclosures/other"))  or ( $xml->getItem("/shop/page/projector/product/enclosures/images_attachments/item")) or ( $xml->getItem("/shop/page/projector/product/enclosures/video/item"))) and (!( $xml->getItem("/shop/page/projector/product/dictionary/items/item")) or ( $xml->getItem("/shop/page/projector/product/dictionary/items/item") and count( $xml->getList("/shop/page/projector/product/dictionary/items/item"))  gt (string) 6))}}
							<div class="component_projector_enclosures" id="{{$txt['106674::56259_01']}}">
								<div class="n56259_main">
									{{capture name="n68814_showlabel" assign="n68814_showlabel"}}
										{{$txt['106674::n68814_showlabel']}}
									{{/capture}}
									{{if $n68814_showlabel}}
										<div class="n68814_label">
											<span class="n68814_2_label">{{$n68814_showlabel}}</span>
										</div>
									{{/if}}
									<ul>
										{{foreach from=$xml->getList("/shop/page/projector/product/enclosures/*") item=loop2323}}
											{{foreach from=$loop2323->getList("item") item=loop2325}}
												<li {{assign "classAttributeTmp24" ""}}{{if $loop2325->getItem("@extension") == (string) 'swf'}}{{capture name="classAttributeTmp24" assign="classAttributeTmp24"}}e_swf{{/capture}}{{elseif $loop2325->getItem("@type") == (string) 'video'}}{{capture name="classAttributeTmp24" assign="classAttributeTmp24"}}e_video{{/capture}}{{elseif $loop2325->getItem("@type") == (string) 'audio/mpeg'}}{{capture name="classAttributeTmp24" assign="classAttributeTmp24"}}e_audio{{/capture}}{{elseif $loop2325->getItem("@type") == (string) 'image/image'}}{{capture name="classAttributeTmp24" assign="classAttributeTmp24"}}e_image{{/capture}}{{elseif $loop2325->getItem("@type") == (string) 'documents'}}{{capture name="classAttributeTmp24" assign="classAttributeTmp24"}}e_documents{{/capture}}{{else}}{{capture name="classAttributeTmp24" assign="classAttributeTmp24"}}e_download{{/capture}}{{/if}}  class="{{$classAttributeTmp24}}">
													<a class="enclosure_name" data-mobile-class="btn-small" {{if $loop2325->getItem("@type") == (string) 'image/image' or $loop2325->getItem("@type") == (string) 'documents'}} target="_blank"{{/if}} href="{{$loop2325->getItemEscape("@url")}}">{{$txt['106674::56259_05i']}}{{$loop2325->getItemEscape("@name")}}</a>
													{{if  $loop2325->getItem("@extension")  == (string) 'swf'}}
														<a data-mobile-class="hide" class="enclosure_show_swf" href="{{$loop2325->getItemEscape("@url")}}&#160;amp;preview=true">{{$txt['106674::56259_066z']}}</a>
													{{elseif  $loop2325->getItem("@type")  == (string) 'video'}}
														<a data-mobile-class="hide" class="enclosure_video_play" href="{{$loop2325->getItemEscape("@url")}}">{{$txt['106674::56259_05']}}</a>
														<input type="hidden" name="enclosure_play_position" value="{{$loop2325@iteration}}"></input>
													{{elseif  $loop2325->getItem("@type")  == (string) 'audio/mpeg'}}
														<a data-mobile-class="hide" class="enclosure_audio_play" href="{{$loop2325->getItemEscape("/shop/@currurl")}}{{$loop2325->getItemEscape("@url")}}">{{$txt['106674::56259_04']}}</a>
														<input type="hidden" name="enclosure_play_position" value="{{$loop2325@iteration}}"></input>
													{{elseif  $loop2325->getItem("@type")  == (string) 'image/image'}}
														<a target="_blank" data-mobile-class="hide" class="enclosure_show_image" href="{{$loop2325->getItemEscape("@url")}}">{{$txt['106674::56259_06']}}</a>
													{{else}}
														<a data-mobile-class="hide" class="enclosure_download" {{if $loop2325->getItem("@type") == (string) 'documents'}} target="_blank"{{/if}} href="{{$loop2325->getItemEscape("@url")}}">{{$txt['106674::56259_03']}}</a>
													{{/if}}
												</li>
											{{/foreach}}
										{{/foreach}}
										{{if  $xml->getItem("/shop/page/projector/product/enclosures/video/item")}}
											<script>
                                    var enclosures_video_obj  = [
{{foreach from=$xml->getList("/shop/page/projector/product/enclosures/video/item") item=loop2388}}{{if !( $loop2388@iteration   == (string) 1)}},{{/if}}{
                                        title:"{{$loop2388->getItemEscape("@name")}}",
                                        free:true,
                                        m4v:"{{$loop2388->getItemEscape("/shop/@currurl")}}{{$loop2388->getItemEscape("@url")}}",
                                        }
{{/foreach}}
                                    ]
                                											</script>

										{{/if}}
										{{if  $xml->getItem("/shop/page/projector/product/enclosures/audio/item")}}
											<script>
                                    var enclosures_audio_obj  = [
{{foreach from=$xml->getList("/shop/page/projector/product/enclosures/audio/item") item=loop2403}}{{if !( $loop2403@iteration   == (string) 1)}},{{/if}}{
                                        {{capture name="audio_position" assign="audio_position"}}{{$loop2403@iteration}}{{/capture}}
                                        title:"{{$loop2403->getItemEscape("@name")}}",
                                        free:true,
                                        mp3:"{{$loop2403->getItemEscape("/shop/@currurl")}}{{$loop2403->getItemEscape("@url")}}",
                                        {{if  $loop2403->getItem("/shop/page/projector/product/enclosures/images/enclosure[@position = $audio_position]/@url")}}
                                                poster:"{{$loop2403->getItemEscape("/shop/page/projector/product/enclosures/images/enclosure[@position = $audio_position]/@url")}}"
                                            {{else}}
                                                poster:"{{$loop2403->getItemEscape("/shop/page/projector/product/enclosures/images/enclosure[1]/@url")}}"
                                            {{/if}}
                                        }
{{/foreach}}
                                    ]
                                											</script>

										{{/if}}
										{{if  $xml->getItem("/shop/page/projector/product/enclosures/images_attachments/item")}}
											<script>
                                    var enclosures_images_obj = new Object();
                                    {{if !(count( $xml->getList("/shop/page/projector/product/enclosures/images_attachments/item"))  == (string) 1)}}{{foreach from=$xml->getList("/shop/page/projector/product/enclosures/images_attachments/item") item=loop2425}}
                                            enclosures_images_obj[{{$loop2425->getItemEscape("@position")}}]=new Array('{{$loop2425->getItemEscape("@url")}}','1','1');
{{/foreach}}{{/if}}											</script>

										{{/if}}
									</ul>
								</div>
							</div>
						{{/if}}
						<!--CMS w karcie produktu (projector_cms, 106677.1)-->
						{{if  $xml->getItem("page/projector/text/body")}}
							<div class="component_projector_cms cm" id="{{$txt['106677::56196_01']}}">
								<div class="n56196_main">
									<div class="n56196_sub">{{$xml->getItem("page/projector/text/body")}}
									</div>
								</div>
							</div>
						{{/if}}
						<!--Produkty w kategorii (projector_products_in_category, 109126.1)-->
						{{if  $xml->getItem("page/projector/product/products_other_founds")}}
							<section id="products_in_category" class="mb-4 d-flex justify-content-center">
								<div class="px-sm-4 line-back">
									<a class="other_products" href="{{$xml->getItemEscape("page/projector/product/products_other_founds/@previous")}}">{{$txt['109126::pid_01']}}</a>
									<a class="other_products" href="{{$xml->getItemEscape("page/projector/product/products_other_founds/@next")}}">{{$txt['109126::pid_02']}}</a>
								</div>
							</section>
						{{/if}}
						<!--Produkty powiązane z tym produktem - strefa 1 (projector_associated_zone1, 106678.1)-->
						<iaiajaxstart iai-ajax-id="projector_associated_zone1" iai-ajax-generated="true"/>
						{{if  $xml->getItem("page/projector/products_associated_zone1")}}
							<div class="main_hotspot mb-4" id="products_associated_zone1">
								{{if  $xml->getItem("page/projector/products_associated_zone1/product") or  $xml->getItem("page/projector/products_associated_zone1/opinion")}}
									<h2>
										<span class="big_label">
											{{if  $xml->getItem("page/projector/products_associated_zone1/@name")}}
												{{$xml->getItemEscape("page/projector/products_associated_zone1/@name")}}
											{{else}}
												{{$txt['106678::58826_label']}}
											{{/if}}
											{{$txt['106678::58826_label-after']}}</span>
									</h2>
									<div class="align_row main_hotspot_sub">
										<div class="products_wrapper row mx-0">
											{{foreach from=$xml->getList("page/projector/products_associated_zone1/*") item=loop2484}}
												{{capture name="var_name" assign="var_name"}}
													{{if  $loop2484->getItem("product")}}
														{{$loop2484->getItem("product/name/text()")}}
													{{else}}
														{{$loop2484->getItem("name/text()")}}
													{{/if}}
												{{/capture}}
												{{capture name="var_icon" assign="var_icon"}}
													{{if  $loop2484->getItem("product")}}
														{{$loop2484->getItemEscape("product/icon")}}
													{{else}}
														{{$loop2484->getItemEscape("icon")}}
													{{/if}}
												{{/capture}}
												{{capture name="var_icon_small" assign="var_icon_small"}}
													{{if  $loop2484->getItem("product")}}
														{{$loop2484->getItemEscape("product/icon_small")}}
													{{else}}
														{{$loop2484->getItemEscape("icon_small")}}
													{{/if}}
												{{/capture}}
												{{capture name="var_link" assign="var_link"}}
													{{if  $loop2484->getItem("product")}}
														{{$loop2484->getItemEscape("product/@link")}}
													{{else}}
														{{$loop2484->getItemEscape("@link")}}
													{{/if}}
												{{/capture}}
												{{capture name="var_yousave" assign="var_yousave"}}
													{{$txt['106678::TXT_hotspot_yousave']}}
												{{/capture}}
												<div class="product_wrapper col-6 col-sm-3">
													{{if $var_yousave and !($var_yousave  == (string) '') and  $loop2484->getItem("price/@yousave_formatted")  neq (string) ''}}
														<div class="hotspot_yousave">
															<span class="yousave_label">{{$var_yousave}}</span>
															<span class="yousave_value">{{$loop2484->getItemEscape("price/@yousave_formatted")}}</span>
														</div>
													{{/if}}
													<a class="product-icon d-flex justify-content-center align-items-center" data-product-id="{{$loop2484->getItemEscape("@id")}}" href="{{$var_link}}" title="{{$var_name}}">
														<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/loader.gif?r=1570606968" class="b-lazy" data-src-small="{{$loop2484->getItem("$var_icon_small")}}" data-src="{{$loop2484->getItem("$var_icon")}}" alt="{{$loop2484->getItem("$var_name")}}"></img></a>
													<h3>
														<a class="product-name" href="{{$var_link}}" title="{{$var_name}}">{{$var_name}}</a>
													</h3>
													{{capture name="main_hotspot_zone1_b2b_var" assign="main_hotspot_zone1_b2b_var"}}
														{{$txt['106678::main_hotspot_zone1_b2b']}}
													{{/capture}}
													{{capture name="var_net_prices" assign="var_net_prices"}}
														{{$txt['106678::hotspot_net_prices']}}
													{{/capture}}
													{{if $var_net_prices  == (string) ''}}
														{{capture name="var_size_min_formatted" assign="var_size_min_formatted"}}
															{{if  $loop2484->getItem("product")}}
																{{$loop2484->getItemEscape("product/price/@size_min_formatted")}}
															{{else}}
																{{$loop2484->getItemEscape("price/@size_min_formatted")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_size_max_formatted" assign="var_size_max_formatted"}}
															{{if  $loop2484->getItem("product")}}
																{{$loop2484->getItemEscape("product/price/@size_max_formatted")}}
															{{else}}
																{{$loop2484->getItemEscape("price/@size_max_formatted")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_size_min_maxprice_formatted" assign="var_size_min_maxprice_formatted"}}
															{{if  $loop2484->getItem("product")}}
																{{$loop2484->getItemEscape("product/price/@size_min_maxprice_formatted")}}
															{{else}}
																{{$loop2484->getItemEscape("price/@size_min_maxprice_formatted")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_size_max_maxprice_formatted" assign="var_size_max_maxprice_formatted"}}
															{{if  $loop2484->getItem("product")}}
																{{$loop2484->getItemEscape("product/price/@size_max_maxprice_formatted")}}
															{{else}}
																{{$loop2484->getItemEscape("price/@size_max_maxprice_formatted")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_points" assign="var_points"}}
															{{if  $loop2484->getItem("product")}}
																{{$loop2484->getItemEscape("product/price/@points")}}
															{{else}}
																{{$loop2484->getItemEscape("price/@points")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_value" assign="var_value"}}
															{{if  $loop2484->getItem("product")}}
																{{$loop2484->getItemEscape("product/price/@size_min")}}
															{{else}}
																{{$loop2484->getItemEscape("price/@size_min")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_price_formatted" assign="var_price_formatted"}}
															{{if  $loop2484->getItem("price/@price_unit_formatted") and  $loop2484->getItem("sizes/@unit")}}
																{{$loop2484->getItemEscape("price/@price_unit_formatted")}}{{literal}}/{{/literal}}{{$loop2484->getItemEscape("sizes/@unit_sellby")}}{{literal}}{{/literal}}{{$loop2484->getItemEscape("sizes/@unit")}}
															{{elseif  $loop2484->getItem("product/price/@price_unit_formatted") and  $loop2484->getItem("product/sizes/@unit")}}
																{{$loop2484->getItemEscape("product/price/@price_unit_formatted")}}{{literal}}/{{/literal}}{{$loop2484->getItemEscape("product/sizes/@unit_sellby")}}{{literal}}{{/literal}}{{$loop2484->getItemEscape("product/sizes/@unit")}}
															{{else}}
																{{$var_size_min_formatted}}
															{{/if}}
														{{/capture}}
														{{capture name="var_maxprice_formatted" assign="var_maxprice_formatted"}}
															{{if  $loop2484->getItem("price/@maxprice_unit_formatted")}}
																{{$loop2484->getItemEscape("price/@maxprice_unit_formatted")}}
															{{elseif  $loop2484->getItem("product/price/@maxprice_unit_formatted")}}
																{{$loop2484->getItemEscape("product/price/@maxprice_unit_formatted")}}
															{{elseif  $loop2484->getItem("product")}}
																{{$loop2484->getItemEscape("product/price/@maxprice_formatted")}}
															{{else}}
																{{$loop2484->getItemEscape("price/@maxprice_formatted")}}
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
																		<span class="currency">{{$txt['106678::58826_012']}}</span></span>
																{{/if}}
															{{elseif (($var_value  == (string) 0) and $var_points  == (string) '') or ($var_value  == (string) 0 and $main_hotspot_zone1_b2b_var and !($main_hotspot_zone1_b2b_var  == (string) '') and !( $loop2484->getItem("/shop/basket/@wholesaler")  == (string) 'true'))}}
																<a {{assign "hrefAttributeTmp62" ""}}  class="fon_price" data-mobile-class="btn-small" {{if $main_hotspot_zone1_b2b_var and !($main_hotspot_zone1_b2b_var == (string) '')}} title="{{$main_hotspot_zone1_b2b_var}}"{{capture name="hrefAttributeTmp62" assign="hrefAttributeTmp62"}}{{$loop2484->getItemEscape("/shop/action/signin/@url")}}{{/capture}}{{$main_hotspot_zone1_b2b_var}}{{else}} title="{{$txt['106678::58826_009']}}"{{capture name="hrefAttributeTmp62" assign="hrefAttributeTmp62"}}{{$loop2484->getItemEscape("/shop/contact/link/@url")}}{{/capture}} {{$txt['106678::58826_010']}} {{/if}}  href="{{$hrefAttributeTmp62}}"></a>
															{{else}}
																<span class="price">{{$txt['106678::58826_003']}}{{$var_price_formatted}}</span>
																{{if $var_maxprice_formatted  neq (string) ''}}
																	<del class="max-price">{{$txt['106678::58826_006']}}{{$var_maxprice_formatted}}</del>
																{{/if}}
																{{if $var_points  neq (string) ''}}
																	<span class="point-price">{{$var_points}}
																		<span class="currency">{{$txt['106678::58826_012']}}</span></span>
																{{/if}}
															{{/if}}
															{{if  $loop2484->getItem("price/@unit_converted_price_formatted")}}
																<small class="s_unit_converted_price">{{$loop2484->getItemEscape("price/@unit_converted_price_formatted")}}{{literal}}/{{/literal}}{{$loop2484->getItemEscape("price/@unit_converted_format")}}</small>
															{{/if}}
														</div>
													{{else}}
														{{capture name="var_size_min_net_formatted" assign="var_size_min_net_formatted"}}
															{{if  $loop2484->getItem("product")}}
																{{$loop2484->getItemEscape("product/price/@size_min_net_formatted")}}
															{{else}}
																{{$loop2484->getItemEscape("price/@size_min_net_formatted")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_size_max_net_formatted" assign="var_size_max_net_formatted"}}
															{{if  $loop2484->getItem("product")}}
																{{$loop2484->getItemEscape("product/price/@size_max_net_formatted")}}
															{{else}}
																{{$loop2484->getItemEscape("price/@size_max_net_formatted")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_size_min_net_maxprice_formatted" assign="var_size_min_net_maxprice_formatted"}}
															{{if  $loop2484->getItem("product")}}
																{{$loop2484->getItemEscape("product/price/@size_min_maxprice_net_formatted")}}
															{{else}}
																{{$loop2484->getItemEscape("price/@size_min_maxprice_net_formatted")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_size_max_maxprice_net_formatted" assign="var_size_max_maxprice_net_formatted"}}
															{{if  $loop2484->getItem("product")}}
																{{$loop2484->getItemEscape("product/price/@size_max_maxprice_net_formatted")}}
															{{else}}
																{{$loop2484->getItemEscape("price/@size_max_maxprice_net_formatted")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_points_net" assign="var_points_net"}}
															{{if  $loop2484->getItem("product")}}
																{{$loop2484->getItemEscape("product/price/@points")}}
															{{else}}
																{{$loop2484->getItemEscape("price/@points")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_net_value" assign="var_net_value"}}
															{{if  $loop2484->getItem("product")}}
																{{$loop2484->getItemEscape("product/price/@size_min_net")}}
															{{else}}
																{{$loop2484->getItemEscape("price/@size_min_net")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_price_formatted" assign="var_price_formatted"}}
															{{if  $loop2484->getItem("price/@price_unit_net_formatted") and  $loop2484->getItem("sizes/@unit")}}
																{{$loop2484->getItemEscape("price/@price_unit_net_formatted")}}{{literal}}/{{/literal}}{{$loop2484->getItemEscape("sizes/@unit_sellby")}}{{literal}}{{/literal}}{{$loop2484->getItemEscape("sizes/@unit")}}
															{{elseif  $loop2484->getItem("product/price/@price_unit_net_formatted") and  $loop2484->getItem("product/sizes/@unit")}}
																{{$loop2484->getItemEscape("product/price/@price_unit_net_formatted")}}{{literal}}/{{/literal}}{{$loop2484->getItemEscape("product/sizes/@unit_sellby")}}{{literal}}{{/literal}}{{$loop2484->getItemEscape("product/sizes/@unit")}}
															{{else}}
																{{$var_size_min_net_formatted}}
															{{/if}}
														{{/capture}}
														{{capture name="var_maxprice_net_formatted" assign="var_maxprice_net_formatted"}}
															{{if  $loop2484->getItem("price/@maxprice_unit_net_formatted")}}
																{{$loop2484->getItemEscape("price/@maxprice_unit_net_formatted")}}
															{{elseif  $loop2484->getItem("product/price/@maxprice_unit_net_formatted")}}
																{{$loop2484->getItemEscape("product/price/@maxprice_unit_net_formatted")}}
															{{elseif  $loop2484->getItem("product")}}
																{{$loop2484->getItemEscape("product/price/@maxprice_net_formatted")}}
															{{else}}
																{{$loop2484->getItemEscape("price/@maxprice_net_formatted")}}
															{{/if}}
														{{/capture}}
														<div class="product_prices">
															{{if $var_size_min_net_formatted  neq (string) $var_size_max_net_formatted}}
																<span class="price">{{$var_size_min_net_formatted}}{{literal}}-{{/literal}}{{$var_size_max_net_formatted}}{{$var_net_prices}}</span>
																{{if $var_size_min_net_maxprice_formatted  neq (string) ''}}
																	<del class="max-price">
																		<span>{{$var_size_min_net_maxprice_formatted}}</span>
																		<b>{{literal}}-{{/literal}}</b>
																		<span>{{$var_size_max_maxprice_net_formatted}}</span>{{$var_net_prices}}</del>
																{{/if}}
																{{if $var_points_net  neq (string) ''}}
																	<span class="point-price">{{$var_points_net}}
																		<span class="currency">{{$txt['106678::58826_012']}}</span></span>
																{{/if}}
															{{elseif (($var_net_value  == (string) 0) and $var_points_net  == (string) '') or ($var_net_value  == (string) 0 and $main_hotspot_zone1_b2b_var and !($main_hotspot_zone1_b2b_var  == (string) '') and !( $loop2484->getItem("/shop/basket/@wholesaler")  == (string) 'true'))}}
																<a {{assign "hrefAttributeTmp62" ""}}  class="fon_price" data-mobile-class="btn-small" {{if $main_hotspot_zone1_b2b_var and !($main_hotspot_zone1_b2b_var == (string) '')}} title="{{$main_hotspot_zone1_b2b_var}}"{{capture name="hrefAttributeTmp62" assign="hrefAttributeTmp62"}}{{$loop2484->getItemEscape("/shop/action/signin/@url")}}{{/capture}}{{$main_hotspot_zone1_b2b_var}}{{else}} title="{{$txt['106678::58826_009']}}"{{capture name="hrefAttributeTmp62" assign="hrefAttributeTmp62"}}{{$loop2484->getItemEscape("/shop/contact/link/@url")}}{{/capture}} {{$txt['106678::58826_010']}} {{/if}}  href="{{$hrefAttributeTmp62}}"></a>
															{{else}}
																<span class="price">{{$txt['106678::58826_003']}}{{$var_price_formatted}}{{$var_net_prices}}</span>
																{{if $var_maxprice_net_formatted  neq (string) ''}}
																	<del class="max-price">{{$txt['106678::58826_006']}}{{$var_maxprice_net_formatted}}{{$var_net_prices}}</del>
																{{/if}}
																{{if $var_points_net  neq (string) ''}}
																	<span class="point-price">{{$var_points_net}}
																		<span class="currency">{{$txt['106678::58826_012']}}</span></span>
																{{/if}}
															{{/if}}
															{{if  $loop2484->getItem("price/@unit_converted_price_net_formatted")}}
																<small class="s_unit_converted_price">{{$loop2484->getItemEscape("price/@unit_converted_price_net_formatted")}}{{literal}}/{{/literal}}{{$loop2484->getItemEscape("price/@unit_converted_format")}}{{$var_net_prices}}</small>
															{{/if}}
														</div>
													{{/if}}
													{{if  $loop2484->getItem("client/@client")}}
														<div class="client">{{$loop2484->getItem("client/@client")}}
														</div>
													{{/if}}
													{{if  $loop2484->getItem("@note")}}
														<div class="note">
															<span>
																<i {{assign "classAttributeTmp25" ""}}{{capture name="classAttributeTmp25" assign="classAttributeTmp25"}}icon-star{{/capture}}{{if $loop2484->getItem("@note") gt (string) 0.5}}{{capture name="classAttributeTmp25" assign="classAttributeTmp25"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp25}}"></i>
																<i {{assign "classAttributeTmp26" ""}}{{capture name="classAttributeTmp26" assign="classAttributeTmp26"}}icon-star{{/capture}}{{if $loop2484->getItem("@note") gt (string) 1.5}}{{capture name="classAttributeTmp26" assign="classAttributeTmp26"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp26}}"></i>
																<i {{assign "classAttributeTmp27" ""}}{{capture name="classAttributeTmp27" assign="classAttributeTmp27"}}icon-star{{/capture}}{{if $loop2484->getItem("@note") gt (string) 2.5}}{{capture name="classAttributeTmp27" assign="classAttributeTmp27"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp27}}"></i>
																<i {{assign "classAttributeTmp28" ""}}{{capture name="classAttributeTmp28" assign="classAttributeTmp28"}}icon-star{{/capture}}{{if $loop2484->getItem("@note") gt (string) 3.5}}{{capture name="classAttributeTmp28" assign="classAttributeTmp28"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp28}}"></i>
																<i {{assign "classAttributeTmp29" ""}}{{capture name="classAttributeTmp29" assign="classAttributeTmp29"}}icon-star{{/capture}}{{if $loop2484->getItem("@note") gt (string) 4.5}}{{capture name="classAttributeTmp29" assign="classAttributeTmp29"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp29}}"></i></span>
															<small>{{$txt['106678::58826_oc']}}{{$loop2484->getItem("@note")}}{{$txt['106678::58826_oce']}}</small>
														</div>
													{{/if}}
													{{if  $loop2484->getItem("content")}}
														<div class="cleardescription">{{$loop2484->getItem("content")}}
														</div>
													{{/if}}
												</div>
											{{/foreach}}
										</div>
									</div>
								{{else}}
									data-ajaxload="true"data-pagetype="projector"
									<div class="main_hotspot mrg-b clearfix skeleton">
										<span class="big_label"></span>
										<div class="main_hotspot_sub">
											<div class="products_wrapper row clearfix">
												<div class="product_wrapper col-6 col-sm-3">
													<span class="product-icon"></span>
													<span class="product-name"></span>
													<div class="product_prices">
													</div>
												</div>
												<div class="product_wrapper col-6 col-sm-3">
													<span class="product-icon"></span>
													<span class="product-name"></span>
													<div class="product_prices">
													</div>
												</div>
												<div class="product_wrapper col-6 col-sm-3">
													<span class="product-icon"></span>
													<span class="product-name"></span>
													<div class="product_prices">
													</div>
												</div>
												<div class="product_wrapper col-6 col-sm-3">
													<span class="product-icon"></span>
													<span class="product-name"></span>
													<div class="product_prices">
													</div>
												</div>
											</div>
										</div>
									</div>
								{{/if}}
							</div>
						{{/if}}
						{{if  $xml->getItem("/shop/page/projector/products_associated_zone1/@iairs_ajax")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/projector/products_associated_zone1/@hotspot_ajax")}}
						{{/if}}
						<iaiajaxend/>
						<!--Produkty powiązane z tym produktem - strefa 2 (projector_associated_zone2, 106711.1)-->
						<iaiajaxstart iai-ajax-id="projector_associated_zone2" iai-ajax-generated="true"/>
						{{if  $xml->getItem("page/projector/products_associated_zone2")}}
							<div class="main_hotspot mb-4" id="products_associated_zone2">
								{{if  $xml->getItem("page/projector/products_associated_zone2/product") or  $xml->getItem("page/projector/products_associated_zone2/opinion")}}
									<h2>
										<span class="big_label">
											{{if  $xml->getItem("page/projector/products_associated_zone2/@name")}}
												{{$xml->getItemEscape("page/projector/products_associated_zone2/@name")}}
											{{else}}
												{{$txt['106711::58826_label']}}
											{{/if}}
											{{$txt['106711::58826_label-after']}}</span>
									</h2>
									<div class="align_row main_hotspot_sub">
										<div class="products_wrapper row mx-0">
											{{foreach from=$xml->getList("page/projector/products_associated_zone2/*") item=loop2740}}
												{{capture name="var_name" assign="var_name"}}
													{{if  $loop2740->getItem("product")}}
														{{$loop2740->getItem("product/name/text()")}}
													{{else}}
														{{$loop2740->getItem("name/text()")}}
													{{/if}}
												{{/capture}}
												{{capture name="var_icon" assign="var_icon"}}
													{{if  $loop2740->getItem("product")}}
														{{$loop2740->getItemEscape("product/icon")}}
													{{else}}
														{{$loop2740->getItemEscape("icon")}}
													{{/if}}
												{{/capture}}
												{{capture name="var_icon_small" assign="var_icon_small"}}
													{{if  $loop2740->getItem("product")}}
														{{$loop2740->getItemEscape("product/icon_small")}}
													{{else}}
														{{$loop2740->getItemEscape("icon_small")}}
													{{/if}}
												{{/capture}}
												{{capture name="var_link" assign="var_link"}}
													{{if  $loop2740->getItem("product")}}
														{{$loop2740->getItemEscape("product/@link")}}
													{{else}}
														{{$loop2740->getItemEscape("@link")}}
													{{/if}}
												{{/capture}}
												{{capture name="var_yousave" assign="var_yousave"}}
													{{$txt['106711::TXT_hotspot_yousave']}}
												{{/capture}}
												<div class="product_wrapper col-6 col-sm-3">
													{{if $var_yousave and !($var_yousave  == (string) '') and  $loop2740->getItem("price/@yousave_formatted")  neq (string) ''}}
														<div class="hotspot_yousave">
															<span class="yousave_label">{{$var_yousave}}</span>
															<span class="yousave_value">{{$loop2740->getItemEscape("price/@yousave_formatted")}}</span>
														</div>
													{{/if}}
													<a class="product-icon d-flex justify-content-center align-items-center" data-product-id="{{$loop2740->getItemEscape("@id")}}" href="{{$var_link}}" title="{{$var_name}}">
														<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/loader.gif?r=1570606968" class="b-lazy" data-src-small="{{$loop2740->getItem("$var_icon_small")}}" data-src="{{$loop2740->getItem("$var_icon")}}" alt="{{$loop2740->getItem("$var_name")}}"></img></a>
													<h3>
														<a class="product-name" href="{{$var_link}}" title="{{$var_name}}">{{$var_name}}</a>
													</h3>
													{{capture name="main_hotspot_zone1_b2b_var" assign="main_hotspot_zone1_b2b_var"}}
														{{$txt['106711::main_hotspot_zone1_b2b']}}
													{{/capture}}
													{{capture name="var_net_prices" assign="var_net_prices"}}
														{{$txt['106711::hotspot_net_prices']}}
													{{/capture}}
													{{if $var_net_prices  == (string) ''}}
														{{capture name="var_size_min_formatted" assign="var_size_min_formatted"}}
															{{if  $loop2740->getItem("product")}}
																{{$loop2740->getItemEscape("product/price/@size_min_formatted")}}
															{{else}}
																{{$loop2740->getItemEscape("price/@size_min_formatted")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_size_max_formatted" assign="var_size_max_formatted"}}
															{{if  $loop2740->getItem("product")}}
																{{$loop2740->getItemEscape("product/price/@size_max_formatted")}}
															{{else}}
																{{$loop2740->getItemEscape("price/@size_max_formatted")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_size_min_maxprice_formatted" assign="var_size_min_maxprice_formatted"}}
															{{if  $loop2740->getItem("product")}}
																{{$loop2740->getItemEscape("product/price/@size_min_maxprice_formatted")}}
															{{else}}
																{{$loop2740->getItemEscape("price/@size_min_maxprice_formatted")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_size_max_maxprice_formatted" assign="var_size_max_maxprice_formatted"}}
															{{if  $loop2740->getItem("product")}}
																{{$loop2740->getItemEscape("product/price/@size_max_maxprice_formatted")}}
															{{else}}
																{{$loop2740->getItemEscape("price/@size_max_maxprice_formatted")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_points" assign="var_points"}}
															{{if  $loop2740->getItem("product")}}
																{{$loop2740->getItemEscape("product/price/@points")}}
															{{else}}
																{{$loop2740->getItemEscape("price/@points")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_value" assign="var_value"}}
															{{if  $loop2740->getItem("product")}}
																{{$loop2740->getItemEscape("product/price/@size_min")}}
															{{else}}
																{{$loop2740->getItemEscape("price/@size_min")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_price_formatted" assign="var_price_formatted"}}
															{{if  $loop2740->getItem("price/@price_unit_formatted") and  $loop2740->getItem("sizes/@unit")}}
																{{$loop2740->getItemEscape("price/@price_unit_formatted")}}{{literal}}/{{/literal}}{{$loop2740->getItemEscape("sizes/@unit_sellby")}}{{literal}}{{/literal}}{{$loop2740->getItemEscape("sizes/@unit")}}
															{{elseif  $loop2740->getItem("product/price/@price_unit_formatted") and  $loop2740->getItem("product/sizes/@unit")}}
																{{$loop2740->getItemEscape("product/price/@price_unit_formatted")}}{{literal}}/{{/literal}}{{$loop2740->getItemEscape("product/sizes/@unit_sellby")}}{{literal}}{{/literal}}{{$loop2740->getItemEscape("product/sizes/@unit")}}
															{{else}}
																{{$var_size_min_formatted}}
															{{/if}}
														{{/capture}}
														{{capture name="var_maxprice_formatted" assign="var_maxprice_formatted"}}
															{{if  $loop2740->getItem("price/@maxprice_unit_formatted")}}
																{{$loop2740->getItemEscape("price/@maxprice_unit_formatted")}}
															{{elseif  $loop2740->getItem("product/price/@maxprice_unit_formatted")}}
																{{$loop2740->getItemEscape("product/price/@maxprice_unit_formatted")}}
															{{elseif  $loop2740->getItem("product")}}
																{{$loop2740->getItemEscape("product/price/@maxprice_formatted")}}
															{{else}}
																{{$loop2740->getItemEscape("price/@maxprice_formatted")}}
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
																		<span class="currency">{{$txt['106711::58826_012']}}</span></span>
																{{/if}}
															{{elseif (($var_value  == (string) 0) and $var_points  == (string) '') or ($var_value  == (string) 0 and $main_hotspot_zone1_b2b_var and !($main_hotspot_zone1_b2b_var  == (string) '') and !( $loop2740->getItem("/shop/basket/@wholesaler")  == (string) 'true'))}}
																<a {{assign "hrefAttributeTmp64" ""}}  class="fon_price" data-mobile-class="btn-small" {{if $main_hotspot_zone1_b2b_var and !($main_hotspot_zone1_b2b_var == (string) '')}} title="{{$main_hotspot_zone1_b2b_var}}"{{capture name="hrefAttributeTmp64" assign="hrefAttributeTmp64"}}{{$loop2740->getItemEscape("/shop/action/signin/@url")}}{{/capture}}{{$main_hotspot_zone1_b2b_var}}{{else}} title="{{$txt['106711::58826_009']}}"{{capture name="hrefAttributeTmp64" assign="hrefAttributeTmp64"}}{{$loop2740->getItemEscape("/shop/contact/link/@url")}}{{/capture}} {{$txt['106711::58826_010']}} {{/if}}  href="{{$hrefAttributeTmp64}}"></a>
															{{else}}
																<span class="price">{{$txt['106711::58826_003']}}{{$var_price_formatted}}</span>
																{{if $var_maxprice_formatted  neq (string) ''}}
																	<del class="max-price">{{$txt['106711::58826_006']}}{{$var_maxprice_formatted}}</del>
																{{/if}}
																{{if $var_points  neq (string) ''}}
																	<span class="point-price">{{$var_points}}
																		<span class="currency">{{$txt['106711::58826_012']}}</span></span>
																{{/if}}
															{{/if}}
															{{if  $loop2740->getItem("price/@unit_converted_price_formatted")}}
																<small class="s_unit_converted_price">{{$loop2740->getItemEscape("price/@unit_converted_price_formatted")}}{{literal}}/{{/literal}}{{$loop2740->getItemEscape("price/@unit_converted_format")}}</small>
															{{/if}}
														</div>
													{{else}}
														{{capture name="var_size_min_net_formatted" assign="var_size_min_net_formatted"}}
															{{if  $loop2740->getItem("product")}}
																{{$loop2740->getItemEscape("product/price/@size_min_net_formatted")}}
															{{else}}
																{{$loop2740->getItemEscape("price/@size_min_net_formatted")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_size_max_net_formatted" assign="var_size_max_net_formatted"}}
															{{if  $loop2740->getItem("product")}}
																{{$loop2740->getItemEscape("product/price/@size_max_net_formatted")}}
															{{else}}
																{{$loop2740->getItemEscape("price/@size_max_net_formatted")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_size_min_net_maxprice_formatted" assign="var_size_min_net_maxprice_formatted"}}
															{{if  $loop2740->getItem("product")}}
																{{$loop2740->getItemEscape("product/price/@size_min_maxprice_net_formatted")}}
															{{else}}
																{{$loop2740->getItemEscape("price/@size_min_maxprice_net_formatted")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_size_max_maxprice_net_formatted" assign="var_size_max_maxprice_net_formatted"}}
															{{if  $loop2740->getItem("product")}}
																{{$loop2740->getItemEscape("product/price/@size_max_maxprice_net_formatted")}}
															{{else}}
																{{$loop2740->getItemEscape("price/@size_max_maxprice_net_formatted")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_points_net" assign="var_points_net"}}
															{{if  $loop2740->getItem("product")}}
																{{$loop2740->getItemEscape("product/price/@points")}}
															{{else}}
																{{$loop2740->getItemEscape("price/@points")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_net_value" assign="var_net_value"}}
															{{if  $loop2740->getItem("product")}}
																{{$loop2740->getItemEscape("product/price/@size_min_net")}}
															{{else}}
																{{$loop2740->getItemEscape("price/@size_min_net")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_price_formatted" assign="var_price_formatted"}}
															{{if  $loop2740->getItem("price/@price_unit_net_formatted") and  $loop2740->getItem("sizes/@unit")}}
																{{$loop2740->getItemEscape("price/@price_unit_net_formatted")}}{{literal}}/{{/literal}}{{$loop2740->getItemEscape("sizes/@unit_sellby")}}{{literal}}{{/literal}}{{$loop2740->getItemEscape("sizes/@unit")}}
															{{elseif  $loop2740->getItem("product/price/@price_unit_net_formatted") and  $loop2740->getItem("product/sizes/@unit")}}
																{{$loop2740->getItemEscape("product/price/@price_unit_net_formatted")}}{{literal}}/{{/literal}}{{$loop2740->getItemEscape("product/sizes/@unit_sellby")}}{{literal}}{{/literal}}{{$loop2740->getItemEscape("product/sizes/@unit")}}
															{{else}}
																{{$var_size_min_net_formatted}}
															{{/if}}
														{{/capture}}
														{{capture name="var_maxprice_net_formatted" assign="var_maxprice_net_formatted"}}
															{{if  $loop2740->getItem("price/@maxprice_unit_net_formatted")}}
																{{$loop2740->getItemEscape("price/@maxprice_unit_net_formatted")}}
															{{elseif  $loop2740->getItem("product/price/@maxprice_unit_net_formatted")}}
																{{$loop2740->getItemEscape("product/price/@maxprice_unit_net_formatted")}}
															{{elseif  $loop2740->getItem("product")}}
																{{$loop2740->getItemEscape("product/price/@maxprice_net_formatted")}}
															{{else}}
																{{$loop2740->getItemEscape("price/@maxprice_net_formatted")}}
															{{/if}}
														{{/capture}}
														<div class="product_prices">
															{{if $var_size_min_net_formatted  neq (string) $var_size_max_net_formatted}}
																<span class="price">{{$var_size_min_net_formatted}}{{literal}}-{{/literal}}{{$var_size_max_net_formatted}}{{$var_net_prices}}</span>
																{{if $var_size_min_net_maxprice_formatted  neq (string) ''}}
																	<del class="max-price">
																		<span>{{$var_size_min_net_maxprice_formatted}}</span>
																		<b>{{literal}}-{{/literal}}</b>
																		<span>{{$var_size_max_maxprice_net_formatted}}</span>{{$var_net_prices}}</del>
																{{/if}}
																{{if $var_points_net  neq (string) ''}}
																	<span class="point-price">{{$var_points_net}}
																		<span class="currency">{{$txt['106711::58826_012']}}</span></span>
																{{/if}}
															{{elseif (($var_net_value  == (string) 0) and $var_points_net  == (string) '') or ($var_net_value  == (string) 0 and $main_hotspot_zone1_b2b_var and !($main_hotspot_zone1_b2b_var  == (string) '') and !( $loop2740->getItem("/shop/basket/@wholesaler")  == (string) 'true'))}}
																<a {{assign "hrefAttributeTmp64" ""}}  class="fon_price" data-mobile-class="btn-small" {{if $main_hotspot_zone1_b2b_var and !($main_hotspot_zone1_b2b_var == (string) '')}} title="{{$main_hotspot_zone1_b2b_var}}"{{capture name="hrefAttributeTmp64" assign="hrefAttributeTmp64"}}{{$loop2740->getItemEscape("/shop/action/signin/@url")}}{{/capture}}{{$main_hotspot_zone1_b2b_var}}{{else}} title="{{$txt['106711::58826_009']}}"{{capture name="hrefAttributeTmp64" assign="hrefAttributeTmp64"}}{{$loop2740->getItemEscape("/shop/contact/link/@url")}}{{/capture}} {{$txt['106711::58826_010']}} {{/if}}  href="{{$hrefAttributeTmp64}}"></a>
															{{else}}
																<span class="price">{{$txt['106711::58826_003']}}{{$var_price_formatted}}{{$var_net_prices}}</span>
																{{if $var_maxprice_net_formatted  neq (string) ''}}
																	<del class="max-price">{{$txt['106711::58826_006']}}{{$var_maxprice_net_formatted}}{{$var_net_prices}}</del>
																{{/if}}
																{{if $var_points_net  neq (string) ''}}
																	<span class="point-price">{{$var_points_net}}
																		<span class="currency">{{$txt['106711::58826_012']}}</span></span>
																{{/if}}
															{{/if}}
															{{if  $loop2740->getItem("price/@unit_converted_price_net_formatted")}}
																<small class="s_unit_converted_price">{{$loop2740->getItemEscape("price/@unit_converted_price_net_formatted")}}{{literal}}/{{/literal}}{{$loop2740->getItemEscape("price/@unit_converted_format")}}{{$var_net_prices}}</small>
															{{/if}}
														</div>
													{{/if}}
													{{if  $loop2740->getItem("client/@client")}}
														<div class="client">{{$loop2740->getItem("client/@client")}}
														</div>
													{{/if}}
													{{if  $loop2740->getItem("@note")}}
														<div class="note">
															<span>
																<i {{assign "classAttributeTmp30" ""}}{{capture name="classAttributeTmp30" assign="classAttributeTmp30"}}icon-star{{/capture}}{{if $loop2740->getItem("@note") gt (string) 0.5}}{{capture name="classAttributeTmp30" assign="classAttributeTmp30"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp30}}"></i>
																<i {{assign "classAttributeTmp31" ""}}{{capture name="classAttributeTmp31" assign="classAttributeTmp31"}}icon-star{{/capture}}{{if $loop2740->getItem("@note") gt (string) 1.5}}{{capture name="classAttributeTmp31" assign="classAttributeTmp31"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp31}}"></i>
																<i {{assign "classAttributeTmp32" ""}}{{capture name="classAttributeTmp32" assign="classAttributeTmp32"}}icon-star{{/capture}}{{if $loop2740->getItem("@note") gt (string) 2.5}}{{capture name="classAttributeTmp32" assign="classAttributeTmp32"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp32}}"></i>
																<i {{assign "classAttributeTmp33" ""}}{{capture name="classAttributeTmp33" assign="classAttributeTmp33"}}icon-star{{/capture}}{{if $loop2740->getItem("@note") gt (string) 3.5}}{{capture name="classAttributeTmp33" assign="classAttributeTmp33"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp33}}"></i>
																<i {{assign "classAttributeTmp34" ""}}{{capture name="classAttributeTmp34" assign="classAttributeTmp34"}}icon-star{{/capture}}{{if $loop2740->getItem("@note") gt (string) 4.5}}{{capture name="classAttributeTmp34" assign="classAttributeTmp34"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp34}}"></i></span>
															<small>{{$txt['106711::58826_oc']}}{{$loop2740->getItem("@note")}}{{$txt['106711::58826_oce']}}</small>
														</div>
													{{/if}}
													{{if  $loop2740->getItem("content")}}
														<div class="cleardescription">{{$loop2740->getItem("content")}}
														</div>
													{{/if}}
												</div>
											{{/foreach}}
										</div>
									</div>
								{{else}}
									data-ajaxload="true"data-pagetype="projector"
									<div class="main_hotspot mrg-b clearfix skeleton">
										<span class="big_label"></span>
										<div class="main_hotspot_sub">
											<div class="products_wrapper row clearfix">
												<div class="product_wrapper col-6 col-sm-3">
													<span class="product-icon"></span>
													<span class="product-name"></span>
													<div class="product_prices">
													</div>
												</div>
												<div class="product_wrapper col-6 col-sm-3">
													<span class="product-icon"></span>
													<span class="product-name"></span>
													<div class="product_prices">
													</div>
												</div>
												<div class="product_wrapper col-6 col-sm-3">
													<span class="product-icon"></span>
													<span class="product-name"></span>
													<div class="product_prices">
													</div>
												</div>
												<div class="product_wrapper col-6 col-sm-3">
													<span class="product-icon"></span>
													<span class="product-name"></span>
													<div class="product_prices">
													</div>
												</div>
											</div>
										</div>
									</div>
								{{/if}}
							</div>
						{{/if}}
						{{if  $xml->getItem("/shop/page/projector/products_associated_zone2/@iairs_ajax")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/projector/products_associated_zone2/@hotspot_ajax")}}
						{{/if}}
						<iaiajaxend/>
						<!--Produkty powiązane z tym produktem - strefa 3 (projector_associated_zone3, 106712.1)-->
						<iaiajaxstart iai-ajax-id="projector_associated_zone3" iai-ajax-generated="true"/>
						{{if  $xml->getItem("page/projector/products_associated_zone3")}}
							<div class="main_hotspot mb-4" id="products_associated_zone3">
								{{if  $xml->getItem("page/projector/products_associated_zone3/product") or  $xml->getItem("page/projector/products_associated_zone3/opinion")}}
									<h2>
										<span class="big_label">
											{{if  $xml->getItem("page/projector/products_associated_zone3/@name")}}
												{{$xml->getItemEscape("page/projector/products_associated_zone3/@name")}}
											{{else}}
												{{$txt['106712::58826_label']}}
											{{/if}}
											{{$txt['106712::58826_label-after']}}</span>
									</h2>
									<div class="align_row main_hotspot_sub">
										<div class="products_wrapper row mx-0">
											{{foreach from=$xml->getList("page/projector/products_associated_zone3/*") item=loop2999}}
												{{capture name="var_name" assign="var_name"}}
													{{if  $loop2999->getItem("product")}}
														{{$loop2999->getItem("product/name/text()")}}
													{{else}}
														{{$loop2999->getItem("name/text()")}}
													{{/if}}
												{{/capture}}
												{{capture name="var_icon" assign="var_icon"}}
													{{if  $loop2999->getItem("product")}}
														{{$loop2999->getItemEscape("product/icon")}}
													{{else}}
														{{$loop2999->getItemEscape("icon")}}
													{{/if}}
												{{/capture}}
												{{capture name="var_icon_small" assign="var_icon_small"}}
													{{if  $loop2999->getItem("product")}}
														{{$loop2999->getItemEscape("product/icon_small")}}
													{{else}}
														{{$loop2999->getItemEscape("icon_small")}}
													{{/if}}
												{{/capture}}
												{{capture name="var_link" assign="var_link"}}
													{{if  $loop2999->getItem("product")}}
														{{$loop2999->getItemEscape("product/@link")}}
													{{else}}
														{{$loop2999->getItemEscape("@link")}}
													{{/if}}
												{{/capture}}
												{{capture name="var_yousave" assign="var_yousave"}}
													{{$txt['106712::TXT_hotspot_yousave']}}
												{{/capture}}
												<div class="product_wrapper col-6 col-sm-3">
													{{if $var_yousave and !($var_yousave  == (string) '') and  $loop2999->getItem("price/@yousave_formatted")  neq (string) ''}}
														<div class="hotspot_yousave">
															<span class="yousave_label">{{$var_yousave}}</span>
															<span class="yousave_value">{{$loop2999->getItemEscape("price/@yousave_formatted")}}</span>
														</div>
													{{/if}}
													<a class="product-icon d-flex justify-content-center align-items-center" data-product-id="{{$loop2999->getItemEscape("@id")}}" href="{{$var_link}}" title="{{$var_name}}">
														<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/loader.gif?r=1570606968" class="b-lazy" data-src-small="{{$loop2999->getItem("$var_icon_small")}}" data-src="{{$loop2999->getItem("$var_icon")}}" alt="{{$loop2999->getItem("$var_name")}}"></img></a>
													<h3>
														<a class="product-name" href="{{$var_link}}" title="{{$var_name}}">{{$var_name}}</a>
													</h3>
													{{capture name="main_hotspot_zone1_b2b_var" assign="main_hotspot_zone1_b2b_var"}}
														{{$txt['106712::main_hotspot_zone1_b2b']}}
													{{/capture}}
													{{capture name="var_net_prices" assign="var_net_prices"}}
														{{$txt['106712::hotspot_net_prices']}}
													{{/capture}}
													{{if $var_net_prices  == (string) ''}}
														{{capture name="var_size_min_formatted" assign="var_size_min_formatted"}}
															{{if  $loop2999->getItem("product")}}
																{{$loop2999->getItemEscape("product/price/@size_min_formatted")}}
															{{else}}
																{{$loop2999->getItemEscape("price/@size_min_formatted")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_size_max_formatted" assign="var_size_max_formatted"}}
															{{if  $loop2999->getItem("product")}}
																{{$loop2999->getItemEscape("product/price/@size_max_formatted")}}
															{{else}}
																{{$loop2999->getItemEscape("price/@size_max_formatted")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_size_min_maxprice_formatted" assign="var_size_min_maxprice_formatted"}}
															{{if  $loop2999->getItem("product")}}
																{{$loop2999->getItemEscape("product/price/@size_min_maxprice_formatted")}}
															{{else}}
																{{$loop2999->getItemEscape("price/@size_min_maxprice_formatted")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_size_max_maxprice_formatted" assign="var_size_max_maxprice_formatted"}}
															{{if  $loop2999->getItem("product")}}
																{{$loop2999->getItemEscape("product/price/@size_max_maxprice_formatted")}}
															{{else}}
																{{$loop2999->getItemEscape("price/@size_max_maxprice_formatted")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_points" assign="var_points"}}
															{{if  $loop2999->getItem("product")}}
																{{$loop2999->getItemEscape("product/price/@points")}}
															{{else}}
																{{$loop2999->getItemEscape("price/@points")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_value" assign="var_value"}}
															{{if  $loop2999->getItem("product")}}
																{{$loop2999->getItemEscape("product/price/@size_min")}}
															{{else}}
																{{$loop2999->getItemEscape("price/@size_min")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_price_formatted" assign="var_price_formatted"}}
															{{if  $loop2999->getItem("price/@price_unit_formatted") and  $loop2999->getItem("sizes/@unit")}}
																{{$loop2999->getItemEscape("price/@price_unit_formatted")}}{{literal}}/{{/literal}}{{$loop2999->getItemEscape("sizes/@unit_sellby")}}{{literal}}{{/literal}}{{$loop2999->getItemEscape("sizes/@unit")}}
															{{elseif  $loop2999->getItem("product/price/@price_unit_formatted") and  $loop2999->getItem("product/sizes/@unit")}}
																{{$loop2999->getItemEscape("product/price/@price_unit_formatted")}}{{literal}}/{{/literal}}{{$loop2999->getItemEscape("product/sizes/@unit_sellby")}}{{literal}}{{/literal}}{{$loop2999->getItemEscape("product/sizes/@unit")}}
															{{else}}
																{{$var_size_min_formatted}}
															{{/if}}
														{{/capture}}
														{{capture name="var_maxprice_formatted" assign="var_maxprice_formatted"}}
															{{if  $loop2999->getItem("price/@maxprice_unit_formatted")}}
																{{$loop2999->getItemEscape("price/@maxprice_unit_formatted")}}
															{{elseif  $loop2999->getItem("product/price/@maxprice_unit_formatted")}}
																{{$loop2999->getItemEscape("product/price/@maxprice_unit_formatted")}}
															{{elseif  $loop2999->getItem("product")}}
																{{$loop2999->getItemEscape("product/price/@maxprice_formatted")}}
															{{else}}
																{{$loop2999->getItemEscape("price/@maxprice_formatted")}}
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
																		<span class="currency">{{$txt['106712::58826_012']}}</span></span>
																{{/if}}
															{{elseif (($var_value  == (string) 0) and $var_points  == (string) '') or ($var_value  == (string) 0 and $main_hotspot_zone1_b2b_var and !($main_hotspot_zone1_b2b_var  == (string) '') and !( $loop2999->getItem("/shop/basket/@wholesaler")  == (string) 'true'))}}
																<a {{assign "hrefAttributeTmp66" ""}}  class="fon_price" data-mobile-class="btn-small" {{if $main_hotspot_zone1_b2b_var and !($main_hotspot_zone1_b2b_var == (string) '')}} title="{{$main_hotspot_zone1_b2b_var}}"{{capture name="hrefAttributeTmp66" assign="hrefAttributeTmp66"}}{{$loop2999->getItemEscape("/shop/action/signin/@url")}}{{/capture}}{{$main_hotspot_zone1_b2b_var}}{{else}} title="{{$txt['106712::58826_009']}}"{{capture name="hrefAttributeTmp66" assign="hrefAttributeTmp66"}}{{$loop2999->getItemEscape("/shop/contact/link/@url")}}{{/capture}} {{$txt['106712::58826_010']}} {{/if}}  href="{{$hrefAttributeTmp66}}"></a>
															{{else}}
																<span class="price">{{$txt['106712::58826_003']}}{{$var_price_formatted}}</span>
																{{if $var_maxprice_formatted  neq (string) ''}}
																	<del class="max-price">{{$txt['106712::58826_006']}}{{$var_maxprice_formatted}}</del>
																{{/if}}
																{{if $var_points  neq (string) ''}}
																	<span class="point-price">{{$var_points}}
																		<span class="currency">{{$txt['106712::58826_012']}}</span></span>
																{{/if}}
															{{/if}}
															{{if  $loop2999->getItem("price/@unit_converted_price_formatted")}}
																<small class="s_unit_converted_price">{{$loop2999->getItemEscape("price/@unit_converted_price_formatted")}}{{literal}}/{{/literal}}{{$loop2999->getItemEscape("price/@unit_converted_format")}}</small>
															{{/if}}
														</div>
													{{else}}
														{{capture name="var_size_min_net_formatted" assign="var_size_min_net_formatted"}}
															{{if  $loop2999->getItem("product")}}
																{{$loop2999->getItemEscape("product/price/@size_min_net_formatted")}}
															{{else}}
																{{$loop2999->getItemEscape("price/@size_min_net_formatted")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_size_max_net_formatted" assign="var_size_max_net_formatted"}}
															{{if  $loop2999->getItem("product")}}
																{{$loop2999->getItemEscape("product/price/@size_max_net_formatted")}}
															{{else}}
																{{$loop2999->getItemEscape("price/@size_max_net_formatted")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_size_min_net_maxprice_formatted" assign="var_size_min_net_maxprice_formatted"}}
															{{if  $loop2999->getItem("product")}}
																{{$loop2999->getItemEscape("product/price/@size_min_maxprice_net_formatted")}}
															{{else}}
																{{$loop2999->getItemEscape("price/@size_min_maxprice_net_formatted")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_size_max_maxprice_net_formatted" assign="var_size_max_maxprice_net_formatted"}}
															{{if  $loop2999->getItem("product")}}
																{{$loop2999->getItemEscape("product/price/@size_max_maxprice_net_formatted")}}
															{{else}}
																{{$loop2999->getItemEscape("price/@size_max_maxprice_net_formatted")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_points_net" assign="var_points_net"}}
															{{if  $loop2999->getItem("product")}}
																{{$loop2999->getItemEscape("product/price/@points")}}
															{{else}}
																{{$loop2999->getItemEscape("price/@points")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_net_value" assign="var_net_value"}}
															{{if  $loop2999->getItem("product")}}
																{{$loop2999->getItemEscape("product/price/@size_min_net")}}
															{{else}}
																{{$loop2999->getItemEscape("price/@size_min_net")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_price_formatted" assign="var_price_formatted"}}
															{{if  $loop2999->getItem("price/@price_unit_net_formatted") and  $loop2999->getItem("sizes/@unit")}}
																{{$loop2999->getItemEscape("price/@price_unit_net_formatted")}}{{literal}}/{{/literal}}{{$loop2999->getItemEscape("sizes/@unit_sellby")}}{{literal}}{{/literal}}{{$loop2999->getItemEscape("sizes/@unit")}}
															{{elseif  $loop2999->getItem("product/price/@price_unit_net_formatted") and  $loop2999->getItem("product/sizes/@unit")}}
																{{$loop2999->getItemEscape("product/price/@price_unit_net_formatted")}}{{literal}}/{{/literal}}{{$loop2999->getItemEscape("product/sizes/@unit_sellby")}}{{literal}}{{/literal}}{{$loop2999->getItemEscape("product/sizes/@unit")}}
															{{else}}
																{{$var_size_min_net_formatted}}
															{{/if}}
														{{/capture}}
														{{capture name="var_maxprice_net_formatted" assign="var_maxprice_net_formatted"}}
															{{if  $loop2999->getItem("price/@maxprice_unit_net_formatted")}}
																{{$loop2999->getItemEscape("price/@maxprice_unit_net_formatted")}}
															{{elseif  $loop2999->getItem("product/price/@maxprice_unit_net_formatted")}}
																{{$loop2999->getItemEscape("product/price/@maxprice_unit_net_formatted")}}
															{{elseif  $loop2999->getItem("product")}}
																{{$loop2999->getItemEscape("product/price/@maxprice_net_formatted")}}
															{{else}}
																{{$loop2999->getItemEscape("price/@maxprice_net_formatted")}}
															{{/if}}
														{{/capture}}
														<div class="product_prices">
															{{if $var_size_min_net_formatted  neq (string) $var_size_max_net_formatted}}
																<span class="price">{{$var_size_min_net_formatted}}{{literal}}-{{/literal}}{{$var_size_max_net_formatted}}{{$var_net_prices}}</span>
																{{if $var_size_min_net_maxprice_formatted  neq (string) ''}}
																	<del class="max-price">
																		<span>{{$var_size_min_net_maxprice_formatted}}</span>
																		<b>{{literal}}-{{/literal}}</b>
																		<span>{{$var_size_max_maxprice_net_formatted}}</span>{{$var_net_prices}}</del>
																{{/if}}
																{{if $var_points_net  neq (string) ''}}
																	<span class="point-price">{{$var_points_net}}
																		<span class="currency">{{$txt['106712::58826_012']}}</span></span>
																{{/if}}
															{{elseif (($var_net_value  == (string) 0) and $var_points_net  == (string) '') or ($var_net_value  == (string) 0 and $main_hotspot_zone1_b2b_var and !($main_hotspot_zone1_b2b_var  == (string) '') and !( $loop2999->getItem("/shop/basket/@wholesaler")  == (string) 'true'))}}
																<a {{assign "hrefAttributeTmp66" ""}}  class="fon_price" data-mobile-class="btn-small" {{if $main_hotspot_zone1_b2b_var and !($main_hotspot_zone1_b2b_var == (string) '')}} title="{{$main_hotspot_zone1_b2b_var}}"{{capture name="hrefAttributeTmp66" assign="hrefAttributeTmp66"}}{{$loop2999->getItemEscape("/shop/action/signin/@url")}}{{/capture}}{{$main_hotspot_zone1_b2b_var}}{{else}} title="{{$txt['106712::58826_009']}}"{{capture name="hrefAttributeTmp66" assign="hrefAttributeTmp66"}}{{$loop2999->getItemEscape("/shop/contact/link/@url")}}{{/capture}} {{$txt['106712::58826_010']}} {{/if}}  href="{{$hrefAttributeTmp66}}"></a>
															{{else}}
																<span class="price">{{$txt['106712::58826_003']}}{{$var_price_formatted}}{{$var_net_prices}}</span>
																{{if $var_maxprice_net_formatted  neq (string) ''}}
																	<del class="max-price">{{$txt['106712::58826_006']}}{{$var_maxprice_net_formatted}}{{$var_net_prices}}</del>
																{{/if}}
																{{if $var_points_net  neq (string) ''}}
																	<span class="point-price">{{$var_points_net}}
																		<span class="currency">{{$txt['106712::58826_012']}}</span></span>
																{{/if}}
															{{/if}}
															{{if  $loop2999->getItem("price/@unit_converted_price_net_formatted")}}
																<small class="s_unit_converted_price">{{$loop2999->getItemEscape("price/@unit_converted_price_net_formatted")}}{{literal}}/{{/literal}}{{$loop2999->getItemEscape("price/@unit_converted_format")}}{{$var_net_prices}}</small>
															{{/if}}
														</div>
													{{/if}}
													{{if  $loop2999->getItem("client/@client")}}
														<div class="client">{{$loop2999->getItem("client/@client")}}
														</div>
													{{/if}}
													{{if  $loop2999->getItem("@note")}}
														<div class="note">
															<span>
																<i {{assign "classAttributeTmp35" ""}}{{capture name="classAttributeTmp35" assign="classAttributeTmp35"}}icon-star{{/capture}}{{if $loop2999->getItem("@note") gt (string) 0.5}}{{capture name="classAttributeTmp35" assign="classAttributeTmp35"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp35}}"></i>
																<i {{assign "classAttributeTmp36" ""}}{{capture name="classAttributeTmp36" assign="classAttributeTmp36"}}icon-star{{/capture}}{{if $loop2999->getItem("@note") gt (string) 1.5}}{{capture name="classAttributeTmp36" assign="classAttributeTmp36"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp36}}"></i>
																<i {{assign "classAttributeTmp37" ""}}{{capture name="classAttributeTmp37" assign="classAttributeTmp37"}}icon-star{{/capture}}{{if $loop2999->getItem("@note") gt (string) 2.5}}{{capture name="classAttributeTmp37" assign="classAttributeTmp37"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp37}}"></i>
																<i {{assign "classAttributeTmp38" ""}}{{capture name="classAttributeTmp38" assign="classAttributeTmp38"}}icon-star{{/capture}}{{if $loop2999->getItem("@note") gt (string) 3.5}}{{capture name="classAttributeTmp38" assign="classAttributeTmp38"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp38}}"></i>
																<i {{assign "classAttributeTmp39" ""}}{{capture name="classAttributeTmp39" assign="classAttributeTmp39"}}icon-star{{/capture}}{{if $loop2999->getItem("@note") gt (string) 4.5}}{{capture name="classAttributeTmp39" assign="classAttributeTmp39"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp39}}"></i></span>
															<small>{{$txt['106712::58826_oc']}}{{$loop2999->getItem("@note")}}{{$txt['106712::58826_oce']}}</small>
														</div>
													{{/if}}
													{{if  $loop2999->getItem("content")}}
														<div class="cleardescription">{{$loop2999->getItem("content")}}
														</div>
													{{/if}}
												</div>
											{{/foreach}}
										</div>
									</div>
								{{else}}
									data-ajaxload="true"data-pagetype="projector"
									<div class="main_hotspot mrg-b clearfix skeleton">
										<span class="big_label"></span>
										<div class="main_hotspot_sub">
											<div class="products_wrapper row clearfix">
												<div class="product_wrapper col-6 col-sm-3">
													<span class="product-icon"></span>
													<span class="product-name"></span>
													<div class="product_prices">
													</div>
												</div>
												<div class="product_wrapper col-6 col-sm-3">
													<span class="product-icon"></span>
													<span class="product-name"></span>
													<div class="product_prices">
													</div>
												</div>
												<div class="product_wrapper col-6 col-sm-3">
													<span class="product-icon"></span>
													<span class="product-name"></span>
													<div class="product_prices">
													</div>
												</div>
												<div class="product_wrapper col-6 col-sm-3">
													<span class="product-icon"></span>
													<span class="product-name"></span>
													<div class="product_prices">
													</div>
												</div>
											</div>
										</div>
									</div>
								{{/if}}
							</div>
						{{/if}}
						{{if  $xml->getItem("/shop/page/projector/products_associated_zone3/@iairs_ajax")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/projector/products_associated_zone3/@hotspot_ajax")}}
						{{/if}}
						<iaiajaxend/>
						<!--Produkty powiązane z tym produktem - strefa 4 (projector_associated_zone4, 88393.1)-->
						{{if  $xml->getItem("/shop/page/projector/products_associated_zone4/@name")}}
						{{/if}}
						{{if  $xml->getItem("page/projector/products_associated_zone4/opinion")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/projector/products_associated_zone4")}}
						{{/if}}
						<!--Karta towaru - opinie (projector_projector_opinons_form, 108631.1)-->
						<section id="opinions_section" class="row">
							{{if  $xml->getItem("/shop/page/projector/comments/@all")  gt (string) '0'}}
								<div class="col-12">
									<span class="big_label">{{$txt['108631::TXT_108631_opinions']}}</span>
								</div>
								<div class="average_opinions_container col-12 col-md-4 col-lg-3 mb-4">
									<div class="row">
										<div class="col-12 col-sm-6 col-md-12">
											<div class="average_opinions_box">
												<div class="comments">
													<div class="note">
														<span>
															<i {{assign "classAttributeTmp40" ""}}{{capture name="classAttributeTmp40" assign="classAttributeTmp40"}}icon-star{{/capture}}{{if $xml->getItem("page/projector/comments/@avg") gt (string) 0.5}}{{capture name="classAttributeTmp40" assign="classAttributeTmp40"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp40}}"></i>
															<i {{assign "classAttributeTmp41" ""}}{{capture name="classAttributeTmp41" assign="classAttributeTmp41"}}icon-star{{/capture}}{{if $xml->getItem("page/projector/comments/@avg") gt (string) 1.5}}{{capture name="classAttributeTmp41" assign="classAttributeTmp41"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp41}}"></i>
															<i {{assign "classAttributeTmp42" ""}}{{capture name="classAttributeTmp42" assign="classAttributeTmp42"}}icon-star{{/capture}}{{if $xml->getItem("page/projector/comments/@avg") gt (string) 2.5}}{{capture name="classAttributeTmp42" assign="classAttributeTmp42"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp42}}"></i>
															<i {{assign "classAttributeTmp43" ""}}{{capture name="classAttributeTmp43" assign="classAttributeTmp43"}}icon-star{{/capture}}{{if $xml->getItem("page/projector/comments/@avg") gt (string) 3.5}}{{capture name="classAttributeTmp43" assign="classAttributeTmp43"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp43}}"></i>
															<i {{assign "classAttributeTmp44" ""}}{{capture name="classAttributeTmp44" assign="classAttributeTmp44"}}icon-star{{/capture}}{{if $xml->getItem("page/projector/comments/@avg") gt (string) 4.5}}{{capture name="classAttributeTmp44" assign="classAttributeTmp44"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp44}}"></i></span>
													</div>
												</div>
												<div class="average_opinions_score">{{$xml->getItem("page/projector/comments/@avg")}}
												</div>
												<div class="average_opinions_desc">{{$txt['108631::TXT_108631_avg_opinion']}}{{$xml->getItemEscape("page/projector/comments/@all")}}
												</div>
											</div>
											<div class="opinions_add">
												{{if ( $xml->getItem("page/projector/comments/opinionClient/opinion/@stat")  == (string) 'y')}}
													<div class="opinions_avg_info menu_messages_message small">{{$txt['108631::53789_002a']}}
													</div>
												{{else}}
													{{if ( $xml->getItem("page/projector/comments/opinionClient/opinion/@stat")  == (string) 'n')}}
														<div class="opinions_avg_info menu_messages_message small">{{$txt['108631::53789_003']}}
														</div>
													{{/if}}
													<a href="#showOpinionForm" id="show_opinion_form" class="btn-large">
														{{if ( $xml->getItem("page/projector/comments/opinionClient/opinion/@stat")  == (string) 'n')}}
															{{$txt['108631::o_shop__lbl-z']}}
														{{else}}
															{{$txt['108631::o_shop__lbl']}}
														{{/if}}
														</a>
													{{if  $xml->getItem("/shop/page/projector/comments/opinionClient/@points")}}
														<div class="opinions_affiliate_points">
															{{if  $xml->getItem("/shop/page/projector/comments/opinionClient/image/@points")}}
																{{$txt['108631::TXT_108631_affiliate_img']}}
															{{else}}
																{{$txt['108631::TXT_108631_affiliate_noimg']}}
															{{/if}}
															<strong>
																{{if  $xml->getItem("substring-after(/shop/page/projector/comments/opinionClient/@points, '.')")  == (string) '00'}}
																	{{$xml->getItemEscape("substring-before(/shop/page/projector/comments/opinionClient/@points, '.')")}}
																{{else}}
																	{{$xml->getItemEscape("/shop/page/projector/comments/opinionClient/@points")}}
																{{/if}}
																{{literal}}{{/literal}}{{$txt['108631::TXT_108631_affiliate_pkt']}}</strong>{{$txt['108631::TXT_108631_affiliate_opinion']}}
														</div>
													{{/if}}
												{{/if}}
											</div>
										</div>
										{{capture name="totalOpinionsAll" assign="totalOpinionsAll"}}
											{{$xml->getItemEscape("page/projector/comments/@all")}}
										{{/capture}}
										<div class="col-12 col-sm-6 col-md-12">
											<div class="average_opinions_list">
												<div class="opinion_rate" id="shop-opinion_rate_5">
													<span class="opinion_number">
														5</span>
													<span class="opinion_number_star">
														<i class="icon-star"/></span>
													<div class="opinions_bar_container">
														<div class="opinions_bar_active">
															{{capture name="total5" assign="total5"}}
																{{$xml->getItemEscape("count(/shop/page/projector/comments/opinions/opinion[@note='5'])")}}
															{{/capture}}
															style="width:{{$xml->getItemEscape("$total5 div $totalOpinionsAll * 100")}}%"
														</div>
													</div>
													<span class="rate_count">{{$xml->getItemEscape("count(page/projector/comments/opinions/opinion[@note='5'])")}}</span>
												</div>
												<div class="opinion_rate" id="shop-opinion_rate_4">
													<span class="opinion_number">4</span>
													<span class="opinion_number_star">
														<i class="icon-star"/></span>
													<div class="opinions_bar_container">
														<div class="opinions_bar_active">
															{{capture name="total4" assign="total4"}}
																{{$xml->getItemEscape("count(/shop/page/projector/comments/opinions/opinion[@note='4'])")}}
															{{/capture}}
															style="width:{{$xml->getItemEscape("$total4 div $totalOpinionsAll * 100")}}%"
														</div>
													</div>
													<span class="rate_count">{{$xml->getItemEscape("count(page/projector/comments/opinions/opinion[@note='4'])")}}</span>
												</div>
												<div class="opinion_rate" id="shop-opinion_rate_3">
													<span class="opinion_number">3</span>
													<span class="opinion_number_star">
														<i class="icon-star"/></span>
													<div class="opinions_bar_container">
														<div class="opinions_bar_active">
															{{capture name="total3" assign="total3"}}
																{{$xml->getItemEscape("count(/shop/page/projector/comments/opinions/opinion[@note='3'])")}}
															{{/capture}}
															style="width:{{$xml->getItemEscape("$total3 div $totalOpinionsAll * 100")}}%"
														</div>
													</div>
													<span class="rate_count">{{$xml->getItemEscape("count(page/projector/comments/opinions/opinion[@note='3'])")}}</span>
												</div>
												<div class="opinion_rate" id="shop-opinion_rate_2">
													<span class="opinion_number">2</span>
													<span class="opinion_number_star">
														<i class="icon-star"/></span>
													<div class="opinions_bar_container">
														<div class="opinions_bar_active">
															{{capture name="total2" assign="total2"}}
																{{$xml->getItemEscape("count(/shop/page/projector/comments/opinions/opinion[@note='2'])")}}
															{{/capture}}
															style="width:{{$xml->getItemEscape("$total2 div $totalOpinionsAll * 100")}}%"
														</div>
													</div>
													<span class="rate_count">{{$xml->getItemEscape("count(page/projector/comments/opinions/opinion[@note='2'])")}}</span>
												</div>
												<div class="opinion_rate" id="shop-opinion_rate_1">
													<span class="opinion_number">1</span>
													<span class="opinion_number_star">
														<i class="icon-star"/></span>
													<div class="opinions_bar_container">
														<div class="opinions_bar_active">
															{{capture name="total1" assign="total1"}}
																{{$xml->getItemEscape("count(/shop/page/projector/comments/opinions/opinion[@note='1'])")}}
															{{/capture}}
															style="width:{{$xml->getItemEscape("$total1 div $totalOpinionsAll * 100")}}%"
														</div>
													</div>
													<span class="rate_count">{{$xml->getItemEscape("count(page/projector/comments/opinions/opinion[@note='1'])")}}</span>
												</div>
											</div>
											<div class="opinions-shop_guide">{{$txt['108631::56197_08_guide']}}
											</div>
										</div>
									</div>
								</div>
								<div class="opinions_list col-12 col-md-8 ml-md-auto">
									<div class="row">
										{{foreach from=$xml->getList("/shop/page/projector/comments/opinions/opinion") item=loop3384}}
											<div class="col-12" {{if $loop3384->getItem("@note") gt (string) 4.5}} data-opinion_rate="shop-opinion_rate_5"{{elseif $loop3384->getItem("@note") gt (string) 3.5}} data-opinion_rate="shop-opinion_rate_4"{{elseif $loop3384->getItem("@note") gt (string) 2.5}} data-opinion_rate="shop-opinion_rate_3"{{elseif $loop3384->getItem("@note") gt (string) 1.5}} data-opinion_rate="shop-opinion_rate_2"{{elseif $loop3384->getItem("@note") gt (string) 0.5}} data-opinion_rate="shop-opinion_rate_1"{{/if}}>
												<div class="opinions_element_holder d-flex mb-4 pb-4 align-items-start">
													{{if  $loop3384->getItem("@image_small") and !( $loop3384->getItem("@image_small")  == (string) '')}}
														<div class="opinions_element_photo">
															<a data-imagelightbox="o" href="{{$loop3384->getItemEscape("@image_large")}}" style="background-image: url('{{$loop3384->getItemEscape("@image_small")}}');">
																<img alt="{{$loop3384->getItemEscape("@client")}}" title="{{$loop3384->getItemEscape("@client")}}" src="{{$loop3384->getItemEscape("@image_large")}}"></img></a>
														</div>
													{{/if}}
													<div class="opinions_element">
														<div class="opinions_element_top justify-content-between">
															{{if ( $loop3384->getItem("@note"))}}
																<span class="opinions_element_stars">
																	<div class="note">
																		<span>
																			<i {{assign "classAttributeTmp45" ""}}{{capture name="classAttributeTmp45" assign="classAttributeTmp45"}}icon-star{{/capture}}{{if $loop3384->getItem("@note") gt (string) 0.5}}{{capture name="classAttributeTmp45" assign="classAttributeTmp45"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp45}}"></i>
																			<i {{assign "classAttributeTmp46" ""}}{{capture name="classAttributeTmp46" assign="classAttributeTmp46"}}icon-star{{/capture}}{{if $loop3384->getItem("@note") gt (string) 1.5}}{{capture name="classAttributeTmp46" assign="classAttributeTmp46"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp46}}"></i>
																			<i {{assign "classAttributeTmp47" ""}}{{capture name="classAttributeTmp47" assign="classAttributeTmp47"}}icon-star{{/capture}}{{if $loop3384->getItem("@note") gt (string) 2.5}}{{capture name="classAttributeTmp47" assign="classAttributeTmp47"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp47}}"></i>
																			<i {{assign "classAttributeTmp48" ""}}{{capture name="classAttributeTmp48" assign="classAttributeTmp48"}}icon-star{{/capture}}{{if $loop3384->getItem("@note") gt (string) 3.5}}{{capture name="classAttributeTmp48" assign="classAttributeTmp48"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp48}}"></i>
																			<i {{assign "classAttributeTmp49" ""}}{{capture name="classAttributeTmp49" assign="classAttributeTmp49"}}icon-star{{/capture}}{{if $loop3384->getItem("@note") gt (string) 4.5}}{{capture name="classAttributeTmp49" assign="classAttributeTmp49"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp49}}"></i></span>
																		<strong>{{$loop3384->getItemEscape("@note")}}/5</strong>
																	</div></span>
															{{/if}}
															<span class="opinion_date">{{$loop3384->getItemEscape("@date")}}</span>
														</div>
														<div class="opinions_element_text">{{$loop3384->getItem("text")}}
														</div>
														<div class="opinions_element_opinion_bottom">
															<div class="opinion_author">
																<b class="opinions_element_author_title">{{$txt['108631::56197_05']}}</b>
																<span class="opinions_element_author_desc">{{$loop3384->getItemEscape("@client")}}</span>
															</div>
															<div class="rate_opinion">
																<span>{{$txt['108631::56197_05_rate']}}</span>
																<a href="" class="opinion_rate_yes">
																	<input name="opinionState" type="hidden" value="positive"></input>{{$txt['108631::56197_05_rate_yes']}}
																	<span class="rate_count">{{$loop3384->getItemEscape("@rate_yes")}}</span></a>
																<a href="" class="opinion_rate_no">
																	<input name="opinionState" type="hidden" value="negative"></input>{{$txt['108631::56197_05_rate_no']}}
																	<span class="rate_count">{{$loop3384->getItemEscape("@rate_no")}}</span></a>
																<input name="opinionId" type="hidden" value="{{$loop3384->getItemEscape("@opinionId")}}"></input>
															</div>
														</div>
														{{if  $loop3384->getItem("response") and  $loop3384->getItem("response")  neq (string) ''}}
															<div class="opinion_response">
																<div class="opinion_response_top">
																	<b>{{$txt['108631::56197_08response']}}</b>
																	<span class="opinion_date">{{$loop3384->getItemEscape("response/@date")}}</span>
																</div>
																<div class="response_text">{{$loop3384->getItem("response")}}
																</div>
															</div>
														{{/if}}
													</div>
												</div>
											</div>
										{{/foreach}}
									</div>
									<div class="menu_messages_message d-none" id="no_opinions_of_type">{{$txt['108631::56197_08no_opinions']}}
									</div>
								</div>
							{{/if}}
							{{if !( $xml->getItem("page/projector/comments/opinionClient/opinion/@stat")  == (string) 'y')}}
								<div {{assign "classAttributeTmp50" ""}}{{capture name="classAttributeTmp50" assign="classAttributeTmp50"}}opinions_add_form col-12{{/capture}}{{if $xml->getItem("/shop/page/projector/comments/@all") gt (string) '0'}}{{capture name="classAttributeTmp50" assign="classAttributeTmp50"}}opinions_add_form d-none{{/capture}}{{/if}}  class="{{$classAttributeTmp50}}">
									<div class="big_label">
										{{if ( $xml->getItem("/shop/page/projector/comments/opinionClient/opinion/@stat")  == (string) 'n')}}
											{{$txt['108631::TXT_108631_change_opinion']}}
										{{else}}
											{{$txt['108631::TXT_108631_new_opinion']}}
										{{/if}}
									</div>
									<form class="row flex-column align-items-center shop_opinion_form" enctype="multipart/form-data" id="shop_opinion_form" action="/settings.php" method="post">
										<input type="hidden" name="product" value="{{$xml->getItemEscape("page/projector/product/@id")}}"></input>
										<div class="shop_opinions_notes col-12 col-sm-6">
											<div class="shop_opinions_name">{{$txt['108631::51408_002']}}
											</div>
											<div class="shop_opinions_note_items">
												<div class="opinion_note">
													{{capture name="starSelected" assign="starSelected"}}
														{{if  $xml->getItem("/shop/page/projector/comments/opinionClient/notes/note[@selected = 'true']/@value")}}
															{{$xml->getItemEscape("/shop/page/projector/comments/opinionClient/notes/note[@selected = 'true']/@value")}}
														{{else}}
															{{$xml->getItemEscape("count(/shop/page/projector/comments/opinionClient/notes/note)")}}
														{{/if}}
													{{/capture}}
													{{foreach from=$xml->getList("/shop/page/projector/comments/opinionClient/notes/note") item=loop3517}}
														<a {{assign "classAttributeTmp51" ""}}  href="#"{{capture name="classAttributeTmp51" assign="classAttributeTmp51"}}opinion_star{{/capture}}{{if $loop3517->getItem("@value") gt (string) $starSelected}}{{capture name="classAttributeTmp51" assign="classAttributeTmp51"}}opinion_star{{/capture}}{{else}}{{capture name="classAttributeTmp51" assign="classAttributeTmp51"}}opinion_star active{{/capture}}{{/if}} rel="{{$loop3517->getItemEscape("@value")}}" title=" {{$loop3517->getItemEscape("@value")}}{{$txt['108631::51408_002dz']}}{{$loop3517->getItemEscape("count(../note)")}} "  class="{{$classAttributeTmp51}}">
															<span>
																<i class="icon-star"/></span></a>
													{{/foreach}}
													<strong>{{$starSelected}}{{$txt['108631::51408_002dz']}}{{$xml->getItemEscape("count(/shop/page/projector/comments/opinionClient/notes/note)")}}</strong>
													<input {{assign "valueAttributeTmp71" ""}}  type="hidden" name="note"{{capture name="valueAttributeTmp71" assign="valueAttributeTmp71"}}{{$xml->getItemEscape("@value")}}{{/capture}}{{if $xml->getItem("/shop/page/projector/comments/opinionClient/notes/note/@selected") == (string) 'true'}}{{capture name="valueAttributeTmp71" assign="valueAttributeTmp71"}}{{$xml->getItemEscape("/shop/page/projector/comments/opinionClient/notes/note[@selected = 'true']/@value")}}{{/capture}}{{else}}{{capture name="valueAttributeTmp71" assign="valueAttributeTmp71"}}{{$xml->getItemEscape("count(/shop/page/projector/comments/opinionClient/notes/note)")}}{{/capture}}{{/if}}  value="{{$valueAttributeTmp71}}"></input>
												</div>
											</div>
										</div>
										<div class="form-group col-12 col-sm-7">
											<div class="has-feedback">
												<textarea {{assign "classAttributeTmp52" ""}}  id="addopp"{{capture name="classAttributeTmp52" assign="classAttributeTmp52"}}form-control{{/capture}} name="opinion" {{if $xml->getItem("/shop/page/projector/comments/opinionClient/opinion") and !( $xml->getItem("/shop/page/projector/comments/opinionClient/opinion") == (string) '')}}{{capture name="classAttributeTmp52" assign="classAttributeTmp52"}}form-control focused{{/capture}}{{/if}}  class="{{$classAttributeTmp52}}">{{$xml->getItemEscape("/shop/page/projector/comments/opinionClient/opinion")}}</textarea>
												<label for="opinion" class="control-label">{{$txt['108631::51408_003']}}
												</label>
												<span class="form-control-feedback"></span>
												{{if  $xml->getItem("/shop/page/projector/comments/opinionClient/opinion/@points")}}
													<strong class="opinions_points">{{literal}}+{{/literal}}
														{{if  $xml->getItem("substring-after(/shop/page/projector/comments/opinionClient/opinion/@points, '.')")  == (string) '00'}}
															{{$xml->getItemEscape("substring-before(/shop/page/projector/comments/opinionClient/opinion/@points, '.')")}}
														{{else}}
															{{$xml->getItemEscape("/shop/page/projector/comments/opinionClient/opinion/@points")}}
														{{/if}}
														{{$txt['108631::TXT_108631_affiliate_pkt']}}</strong>
												{{/if}}
											</div>
										</div>
										{{if ( $xml->getItem("page/projector/comments/opinionClient/image/@enabled") == (string)'true')}}
											<div class="opinion_add_photos col-12 col-sm-7">
												<div class="opinion_add_photos_wrapper d-flex align-items-center">
													<span class="opinion_add_photos_text">{{$txt['108631::53757_001']}}</span>
													<input class="opinion_add_photo" type="file" name="opinion_photo" {{if $xml->getItem("/shop/form_data/upload_file/max_filesize/@bytes")}} data-max_filesize="{{$xml->getItemEscape("/shop/form_data/upload_file/max_filesize/@bytes")}}" {{/if}}></input>
													{{if  $xml->getItem("/shop/page/projector/comments/opinionClient/image/@points")}}
														<strong class="opinions_points">{{literal}}+{{/literal}}
															{{if  $xml->getItem("substring-after(/shop/page/projector/comments/opinionClient/image/@points, '.')")  == (string) '00'}}
																{{$xml->getItemEscape("substring-before(/shop/page/projector/comments/opinionClient/image/@points, '.')")}}
															{{else}}
																{{$xml->getItemEscape("/shop/page/projector/comments/opinionClient/image/@points")}}
															{{/if}}
															{{$txt['108631::TXT_108631_affiliate_pkt']}}</strong>
													{{/if}}
												</div>
												{{if  $xml->getItem("/shop/page/projector/comments/opinionClient/image/@points")}}
													<div class="opinions_points_picture">{{$txt['108631::TXT_108631_opinions_points_desc']}}
														<strong>
															{{if  $xml->getItem("substring-after(/shop/page/projector/comments/opinionClient/image/@points, '.')")  == (string) '00'}}
																{{$xml->getItemEscape("substring-before(/shop/page/projector/comments/opinionClient/image/@points, '.')")}}
															{{else}}
																{{$xml->getItemEscape("/shop/page/projector/comments/opinionClient/image/@points")}}
															{{/if}}
															{{$txt['108631::TXT_108631_affiliate_pkt']}}</strong>{{$txt['108631::TXT_108631_opinions_points_desc2']}}
													</div>
												{{/if}}
											</div>
										{{/if}}
										{{if  $xml->getItem("/shop/page/projector/sender[@opinion_unregistered='true']")}}
											<div class="form-group col-12 col-sm-7">
												<div class="has-feedback has-required">
													<input id="addopinion_name" class="form-control" type="text" name="addopinion_name" value="" required="required"></input>
													<label for="addopinion_name" class="control-label">{{$txt['108631::TXT_108631_unregister_name']}}
													</label>
													<span class="form-control-feedback"></span>
												</div>
											</div>
											<div class="form-group col-12 col-sm-7">
												<div class="has-feedback has-required">
													<input id="addopinion_email" class="form-control" type="email" name="addopinion_email" value="" required="required"></input>
													<label for="addopinion_email" class="control-label">{{$txt['108631::TXT_108631_unregister_email']}}
													</label>
													<span class="form-control-feedback"></span>
												</div>
											</div>
										{{/if}}
										<div class="shop_opinions_button">
											<button {{assign "classAttributeTmp53" ""}}  type="submit" {{if $xml->getItem("/shop/page/projector/comments/opinionClient/opinion") and !( $xml->getItem("/shop/page/projector/comments/opinionClient/opinion") == (string) '')}} title="{{$txt['108631::54114_900b']}}"{{capture name="classAttributeTmp53" assign="classAttributeTmp53"}}btn opinions-shop_opinions_button_edit{{/capture}} {{$txt['108631::51408_004']}} {{else}} title="{{$txt['108631::54114_900']}}"{{capture name="classAttributeTmp53" assign="classAttributeTmp53"}}btn opinions-shop_opinions_button{{/capture}} {{$txt['108631::51408_004b']}} {{/if}}  class="{{$classAttributeTmp53}}">
											</button>
										</div>
									</form>
								</div>
							{{/if}}
						</section>
						{{if  $xml->getItem("/shop/page/projector/sender[@active='true']")}}
							{{if  $xml->getItem("/shop/page/projector/comments/opinions/opinion/response")}}
							{{/if}}
						{{/if}}
						<!--Facebook comments (projector_facebook_comments, 106713.1)-->
						{{if  $xml->getItem("page/facebook_comments")}}
							<div {{assign "classAttributeTmp54" ""}}{{capture name="classAttributeTmp54" assign="classAttributeTmp54"}}projector_fb_comments{{/capture}}{{if $xml->getItem("page/projector/products_associated_zone2/product")}}{{capture name="classAttributeTmp54" assign="classAttributeTmp54"}}projector_fb_comments_short{{/capture}}{{/if}} id="{{$txt['106713::62639_01']}}"  class="{{$classAttributeTmp54}}">
								<div {{assign "classAttributeTmp55" ""}}{{capture name="classAttributeTmp55" assign="classAttributeTmp55"}}projector_fb_comments_label{{/capture}}{{capture name="classAttributeTmp55" assign="classAttributeTmp55"}}big_label projector_fb_comments_label{{/capture}}  class="{{$classAttributeTmp55}}">{{$txt['106713::62639_00']}}
								</div>
								<div id="fb-root">
								</div>
								<script src="//connect.facebook.net/{{if $xml->getItem("/shop/language/@id") == (string) 'pol'}}pl_PL{{else}}en_US{{/if}}/all.js#xfbml=1">								</script>

								<div class="fb-comments" data-href="{{$xml->getItemEscape("/shop/@baseurl")}}{{$xml->getItemEscape("substring-after(/shop/page/projector/product/@link,'/')")}}" data-num-posts="{{$txt['106713::62639_02']}}" data-width="{{$txt['106713::62639_03']}}" data-colorscheme="{{$txt['106713::62639_04']}}">
								</div>
							</div>
						{{/if}}
						<!--Blog - wpisy powiązane z tym produktem (projector_blog_items, 106720.1)-->
						{{capture name="projector_blog_see_more" assign="projector_blog_see_more"}}
							{{$txt['106720::53698_xx']}}
						{{/capture}}
						{{if count( $xml->getList("/shop/page/projector/blog_entries/item"))  gt (string) 0}}
							<div id="projector_blog" class="mb-4 article_wrapper">
								<h2 class="label_wrapper">
									<a {{assign "hrefAttributeTmp68" ""}}{{capture name="hrefAttributeTmp68" assign="hrefAttributeTmp68"}}/blog-list.php{{/capture}} class="big_label" {{if $xml->getItem("/shop/page/mainpage2/@link") and $xml->getItem("/shop/page/mainpage2/@link") neq (string)''}}{{capture name="hrefAttributeTmp68" assign="hrefAttributeTmp68"}}{{$xml->getItemEscape("/shop/page/mainpage2/@link")}}{{/capture}}{{/if}} title="{{$txt['106720::53716_label']}}"  href="{{$hrefAttributeTmp68}}">{{$txt['106720::53825_001']}}</a>
								</h2>
								<div class="row article_sub_wrapper col-bg-1">
									{{foreach from=$xml->getList("/shop/page/projector/blog_entries/item") item=loop3700}}
										<div class="article_element_wrapper col-12 col-md-6">
											<div class="date datasquare">{{$loop3700->getItem("date")}}
											</div>
											{{if ( $loop3700->getItem("link/@href"))  neq (string) ''}}
												<h3 class="article_name_wrapper">
													<a class="article_name" href="{{$loop3700->getItemEscape("link/@href")}}" title="{{$loop3700->getItem("title")}}">{{$loop3700->getItem("title")}}</a>
												</h3>
											{{else}}
												{{if  $loop3700->getItem("title")  neq (string) ''}}
													<h3 class="article_name_wrapper">
														<span class="article_name">{{$loop3700->getItem("title")}}</span>
													</h3>
												{{/if}}
											{{/if}}
											{{if  $loop3700->getItem("image/@src") and  $loop3700->getItem("image/@src") neq (string)''}}
												{{if ( $loop3700->getItem("link/@href"))  neq (string) ''}}
													{{literal}}
													<a class="article_image_wrapper" href="{{/literal}}{{$loop3700->getItemEscape("link/@href")}}{{literal}}" {{/literal}}{{else}}{{literal}}
<span class="article_image_wrapper" {{/literal}}{{/if}}{{literal}}>{{/literal}}
														<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/loader.gif?r=1570606968" data-src-small="{{$loop3700->getItem("image/@src")}}" data-src="{{$loop3700->getItem("image/@src")}}" class="article_image b-lazy" alt="{{$loop3700->getItem("title/text()")}}"></img>
														{{if ( $loop3700->getItem("link/@href"))  neq (string) ''}}
															{{literal}}</a>{{/literal}}
													{{else}}
														{{literal}}</span>{{/literal}}
												{{/if}}
											{{/if}}
											<div class="article_text_wrapper">
												<div class="description_text">{{$loop3700->getItem("description")}}
												</div>
												{{if  $loop3700->getItem("more/@href") and $projector_blog_see_more}}
													<div class="see_more_wrapper">
														<a class="see_more_link" href="{{$loop3700->getItemEscape("more/@href")}}" title="{{$loop3700->getItem("title")}}">{{$txt['106720::53698_xx']}}</a>
													</div>
												{{/if}}
											</div>
										</div>
									{{/foreach}}
								</div>
							</div>
						{{/if}}
						<!--CMS w karcie produktu dla rozmiarów (projector_cms_sizes, 106721.1)-->
						{{if  $xml->getItem("/shop/page/projector/product/sizes_chart")}}
							<div class="component_projector_sizes_chart" id="{{$txt['106721::56195_01']}}">
								{{if  $xml->getItem("/shop/page/projector/product/sizes_chart/descriptions/description")}}
									<table {{assign "classAttributeTmp13" ""}}{{capture name="classAttributeTmp13" assign="classAttributeTmp13"}}table-condensed{{/capture}}{{capture name="classAttributeTmp13" assign="classAttributeTmp13"}}ui-responsive table-stroke ui-table ui-table-reflow table-condensed{{/capture}}  class="{{$classAttributeTmp13}}">
										<thead>
											<tr>
												<th class="table-first-column">{{$txt['106721::56195_03']}}
												</th>
												{{foreach from=$xml->getList("/shop/page/projector/product/sizes_chart/descriptions/description") item=loop3775}}
													<th>{{$loop3775->getItem("@name")}}
													</th>
												{{/foreach}}
											</tr>
										</thead>
										<tbody>
											{{foreach from=$xml->getList("/shop/page/projector/product/sizes_chart/sizes/size") item=loop3785}}
												<tr>
													<td class="table-first-column">{{$loop3785->getItem("@description")}}
													</td>
													{{foreach from=$loop3785->getList("description") item=loop3791}}
														<td>{{$loop3791->getItem("@text")}}
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
							<div class="component_projector_sizes_chart" id="{{$txt['106721::56195_01']}}">
								<div class="sizes_chart_cms">{{$xml->getItem("/shop/page/projector/text_sizesgroup")}}
								</div>
							</div>
						{{/if}}
						<!--player video w karcie produktu (projector_video, 107469.1)-->
						{{if ( $xml->getItem("/shop/page/projector/product/enclosures/documents")) or ( $xml->getItem("/shop/page/projector/product/enclosures/audio"))  or ( $xml->getItem("/shop/page/projector/product/enclosures/other"))  or ( $xml->getItem("/shop/page/projector/product/enclosures/images_attachments/item")) or ( $xml->getItem("/shop/page/projector/product/enclosures/video/item"))}}
							<div style="display:none;" class="projector_video_cover">
							</div>
							<div class="projector_video">
								<a href="javascript:;" class="projector_video_close">
									<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/zamknij.gif?r=1570606968" alt="Zamknij" class="projector_photo_close_55916"/></a>
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
						{{/if}}
						<!--Zdjęcia produktu (projector_photos, 109932.1)-->
						<!--Statystyki dotyczące produktu (projector_productstatistics, 106723.1)-->
						{{if  $xml->getItem("page/projector/bookmarklets/item")}}
							<div class="bookmarklets_big">
								<ul>
									{{foreach from=$xml->getList("page/projector/bookmarklets/item") item=loop3891}}
										<li>{{$loop3891->getItem("text()")}}
										</li>
									{{/foreach}}
								</ul>
							</div>
						{{/if}}
						{{if  $xml->getItem("/shop/page/projector/bookmarklets/item/text")}}
						{{/if}}
						{{include file="component_menu_tree5_63237.tpl"}}
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
				{{include file="component_menu_alert_106620.tpl"}}
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
