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
						{{include file="component_menu_order_progress_68745.tpl"}}
						{{include file="component_menu_messages_67953.tpl"}}
						<!--Koszyk - cms (basketedit_cms, 57234.1)-->
						{{if  $xml->getItem("page/basket-details/text/body")}}
							<div class="n57234">
								<div class="n57234_sub">
									<div {{assign "classAttributeTmp4" ""}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}n57234_bottom{{/capture}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}n57234_bottom cm{{/capture}}  class="{{$classAttributeTmp4}}">{{$xml->getItem("page/basket-details/text/body")}}
									</div>
								</div>
							</div>
						{{/if}}
						<!--Lista produktów w koszyku (basketedit_productslist, 75357.1)-->
						{{if  $xml->getItem("page[@type='basketedit']")}}
							{{capture name="specialOffer" assign="specialOffer"}}
								{{$txt['75357::55925_ofertaspecjalna']}}
							{{/capture}}
							{{capture name="txt_50001_025a" assign="txt_50001_025a"}}
								{{$txt['75357::50001_025a']}}
							{{/capture}}
							{{capture name="txt_67332_am" assign="txt_67332_am"}}
								{{$txt['75357::67332_am']}}
							{{/capture}}
							{{capture name="txt_67332_wm" assign="txt_67332_wm"}}
								{{$txt['75357::67332_wm']}}
							{{/capture}}
							<script type="text/javascript" class="ajaxLoad">
            var only_virtual_literal_1 = '{{$txt['75357::50001_onlyvirtual_1']}}';
            var only_virtual_literal_2 = '{{$txt['75357::50001_onlyvirtual_2']}}';
        							</script>

							<script type="text/javascript" class="ajaxLoad">
            var client_files_link = '{{$xml->getItemEscape("/shop/client_files/@link_to_download")}}';
            var client_files_link_txt = '{{$txt['75357::50001_virtual_link']}}';
        							</script>

							{{capture name="setIconLarge" assign="setIconLarge"}}
								{{$txt['75357::57649_setIconLarge']}}
							{{/capture}}
							{{capture name="wholesalerPrice" assign="wholesalerPrice"}}
								{{$txt['75357::57649_wholesalerPrice']}}
							{{/capture}}
							{{capture name="hideLimit" assign="hideLimit"}}
								{{$txt['75357::57649_hideLimit']}}
							{{/capture}}
							<form class="basketedit_productslist" action="/basketchange.php?type=multiproduct" method="post" enctype="multipart/form-data">
								<div id="basketedit_productslist" class="basketedit_productslist">
									<h2 class="big_label">{{$txt['75357::50001_01a']}}
									</h2>
									<table>
										<tr class="basketedit_productslist_label">
											<th colspan="2" class="productslist_product_name">{{$txt['75357::50001_03']}}
											</th>
											{{if  $xml->getItem("/shop/basket/@product_comment_active")  == (string) 'y' and count( $xml->getList("/shop/page/basket-details/product/price[not(@special_offer='true')]"))  gt (string) 0}}
												<th class="productslist_product_comment">{{$txt['75357::50001_04']}}
												</th>
											{{/if}}
											<th class="productslist_product_prices">{{$txt['75357::50001_05']}}
											</th>
											<th class="productslist_product_quantity">{{$txt['75357::50001_06']}}
											</th>
											<th class="productslist_product_sum">{{$txt['75357::50001_07']}}
											</th>
											{{if count( $xml->getList("/shop/page/basket-details/product/price[not(@special_offer='true')]"))  gt (string) 0}}
												<th class="productslist_product_calculate">{{$txt['75357::50001_zm']}}
												</th>
											{{/if}}
											<th class="productslist_product_action">{{$txt['75357::50001_08a']}}
											</th>
										</tr>
										{{foreach from=$xml->getList("page/basket-details/product") item=loop316}}
											<tr {{assign "classAttributeTmp5" ""}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}productslist_item{{/capture}}{{if $loop316->getItem("price/@special_offer") == (string)'true' and $specialOffer}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}productslist_item special_offer{{/capture}}{{/if}}  class="{{$classAttributeTmp5}}">
												<td class="productslist_product_photo">
													<a href="{{$loop316->getItemEscape("@link")}}">
														<img {{if $setIconLarge}} src="{{$loop316->getItemEscape("icon")}}" {{else}} src="{{$loop316->getItemEscape("iconsmall")}}" {{/if}} alt="{{$loop316->getItem("name/text()")}}"></img></a>
												</td>
												<td class="productslist_product_name">
													<h3>
														<a href="{{$loop316->getItemEscape("@link")}}">{{$loop316->getItem("name/text()")}}</a>
														{{if  $loop316->getItem("@product_type")  == (string) 'product_virtual'}}
															<i class="product_virtual">{{$txt['75357::50001_z004v']}}</i>
														{{/if}}
														{{if  $loop316->getItem("@product_type")  == (string) 'product_service'}}
															<i class="product_service">{{$txt['75357::50001_z004s']}}</i>
														{{/if}}
													</h3>
													{{if  $loop316->getItem("price/@special_offer") == (string)'true' and $specialOffer}}
														<div class="productslist_special_offer">
															<span>{{$txt['75357::50001_99_specialoffer_1']}}
																<b class="special_offer_value">{{$loop316->getItemEscape("price/@yousave_formatted")}}</b>{{$txt['75357::50001_99_specialoffer_2']}}
																<b>{{$loop316->getItemEscape("price/@yousave_percent")}}%</b>{{$txt['75357::50001_99_specialoffer_3']}}</span>
														</div>
													{{else}}
														{{if !( $loop316->getItem("@barcode")  == (string)'')}}
															<div class="productslist_product_barcode">
																<span>{{$txt['75357::50001_99']}}</span>{{$loop316->getItemEscape("@barcode")}}
															</div>
														{{/if}}
														{{if !( $loop316->getItem("size/@type") == (string)'uniw')}}
															<div class="productslist_product_size">
																<span>{{$txt['75357::50001_004']}}</span>{{$loop316->getItemEscape("size/@description")}}
															</div>
														{{/if}}
														{{if ( $loop316->getItem("version")) and (!( $loop316->getItem("version/@product_name") == (string)''))}}
															<div class="productslist_product_version">
																<span>{{$loop316->getItemEscape("version/@name")}}:</span>{{$loop316->getItemEscape("version/@product_name")}}
															</div>
														{{/if}}
														{{if  $loop316->getItem("@product_type")  == (string) 'product_bundle'}}
															<div class="productslist_product_bundle">{{$txt['75357::50001_z001']}}
																{{foreach from=$loop316->getList("bundled/product") item=loop392}}
																	<span>{{$loop392->getItemEscape("name/text()")}}
																		{{if !( $loop392->getItem("size/@type") == (string)'uniw') or (( $loop392->getItem("version")) and (!( $loop392->getItem("version/@product_name") == (string)'')))}}
																			{{$txt['75357::50001_z002']}}
																			{{if !( $loop392->getItem("size/@type") == (string)'uniw')}}
																				{{$txt['75357::50001_004']}}{{$loop392->getItemEscape("size/@description")}}
																			{{/if}}
																			{{if !( $loop392->getItem("size/@type") == (string)'uniw') and (( $loop392->getItem("version")) and (!( $loop392->getItem("version/@product_name") == (string)'')))}}
																				{{$txt['75357::50001_z003']}}
																			{{/if}}
																			{{if ( $loop392->getItem("version")) and (!( $loop392->getItem("version/@product_name") == (string)''))}}
																				{{$loop392->getItemEscape("version/@name")}}:{{$loop392->getItemEscape("version/@product_name")}}
																			{{/if}}
																			{{$txt['75357::50001_z004']}}
																		{{/if}}
																		{{if  $loop392->getItem("@product_type")  == (string) 'product_virtual'}}
																			<i class="product_virtual">{{$txt['75357::50001_z004v']}}</i>
																		{{/if}}
																		{{if  $loop392->getItem("@product_type")  == (string) 'product_service'}}
																			<i class="product_service">{{$txt['75357::50001_z004s']}}</i>
																		{{/if}}
																		</span>
																{{/foreach}}
															</div>
														{{/if}}
														{{if  $loop316->getItem("change_group")}}
															<div class="productslist_product_info">{{$txt['75357::50001_023aukcja']}}
															</div>
														{{/if}}
														{{if ( $loop316->getItem("size/@orderedsum"))  gt (string) ( $loop316->getItem("size/@amount")) and !( $loop316->getItem("size/@amount")  == (string) '0') and !( $loop316->getItem("size/@amount")  == (string) '-1')}}
															<div class="productslist_product_info">{{$txt['75357::50001_021']}}{{$loop316->getItemEscape("size/@amount")}}{{$txt['75357::50001_022']}}
															</div>
														{{elseif ( $loop316->getItem("size/@own_stocks_amount")  gt (string) 0) and ( $loop316->getItem("size/@ordered")  gt (string)  $loop316->getItem("size/@own_stocks_amount")) and $txt_67332_am}}
															<div class="productslist_product_info basket_info">{{$loop316->getItem("$txt_67332_am")}}{{$loop316->getItemEscape("size/@own_stocks_amount")}}{{literal}}{{/literal}}{{$loop316->getItemEscape("size/@unit")}}{{$loop316->getItem("$txt_67332_wm")}}
															</div>
														{{elseif  $loop316->getItem("size/@amount")  == (string) '0'}}
															<div class="productslist_product_info">{{$txt['75357::50001_023']}}
															</div>
														{{elseif ( $loop316->getItem("size/@ordered_points")) and !( $loop316->getItem("/shop/basket/@client_points")  gte (string) 0)}}
															<div class="productslist_product_info">{{$txt['75357::50001_024']}}
															</div>
														{{elseif ( $loop316->getItem("/shop/page/rebates/code_details/@active")  == (string) 'y') and (( $loop316->getItem("/shop/rebate_code/shipping_cost_rebate/@active") == (string)'n') and ( $loop316->getItem("price/@rebate_code_active") == (string)'n'))}}
															<div class="productslist_product_info">{{$txt['75357::50001_024X']}}
															</div>
														{{elseif  $loop316->getItem("@product_type") == (string)'product_virtual'}}
															<div class="productslist_product_info virtual">{{$txt['75357::50001_virtual_1']}}
																<a class="productslist_product_info_link" href="{{$loop316->getItemEscape("/shop/client_files/@link_to_download")}}">{{$txt['75357::50001_virtual_link']}}</a>{{$txt['75357::50001_virtual_2']}}
															</div>
														{{/if}}
														{{if ( $loop316->getItem("size/@to_little_for_gross")  == (string) 'true') and !(( $loop316->getItem("size/@orderedsum"))  gt (string) ( $loop316->getItem("size/@amount")) and !( $loop316->getItem("size/@amount")  == (string) '0') and !( $loop316->getItem("size/@amount")  == (string) '-1'))}}
															<div class="productslist_product_info">{{$txt['75357::50001_023a']}}{{$loop316->getItemEscape("size/@amount_wholesale")}}{{$txt['75357::50001_023b']}}{{$loop316->getItemEscape("size/@ordered - size/@amount_wholesale")}}{{$txt['75357::50001_023c']}}
															</div>
														{{/if}}
														{{if $txt_50001_025a and ( $loop316->getItem("price/@advanceworth")  gt (string) 0)}}
															<div class="productslist_product_advance">
																{{if  $loop316->getItem("/shop/page/basket-details/summary/money/@advance_mode")  == (string) 'default' or  $loop316->getItem("/shop/page/basket-details/summary/money/@advance_mode")  == (string) 'none'}}
																	{{if  $loop316->getItem("/shop/page/basket-details/summary/money/@cash_on_delivery")  == (string) 'true' and  $loop316->getItem("/shop/page/basket-details/summary/money/@prepaid")  == (string) 'false'}}
																		{{$txt['75357::50001_025a']}}{{$loop316->getItemEscape("price/@advanceworth_formatted")}}
																	{{elseif  $loop316->getItem("/shop/page/basket-details/summary/money/@cash_on_delivery")  == (string) 'false' and  $loop316->getItem("/shop/page/basket-details/summary/money/@prepaid")  == (string) 'true'}}
																		{{$txt['75357::50001_025b']}}{{$loop316->getItemEscape("price/@advanceworth_formatted")}}
																	{{elseif  $loop316->getItem("/shop/page/basket-details/summary/money/@cash_on_delivery")  == (string) 'true' and  $loop316->getItem("/shop/page/basket-details/summary/money/@prepaid")  == (string) 'true'}}
																		{{$txt['75357::50001_025c']}}{{$loop316->getItemEscape("price/@advanceworth_formatted")}}
																	{{/if}}
																{{elseif  $loop316->getItem("/shop/page/basket-details/summary/money/@advance_mode")  == (string) 'total'}}
																	{{$txt['75357::50001_025c']}}{{$loop316->getItemEscape("price/@advanceworth_formatted")}}
																{{/if}}
															</div>
														{{/if}}
													{{/if}}
												</td>
												{{if  $loop316->getItem("/shop/basket/@product_comment_active")  == (string) 'y' and (!( $loop316->getItem("price/@special_offer") == (string)'true') or !($specialOffer))}}
													<td class="productslist_product_comment">
														<a href="#addComment" title="{{$txt['75357::50001_11']}}">{{$txt['75357::50001_12']}}</a>
													</td>
												{{/if}}
												<td class="productslist_product_prices">
													{{if  $loop316->getItem("size/@ordered_points")}}
														<del>
															{{if ( $loop316->getItem("/shop/basket/@wholesaler")  == (string) 'true') and !($wholesalerPrice)}}
																{{$loop316->getItemEscape("price/@price_net_formatted")}}
															{{else}}
																{{$loop316->getItemEscape("price/@price_formatted")}}
															{{/if}}
															</del>
														<span>{{$loop316->getItemEscape("price/@points")}}{{$txt['75357::55925_pkt']}}</span>
													{{else}}
														{{if  $loop316->getItem("price/@beforerebate")}}
															<del>{{$loop316->getItemEscape("price/@beforerebate_formatted")}}</del>
														{{/if}}
														<span>
															{{if ( $loop316->getItem("/shop/basket/@wholesaler")  == (string) 'true') and !($wholesalerPrice)}}
																{{$loop316->getItemEscape("price/@price_net_formatted")}}
															{{else}}
																{{$loop316->getItemEscape("price/@price_formatted")}}
															{{/if}}
															</span>
														{{if  $loop316->getItem("price/rebateNumber")}}
															<small class="showTip_basket">{{$txt['75357::n56465_mniej']}}</small>
															<div class="tooltipContent">
																{{foreach from=$loop316->getList("price/rebateNumber/rebate") item=loop535}}
																	<div>{{$txt['75357::n56465_od']}}
																		<strong>{{$loop535->getItemEscape("@threshold")}}{{literal}}{{/literal}}{{$loop535->getItemEscape("../../../size/@unit")}}</strong>{{$txt['75357::n56465_cenanetto']}}
																		<strong>{{$loop535->getItemEscape("@price_formatted")}}{{$txt['75357::235364_462']}}</strong>{{$txt['75357::n56465_rabat']}}
																		<strong>{{$loop535->getItemEscape("@value")}}{{$txt['75357::n56465_procent']}}</strong>
																	</div>
																{{/foreach}}
															</div>
														{{/if}}
													{{/if}}
												</td>
												<td class="productslist_product_quantity">
													<div {{if $loop316->getItem("@product_type") == (string)'product_virtual'}} style="display:none;" {{/if}}>
														{{if  $loop316->getItem("change_group/@id")}}
															class="productslist_product_quantityproductslist_product_quantity_change"
															<input type="hidden" name="product[{{$loop316@iteration}}]" value="{{$loop316->getItemEscape("@id")}}"></input>
															<input type="hidden" name="size[{{$loop316@iteration}}]" value="{{$loop316->getItemEscape("size/@type")}}"></input>
															{{if  $loop316->getItem("additional/@hash")}}
																<input type="hidden" name="additional[{{$loop316@iteration}}]" value="{{$loop316->getItemEscape("additional/@hash")}}"></input>
															{{/if}}
															{{if  $loop316->getItem("size/@ordered_points")}}
																<input type="hidden" value="1" name="forpoints[{{$loop316@iteration}}]"></input>
															{{/if}}
															<input {{assign "valueAttributeTmp30" ""}}  type="hidden" name="set_quantity[{{$loop316@iteration}}]" {{if $loop316->getItem("size/@ordered_points")}}{{capture name="valueAttributeTmp30" assign="valueAttributeTmp30"}}{{$loop316->getItemEscape("size/@ordered_points")}}{{/capture}}{{else}}{{capture name="valueAttributeTmp30" assign="valueAttributeTmp30"}}{{$loop316->getItemEscape("size/@ordered")}}{{/capture}}{{/if}}  value="{{$valueAttributeTmp30}}"></input>
															<strong>
																{{if  $loop316->getItem("size/@ordered_points")}}
																	{{$loop316->getItemEscape("size/@ordered_points")}}
																{{else}}
																	{{$loop316->getItemEscape("size/@ordered")}}
																{{/if}}
																<span>
																	{{if !( $loop316->getItem("size/@ordered")  gt (string) 1)}}
																		{{$loop316->getItemEscape("size/@unit_singular")}}
																	{{else}}
																		{{$loop316->getItemEscape("size/@unit")}}
																	{{/if}}
																	</span></strong>
															{{if  $loop316->getItem("change_group/@changelink")}}
																<a class="btn-small productslist_change_product" href="{{$loop316->getItemEscape("change_group/@changelink")}}">{{$txt['75357::50001_99wy']}}</a>
															{{/if}}
														{{else}}
															<input type="hidden" name="product[{{$loop316@iteration}}]" value="{{$loop316->getItemEscape("@id")}}"></input>
															<input type="hidden" name="size[{{$loop316@iteration}}]" value="{{$loop316->getItemEscape("size/@type")}}"></input>
															{{if  $loop316->getItem("additional/@hash")}}
																<input type="hidden" name="additional[{{$loop316@iteration}}]" value="{{$loop316->getItemEscape("additional/@hash")}}"></input>
															{{/if}}
															{{if  $loop316->getItem("size/@ordered_points")}}
																<input type="hidden" value="1" name="forpoints[{{$loop316@iteration}}]"></input>
															{{/if}}
															<span class="productslist_quantity">
																<a href="#delQuantity" class="delQuantity">{{$txt['75357::50001_081']}}</a>
																<input {{assign "valueAttributeTmp31" ""}}  type="text" {{if $loop316->getItem("price/@special_offer") == (string)'true' and $specialOffer}} readonly="readonly" {{/if}} name="set_quantity[{{$loop316@iteration}}]" class="quantity_{{$loop316->getItemEscape("@id")}}" {{if $loop316->getItem("size/@ordered_points")}}{{capture name="valueAttributeTmp31" assign="valueAttributeTmp31"}}{{$loop316->getItemEscape("size/@ordered_points")}}{{/capture}}{{else}}{{capture name="valueAttributeTmp31" assign="valueAttributeTmp31"}}{{$loop316->getItemEscape("size/@ordered")}}{{/capture}}{{/if}} data-amount="{{$loop316->getItemEscape("size/@amount")}}" data-unit_sellby="{{$loop316->getItemEscape("size/@unit_sellby")}}" data-unit="{{$loop316->getItemEscape("size/@unit")}}" data-unit_precision="{{$loop316->getItemEscape("size/@unit_precision")}}" {{if $loop316->getItem("order_quantity_range/max_quantity_per_order")}} data-max_q="{{$loop316->getItemEscape("order_quantity_range/max_quantity_per_order")}}" {{/if}}{{if $loop316->getItem("order_quantity_range/max_size_quantity_per_order")}} data-max_s="{{$loop316->getItemEscape("order_quantity_range/max_size_quantity_per_order")}}" {{/if}}{{if $loop316->getItem("order_quantity_range/min_quantity_per_order")}} data-min_q="{{$loop316->getItemEscape("order_quantity_range/min_quantity_per_order")}}" {{/if}}{{if $loop316->getItem("order_quantity_range/min_size_quantity_per_order")}} data-min_s="{{$loop316->getItemEscape("order_quantity_range/min_size_quantity_per_order")}}" {{/if}}  value="{{$valueAttributeTmp31}}"></input>
																<a href="#addQuantity" class="addQuantity">{{$txt['75357::50001_082']}}</a>
																<i class="productslist_product_unit">
																	{{if !( $loop316->getItem("size/@ordered")  gt (string) 1)}}
																		{{$loop316->getItemEscape("size/@unit_singular")}}
																	{{else}}
																		{{$loop316->getItemEscape("size/@unit")}}
																	{{/if}}
																	</i></span>
															{{if !( $loop316->getItem("size/@unit_sellby")  == (string) '1')}}
																<div class="productslist_product_sellby_info">{{$txt['75357::50001_900bb_xxx']}}{{$loop316->getItemEscape("size/@unit_sellby")}}{{literal}}{{/literal}}
																	{{if !( $loop316->getItem("size/@ordered")  gt (string) 1)}}
																		{{$loop316->getItemEscape("size/@unit_singular")}}
																	{{else}}
																		{{$loop316->getItemEscape("size/@unit")}}
																	{{/if}}
																</div>
															{{/if}}
														{{/if}}
													</div>
													{{if  $loop316->getItem("@product_type") == (string)'product_virtual'}}
														<div class="virtual_quantity">{{$txt['75357::50001_virtual_qty']}}
														</div>
													{{/if}}
												</td>
												<td class="productslist_product_sum">
													{{if  $loop316->getItem("size/@ordered_points")}}
														<span>{{$loop316->getItemEscape("price/@points_sum")}}{{$txt['75357::55925_pkt']}}</span>
													{{else}}
														<span>
															{{if ( $loop316->getItem("/shop/basket/@wholesaler")  == (string) 'true') and !($wholesalerPrice)}}
																{{$loop316->getItemEscape("price/@worth_net_formatted")}}
															{{else}}
																{{$loop316->getItemEscape("price/@worth_formatted")}}
															{{/if}}
															</span>
													{{/if}}
												</td>
												{{if !( $loop316->getItem("price/@special_offer") == (string)'true') or ( $loop316->getItem("price/@special_offer") == (string)'true' and !($specialOffer))}}
													<td class="productslist_product_calculate">
														<button class="product_calculate" type="submit" title="{{$txt['75357::50001_555']}}">{{$txt['75357::55925_przelicz']}}
														</button>
													</td>
												{{/if}}
												<td class="productslist_product_action">
													{{if  $loop316->getItem("price/@special_offer") == (string)'true' and $specialOffer}}
														{{$txt['75357::55925_ofertaspecjalna']}}
													{{else}}
														<a {{assign "hrefAttributeTmp28" ""}}{{assign "classAttributeTmp6" ""}}{{capture name="hrefAttributeTmp28" assign="hrefAttributeTmp28"}}{{/capture}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}productslist_product_remove{{/capture}}{{if $loop316->getItem("/shop/page/basket-details/@reduction_amount_disabled") == (string) 'true' and $loop316->getItem("order_quantity_range/min_quantity_per_order/text()")}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}productslist_product_remove disabled{{/capture}}{{/if}}{{if $loop316->getItem("removeall_points")}}{{capture name="hrefAttributeTmp28" assign="hrefAttributeTmp28"}}{{$loop316->getItemEscape("removeall_points")}}{{/capture}}{{else}}{{capture name="hrefAttributeTmp28" assign="hrefAttributeTmp28"}}{{$loop316->getItemEscape("removeall")}}{{/capture}}{{/if}}  class="{{$classAttributeTmp6}}"  href="{{$hrefAttributeTmp28}}">{{$txt['75357::55925_usun']}}</a>
													{{/if}}
												</td>
											</tr>
											{{if  $loop316->getItem("/shop/basket/@product_comment_active")  == (string) 'y' and (!( $loop316->getItem("price/@special_offer") == (string)'true') or !($specialOffer))}}
												<tr class="productslist_comment">
													<td colspan="8" class="productslist_comment">
														<div class="prodl_comment_top" {{if $loop316->getItem("comment") or $loop316->getItem("order_files")}} style="display:block"{{/if}}>
														</div>
														<div class="prodl_comment" {{if $loop316->getItem("comment") or $loop316->getItem("order_files")}} style="display:block"{{/if}}>
															<div class="prodl_comment_left">
																<span>{{$txt['75357::50001_09pl01']}}</span>
																<textarea name="comment[{{$loop316@iteration}}]">
																	{{if  $loop316->getItem("comment")}}
																		{{$loop316->getItemEscape("comment")}}
																	{{/if}}
																	</textarea>
																<button class="btn-small" type="submit">{{$txt['75357::50001_10']}}
																</button>
																<a href="#clearComment">{{$txt['75357::50001_clear']}}</a>
															</div>
															<div class="prodl_comment_right">
																<span>{{$txt['75357::50001_09pl02']}}</span>
																{{if  $loop316->getItem("order_files/file")}}
																	<ol>
																		{{foreach from=$loop316->getList("order_files/file") item=loop800}}
																			<li>
																				<a {{assign "hrefAttributeTmp29" ""}}  class="previewFile"{{capture name="hrefAttributeTmp29" assign="hrefAttributeTmp29"}}#previewFile{{/capture}}{{if $loop800->getItem("@preview") == (string) 'true'}} rel="{{$loop800->getItemEscape("@path")}}" {{else}}{{capture name="hrefAttributeTmp29" assign="hrefAttributeTmp29"}}{{$loop800->getItemEscape("@path")}}{{/capture}} target="_blank" {{/if}}  href="{{$hrefAttributeTmp29}}">{{$loop800->getItemEscape("@file")}}</a>
																				<a class="deleteFile" href="{{$loop800->getItemEscape("@delete_link")}}" title="{{$txt['75357::50001_f_01']}}">{{$txt['75357::50001_f_02']}}</a>
																			</li>
																		{{/foreach}}
																	</ol>
																{{/if}}
																<div class="prodl_comment_foto">
																	<input type="file" name="comment_photo" {{if $loop316->getItem("/shop/form_data/upload_file/max_filesize/@bytes")}} data-max_filesize="{{$loop316->getItemEscape("/shop/form_data/upload_file/max_filesize/@bytes")}}" {{/if}} name="comment_photo[{{$loop316->getItemEscape("@id")}}][{{$loop316->getItemEscape("size/@type")}}][{{if $loop316->getItem("additional/@hash")}}{{$loop316->getItemEscape("additional/@hash")}}{{else}}0{{/if}}][]" size="{{$txt['75357::54114_input']}}"></input>
																</div>
																<div class="prodl_comment_button">
																	<a {{assign "classAttributeTmp7" ""}}  href="#saveQuantity"{{capture name="classAttributeTmp7" assign="classAttributeTmp7"}}saveQuantityFile{{/capture}}{{capture name="classAttributeTmp7" assign="classAttributeTmp7"}}btn-small saveQuantityFile{{/capture}}  class="{{$classAttributeTmp7}}">{{$txt['75357::50001_f_03']}}</a>
																</div>
															</div>
															<div style="clear: both">
															</div>
														</div>
													</td>
												</tr>
											{{/if}}
										{{/foreach}}
										<tr class="productslist_tools_bottom">
											<td colspan="8" {{if count( $xml->getList("page/basket-details/product")) == (string) 1}} class="productslist_tools_bottom_one_product"{{/if}}>
												<a {{assign "classAttributeTmp8" ""}}  href="#addSelectedToFavorite"{{capture name="classAttributeTmp8" assign="classAttributeTmp8"}}addSelectedToFavorite{{/capture}}{{capture name="classAttributeTmp8" assign="classAttributeTmp8"}}btn-small addSelectedToFavorite{{/capture}}  class="{{$classAttributeTmp8}}">{{$txt['75357::50001_08']}}</a>
												<a {{assign "classAttributeTmp9" ""}}  href="#removeSelected"{{capture name="classAttributeTmp9" assign="classAttributeTmp9"}}removeSelected{{/capture}}{{capture name="classAttributeTmp9" assign="classAttributeTmp9"}}btn-small removeSelected{{/capture}}  class="{{$classAttributeTmp9}}">{{$txt['75357::50001_09']}}</a>
												<a {{assign "classAttributeTmp10" ""}}  href="#saveQuantity"{{capture name="classAttributeTmp10" assign="classAttributeTmp10"}}saveQuantity{{/capture}}{{capture name="classAttributeTmp10" assign="classAttributeTmp10"}}btn-small saveQuantity{{/capture}}  class="{{$classAttributeTmp10}}">{{$txt['75357::50001_10']}}</a>
												<a {{assign "classAttributeTmp11" ""}}  href="#addWrapper"{{capture name="classAttributeTmp11" assign="classAttributeTmp11"}}addWrapper{{/capture}}{{capture name="classAttributeTmp11" assign="classAttributeTmp11"}}btn-small addWrapper{{/capture}}  class="{{$classAttributeTmp11}}">
													<i class="icon icon-gift"/>{{$txt['75357::50001_101']}}</a>
											</td>
										</tr>
									</table>
								</div>
								{{if  $xml->getItem("/shop/page/basket-details/rebate_local/active/selected/product/@id")  == (string)  $xml->getItem("/shop/page/basket-details/rebate_local/active/products/product/@id")}}
									<div id="basketedit_productslist_gift" style="display: none;">
										<input type="hidden" name="product[0]" value="{{$xml->getItemEscape("/shop/page/basket-details/rebate_local/active/selected/product/@id")}}"></input>
										<input type="hidden" name="size[0]" value="{{$xml->getItemEscape("/shop/page/basket-details/rebate_local/active/selected/product/@size")}}"></input>
										<input type="hidden" name="set_quantity[0]" value="1"/>
										<input type="hidden" name="gift[0]" value="1"/>
									</div>
								{{elseif  $xml->getItem("/shop/page/basket-details/rebate_local/selected/@product")}}
									<div id="basketedit_productslist_gift" class="nogiftforyou" style="display: none;">
										<input type="hidden" name="product[0]" value="{{$xml->getItemEscape("/shop/page/basket-details/rebate_local/selected/@product")}}"></input>
										<input type="hidden" name="size[0]" value="{{$xml->getItemEscape("/shop/page/basket-details/rebate_local/selected/@size")}}"></input>
										<input type="hidden" name="set_quantity[0]" value="0"/>
										<input type="hidden" name="gift[0]" value="1"/>
									</div>
								{{else}}
								{{/if}}
							</form>
							<div class="wrappers_list" style="display: none;">
							</div>
							<div id="alert_cover" class="projector_alert_55916" style="display:none" onclick="Alertek.hide_alert();">
								NIEDASIE
							</div>
							<script type="text/javascript" class="ajaxLoad">
                getWrappers($('div.wrappers_list')); 
                 basketedit_productslist_init();
         							</script>

						{{/if}}
						<!--Podsumowanie koszyka (basketedit_summary, 75344.1)-->
						{{capture name="txt_60826_advance_a" assign="txt_60826_advance_a"}}
							{{$txt['75344::60826_advance_a']}}
						{{/capture}}
						{{capture name="txt_60826_advance_header" assign="txt_60826_advance_header"}}
							{{$txt['75344::60826_advance_header']}}
						{{/capture}}
						{{capture name="show_always_instalment_68242" assign="show_always_instalment_68242"}}
							{{$txt['75344::show_always_instalment']}}
						{{/capture}}
						{{capture name="hours_68242" assign="hours_68242"}}
							{{$txt['75344::68242_hours']}}
						{{/capture}}
						<script>
            var currency_format = '';
            {{if  $xml->getItem("/shop/currency/option[@selected='true']/@currency_format")}}
                var currency_format = '{{$xml->getItemEscape("/shop/currency/option[@selected='true']/@currency_format")}}';
            {{/if}}
            var currency_before_value = '';
            {{if  $xml->getItem("/shop/currency/option[@selected='true']/@currency_before_value")}}
                var currency_before_value = {{$xml->getItemEscape("/shop/currency/option[@selected='true']/@currency_before_value")}};
            {{/if}}
            var currency_space = '';
            {{if  $xml->getItem("/shop/currency/option[@selected='true']/@currency_space")}}
                var currency_space = {{$xml->getItemEscape("/shop/currency/option[@selected='true']/@currency_space")}};
            {{/if}}
            var currency_decimal_separator = '{{$xml->getItemEscape("/shop/currency/option[@selected='true']/@currency_decimal_separator")}}';
            var currency_grouping_separator = '{{$xml->getItemEscape("/shop/currency/option[@selected='true']/@currency_grouping_separator")}}';
            var symbol = '{{$xml->getItemEscape("/shop/currency/option[@selected='true']/@symbol")}}';
        						</script>

						{{if  $xml->getItem("page[@type='basketedit']")}}
							{{capture name="wholesalerPrice2" assign="wholesalerPrice2"}}
								{{$txt['75344::63643_wholesalerPrice2']}}
							{{/capture}}
							{{capture name="immediately_txt" assign="immediately_txt"}}
								{{$txt['75344::63643_immediately']}}
							{{/capture}}
							<div class="basketedit_summary">
								<div {{assign "classAttributeTmp12" ""}}{{capture name="classAttributeTmp12" assign="classAttributeTmp12"}}basketedit_summary_sub{{/capture}}{{capture name="classAttributeTmp12" assign="classAttributeTmp12"}}basketedit_summary_sub{{$txt['75344::n55363_class1']}}{{/capture}}  class="{{$classAttributeTmp12}}">
									<div {{assign "classAttributeTmp13" ""}}{{capture name="classAttributeTmp13" assign="classAttributeTmp13"}}basketedit_summary_left{{/capture}}{{capture name="classAttributeTmp13" assign="classAttributeTmp13"}}basketedit_summary_left{{$txt['75344::n55363_class2']}}{{/capture}}  class="{{$classAttributeTmp13}}">
										{{if $txt_60826_advance_a and ( $xml->getItem("/shop/page/basket-details/summary/money/@advance_mode")  == (string) 'total' and  $xml->getItem("/shop/page/basket-details/summary/money/@prepaid")  == (string) 'true' and  $xml->getItem("/shop/page/basket-details/summary/money/@advance")  gt (string) 0)}}
											<div class="summary_left_advance">
												{{if $txt_60826_advance_header}}
													<div class="summary_left_advance_header">{{$txt_60826_advance_header}}
													</div>
												{{/if}}
												{{$txt['75344::60826_advance_info']}}
											</div>
										{{/if}}
										{{if  $xml->getItem("basket/@toshippingfree") gt (string) 0 and !( $xml->getItem("basket/@toshippingfree") == (string) '')}}
											<div class="toshippingfree">
												<div class="toshippingfree_sub">{{$txt['75344::60826_shipping']}}
													<span class="price">{{$xml->getItemEscape("basket/@shippinglimitfree_formatted")}}</span>
												</div>{{$txt['75344::52900_400']}}
												<b>{{$xml->getItemEscape("/shop/basket/@toshippingfree_formatted")}}</b>{{$txt['75344::52900_401']}}
											</div>
										{{/if}}
										{{if  $xml->getItem("/shop/client_data/client_balance/limit/@value")  gt (string) '0'}}
											<div class="basketedit_limit_section">
												<div class="basketedit_product_summary">
													<label>{{$txt['75344::53706_001a_limit']}}
													</label>
													<strong class="limit_total">{{$xml->getItemEscape("/shop/client_data/client_balance/limit/@value_formatted")}}</strong>
												</div>
												<div class="basketedit_product_summary">
													<label>{{$txt['75344::53706_001a_limit_touse']}}
													</label>
													<strong class="limit_touse">{{$xml->getItemEscape("/shop/client_data/client_balance/limit/@to_use_formatted")}}</strong>
												</div>
											</div>
										{{/if}}
										{{if ( $xml->getItem("page/basket-details/summary/points/@debit")) and ( $xml->getItem("page/basket-details/summary/points/@debit")  gt (string) 0)}}
											<div class="basketedit_summary_debit">{{$txt['75344::basketedit_summary_points_gain1']}}
												<b>{{$xml->getItemEscape("format-number(page/basket-details/summary/points/@debit, '#')")}}
													<span>{{$txt['75344::basketedit_points_pts']}}</span></b>{{$txt['75344::basketedit_summary_points_gain2']}}
												{{if  $xml->getItem("/shop/basket/@client_points")  neq (string) '0'}}
													{{$txt['75344::basketedit_points_info1']}}
													<b>{{$xml->getItemEscape("format-number(/shop/basket/@client_points, '#')")}}
														<span>{{$txt['75344::basketedit_points_pts']}}</span></b>{{$txt['75344::basketedit_dot']}}
												{{/if}}
											</div>
										{{/if}}
										{{if  $xml->getItem("page/basket-details/summary/payment/instalment")}}
											<div id="n67367_instalment" class="n67367_instalment">
												<h3>{{$txt['75344::n67367_raty_label']}}
												</h3>
												{{foreach from=$xml->getList("/shop/page/basket-details/summary/payment/instalment[@selected='true']") item=loop1001}}
													<div class="instalment_value_1">
														{{if  $loop1001->getItem("@value_formatted")}}
															<img class="instalment_value_1" src="{{$loop1001->getItemEscape("@gfx_small")}}" alt="{{$loop1001->getItemEscape("@name")}}"></img>
															<span class="instalment_value_1">{{$txt['75344::n67367_mbraty_txt']}}
																<b>{{$loop1001->getItemEscape("@value_formatted")}}</b>{{$txt['75344::n67367_mbraty_txt2']}}</span>
															<span class="n67367_section_txt">{{$loop1001->getItemEscape("@name")}}{{$txt['75344::n67367_raty_opis']}}</span>
															<small class="instalment_value_2">{{$txt['75344::n67367_mbraty_txt3']}}{{$loop1001->getItemEscape("@minprice")}}{{$loop1001->getItemEscape("/shop/currency/@name")}}{{$txt['75344::n67367_mbraty_txt4']}}{{$loop1001->getItemEscape("@maxprice")}}{{$loop1001->getItemEscape("/shop/currency/@name")}}</small>
															{{if  $loop1001->getItem("note")}}
																<span class="btn_note">{{$txt['75344::n67367_mbraty_txt5']}}</span>
																<div class="tooltipContent">{{$loop1001->getItem("note/text()")}}
																</div>
															{{/if}}
														{{else}}
															<span class="n67367_section_txt">{{$loop1001->getItemEscape("@name")}}{{$txt['75344::n67367_raty_opis']}}</span>
														{{/if}}
													</div>
												{{/foreach}}
												<ul class="n67367_instalment">
													{{foreach from=$xml->getList("page/basket-details/summary/payment/instalment") item=loop1034}}
														<li>
															<a onclick="calculate_instalments('{{$loop1034->getItemEscape("@minprice")}}','{{$loop1034->getItemEscape("@maxprice")}}','{{$loop1034->getItemEscape("@priceTotal")}}','{{$loop1034->getItemEscape("@alert")}}',$(this).attr('data-window'),'{{$loop1034->getItemEscape("@maxquantity")}}','{{$loop1034->getItemEscape("@name")}}'); return false;" href="javascript:{{$loop1034->getItemEscape("@calculate")}}" data-window="{{$loop1034->getItemEscape("@calculate")}}">
																<span>{{$txt['75344::n67367_oblicz_rate']}}{{$loop1034->getItemEscape("@name")}}</span>
																<img src="{{$loop1034->getItemEscape("@gfx")}}" alt="{{$loop1034->getItemEscape("@name")}}"></img></a>
														</li>
													{{/foreach}}
												</ul>
											</div>
										{{/if}}
									</div>
									<div {{assign "classAttributeTmp14" ""}}{{capture name="classAttributeTmp14" assign="classAttributeTmp14"}}basketedit_summary_right{{/capture}}{{capture name="classAttributeTmp14" assign="classAttributeTmp14"}}basketedit_summary_right{{$txt['75344::n55363_class3']}}{{/capture}}  class="{{$classAttributeTmp14}}">
										<div class="basketedit_calculations">
											<div class="basketedit_product_summary">
												<label>{{$txt['75344::53706_001a']}}
												</label>
												<strong>{{$xml->getItemEscape("/shop/page/basket-details/summary/money/@beforerebate_formatted")}}</strong>
											</div>
											{{if !(( $xml->getItem("basket/@shipping_undefined")  == (string) 'true') or ( $xml->getItem("basket/@hide_shipping_cost")  == (string) 'true') or ( $xml->getItem("basket/@hide_cost") == (string)'true'))}}
												<div class="basketedit_product_summary">
													<label>
														{{if  $xml->getItem("basket/@shipping_after_rebate")  gt (string) '0'}}
															{{$txt['75344::53706_002od']}}
														{{else}}
															{{$txt['75344::53706_002']}}
														{{/if}}
													</label>
													<strong {{if !( $xml->getItem("basket/@shipping") gt (string) $xml->getItem("basket/@shipping_after_rebate")) and $xml->getItem("basket/@shipping_after_rebate") gt (string) '0'}} class="plus_sign" {{/if}}>
														{{if  $xml->getItem("basket/@shipping")  gt (string)  $xml->getItem("basket/@shipping_after_rebate")}}
															<span {{if $xml->getItem("basket/@shipping_after_rebate") gt (string) '0'}} class="plus_sign"{{/if}}>
																<del>{{$xml->getItemEscape("basket/@shipping_formatted")}}</del>{{literal}}{{/literal}}</span>
														{{/if}}
														{{if  $xml->getItem("basket/@shipping_after_rebate")  gt (string) '0'}}
															{{$xml->getItemEscape("basket/@shipping_after_rebate_formatted")}}
														{{elseif  $xml->getItem("basket/@shipping")  == (string) ''}}
															{{$txt['75344::n53833_nodata']}}
														{{else}}
															{{$txt['75344::53706_002b']}}
														{{/if}}
														</strong>
												</div>
											{{/if}}
											{{if  $xml->getItem("/shop/page/basket-details/summary/money/@total_rebate") gt (string)0}}
												<div class="basketedit_rabats_summary">
													<label>{{$txt['75344::53706_001b']}}
													</label>
													<strong class="minus_sign">{{$xml->getItemEscape("/shop/page/basket-details/summary/money/@total_rebate_formatted")}}</strong>
												</div>
											{{/if}}
											{{capture name="balance_to_pay" assign="balance_to_pay"}}
												{{$xml->getItemEscape("/shop/page/basket-details/summary/money/@balance_to_pay")}}
											{{/capture}}
											{{if $balance_to_pay}}
												<div class="basketedit_product_summary">
													{{if  $xml->getItem("/shop/page/basket-details/summary/money/@balance_to_pay")}}
														{{if $balance_to_pay  gt (string) 0}}
															<label>{{$txt['75344::53706_001a_saldo']}}
															</label>
															<strong {{assign "classAttributeTmp15" ""}}{{capture name="classAttributeTmp15" assign="classAttributeTmp15"}}saldo_value{{/capture}}{{capture name="classAttributeTmp15" assign="classAttributeTmp15"}}saldo_value minus_sign{{/capture}}  class="{{$classAttributeTmp15}}">{{$xml->getItemEscape("/shop/page/basket-details/summary/money/@balance_to_pay_formatted")}}</strong>
														{{elseif !($balance_to_pay  gt (string) 0) and !($balance_to_pay  == (string) '0.00')}}
															<label>{{$txt['75344::53706_001a_saldo2']}}
															</label>
															<strong {{assign "classAttributeTmp16" ""}}{{capture name="classAttributeTmp16" assign="classAttributeTmp16"}}saldo_value{{/capture}}{{capture name="classAttributeTmp16" assign="classAttributeTmp16"}}saldo_value plus_sign{{/capture}}  class="{{$classAttributeTmp16}}">{{$xml->getItemEscape("substring-after(/shop/page/basket-details/summary/money/@balance_to_pay_formatted, '-')")}}</strong>
														{{/if}}
													{{/if}}
												</div>
											{{/if}}
											<div style="clear:both">
											</div>
										</div>
										<div class="basketedit_total_summary">
											<label>{{$txt['75344::53706_001c']}}
											</label>
											<strong>{{$xml->getItemEscape("/shop/page/basket-details/summary/money/@to_pay_formatted")}}
												{{if !( $xml->getItem("/shop/client_data/@uses_vat") == (string)'false')}}
													{{$txt['75344::53833_brutto']}}
												{{/if}}
												</strong>
											{{if ( $xml->getItem("basket/@points_used")) and ( $xml->getItem("basket/@points_used")  neq (string) 0)}}
												<b>{{$txt['75344::53833_andpts']}}
													<span>{{$xml->getItemEscape("basket/@points_used")}}{{$txt['75344::53833_justpts']}}</span></b>
											{{/if}}
										</div>
										{{if $txt_60826_advance_a and ( $xml->getItem("/shop/page/basket-details/summary/money/@advance")  gt (string) 0)}}
											<div class="basketedit_product_summary advance">
												{{if  $xml->getItem("/shop/page/basket-details/summary/money/@advance_mode")  == (string) 'default' or  $xml->getItem("/shop/page/basket-details/summary/money/@advance_mode")  == (string) 'none'}}
													{{if  $xml->getItem("/shop/page/basket-details/summary/money/@cash_on_delivery")  == (string) 'true' and  $xml->getItem("/shop/page/basket-details/summary/money/@prepaid")  == (string) 'false'}}
														<label class="txt_wrap">{{$txt['75344::60826_advance_a']}}
														</label>
														<strong>{{$xml->getItemEscape("/shop/page/basket-details/summary/money/@advance_formatted")}}</strong>
													{{elseif  $xml->getItem("/shop/page/basket-details/summary/money/@cash_on_delivery")  == (string) 'false' and  $xml->getItem("/shop/page/basket-details/summary/money/@prepaid")  == (string) 'true'}}
														<label class="txt_wrap">{{$txt['75344::60826_advance_b']}}
														</label>
														<strong>{{$xml->getItemEscape("/shop/page/basket-details/summary/money/@advance_formatted")}}</strong>
													{{elseif  $xml->getItem("/shop/page/basket-details/summary/money/@cash_on_delivery")  == (string) 'true' and  $xml->getItem("/shop/page/basket-details/summary/money/@prepaid")  == (string) 'true'}}
														<label class="txt_wrap">{{$txt['75344::60826_advance_c']}}
														</label>
														<strong>{{$xml->getItemEscape("/shop/page/basket-details/summary/money/@advance_formatted")}}</strong>
													{{/if}}
												{{elseif  $xml->getItem("/shop/page/basket-details/summary/money/@advance_mode")  == (string) 'total'}}
													<label class="txt_wrap">{{$txt['75344::60826_advance_c']}}
													</label>
													<strong>{{$xml->getItemEscape("/shop/page/basket-details/summary/money/@advance_formatted")}}</strong>
												{{/if}}
											</div>
										{{/if}}
									</div>
								</div>
							</div>
							<div {{assign "classAttributeTmp17" ""}}{{capture name="classAttributeTmp17" assign="classAttributeTmp17"}}basketedit_summary_buttons table_display{{/capture}}{{capture name="classAttributeTmp17" assign="classAttributeTmp17"}}basketedit_summary_buttons table_display summary_buttons{{/capture}}  class="{{$classAttributeTmp17}}">
								<div class="btn_wrapper">
									<a {{assign "classAttributeTmp18" ""}}{{capture name="classAttributeTmp18" assign="classAttributeTmp18"}}button_go_shopping{{/capture}}{{capture name="classAttributeTmp18" assign="classAttributeTmp18"}}btn btn-inverse button_go_shopping{{/capture}} href=" {{if $xml->getItem("/shop/lastsearch/text()")}}{{$xml->getItemEscape("/shop/lastsearch/text()")}}{{elseif $xml->getItem("/shop/page/basket-details/direct-navigation/@url")}}{{$xml->getItemEscape("/shop/page/basket-details/direct-navigation/@url")}}{{else}}/{{/if}} "  class="{{$classAttributeTmp18}}">{{$txt['75344::53706_004']}}</a>
								</div>
								{{if  $xml->getItem("/shop/basket/shipping_time/@days") and !( $xml->getItem("basket/@shipping_undefined")  == (string) 'true')}}
									<div class="basketedit_summary_shipment_time" {{if $xml->getItem("/shop/basket/delay_time[@unknown_delivery_time='true']")}} style="display:none;" {{/if}}{{capture name="wys_1_68242" assign="wys_1_68242"}}{{$txt['75344::53706_00wys_1']}}{{/capture}} >
										{{if $wys_1_68242 and ( $xml->getItem("/shop/basket/shipping_time/@week_amount")  == (string) 0) and ( $xml->getItem("/shop/basket/shipping_time/@week_day"))}}
											{{$txt['75344::53706_00wys_0']}}
											{{if  $xml->getItem("/shop/basket/shipping_time/@today")  == (string) 'true'}}
												{{$txt['75344::53706_00wys_1']}}
											{{elseif  $xml->getItem("/shop/basket/shipping_time/@week_day")  == (string) 1}}
												{{$txt['75344::53706_00wys_2']}}
											{{elseif  $xml->getItem("/shop/basket/shipping_time/@week_day")  == (string) 2}}
												{{$txt['75344::53706_00wys_3']}}
											{{elseif  $xml->getItem("/shop/basket/shipping_time/@week_day")  == (string) 3}}
												{{$txt['75344::53706_00wys_4']}}
											{{elseif  $xml->getItem("/shop/basket/shipping_time/@week_day")  == (string) 4}}
												{{$txt['75344::53706_00wys_5']}}
											{{elseif  $xml->getItem("/shop/basket/shipping_time/@week_day")  == (string) 5}}
												{{$txt['75344::53706_00wys_6']}}
											{{elseif  $xml->getItem("/shop/basket/shipping_time/@week_day")  == (string) 6}}
												{{$txt['75344::53706_00wys_7']}}
											{{elseif  $xml->getItem("/shop/basket/shipping_time/@week_day")  == (string) 7}}
												{{$txt['75344::53706_00wys_8']}}
											{{/if}}
										{{elseif $immediately_txt and ( $xml->getItem("/shop/basket/shipping_time/@days")  == (string) 0) and ( $xml->getItem("/shop/basket/shipping_time/@hours")  == (string) 0) and ( $xml->getItem("/shop/basket/shipping_time/@minutes")  == (string) 0)}}
											{{$immediately_txt}}
										{{else}}
											{{$txt['75344::53706_003']}}
											<b>
												{{if ( $xml->getItem("/shop/basket/shipping_time/@days")  == (string) 0) and ( $xml->getItem("/shop/basket/shipping_time/@hours")  == (string) 0) and ( $xml->getItem("/shop/basket/shipping_time/@minutes")  == (string) 0)}}
													{{$txt['75344::53706_003c24']}}
												{{/if}}
												{{if  $xml->getItem("/shop/basket/shipping_time/@days")  gt (string) 0}}
													{{$xml->getItemEscape("/shop/basket/shipping_time/@days")}}
													{{if  $xml->getItem("/shop/basket/shipping_time/@days")  == (string)'1'}}
														{{$txt['75344::53706_003c']}}
													{{else}}
														{{$txt['75344::53706_003b']}}
													{{/if}}
												{{/if}}
												{{if $hours_68242}}
													{{if  $xml->getItem("/shop/basket/shipping_time/@hours")  gt (string) 0}}
														{{$xml->getItemEscape("/shop/basket/shipping_time/@hours")}}
														{{if  $xml->getItem("/shop/basket/shipping_time/@hours")  gt (string) 1}}
															{{$hours_68242}}
														{{else}}
															{{$txt['75344::53706_003godz']}}
														{{/if}}
													{{/if}}
												{{else}}
													{{if  $xml->getItem("/shop/basket/shipping_time/@hours")  gt (string) 0}}
														{{$xml->getItemEscape("/shop/basket/shipping_time/@hours")}}{{$txt['75344::53706_003godz']}}
													{{/if}}
												{{/if}}
												{{if  $xml->getItem("/shop/basket/shipping_time/@minutes")  gt (string) 0}}
													{{$xml->getItemEscape("/shop/basket/shipping_time/@minutes")}}{{$txt['75344::53706_003min']}}
												{{/if}}
												</b>
										{{/if}}
									</div>
								{{/if}}
								<div class="btn_wrapper">
									<a {{assign "classAttributeTmp19" ""}}{{capture name="classAttributeTmp19" assign="classAttributeTmp19"}}n53706_button1 btn_arrow{{/capture}} href="/order1.php" id="basket_go_next"{{capture name="classAttributeTmp19" assign="classAttributeTmp19"}}btn-large btn_arrow n53706_button1 {{/capture}}{{if $xml->getItem("/shop/order_edit/@order_id")}}{{capture name="classAttributeTmp19" assign="classAttributeTmp19"}}btn-large n53706_button1 btn_arrow basketedit_change_order{{/capture}}{{/if}}{{if $xml->getItem("/shop/page/communicates/warning[@type='order_minimal_wholesale_blocked']")}}{{capture name="classAttributeTmp19" assign="classAttributeTmp19"}}btn-large n53706_button1 btn_arrow basketedit_disable{{/capture}} onclick="Alertek.show_alert('{{$txt['75344::w0000_1']}} {{if $signbeforeprice == (string) 'true'}}{{$xml->getItemEscape("/shop/currency/@name")}}{{$signbetweenpricecurrency}}{{/if}}{{$xml->getItemEscape("/shop/page/communicates/warning/@value")}}{{if $signbeforeprice == (string) 'false'}}{{$signbetweenpricecurrency}}{{$xml->getItemEscape("/shop/currency/@name")}}{{/if}}');" {{/if}}  class="{{$classAttributeTmp19}}">{{$txt['75344::53706_005']}}</a>
								</div>
							</div>
						{{/if}}
						<script>
            init_basketedit_summary();
            var client_data_uses_vat = '{{$xml->getItemEscape("/shop/client_data/@uses_vat")}}';
        						</script>

						<!--Rabaty na stronie koszyka (basketedit_rebates, 75342.1)-->
						{{capture name="showGifts" assign="showGifts"}}
							{{$txt['75342::basketedit_showGifts']}}
						{{/capture}}
						{{if  $xml->getItem("/shop/page[@type='basketedit']")}}
							{{if  $xml->getItem("/shop/page/rebates[@rebates_codes='y']")}}
								<div class="basketedit_rebatecodes_outline">
									{{if  $xml->getItem("/shop/page/rebates/code_details[@active='y']")}}
										<div class="basketedit_rebatecode_title">
											<span class="basketedit_rebatecode_title">{{$txt['75342::basketedit_rebatecode_accepted']}}</span>
											<span class="basketedit_rebatecode_value">{{$xml->getItemEscape("/shop/page/rebates/code_details/@number")}}</span>
											<div class="basketedit_rebatecode_action">
												<a id="a_remove_code" href="#">{{$txt['75342::57228_remove_code']}}</a>
												<a id="a_change_code" href="#">{{$txt['75342::57228_a_change_code']}}</a>
											</div>
											<form action="/settings.php?from=basket" method="post" id="change_code">
												<input class="basketedit_rebatecode_input" name="rebates_codes" type="text" value=""/>
												<input id="global_rebates_codes" name="global_rebates_codes" value="add" type="hidden"/>
												<input {{assign "valueAttributeTmp32" ""}}{{assign "classAttributeTmp20" ""}}{{capture name="classAttributeTmp20" assign="classAttributeTmp20"}}basketedit_change_code{{/capture}} type="submit"{{capture name="valueAttributeTmp32" assign="valueAttributeTmp32"}}{{/capture}}{{capture name="classAttributeTmp20" assign="classAttributeTmp20"}}btn-small basketedit_change_code{{/capture}}{{capture name="valueAttributeTmp32" assign="valueAttributeTmp32"}}{{$txt['75342::57228_change_code']}}{{/capture}}  class="{{$classAttributeTmp20}}"  value="{{$valueAttributeTmp32}}"></input>
											</form>
										</div>
										<div class="basketedit_rebatecode_r">
											{{if  $xml->getItem("/shop/page/rebates/code_details/@min_order")  gt (string) 0}}
												<div class="basketedit_rebatecode_title_out">
													<span class="basketedit_rebatecode_title">{{$txt['75342::basketedit_min_order']}}</span>
													<span class="basketedit_rebatecode_value">{{$xml->getItemEscape("/shop/page/rebates/code_details/@min_order")}}{{$signbetweenpricecurrency}}{{$xml->getItemEscape("/shop/currency/@name")}}</span>
												</div>
											{{/if}}
											{{if  $xml->getItem("/shop/page/rebates/code_details/@expires")}}
												<div class="basketedit_rebatecode_title_out">
													<span class="basketedit_rebatecode_title">{{$txt['75342::basketedit_rebatecode_expires']}}</span>
													<span class="basketedit_rebatecode_value">{{$xml->getItemEscape("/shop/page/rebates/code_details/@expires")}}</span>
												</div>
											{{/if}}
											<a {{assign "classAttributeTmp21" ""}}  href="/client-rebate.php"{{capture name="classAttributeTmp21" assign="classAttributeTmp21"}}basketedit_client_rebate{{/capture}} id="basketedit_client_rebate"{{capture name="classAttributeTmp21" assign="classAttributeTmp21"}}btn-small basketedit_client_rebate{{/capture}} title="{{$txt['75342::basketedit_client_rebate_title']}}"  class="{{$classAttributeTmp21}}">{{$txt['75342::basketedit_client_rebate']}}</a>
										</div>
									{{/if}}
									{{if  $xml->getItem("/shop/page/rebates/code_details[@active='n']")}}
										{{if  $xml->getItem("/shop/rebate_code_delete_client_advanced_rebate[@active='y']")}}
											<div id="basketedit_rebatecode_activate_info" style="display:none;">{{$txt['75342::text_57854_1']}}
											</div>
										{{/if}}
										<span class="basketedit_rebatecode_activate_txt">{{$txt['75342::basketedit_rebatecode_givecode']}}</span>
										<form action="/settings.php?from=basket" method="post">{{$txt['75342::text_57854']}}
											<input onclick="$('#basketedit_rebatecode_activate_info').fadeIn('slow');" class="basketedit_rebatecode_input" name="rebates_codes" type="text" value=""/>
											<input id="global_rebates_codes" name="global_rebates_codes" value="add" type="hidden"/>
											<input {{assign "valueAttributeTmp33" ""}}{{assign "classAttributeTmp22" ""}}{{capture name="classAttributeTmp22" assign="classAttributeTmp22"}}basketedit_submit_code{{/capture}} type="submit"{{capture name="valueAttributeTmp33" assign="valueAttributeTmp33"}}{{/capture}}{{capture name="classAttributeTmp22" assign="classAttributeTmp22"}}btn-small basketedit_submit_code{{/capture}}{{capture name="valueAttributeTmp33" assign="valueAttributeTmp33"}}{{$txt['75342::57228_02989']}}{{/capture}}  class="{{$classAttributeTmp22}}"  value="{{$valueAttributeTmp33}}"></input>
										</form>
										<a {{assign "classAttributeTmp23" ""}}  href="/client-rebate.php"{{capture name="classAttributeTmp23" assign="classAttributeTmp23"}}basketedit_client_rebate{{/capture}}{{capture name="classAttributeTmp23" assign="classAttributeTmp23"}}btn-small basketedit_client_rebate{{/capture}} title="{{$txt['75342::basketedit_client_rebate_title']}}"  class="{{$classAttributeTmp23}}">{{$txt['75342::basketedit_client_rebate_0']}}</a>
									{{/if}}
								</div>
							{{/if}}
							{{if ( $xml->getItem("/shop/rebatesLocal") and ( $xml->getItem("/shop/rebatesLocal/rebate/@value")  gt (string) 0 )) or  $xml->getItem("/shop/page/basket-details/rebate_local/active/products/product") or  $xml->getItem("/shop/page/basket-details/rebate_local/rebates/rebate/products/product") or  $xml->getItem("/shop/page/rebates_for_points/rebate")}}
								<div id="basketedit_gifts" class="bg_alter">
									{{if ( $xml->getItem("/shop/rebatesLocal") and ( $xml->getItem("/shop/rebatesLocal/rebate/@value")  gt (string) 0 )) or  $xml->getItem("/shop/rebatecode/@code")}}
										<div class="basket_rabates col-lg-4 col-md-6 col-xs-12" {{if $xml->getItem("/shop/page/basket-details/rebate_local/active/products/product") or $xml->getItem("/shop/page/basket-details/rebate_local/rebates/rebate/products/product")}} STYLE="float: right;" {{/if}}>
											{{if  $xml->getItem("/shop/rebatesLocal") and ( $xml->getItem("/shop/rebatesLocal/rebate/@value")  gt (string) 0 )}}
												<div class="basket_rabates_label">{{$txt['75342::31019_001']}}
												</div>
												<table class="menu_rebates">
													<tr>
														<th>
															<span>{{$txt['75342::31019_002']}}</span>
														</th>
														<th class="menu_rebates_value">
															<span>{{$txt['75342::31019_003']}}</span>
														</th>
													</tr>
													{{foreach from=$xml->getList("/shop/rebatesLocal/rebate[@value > 0 ]") item=loop1375}}
														<tr {{if $loop1375->getItem("@selected") == (string) 'selected'}} class="selected" {{/if}}>
															<td class="menu_rebates_threshold">{{$loop1375->getItemEscape("format-number(@threshold, '#')")}}{{literal}}{{/literal}}{{$loop1375->getItemEscape("/shop/currency/@name")}}
																{{if !( $loop1375->getItem("@selected")  == (string) 'selected') and  $loop1375->getItem("@left")  gt (string) 0}}
																	{{$txt['75342::31019_005aa']}}
																	<span>{{$txt['75342::31019_005ab']}}{{$loop1375->getItemEscape("@left_formatted")}}</span>
																{{/if}}
															</td>
															<td class="menu_rebates_value">
																{{if  $loop1375->getItem("@selected")  == (string) 'selected'}}
																	<strong>{{$txt['75342::31019_005a']}}</strong>
																{{/if}}
																{{if  $loop1375->getItem("contains(@value, '.00')")}}
																	{{$loop1375->getItemEscape("format-number(@value, '#')")}}{{$txt['75342::31019_005']}}
																{{else}}
																	{{$loop1375->getItemEscape("@value")}}{{$txt['75342::31019_005']}}
																{{/if}}
															</td>
														</tr>
													{{/foreach}}
												</table>
											{{/if}}
										</div>
									{{/if}}
									{{if  $xml->getItem("/shop/page/basket-details/rebate_local/active/products/product") or  $xml->getItem("/shop/page/basket-details/rebate_local/rebates/rebate/products/product")}}
										<div class="basketedit_gifts_label col-lg-8 col-md-6 col-xs-12">
											<strong>{{$txt['75342::basketedit_gift_00']}}</strong>
											<span>{{$txt['75342::basketedit_gift_01']}}</span>
											{{if !($showGifts  == (string) '1')}}
												<a {{assign "classAttributeTmp24" ""}}  href="#showGifts"{{capture name="classAttributeTmp24" assign="classAttributeTmp24"}}btn-small basketedit_gifts_btn{{/capture}}{{capture name="classAttributeTmp24" assign="classAttributeTmp24"}}btn btn-inverse basketedit_gifts_btn{{/capture}}{{if $xml->getItem("/shop/page/basket-details/rebate_local/active/selected/product/@id")}}{{capture name="classAttributeTmp24" assign="classAttributeTmp24"}}btn btn-inverse basketedit_gifts_btn active{{/capture}}{{/if}} title="{{$txt['75342::basketedit_gift_01a']}}"  class="{{$classAttributeTmp24}}">{{$txt['75342::basketedit_gift_01a']}}</a>
											{{/if}}
										</div>
										<div {{assign "styleAttributeTmp1" ""}}  class="basketedit_gifts_wrapper"{{capture name="styleAttributeTmp1" assign="styleAttributeTmp1"}}display: none;{{/capture}}{{if $showGifts == (string) '1' or $xml->getItem("/shop/page/basket-details/rebate_local/active/selected/product/@id")}}{{capture name="styleAttributeTmp1" assign="styleAttributeTmp1"}}display: block;{{/capture}}{{/if}}  style="{{$styleAttributeTmp1}}">
											{{if  $xml->getItem("/shop/page/basket-details/rebate_local/active/products/product")}}
												<p class="gift_info">{{$txt['75342::basketedit_gift_1a']}}
													<b>
														{{if $signbeforeprice  == (string) 'true'}}
															{{$xml->getItemEscape("/shop/currency/@name")}}{{$signbetweenpricecurrency}}
														{{/if}}
														{{$xml->getItemEscape("/shop/page/basket-details/rebate_local/active/@threshold")}}
														{{if $signbeforeprice  == (string) 'false'}}
															{{$signbetweenpricecurrency}}{{$xml->getItemEscape("/shop/currency/@name")}}
														{{/if}}
														</b>{{$txt['75342::basketedit_gift_4a']}}
												</p>
											{{/if}}
											<ul>
												{{foreach from=$xml->getList("/shop/page/basket-details/rebate_local/active") item=loop1431}}
													{{foreach from=$loop1431->getList("products/product") item=loop1433}}
														<li {{assign "classAttributeTmp25" ""}}{{capture name="classAttributeTmp25" assign="classAttributeTmp25"}}gift_enable col-lg-3 col-md-4 col-sm-6 col-xs-12{{/capture}}{{if $loop1433->getItem("@id") == (string) $loop1433->getItem("/shop/page/basket-details/rebate_local/active/selected/product/@id")}}{{capture name="classAttributeTmp25" assign="classAttributeTmp25"}}gift_enable col-lg-3 col-md-4 col-sm-6 col-xs-12 gift_active{{/capture}}{{/if}}  class="{{$classAttributeTmp25}}">
															<div class="gift_item_sub">
																<input type="radio" name="radio_gift" {{if $loop1433->getItem("@id") == (string) $loop1433->getItem("/shop/page/basket-details/rebate_local/active/selected/product/@id")}} checked="checked" {{/if}}></input>
																<input type="hidden" name="product[0]" value="{{$loop1433->getItemEscape("@id")}}"></input>
																<input type="hidden" value="1" name="gift[0]"/>
																<input type="hidden" value="1" name="set_quantity[0]"/>
																<div class="gift_item_icon">
																	<img alt="{{$loop1433->getItemEscape("name")}}" src="{{$loop1433->getItemEscape("icon_small")}}"></img>
																</div>
																<div class="gift_item_info">
																	<h3>
																		{{if  $loop1433->getItem("@id") == (string) $loop1433->getItem("/shop/page/basket-details/rebate_local/active/selected/product/@id")}}
																			<div id="your_gift_txt">{{$txt['75342::68756_js_txt_1']}}
																			</div>
																		{{/if}}
																		<strong class="gift_item_name">{{$loop1433->getItemEscape("name")}}</strong>
																	</h3>
																	{{if  $loop1433->getItem("sizes/size/@type")  == (string) 'uniw' or !( $loop1433->getItem("sizes/size"))}}
																		<input type="hidden" name="size[0]" value="{{$loop1433->getItemEscape("sizes/size/@type")}}"></input>
																	{{elseif count( $loop1433->getList("sizes/size"))  == (string) 1}}
																		<input type="hidden" name="size[0]" value="{{$loop1433->getItemEscape("sizes/size/@type")}}"></input>
																		<div class="gift_choose_size">
																			<label>{{$txt['75342::55128_rozmiar']}}
																			</label>
																			{{foreach from=$loop1433->getList("sizes/size") item=loop1469}}
																				{{$loop1469->getItemEscape("@description")}}
																			{{/foreach}}
																		</div>
																	{{else}}
																		<div class="gift_choose_size">
																			<label>{{$txt['75342::55128_rozmiar']}}
																			</label>
																			<select>
																				{{foreach from=$loop1433->getList("sizes/size[@amount != 0]") item=loop1479}}
																					<option {{if $loop1479->getItem("@amount") == (string) '0'}} class="no_gift" {{/if}}{{if $loop1479->getItem("@type") == (string) $loop1479->getItem("/shop/page/basket-details/rebate_local/active/selected/product/@size") and $loop1479->getItem("../../@id") == (string) $loop1479->getItem("/shop/page/basket-details/rebate_local/active/selected/product/@id")}} selected="selected" {{/if}} value="{{$loop1479->getItemEscape("@type")}}">{{$loop1479->getItemEscape("@description")}}
																					</option>
																				{{/foreach}}
																			</select>
																			<input type="hidden" name="size[0]" value="{{$loop1433->getItemEscape("sizes/size/@type")}}"></input>
																		</div>
																	{{/if}}
																	{{if  $loop1433->getItem("@link")}}
																		<div class="gift_tooltip" style="display:none;">
																			<a target="_blank" class="gift_description" href="{{$loop1433->getItemEscape("@link")}}">{{$txt['75342::55128_more']}}</a>
																			<div class="gift_choose">{{$txt['75342::55128_choose']}}
																			</div>
																			<div class="gift_resign">{{$txt['75342::55128_resign']}}
																			</div>
																		</div>
																	{{/if}}
																	{{if  $loop1433->getItem("price/@beforerebate")  gt (string) 0}}
																		<div class="gift_price">
																			<b>{{$txt['75342::basketedit_rebatelvels_cost']}}</b>
																			<span>{{$loop1433->getItemEscape("price/@beforerebate_formatted")}}</span>
																		</div>
																	{{elseif  $loop1433->getItem("price/@value")  gt (string) 0}}
																		<div class="gift_price">
																			<b>{{$txt['75342::basketedit_rebatelvels_cost']}}</b>
																			<span>{{$loop1433->getItemEscape("price/@price_formatted")}}</span>
																		</div>
																	{{else}}
																	{{/if}}
																</div>
															</div>
														</li>
													{{/foreach}}
												{{/foreach}}
												{{foreach from=$xml->getList("/shop/page/basket-details/rebate_local/rebates/rebate[products/product][1]") item=loop1534}}
													{{if  $loop1534->getItem("products/product")}}
														<li class="gift_label_needs">
															{{if ( $loop1534->getItem("@left_price")  gt (string) 0) and ( $loop1534->getItem("@left_quantity")  gt (string) 0)}}
																<span>{{$txt['75342::basketedit_gift_01_1']}}{{$loop1534->getItemEscape("@left_price_formatted")}}{{$txt['75342::basketedit_gift_01_1a']}}{{$loop1534->getItemEscape("@left_quantity")}}
																	{{if ( $loop1534->getItem("@left_quantity")  == (string) '1' )}}
																		{{$txt['75342::61330_left_quantity_txt_1']}}
																	{{elseif  ( $loop1534->getItem("substring(@left_quantity, string-length(@left_quantity), 1)")  == (string) '2') or ( $loop1534->getItem("substring(@left_quantity, string-length(@left_quantity), 1)") == (string)'3') or ( $loop1534->getItem("substring(@left_quantity, string-length(@left_quantity), 1)") == (string)'4') }}
																		{{$txt['75342::61330_left_quantity_txt_2']}}
																	{{else}}
																		{{$txt['75342::61330_left_quantity_txt_3']}}
																	{{/if}}
																	</span>
															{{elseif !( $loop1534->getItem("@left_price")  gt (string) 0) and ( $loop1534->getItem("@left_quantity")  gt (string) 0)}}
																<span>{{$txt['75342::basketedit_gift_01_1jeszcze']}}{{$loop1534->getItemEscape("@left_quantity")}}
																	{{if ( $loop1534->getItem("@left_quantity")  == (string) '1' )}}
																		{{$txt['75342::61330_left_quantity_txt_1a']}}
																	{{elseif  ( $loop1534->getItem("substring(@left_quantity, string-length(@left_quantity), 1)")  == (string) '2') or ( $loop1534->getItem("substring(@left_quantity, string-length(@left_quantity), 1)") == (string)'3') or ( $loop1534->getItem("substring(@left_quantity, string-length(@left_quantity), 1)") == (string)'4') }}
																		{{$txt['75342::61330_left_quantity_txt_2a']}}
																	{{else}}
																		{{$txt['75342::61330_left_quantity_txt_3a']}}
																	{{/if}}
																	</span>
															{{elseif ( $loop1534->getItem("@left_price")  gt (string) 0) and !( $loop1534->getItem("@left_quantity")  gt (string) 0)}}
																<span>{{$txt['75342::basketedit_gift_01_1']}}{{$loop1534->getItemEscape("@left_price_formatted")}}</span>
															{{/if}}
														</li>
													{{/if}}
													{{foreach from=$loop1534->getList("products/product") item=loop1557}}
														<li class="gift_disable showTip_gift col-lg-3 col-md-4 col-sm-6 col-xs-12">
															<div class="gift_item_sub">
																<input type="radio" disabled="disabled" name="radio_gift" value="{{$loop1557->getItemEscape("@id")}}"></input>
																<div class="gift_item_icon">
																	<img alt="{{$loop1557->getItemEscape("name")}}" src="{{$loop1557->getItemEscape("icon_small")}}"></img>
																</div>
																<div class="gift_item_info">
																	<h3>
																		<strong class="gift_item_name">{{$loop1557->getItemEscape("name")}}</strong>
																	</h3>
																	{{if  $loop1557->getItem("sizes/size/@type")  == (string) 'uniw' or !( $loop1557->getItem("sizes/size"))}}
																		<input type="hidden" name="size[0]" value="{{$loop1557->getItemEscape("sizes/size/@type")}}"></input>
																	{{else}}
																		<div class="gift_choose_size">
																			<label>{{$txt['75342::55128_rozmiar']}}
																			</label>
																			{{foreach from=$loop1557->getList("sizes/size") item=loop1578}}
																				{{$loop1578->getItemEscape("@description")}}
																				{{if !( $loop1578@iteration  == (string) $loop1578@total )}}
																					{{$txt['75342::55128_prz']}}
																				{{/if}}
																			{{/foreach}}
																		</div>
																	{{/if}}
																	{{if  $loop1557->getItem("@link")}}
																		<a target="_blank" href="{{$loop1557->getItemEscape("@link")}}">{{$txt['75342::55128_more']}}</a>
																	{{/if}}
																	{{if  $loop1557->getItem("price/@beforerebate")  gt (string) 0}}
																		<div class="gift_price">
																			<b>{{$txt['75342::basketedit_rebatelvels_cost']}}</b>
																			<span>{{$loop1557->getItemEscape("price/@beforerebate_formatted")}}</span>
																		</div>
																	{{elseif  $loop1557->getItem("price/@value")  gt (string) 0}}
																		<div class="gift_price">
																			<b>{{$txt['75342::basketedit_rebatelvels_cost']}}</b>
																			<span>{{$loop1557->getItemEscape("price/@price_formatted")}}</span>
																		</div>
																	{{else}}
																	{{/if}}
																</div>
															</div>
														</li>
													{{/foreach}}
												{{/foreach}}
											</ul>
										</div>
									{{/if}}
									{{if  $xml->getItem("/shop/page/rebates_for_points/rebate")}}
										<div class="rebates_for_points_wrapper" {{if ( $xml->getItem("/shop/rebatesLocal") and ( $xml->getItem("/shop/rebatesLocal/rebate/@value") gt (string) 0 )) or $xml->getItem("/shop/page/basket-details/rebate_local/active/products/product") or $xml->getItem("/shop/page/basket-details/rebate_local/rebates/rebate/products/product")}} style="padding-top: 20px;" {{/if}}>
											<table class="menu_rebates">
												<tr>
													<th>
														<span class="rebates_for_points col-md-12">{{$txt['75342::31019_002k']}}</span>
													</th>
												</tr>
												<tr>
													<td class="rebates_for_points">
														{{foreach from=$xml->getList("/shop/page/rebates_for_points/rebate") item=loop1631}}
															<div class="col-lg-4 col-md-6 col-xs-12">
																{{if  $loop1631->getItem("@order_link")}}
																	<a {{assign "classAttributeTmp26" ""}}{{capture name="classAttributeTmp26" assign="classAttributeTmp26"}}btn for_points{{/capture}}{{capture name="classAttributeTmp26" assign="classAttributeTmp26"}}btn for_points{{/capture}} href="{{$loop1631->getItemEscape("@order_link")}}" {{if $loop1631->getItem("/shop/rebate_for_profit_points_delete_client_advanced_rebate[@active='y']")}} title="{{$txt['75342::31019_005_3']}}" data-title="{{$txt['75342::31019_005_2']}}" data-button_txt="{{$txt['75342::31019_005_1']}}"{{capture name="classAttributeTmp26" assign="classAttributeTmp26"}}btn for_points confirmation_link{{/capture}}{{/if}}{{if $loop1631->getItem("/shop/rebate_for_profit_points_delete_rebate_code[@active='y']")}} title="{{$txt['75342::31019_005_3_a']}}" data-title="{{$txt['75342::31019_005_2']}}" data-button_txt="{{$txt['75342::31019_005_1']}}"{{capture name="classAttributeTmp26" assign="classAttributeTmp26"}}btn for_points confirmation_link{{/capture}}{{/if}}{{if $loop1631->getItem("@selected") == (string) 'selected'}}{{capture name="classAttributeTmp26" assign="classAttributeTmp26"}}btn for_points selected{{/capture}}{{if $loop1631->getItem("/shop/rebate_for_profit_points_delete_rebate_code[@active='y']")}}{{capture name="classAttributeTmp26" assign="classAttributeTmp26"}}btn for_points selected confirmation_link{{/capture}}{{/if}}{{if $loop1631->getItem("/shop/rebate_for_profit_points_delete_client_advanced_rebate[@active='y']")}}{{capture name="classAttributeTmp26" assign="classAttributeTmp26"}}btn for_points selected confirmation_link{{/capture}}{{/if}}{{/if}}  class="{{$classAttributeTmp26}}">
																		<span class="for_points_value">
																			{{if  $loop1631->getItem("@selected")  == (string) 'selected'}}
																				<strong>{{$txt['75342::31019_005a']}}</strong>
																			{{/if}}
																			<span>{{$txt['75342::31019_005rr']}}
																				{{if  $loop1631->getItem("@rebate_type") == (string)'quota'}}
																					{{$loop1631->getItemEscape("format-number(@threshold, '#')")}}{{literal}}{{/literal}}{{$loop1631->getItemEscape("/shop/currency/@name")}}
																				{{else}}
																					{{$loop1631->getItemEscape("format-number(@threshold, '#')")}}{{$txt['75342::31019_005']}}
																				{{/if}}
																				</span>
																			{{if  $loop1631->getItem("@permanent") == (string)'true'}}
																				{{$txt['75342::31019_005st']}}
																			{{else}}
																				{{$txt['75342::31019_005tor']}}
																			{{/if}}
																			</span>
																		<span class="for_points_points">{{$loop1631->getItemEscape("format-number(@points, '#')")}}{{$txt['75342::31019_005pkt']}}</span></a>
																{{else}}
																	<div {{assign "classAttributeTmp27" ""}}{{capture name="classAttributeTmp27" assign="classAttributeTmp27"}}btn for_points{{/capture}}{{if $loop1631->getItem("@selected") == (string) 'selected'}}{{capture name="classAttributeTmp27" assign="classAttributeTmp27"}}btn for_points selected{{/capture}}{{/if}}  class="{{$classAttributeTmp27}}">
																		<span class="for_points_value">
																			{{if  $loop1631->getItem("@selected")  == (string) 'selected'}}
																				<strong>{{$txt['75342::31019_005a']}}</strong>
																			{{/if}}
																			<span>{{$txt['75342::31019_005rr']}}
																				{{if  $loop1631->getItem("@rebate_type") == (string)'quota'}}
																					{{$loop1631->getItemEscape("@threshold_formatted")}}
																				{{else}}
																					{{$loop1631->getItemEscape("@threshold")}}{{$txt['75342::31019_005']}}
																				{{/if}}
																				</span>
																			{{if  $loop1631->getItem("@permanent") == (string)'true'}}
																				{{$txt['75342::31019_005st']}}
																			{{else}}
																				{{$txt['75342::31019_005tor']}}
																			{{/if}}
																			</span>
																		<span class="for_points_points">{{$loop1631->getItemEscape("@points")}}{{$txt['75342::31019_005pkt']}}</span>
																	</div>
																{{/if}}
															</div>
														{{/foreach}}
													</td>
												</tr>
											</table>
										</div>
									{{/if}}
								</div>
								<script class="ajaxLoad">
                    setGiftsItems();
                								</script>

							{{/if}}
						{{/if}}
						<!--Lista produktów obserwowanych (basketedit_wishlist, 74631.1)-->
						{{if  $xml->getItem("page[@type='wishesedit']")}}
							{{capture name="setIconLarge" assign="setIconLarge"}}
								{{$txt['74631::57649_setIconLarge']}}
							{{/capture}}
							{{if !( $xml->getItem("/shop/basket/@login")) or ( $xml->getItem("/shop/basket/@login")  == (string) '')}}
								<div class="n66770_wishlist_info">{{$txt['74631::65754_wishlist_info']}}
								</div>
							{{/if}}
							<div class="n66770_outline">
								<div class="n66770_outsub">
									<table id="n57650" class="title_54008" cellspacing="0" cellpadding="0">
										{{foreach from=$xml->getList("page/basket-details/product") item=loop1732}}
											<tr class="item_54008">
												<td class="col1_54008x">
													<a href="{{$loop1732->getItemEscape("@link")}}">
														{{if $setIconLarge}}
															<img class="basket_prod" alt="Szczegoly" src="{{$loop1732->getItemEscape("icon")}}"></img>
														{{else}}
															<img class="basket_prod" alt="Szczegoly" src="{{$loop1732->getItemEscape("iconsmall")}}"></img>
														{{/if}}
														</a>
												</td>
												<td class="col1_54008xb">
													<h1 class="basket_name">
														<a href="{{$loop1732->getItemEscape("@link")}}">{{$loop1732->getItem("name/text()")}}</a>
													</h1>
													{{if !( $loop1732->getItem("@barcode")  == (string)'')}}
														<div class="col2_54008x" id="kod_54008x">
															<span>{{$txt['74631::50001_99']}}</span>{{$loop1732->getItemEscape("@barcode")}}
														</div>
													{{/if}}
													{{if !( $loop1732->getItem("size/@type") == (string)'uniw')}}
														<div class="col2_54008x">
															<span>{{$txt['74631::50001_004']}}</span>{{$loop1732->getItemEscape("size/@description")}}
														</div>
													{{/if}}
													{{if ( $loop1732->getItem("version")) and (!( $loop1732->getItem("version/@product_name") == (string)''))}}
														<div class="col2_54008x">
															<span>{{$loop1732->getItemEscape("version/@name")}}:</span>{{$loop1732->getItemEscape("version/@product_name")}}
														</div>
													{{/if}}
													{{if  $loop1732->getItem("price/@value")  == (string) 0}}
														{{if  $loop1732->getItem("price/@points_sum")}}
															<div class="col2_54008x">
																<span>{{$txt['74631::n56465_099_pkt']}}</span>{{$loop1732->getItemEscape("price/@points_sum")}}{{$txt['74631::55925_pkt']}}
															</div>
														{{else}}
															<div class="col2_54008x">
																<span>{{$txt['74631::n56465_099']}}</span>
																<a class="col2_54008x_phone" href="/contact.php">{{$txt['74631::n56465_099_phone']}}</a>
															</div>
														{{/if}}
													{{else}}
														<div class="col2_54008x">
															{{if ( $loop1732->getItem("/shop/basket/@wholesaler")  == (string) 'true')}}
																<span>{{$txt['74631::n56465_099']}}</span>{{$loop1732->getItemEscape("price/@price_net_formatted")}}
															{{else}}
																<span>{{$txt['74631::n56465_099']}}</span>{{$loop1732->getItemEscape("price/@price_formatted")}}
															{{/if}}
															{{if !( $loop1732->getItem("/shop/client_data/@uses_vat") == (string)'false')}}
																{{$txt['74631::57295_019b']}}
															{{/if}}
															{{if !( $loop1732->getItem("@product_type")  == (string) 'product_virtual')}}
																{{$txt['74631::57295_019plus']}}
																<a class="shipping_info" target="blank" title="{{$txt['74631::57295_019a']}}" href="{{$loop1732->getItemEscape("/shop/action/shipping_cost/@url")}}" data-product-id="{{$loop1732->getItemEscape("@id")}}" data-product-size="{{$loop1732->getItemEscape("size/@type")}}">{{$txt['74631::57295_019']}}</a>
															{{/if}}
														</div>
													{{/if}}
													<div class="col2_54008x" id="ammount_hide">
														<span>{{$txt['74631::n56465_444']}}</span>
														{{if  $loop1732->getItem("size/@amount")  == (string) -1 or  $loop1732->getItem("size/@amount")  gt (string) 0}}
															{{$txt['74631::52600_w013']}}
														{{else}}
															{{$txt['74631::52600_w01312']}}
														{{/if}}
													</div>
													<div class="col2_54008x">
														<span>{{$txt['74631::52600_w012']}}</span>{{$loop1732->getItemEscape("size/@observed_since")}}
													</div>
												</td>
												<td class="col5_54008x">
													{{if !( $loop1732->getItem("size/@amount")  == (string) 0)}}
														<a class="dodaj_54008" href="{{$loop1732->getItemEscape("@link")}}" title="{{$txt['74631::52600_w004']}}">{{$txt['74631::52600_w004']}}</a>
													{{/if}}
													<a class="usun2_54008" href="{{$loop1732->getItemEscape("removeall")}}" title="{{$txt['74631::52600_w005']}}">{{$txt['74631::52600_w005']}}</a>
												</td>
											</tr>
										{{/foreach}}
									</table>
								</div>
							</div>
						{{/if}}
						<!--Hotspot w koszyku strefa 1 (basketedit_hotspot_zone1, 68637.1)-->
						{{include file="component_menu_security_policy_74382.tpl"}}
						{{include file="component_menu_basketedit_hotspot_zone1_75688.tpl"}}
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
