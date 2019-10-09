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
						{{include file="component_menu_order_progress_106607.tpl"}}
						{{include file="component_menu_messages_106608.tpl"}}
						<!--Koszyk - cms (basketedit_cms, 107581.1)-->
						{{if  $xml->getItem("page/basket-details/text/body")}}
							<div class="basket_cms cm">{{$xml->getItem("page/basket-details/text/body")}}
							</div>
						{{/if}}
						<!--Lista produktów w koszyku (basketedit_productslist, 107583.1)-->
						{{if  $xml->getItem("page[@type='basketedit']")}}
							{{capture name="txt_50001_025a" assign="txt_50001_025a"}}
								{{$txt['107583::50001_025a']}}
							{{/capture}}
							{{capture name="txt_67332_am" assign="txt_67332_am"}}
								{{$txt['107583::67332_am']}}
							{{/capture}}
							{{capture name="txt_67332_wm" assign="txt_67332_wm"}}
								{{$txt['107583::67332_wm']}}
							{{/capture}}
							<script class="ajaxLoad">
                var only_virtual_literal_1 = '{{$txt['107583::50001_onlyvirtual_1']}}';
                var only_virtual_literal_2 = '{{$txt['107583::50001_onlyvirtual_2']}}';
            							</script>

							<script class="ajaxLoad">
                var client_files_link = '{{$xml->getItemEscape("/shop/client_files/@link_to_download")}}';
                var client_files_link_txt = '{{$txt['107583::50001_virtual_link']}}';
                var currency_format = app_shop.vars.currency_format;
            							</script>

							{{capture name="setIconLarge" assign="setIconLarge"}}
								{{$txt['107583::57649_setIconLarge']}}
							{{/capture}}
							{{capture name="wholesalerPrice" assign="wholesalerPrice"}}
								{{$txt['107583::57649_wholesalerPrice']}}
							{{/capture}}
							{{capture name="hideLimit" assign="hideLimit"}}
								{{$txt['107583::57649_hideLimit']}}
							{{/capture}}
							<form class="basketedit_productslist" action="/basketchange.php?type=multiproduct" method="post" enctype="multipart/form-data">
								<div id="basketedit_productslist" class="basketedit_productslist">
									<h2 class="big_label">{{$txt['107583::50001_01a']}}
									</h2>
									<table>
										<tr class="basketedit_productslist_label">
											<th colspan="2" class="productslist_product_name">{{$txt['107583::50001_03']}}
											</th>
											{{if  $xml->getItem("/shop/basket/@product_comment_active")  == (string) 'y' and count( $xml->getList("/shop/page/basket-details/product/price[not(@special_offer='true')]"))  gt (string) 0}}
												<th class="productslist_product_comment">{{$txt['107583::50001_04']}}
												</th>
											{{/if}}
											<th class="productslist_product_prices d-none d-md-table-cell">{{$txt['107583::50001_05']}}
											</th>
											<th class="productslist_product_quantity">{{$txt['107583::50001_06']}}
											</th>
											<th class="productslist_product_sum d-none d-sm-table-cell">{{$txt['107583::50001_07']}}
											</th>
											<th class="productslist_product_calculate">{{$txt['107583::50001_zm']}}
											</th>
											<th class="productslist_product_action">{{$txt['107583::50001_08a']}}
											</th>
										</tr>
										{{foreach from=$xml->getList("page/basket-details/product") item=loop297}}
											<tr {{assign "classAttributeTmp4" ""}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}productslist_item{{/capture}}{{if $loop297->getItem("price[@special_offer='true']")}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}productslist_item special_offer{{/capture}}{{/if}}  class="{{$classAttributeTmp4}}">
												<td class="productslist_product_photo">
													<a href="{{$loop297->getItemEscape("@link")}}">
														<img {{if $setIconLarge}} src="{{$loop297->getItemEscape("icon")}}" {{else}} src="{{$loop297->getItemEscape("iconsmall")}}" {{/if}} alt="{{$loop297->getItem("name/text()")}}"></img></a>
												</td>
												<td class="productslist_product_name">
													<h3>
														<a href="{{$loop297->getItemEscape("@link")}}">{{$loop297->getItem("name/text()")}}</a>
														{{if  $loop297->getItem("@product_type")  == (string) 'product_virtual'}}
															<i class="product_virtual">{{$txt['107583::50001_z004v']}}</i>
														{{/if}}
														{{if  $loop297->getItem("@product_type")  == (string) 'product_service'}}
															<i class="product_service">{{$txt['107583::50001_z004s']}}</i>
														{{/if}}
													</h3>
													{{if  $loop297->getItem("price/@special_offer") == (string)'true'}}
														<div class="productslist_special_offer">
															<span>{{$txt['107583::50001_99_specialoffer_1']}}
																<b class="special_offer_value">{{$loop297->getItemEscape("price/@yousave_formatted")}}</b>{{$txt['107583::50001_99_specialoffer_2']}}
																<b>{{$loop297->getItemEscape("price/@yousave_percent")}}%</b>{{$txt['107583::50001_99_specialoffer_3']}}</span>
														</div>
													{{else}}
														{{if !( $loop297->getItem("@barcode")  == (string)'')}}
															<div class="productslist_product_barcode">
																<span>{{$txt['107583::50001_99']}}</span>{{$loop297->getItemEscape("@barcode")}}
															</div>
														{{/if}}
														{{if  $loop297->getItem("price/priceformula/parameters")}}
															{{foreach from=$loop297->getList("price/priceformula/parameters/parameter") item=loop350}}
																<div class="productslist_priceformula">
																	<span>{{$loop350->getItemEscape("name")}}:</span>{{$loop350->getItemEscape("values/value")}}
																</div>
															{{/foreach}}
														{{/if}}
														{{if !( $loop297->getItem("size/@type") == (string)'uniw')}}
															<div class="productslist_product_size">
																<span>{{$txt['107583::50001_004']}}</span>{{$loop297->getItemEscape("size/@description")}}
															</div>
														{{/if}}
														{{if ( $loop297->getItem("version")) and (!( $loop297->getItem("version/@product_name") == (string)''))}}
															<div class="productslist_product_version">
																<span>{{$loop297->getItemEscape("version/@name")}}:</span>{{$loop297->getItemEscape("version/@product_name")}}
															</div>
														{{/if}}
														{{if  $loop297->getItem("@product_type")  == (string) 'product_bundle'}}
															<div class="productslist_product_bundle">{{$txt['107583::50001_z001']}}
																{{foreach from=$loop297->getList("bundled/product") item=loop383}}
																	<span>
																		{{if  $loop383->getItem("size/@ordered")  gt (string) 1}}
																			{{$loop383->getItemEscape("size/@ordered")}}x
																		{{/if}}
																		{{$loop383->getItemEscape("name/text()")}}
																		{{if !( $loop383->getItem("size/@type") == (string)'uniw') or (( $loop383->getItem("version")) and (!( $loop383->getItem("version/@product_name") == (string)'')))}}
																			{{$txt['107583::50001_z002']}}
																			{{if !( $loop383->getItem("size/@type") == (string)'uniw')}}
																				{{$txt['107583::50001_004']}}{{$loop383->getItemEscape("size/@description")}}
																			{{/if}}
																			{{if !( $loop383->getItem("size/@type") == (string)'uniw') and (( $loop383->getItem("version")) and (!( $loop383->getItem("version/@product_name") == (string)'')))}}
																				{{$txt['107583::50001_z003']}}
																			{{/if}}
																			{{if ( $loop383->getItem("version")) and (!( $loop383->getItem("version/@product_name") == (string)''))}}
																				{{$loop383->getItemEscape("version/@name")}}:{{$loop383->getItemEscape("version/@product_name")}}
																			{{/if}}
																			{{$txt['107583::50001_z004']}}
																		{{/if}}
																		{{if  $loop383->getItem("@product_type")  == (string) 'product_virtual'}}
																			<i class="product_virtual">{{$txt['107583::50001_z004v']}}</i>
																		{{/if}}
																		{{if  $loop383->getItem("@product_type")  == (string) 'product_service'}}
																			<i class="product_service">{{$txt['107583::50001_z004s']}}</i>
																		{{/if}}
																		</span>
																{{/foreach}}
															</div>
														{{/if}}
														{{if  $loop297->getItem("change_group")}}
															<div class="productslist_product_info">{{$txt['107583::50001_023aukcja']}}
															</div>
														{{/if}}
														{{if ( $loop297->getItem("size/@orderedsum"))  gt (string) ( $loop297->getItem("size/@amount")) and !( $loop297->getItem("size/@amount")  == (string) '0') and !( $loop297->getItem("size/@amount")  == (string) '-1')}}
															<div class="productslist_product_info">{{$txt['107583::50001_021']}}{{$loop297->getItemEscape("size/@amount")}}{{$txt['107583::50001_022']}}
															</div>
														{{elseif ( $loop297->getItem("size/@own_stocks_amount")  gt (string) 0) and ( $loop297->getItem("size/@ordered")  gt (string)  $loop297->getItem("size/@own_stocks_amount")) and $txt_67332_am}}
															<div class="productslist_product_info basket_info">{{$loop297->getItem("$txt_67332_am")}}{{$loop297->getItemEscape("size/@own_stocks_amount")}}{{literal}}{{/literal}}{{$loop297->getItemEscape("size/@unit")}}{{$loop297->getItem("$txt_67332_wm")}}
															</div>
														{{elseif  $loop297->getItem("size/@amount")  == (string) '0'}}
															<div class="productslist_product_info">{{$txt['107583::50001_023']}}
															</div>
														{{elseif ( $loop297->getItem("size/@ordered_points")) and !( $loop297->getItem("/shop/basket/@client_points")  gte (string) 0)}}
															<div class="productslist_product_info">{{$txt['107583::50001_024']}}
															</div>
														{{elseif ( $loop297->getItem("/shop/page/rebates/code_details/@active")  == (string) 'y') and (( $loop297->getItem("/shop/rebate_code/shipping_cost_rebate/@active") == (string)'n') and ( $loop297->getItem("price/@rebate_code_active") == (string)'n'))}}
															<div class="productslist_product_info">{{$txt['107583::50001_024X']}}
															</div>
														{{elseif  $loop297->getItem("@product_type") == (string)'product_virtual'}}
															<div class="productslist_product_info virtual">{{$txt['107583::50001_virtual_1']}}
																<a class="productslist_product_info_link" href="{{$loop297->getItemEscape("/shop/client_files/@link_to_download")}}">{{$txt['107583::50001_virtual_link']}}</a>{{$txt['107583::50001_virtual_2']}}
															</div>
														{{/if}}
														{{if ( $loop297->getItem("size/@to_little_for_gross")  == (string) 'true') and !(( $loop297->getItem("size/@orderedsum"))  gt (string) ( $loop297->getItem("size/@amount")) and !( $loop297->getItem("size/@amount")  == (string) '0') and !( $loop297->getItem("size/@amount")  == (string) '-1'))}}
															<div class="productslist_product_info">{{$txt['107583::50001_023a']}}{{$loop297->getItemEscape("size/@amount_wholesale")}}{{$txt['107583::50001_023b']}}{{$loop297->getItemEscape("size/@ordered - size/@amount_wholesale")}}{{$txt['107583::50001_023c']}}
															</div>
														{{/if}}
														{{if $txt_50001_025a and ( $loop297->getItem("price/@advanceworth")  gt (string) 0)}}
															<div class="productslist_product_advance">
																{{if  $loop297->getItem("/shop/page/basket-details/summary/money/@advance_mode")  == (string) 'default' or  $loop297->getItem("/shop/page/basket-details/summary/money/@advance_mode")  == (string) 'none'}}
																	{{if  $loop297->getItem("/shop/page/basket-details/summary/money/@cash_on_delivery")  == (string) 'true' and  $loop297->getItem("/shop/page/basket-details/summary/money/@prepaid")  == (string) 'false'}}
																		{{$txt['107583::50001_025a']}}{{$loop297->getItemEscape("price/@advanceworth_formatted")}}
																	{{elseif  $loop297->getItem("/shop/page/basket-details/summary/money/@cash_on_delivery")  == (string) 'false' and  $loop297->getItem("/shop/page/basket-details/summary/money/@prepaid")  == (string) 'true'}}
																		{{$txt['107583::50001_025b']}}{{$loop297->getItemEscape("price/@advanceworth_formatted")}}
																	{{elseif  $loop297->getItem("/shop/page/basket-details/summary/money/@cash_on_delivery")  == (string) 'true' and  $loop297->getItem("/shop/page/basket-details/summary/money/@prepaid")  == (string) 'true'}}
																		{{$txt['107583::50001_025c']}}{{$loop297->getItemEscape("price/@advanceworth_formatted")}}
																	{{/if}}
																{{elseif  $loop297->getItem("/shop/page/basket-details/summary/money/@advance_mode")  == (string) 'total'}}
																	{{$txt['107583::50001_025c']}}{{$loop297->getItemEscape("price/@advanceworth_formatted")}}
																{{/if}}
															</div>
														{{/if}}
													{{/if}}
													{{if  $loop297->getItem("size/@ordered_points")}}
														<div class="productslist_product_sum d-sm-none">
															<span>{{$loop297->getItemEscape("price/@points_sum")}}{{$txt['107583::55925_pkt']}}</span>
														</div>
													{{else}}
														<div class="productslist_product_sum d-sm-none">
															<span>
																{{if ( $loop297->getItem("/shop/basket/@wholesaler")  == (string) 'true') and !($wholesalerPrice)}}
																	{{$loop297->getItemEscape("price/@worth_net_formatted")}}
																{{else}}
																	{{$loop297->getItemEscape("price/@worth_formatted")}}
																{{/if}}
																</span>
														</div>
													{{/if}}
												</td>
												{{if  $loop297->getItem("/shop/basket/@product_comment_active")  == (string) 'y' and !( $loop297->getItem("price/@special_offer") == (string)'true')}}
													<td class="productslist_product_comment">
														<a href="#addComment" title="{{$txt['107583::50001_11']}}">{{$txt['107583::50001_12']}}</a>
													</td>
												{{/if}}
												<td class="productslist_product_prices d-none d-md-table-cell">
													{{if  $loop297->getItem("size/@ordered_points")}}
														<del>
															{{if ( $loop297->getItem("/shop/basket/@wholesaler")  == (string) 'true') and !($wholesalerPrice)}}
																{{$loop297->getItemEscape("price/@price_net_formatted")}}
															{{else}}
																{{$loop297->getItemEscape("price/@price_formatted")}}
															{{/if}}
															</del>
														<span>{{$loop297->getItemEscape("price/@points")}}{{$txt['107583::55925_pkt']}}</span>
													{{else}}
														{{if  $loop297->getItem("price/@beforerebate")}}
															<del>{{$loop297->getItemEscape("price/@beforerebate_formatted")}}</del>
														{{/if}}
														<span>
															{{if ( $loop297->getItem("/shop/basket/@wholesaler")  == (string) 'true') and !($wholesalerPrice)}}
																{{$loop297->getItemEscape("price/@price_net_formatted")}}
															{{else}}
																{{$loop297->getItemEscape("price/@price_formatted")}}
															{{/if}}
															</span>
														{{if  $loop297->getItem("price/rebateNumber")}}
															<small class="showTip_basket">{{$txt['107583::n56465_mniej']}}</small>
															<div class="tooltipContent">
																{{foreach from=$loop297->getList("price/rebateNumber/rebate") item=loop525}}
																	<div>{{$txt['107583::n56465_od']}}
																		<strong>{{$loop525->getItemEscape("@threshold")}}{{literal}}{{/literal}}{{$loop525->getItemEscape("../../../size/@unit")}}</strong>{{$txt['107583::n56465_cenanetto']}}
																		<strong>{{$loop525->getItemEscape("@price_formatted")}}
																			{{if !( $loop525->getItem("/shop/contact/owner/@vat_registered")  == (string) 'false')}}
																				{{$txt['107583::235364_462']}}
																			{{/if}}
																			</strong>{{$txt['107583::n56465_rabat']}}
																		<strong>{{$loop525->getItemEscape("@value")}}{{$txt['107583::n56465_procent']}}</strong>
																	</div>
																{{/foreach}}
															</div>
														{{/if}}
													{{/if}}
												</td>
												<td class="productslist_product_quantity">
													<div {{if $loop297->getItem("@product_type") == (string)'product_virtual'}} style="display:none;" {{/if}}>
														{{if  $loop297->getItem("change_group/@id")}}
															class="productslist_product_quantityproductslist_product_quantity_change"
															<input type="hidden" name="product[{{$loop297@iteration}}]" value="{{$loop297->getItemEscape("@id")}}"></input>
															<input type="hidden" name="size[{{$loop297@iteration}}]" value="{{$loop297->getItemEscape("size/@type")}}"></input>
															{{if  $loop297->getItem("additional/@hash")}}
																<input type="hidden" name="additional[{{$loop297@iteration}}]" value="{{$loop297->getItemEscape("additional/@hash")}}"></input>
															{{/if}}
															{{if  $loop297->getItem("size/@ordered_points")}}
																<input type="hidden" value="1" name="forpoints[{{$loop297@iteration}}]"></input>
															{{/if}}
															<input {{assign "valueAttributeTmp33" ""}}  type="hidden" name="set_quantity[{{$loop297@iteration}}]" {{if $loop297->getItem("size/@ordered_points")}}{{capture name="valueAttributeTmp33" assign="valueAttributeTmp33"}}{{$loop297->getItemEscape("size/@ordered_points")}}{{/capture}}{{else}}{{capture name="valueAttributeTmp33" assign="valueAttributeTmp33"}}{{$loop297->getItemEscape("size/@ordered")}}{{/capture}}{{/if}}  value="{{$valueAttributeTmp33}}"></input>
															<strong>
																{{if  $loop297->getItem("size/@ordered_points")}}
																	{{$loop297->getItemEscape("size/@ordered_points")}}
																{{else}}
																	{{$loop297->getItemEscape("size/@ordered")}}
																{{/if}}
																<span>
																	{{if !( $loop297->getItem("size/@ordered")  gt (string) 1)}}
																		{{$loop297->getItemEscape("size/@unit_singular")}}
																	{{else}}
																		{{$loop297->getItemEscape("size/@unit")}}
																	{{/if}}
																	</span></strong>
															{{if  $loop297->getItem("change_group/@changelink")}}
																<a class="btn-small productslist_change_product" href="{{$loop297->getItemEscape("change_group/@changelink")}}">{{$txt['107583::50001_99wy']}}</a>
															{{/if}}
														{{else}}
															<input type="hidden" name="product[{{$loop297@iteration}}]" value="{{$loop297->getItemEscape("@id")}}"></input>
															<input type="hidden" name="size[{{$loop297@iteration}}]" value="{{$loop297->getItemEscape("size/@type")}}"></input>
															{{if  $loop297->getItem("additional/@hash")}}
																<input type="hidden" name="additional[{{$loop297@iteration}}]" value="{{$loop297->getItemEscape("additional/@hash")}}"></input>
															{{/if}}
															{{if  $loop297->getItem("size/@ordered_points")}}
																<input type="hidden" value="1" name="forpoints[{{$loop297@iteration}}]"></input>
															{{/if}}
															<span class="productslist_quantity">
																<a href="#delQuantity" class="delQuantity d-none d-sm-inline-block">{{$txt['107583::50001_081']}}</a>
																<input {{assign "valueAttributeTmp34" ""}}  type="text" {{if $loop297->getItem("price[@special_offer='true']")}} readonly="readonly" {{/if}} name="set_quantity[{{$loop297@iteration}}]" class="quantity_{{$loop297->getItemEscape("@id")}}" {{if $loop297->getItem("size/@ordered_points")}}{{capture name="valueAttributeTmp34" assign="valueAttributeTmp34"}}{{$loop297->getItemEscape("size/@ordered_points")}}{{/capture}}{{else}}{{capture name="valueAttributeTmp34" assign="valueAttributeTmp34"}}{{$loop297->getItemEscape("size/@ordered")}}{{/capture}}{{/if}} data-amount="{{$loop297->getItemEscape("size/@amount")}}" data-unit_sellby="{{$loop297->getItemEscape("size/@unit_sellby")}}" data-unit="{{$loop297->getItemEscape("size/@unit")}}" data-unit_precision="{{$loop297->getItemEscape("size/@unit_precision")}}" {{if $loop297->getItem("order_quantity_range/max_quantity_per_order")}} data-max_q="{{$loop297->getItemEscape("order_quantity_range/max_quantity_per_order")}}" {{/if}}{{if $loop297->getItem("order_quantity_range/max_size_quantity_per_order")}} data-max_s="{{$loop297->getItemEscape("order_quantity_range/max_size_quantity_per_order")}}" {{/if}}{{if $loop297->getItem("order_quantity_range/min_quantity_per_order")}} data-min_q="{{$loop297->getItemEscape("order_quantity_range/min_quantity_per_order")}}" {{/if}}{{if $loop297->getItem("order_quantity_range/min_size_quantity_per_order")}} data-min_s="{{$loop297->getItemEscape("order_quantity_range/min_size_quantity_per_order")}}" {{/if}}  value="{{$valueAttributeTmp34}}"></input>
																<a href="#addQuantity" class="addQuantity d-none d-sm-inline-block">{{$txt['107583::50001_082']}}</a>
																<i class="productslist_product_unit d-none d-sm-inline-block">
																	{{if !( $loop297->getItem("size/@ordered")  gt (string) 1)}}
																		{{$loop297->getItemEscape("size/@unit_singular")}}
																	{{else}}
																		{{$loop297->getItemEscape("size/@unit")}}
																	{{/if}}
																	</i></span>
															{{if !( $loop297->getItem("size/@unit_sellby")  == (string) '1')}}
																<div class="productslist_product_sellby_info">{{$txt['107583::50001_900bb_xxx']}}{{$loop297->getItemEscape("size/@unit_sellby")}}{{literal}}{{/literal}}
																	{{if !( $loop297->getItem("size/@ordered")  gt (string) 1)}}
																		{{$loop297->getItemEscape("size/@unit_singular")}}
																	{{else}}
																		{{$loop297->getItemEscape("size/@unit")}}
																	{{/if}}
																</div>
															{{/if}}
														{{/if}}
													</div>
													{{if  $loop297->getItem("@product_type") == (string)'product_virtual'}}
														<div class="virtual_quantity">{{$txt['107583::50001_virtual_qty']}}
														</div>
													{{/if}}
												</td>
												<td class="productslist_product_sum d-none d-sm-table-cell">
													{{if  $loop297->getItem("size/@ordered_points")}}
														<span>{{$loop297->getItemEscape("price/@points_sum")}}{{$txt['107583::55925_pkt']}}</span>
													{{else}}
														<span>
															{{if ( $loop297->getItem("/shop/basket/@wholesaler")  == (string) 'true') and !($wholesalerPrice)}}
																{{$loop297->getItemEscape("price/@worth_net_formatted")}}
															{{else}}
																{{$loop297->getItemEscape("price/@worth_formatted")}}
															{{/if}}
															</span>
													{{/if}}
												</td>
												<td class="productslist_product_calculate d-none d-sm-table-cell">
													{{if  $loop297->getItem("price/@special_offer") == (string)'true'}}
														<span class="productslist_specialoffer">{{$txt['107583::55925_ofertaspecjalna']}}</span>
													{{else}}
														<button class="product_calculate" type="submit" title="{{$txt['107583::50001_555']}}">{{$txt['107583::55925_przelicz']}}
														</button>
													{{/if}}
												</td>
												<td class="productslist_product_action d-none d-sm-table-cell">
													<a {{assign "hrefAttributeTmp28" ""}}{{assign "classAttributeTmp5" ""}}{{capture name="hrefAttributeTmp28" assign="hrefAttributeTmp28"}}{{/capture}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}productslist_product_remove{{/capture}}{{if $loop297->getItem("/shop/page/basket-details/@reduction_amount_disabled") == (string) 'true' and $loop297->getItem("order_quantity_range/min_quantity_per_order/text()")}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}productslist_product_remove disabled{{/capture}}{{/if}}{{if $loop297->getItem("removeall_points")}}{{capture name="hrefAttributeTmp28" assign="hrefAttributeTmp28"}}{{$loop297->getItemEscape("removeall_points")}}{{/capture}}{{else}}{{capture name="hrefAttributeTmp28" assign="hrefAttributeTmp28"}}{{$loop297->getItemEscape("removeall")}}{{/capture}}{{/if}}  class="{{$classAttributeTmp5}}"  href="{{$hrefAttributeTmp28}}">{{$txt['107583::55925_usun']}}</a>
												</td>
												<td class="productslist_product_toggler d-sm-none">
													<a href="#" class="productslist_product_toggler"></a>
												</td>
											</tr>
											<tr class="productslist_product_action mobile">
												<td class="productslist_product_action mobile" colspan="8">
													<div>
														<a {{assign "hrefAttributeTmp28" ""}}{{assign "classAttributeTmp5" ""}}{{capture name="hrefAttributeTmp28" assign="hrefAttributeTmp28"}}{{/capture}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}productslist_product_remove{{/capture}}{{if $loop297->getItem("/shop/page/basket-details/@reduction_amount_disabled") == (string) 'true' and $loop297->getItem("order_quantity_range/min_quantity_per_order/text()")}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}productslist_product_remove disabled{{/capture}}{{/if}}{{if $loop297->getItem("removeall_points")}}{{capture name="hrefAttributeTmp28" assign="hrefAttributeTmp28"}}{{$loop297->getItemEscape("removeall_points")}}{{/capture}}{{else}}{{capture name="hrefAttributeTmp28" assign="hrefAttributeTmp28"}}{{$loop297->getItemEscape("removeall")}}{{/capture}}{{/if}}  class="{{$classAttributeTmp5}}"  href="{{$hrefAttributeTmp28}}">{{$txt['107583::55925_usun']}}</a>
														<span>{{$txt['107583::55925_usun_mobile']}}</span>
														<a href="#addQuantity" class="addQuantity">{{$txt['107583::50001_082']}}</a>
														<a href="#delQuantity" class="delQuantity">{{$txt['107583::50001_081']}}</a>
														<button class="product_calculate" type="submit" title="{{$txt['107583::50001_555']}}">{{$txt['107583::55925_przelicz']}}
														</button>
													</div>
												</td>
											</tr>
											{{if  $loop297->getItem("/shop/basket/@product_comment_active")  == (string) 'y' and !( $loop297->getItem("price/@special_offer") == (string)'true')}}
												<tr class="productslist_comment">
													<td colspan="8" class="productslist_comment">
														<div class="prodl_comment_top" {{if $loop297->getItem("comment") or $loop297->getItem("order_files")}} style="display:block"{{/if}}>
														</div>
														<div class="prodl_comment" {{if $loop297->getItem("comment") or $loop297->getItem("order_files")}} style="display:block"{{/if}}>
															<div class="prodl_comment_left">
																<span>{{$txt['107583::50001_09pl01']}}</span>
																<textarea name="comment[{{$loop297@iteration}}]">
																	{{if  $loop297->getItem("comment")}}
																		{{$loop297->getItemEscape("comment")}}
																	{{/if}}
																	</textarea>
																<button class="btn-small btn-inverse" type="submit">{{$txt['107583::50001_10']}}
																</button>
																<a href="#clearComment">{{$txt['107583::50001_clear']}}</a>
															</div>
															<div class="prodl_comment_right">
																<span>{{$txt['107583::50001_09pl02']}}</span>
																{{if  $loop297->getItem("order_files/file")}}
																	<ol>
																		{{foreach from=$loop297->getList("order_files/file") item=loop769}}
																			<li>
																				<a {{assign "hrefAttributeTmp30" ""}}  class="previewFile"{{capture name="hrefAttributeTmp30" assign="hrefAttributeTmp30"}}#previewFile{{/capture}}{{if $loop769->getItem("@preview") == (string) 'true'}} rel="{{$loop769->getItemEscape("@path")}}" {{else}}{{capture name="hrefAttributeTmp30" assign="hrefAttributeTmp30"}}{{$loop769->getItemEscape("@path")}}{{/capture}} target="_blank" {{/if}}  href="{{$hrefAttributeTmp30}}">{{$loop769->getItemEscape("@file")}}</a>
																				<a class="deleteFile " href="{{$loop769->getItemEscape("@delete_link")}}" title="{{$txt['107583::50001_f_01']}}">{{$txt['107583::50001_f_02']}}</a>
																			</li>
																		{{/foreach}}
																	</ol>
																{{/if}}
																<div class="prodl_comment_foto">
																	<input type="file" name="comment_photo" {{if $loop297->getItem("/shop/form_data/upload_file/max_filesize/@bytes")}} data-max_filesize="{{$loop297->getItemEscape("/shop/form_data/upload_file/max_filesize/@bytes")}}" {{/if}} name="comment_photo[{{$loop297->getItemEscape("@id")}}][{{$loop297->getItemEscape("size/@type")}}][{{if $loop297->getItem("additional/@hash")}}{{$loop297->getItemEscape("additional/@hash")}}{{else}}0{{/if}}][]" size="{{$txt['107583::54114_input']}}"></input>
																</div>
																<div class="prodl_comment_button">
																	<a {{assign "classAttributeTmp7" ""}}  href="#saveQuantity"{{capture name="classAttributeTmp7" assign="classAttributeTmp7"}}saveQuantityFile{{/capture}}{{capture name="classAttributeTmp7" assign="classAttributeTmp7"}}btn-small btn-inverse saveQuantityFile{{/capture}}  class="{{$classAttributeTmp7}}">{{$txt['107583::50001_f_03']}}</a>
																</div>
															</div>
															<div style="clear: both">
															</div>
														</div>
													</td>
												</tr>
											{{else}}
												<input type="hidden" name="comment[{{$loop297@iteration}}]" value="{{$loop297->getItemEscape("comment")}}"></input>
											{{/if}}
										{{/foreach}}
										<tr class="productslist_tools_bottom">
											<td colspan="8" {{if count( $xml->getList("page/basket-details/product")) == (string) 1}} class="productslist_tools_bottom_one_product"{{/if}}>
												<a {{assign "classAttributeTmp8" ""}}  href="#addSelectedToFavorite"{{capture name="classAttributeTmp8" assign="classAttributeTmp8"}}addSelectedToFavorite{{/capture}}{{capture name="classAttributeTmp8" assign="classAttributeTmp8"}}addSelectedToFavorite{{/capture}}  class="{{$classAttributeTmp8}}">{{$txt['107583::50001_08']}}</a>
												<a {{assign "classAttributeTmp9" ""}}  href="#removeSelected"{{capture name="classAttributeTmp9" assign="classAttributeTmp9"}}removeSelected{{/capture}}{{capture name="classAttributeTmp9" assign="classAttributeTmp9"}}removeSelected{{/capture}}  class="{{$classAttributeTmp9}}">{{$txt['107583::50001_09']}}</a>
												<a {{assign "classAttributeTmp10" ""}}  href="#saveQuantity"{{capture name="classAttributeTmp10" assign="classAttributeTmp10"}}saveQuantity{{/capture}}{{capture name="classAttributeTmp10" assign="classAttributeTmp10"}}saveQuantity{{/capture}}  class="{{$classAttributeTmp10}}">{{$txt['107583::50001_10']}}</a>
												<a {{assign "classAttributeTmp11" ""}}  href="#addWrapper"{{capture name="classAttributeTmp11" assign="classAttributeTmp11"}}addWrapper{{/capture}}{{capture name="classAttributeTmp11" assign="classAttributeTmp11"}}addWrapper{{/capture}}  class="{{$classAttributeTmp11}}">
													<i class="icon icon-gift"/>{{$txt['107583::50001_101']}}</a>
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
							{{if  $xml->getItem("/shop/basket/delay_time[@unknown_delivery_time='true']")}}
								<div class="unknown_delivery_time">{{$txt['107583::95138_001a']}}
									<div>{{$txt['107583::95138_001']}}
										<a target="_blank" href="{{$xml->getItemEscape("/shop/contact/link/@url")}}">{{$txt['107583::95138_002']}}</a>
									</div>
								</div>
							{{/if}}
							{{if  $xml->getItem("/shop/basket/shipping_time")}}
							{{/if}}
							{{if  $xml->getItem("/shop/page/basket-details/product/price/@detalprice_net_formatted")}}
							{{/if}}
							{{if  $xml->getItem("/shop/page/basket-details/product/price/@maxprice_formatted")}}
							{{/if}}
							{{if  $xml->getItem("/shop/page/basket-details/product/price/@maxprice_net_formatted")}}
							{{/if}}
							{{if  $xml->getItem("/shop/page/basket-details/product/@code")}}
							{{/if}}
							{{if  $xml->getItem("/shop/page/basket-details/product/price//price/@points")}}
							{{/if}}
							{{if  $xml->getItem("/shop/page/basket-details/product/size/@name")}}
							{{/if}}
							{{if  $xml->getItem("/shop/basket/@product_comment_active")}}
							{{/if}}
						{{/if}}
						<!--Podsumowanie koszyka (basketedit_summary, 107586.1)-->
						{{capture name="txt_60826_advance_a" assign="txt_60826_advance_a"}}
							{{$txt['107586::60826_advance_a']}}
						{{/capture}}
						{{capture name="txt_60826_advance_header" assign="txt_60826_advance_header"}}
							{{$txt['107586::60826_advance_header']}}
						{{/capture}}
						{{capture name="show_always_instalment_68242" assign="show_always_instalment_68242"}}
							{{$txt['107586::show_always_instalment']}}
						{{/capture}}
						{{capture name="hours_68242" assign="hours_68242"}}
							{{$txt['107586::68242_hours']}}
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
								{{$txt['107586::63643_wholesalerPrice2']}}
							{{/capture}}
							{{capture name="wholesaler_shipping_gross" assign="wholesaler_shipping_gross"}}
								{{$txt['107586::63643_wholesaler_shipping_gross']}}
							{{/capture}}
							{{capture name="immediately_txt" assign="immediately_txt"}}
								{{$txt['107586::63643_immediately']}}
							{{/capture}}
							<div class="basketedit_summary_container">
								<div class="basketedit_summary">
									<div {{assign "classAttributeTmp12" ""}}{{capture name="classAttributeTmp12" assign="classAttributeTmp12"}}basketedit_summary_sub{{/capture}}{{capture name="classAttributeTmp12" assign="classAttributeTmp12"}}basketedit_summary_sub{{$txt['107586::n55363_class1']}}{{/capture}}  class="{{$classAttributeTmp12}}">
										<div class="basketedit_summary_left">
											{{if $txt_60826_advance_a and ( $xml->getItem("/shop/page/basket-details/summary/money/@advance_mode")  == (string) 'total' and  $xml->getItem("/shop/page/basket-details/summary/money/@prepaid")  == (string) 'true' and  $xml->getItem("/shop/page/basket-details/summary/money/@advance")  gt (string) 0)}}
												<div class="summary_left_advance">
													{{if $txt_60826_advance_header}}
														<div class="summary_left_advance_header">{{$txt_60826_advance_header}}
														</div>
													{{/if}}
													{{$txt['107586::60826_advance_info']}}
												</div>
											{{/if}}
											{{if  $xml->getItem("basket/@toshippingfree") gt (string) 0 and !( $xml->getItem("basket/@toshippingfree") == (string) '')}}
												<div class="toshippingfree">
													<div class="toshippingfree_sub">{{$txt['107586::60826_shipping']}}
														<span class="price">{{$xml->getItemEscape("basket/@shippinglimitfree_formatted")}}</span>
														{{if $wholesaler_shipping_gross}}
															&#160;#160;{{$wholesaler_shipping_gross}}
														{{/if}}
													</div>{{$txt['107586::52900_400']}}
													<b>{{$xml->getItemEscape("/shop/basket/@toshippingfree_formatted")}}</b>
													{{if $wholesaler_shipping_gross}}
														&#160;#160;{{$wholesaler_shipping_gross}}
													{{/if}}
													{{$txt['107586::52900_401']}}
												</div>
											{{/if}}
											{{if  $xml->getItem("/shop/client_data/client_balance/limit/@value")  gt (string) '0'}}
												<div class="basketedit_limit_section">
													<div class="basketedit_product_summary">
														<label>{{$txt['107586::53706_001a_limit']}}
														</label>
														<strong class="limit_total">{{$xml->getItemEscape("/shop/client_data/client_balance/limit/@value_formatted")}}</strong>
													</div>
													<div class="basketedit_product_summary">
														<label>{{$txt['107586::53706_001a_limit_touse']}}
														</label>
														<strong class="limit_touse">{{$xml->getItemEscape("/shop/client_data/client_balance/limit/@to_use_formatted")}}</strong>
													</div>
												</div>
											{{/if}}
											{{if ( $xml->getItem("page/basket-details/summary/points/@debit")) and ( $xml->getItem("page/basket-details/summary/points/@debit")  gt (string) 0)}}
												<div class="basketedit_summary_debit">{{$txt['107586::basketedit_summary_points_gain1']}}
													<b>{{$xml->getItemEscape("format-number(page/basket-details/summary/points/@debit, '#')")}}
														<span>{{$txt['107586::basketedit_points_pts']}}</span></b>{{$txt['107586::basketedit_summary_points_gain2']}}
													{{if  $xml->getItem("/shop/basket/@client_points")  neq (string) '0'}}
														{{$txt['107586::basketedit_points_info1']}}
														<b>{{$xml->getItemEscape("format-number(/shop/basket/@client_points, '#')")}}
															<span>{{$txt['107586::basketedit_points_pts']}}</span></b>{{$txt['107586::basketedit_dot']}}
													{{/if}}
												</div>
											{{/if}}
											{{if  $xml->getItem("page/basket-details/summary/payment/instalment")}}
												<div id="n67367_instalment" class="n67367_instalment">
													<h3>{{$txt['107586::n67367_raty_label']}}
													</h3>
													{{foreach from=$xml->getList("/shop/page/basket-details/summary/payment/instalment[@selected='true']") item=loop973}}
														<div class="instalment_value_1">
															{{if  $loop973->getItem("@value_formatted")}}
																<img class="instalment_value_1" src="{{$loop973->getItemEscape("@gfx_small")}}" alt="{{$loop973->getItemEscape("@name")}}"></img>
																<span class="instalment_value_1">{{$txt['107586::n67367_mbraty_txt']}}
																	<b>{{$loop973->getItemEscape("@value_formatted")}}</b>{{$txt['107586::n67367_mbraty_txt2']}}</span>
																<span class="n67367_section_txt">{{$loop973->getItemEscape("@name")}}{{$txt['107586::n67367_raty_opis']}}</span>
																<small class="instalment_value_2">{{$txt['107586::n67367_mbraty_txt3']}}{{$loop973->getItemEscape("@minprice")}}{{$loop973->getItemEscape("/shop/currency/@name")}}{{$txt['107586::n67367_mbraty_txt4']}}{{$loop973->getItemEscape("@maxprice")}}{{$loop973->getItemEscape("/shop/currency/@name")}}</small>
																{{if  $loop973->getItem("note")}}
																	<span class="btn_note">{{$txt['107586::n67367_mbraty_txt5']}}</span>
																	<div class="tooltipContent">{{$loop973->getItem("note/text()")}}
																	</div>
																{{/if}}
															{{else}}
																<span class="n67367_section_txt">{{$loop973->getItemEscape("@name")}}{{$txt['107586::n67367_raty_opis']}}</span>
															{{/if}}
														</div>
													{{/foreach}}
													<ul class="n67367_instalment">
														{{foreach from=$xml->getList("page/basket-details/summary/payment/instalment") item=loop1006}}
															<li>
																<a onclick="calculate_instalments('{{$loop1006->getItemEscape("@minprice")}}','{{$loop1006->getItemEscape("@maxprice")}}','{{$loop1006->getItemEscape("@priceTotal")}}','{{$loop1006->getItemEscape("@alert")}}',$(this).attr('data-window'),'{{$loop1006->getItemEscape("@maxquantity")}}','{{$loop1006->getItemEscape("@name")}}'); return false;" href="javascript:{{$loop1006->getItemEscape("@calculate")}}" data-window="{{$loop1006->getItemEscape("@calculate")}}">
																	<span>{{$txt['107586::n67367_oblicz_rate']}}{{$loop1006->getItemEscape("@name")}}</span>
																	<img src="{{$loop1006->getItemEscape("@gfx")}}" alt="{{$loop1006->getItemEscape("@name")}}"></img></a>
															</li>
														{{/foreach}}
													</ul>
												</div>
											{{/if}}
										</div>
										<div class="basketedit_summary_right">
											<div class="basketedit_calculations">
												<div class="basketedit_product_summary">
													<label>{{$txt['107586::53706_001a']}}
													</label>
													<strong>{{$xml->getItemEscape("/shop/page/basket-details/summary/money/@beforerebate_formatted")}}</strong>
												</div>
												{{if !(( $xml->getItem("basket/@shipping_undefined")  == (string) 'true') or ( $xml->getItem("basket/@hide_shipping_cost")  == (string) 'true') or ( $xml->getItem("basket/@hide_cost") == (string)'true'))}}
													<div class="basketedit_product_summary">
														<label>
															{{if  $xml->getItem("basket/@shipping_after_rebate")  gt (string) '0'}}
																{{$txt['107586::53706_002od']}}
															{{else}}
																{{$txt['107586::53706_002']}}
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
																{{$txt['107586::n53833_nodata']}}
															{{else}}
																{{$txt['107586::53706_002b']}}
															{{/if}}
															</strong>
													</div>
												{{/if}}
												{{if  $xml->getItem("/shop/page/basket-details/summary/money/@total_rebate") gt (string)0}}
													<div class="basketedit_rabats_summary">
														<label>{{$txt['107586::53706_001b']}}
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
																<label>{{$txt['107586::53706_001a_saldo']}}
																</label>
																<strong class="saldo_value minus_sign">{{$xml->getItemEscape("/shop/page/basket-details/summary/money/@balance_to_pay_formatted")}}</strong>
															{{elseif !($balance_to_pay  gt (string) 0) and !($balance_to_pay  == (string) '0.00')}}
																<label>{{$txt['107586::53706_001a_saldo2']}}
																</label>
																<strong class="saldo_value plus_sign">{{$xml->getItemEscape("substring-after(/shop/page/basket-details/summary/money/@balance_to_pay_formatted, '-')")}}</strong>
															{{/if}}
														{{/if}}
													</div>
												{{/if}}
											</div>
											<div class="basketedit_total_summary">
												<label>{{$txt['107586::53706_001c']}}
												</label>
												<strong>{{$xml->getItemEscape("/shop/page/basket-details/summary/money/@to_pay_formatted")}}
													{{if !( $xml->getItem("/shop/client_data/@uses_vat") == (string)'false')}}
														{{$txt['107586::53833_brutto']}}
													{{/if}}
													</strong>
												{{if ( $xml->getItem("basket/@points_used")) and ( $xml->getItem("basket/@points_used")  neq (string) 0)}}
													<b>{{$txt['107586::53833_andpts']}}
														<span>{{$xml->getItemEscape("basket/@points_used")}}{{$txt['107586::53833_justpts']}}</span></b>
												{{/if}}
											</div>
											{{if $txt_60826_advance_a and ( $xml->getItem("/shop/page/basket-details/summary/money/@advance")  gt (string) 0)}}
												<div class="basketedit_product_summary advance">
													{{if  $xml->getItem("/shop/page/basket-details/summary/money/@advance_mode")  == (string) 'default' or  $xml->getItem("/shop/page/basket-details/summary/money/@advance_mode")  == (string) 'none'}}
														{{if  $xml->getItem("/shop/page/basket-details/summary/money/@cash_on_delivery")  == (string) 'true' and  $xml->getItem("/shop/page/basket-details/summary/money/@prepaid")  == (string) 'false'}}
															<label class="txt_wrap">{{$txt['107586::60826_advance_a']}}
															</label>
															<strong>{{$xml->getItemEscape("/shop/page/basket-details/summary/money/@advance_formatted")}}</strong>
														{{elseif  $xml->getItem("/shop/page/basket-details/summary/money/@cash_on_delivery")  == (string) 'false' and  $xml->getItem("/shop/page/basket-details/summary/money/@prepaid")  == (string) 'true'}}
															<label class="txt_wrap">{{$txt['107586::60826_advance_b']}}
															</label>
															<strong>{{$xml->getItemEscape("/shop/page/basket-details/summary/money/@advance_formatted")}}</strong>
														{{elseif  $xml->getItem("/shop/page/basket-details/summary/money/@cash_on_delivery")  == (string) 'true' and  $xml->getItem("/shop/page/basket-details/summary/money/@prepaid")  == (string) 'true'}}
															<label class="txt_wrap">{{$txt['107586::60826_advance_c']}}
															</label>
															<strong>{{$xml->getItemEscape("/shop/page/basket-details/summary/money/@advance_formatted")}}</strong>
														{{/if}}
													{{elseif  $xml->getItem("/shop/page/basket-details/summary/money/@advance_mode")  == (string) 'total'}}
														<label class="txt_wrap">{{$txt['107586::60826_advance_c']}}
														</label>
														<strong>{{$xml->getItemEscape("/shop/page/basket-details/summary/money/@advance_formatted")}}</strong>
													{{/if}}
												</div>
											{{/if}}
										</div>
									</div>
								</div>
								<div class="basketedit_summary_buttons table_display summary_buttons">
									{{if  $xml->getItem("/shop/basket/shipping_time/@days") and !( $xml->getItem("basket/@shipping_undefined")  == (string) 'true')}}
										<div class="basketedit_summary_shipment_time d-sm-none" {{if $xml->getItem("/shop/basket/delay_time[@unknown_delivery_time='true']")}} style="display:none;" {{/if}}{{capture name="wys_1_68242" assign="wys_1_68242"}}{{$txt['107586::53706_00wys_1']}}{{/capture}} >
											{{if $wys_1_68242 and ( $xml->getItem("/shop/basket/shipping_time/@week_amount")  == (string) 0) and ( $xml->getItem("/shop/basket/shipping_time/@week_day"))}}
												{{$txt['107586::53706_00wys_0']}}
												{{if  $xml->getItem("/shop/basket/shipping_time/@today")  == (string) 'true'}}
													{{$txt['107586::53706_00wys_1']}}
												{{elseif  $xml->getItem("/shop/basket/shipping_time/@week_day")  == (string) 1}}
													{{$txt['107586::53706_00wys_2']}}
												{{elseif  $xml->getItem("/shop/basket/shipping_time/@week_day")  == (string) 2}}
													{{$txt['107586::53706_00wys_3']}}
												{{elseif  $xml->getItem("/shop/basket/shipping_time/@week_day")  == (string) 3}}
													{{$txt['107586::53706_00wys_4']}}
												{{elseif  $xml->getItem("/shop/basket/shipping_time/@week_day")  == (string) 4}}
													{{$txt['107586::53706_00wys_5']}}
												{{elseif  $xml->getItem("/shop/basket/shipping_time/@week_day")  == (string) 5}}
													{{$txt['107586::53706_00wys_6']}}
												{{elseif  $xml->getItem("/shop/basket/shipping_time/@week_day")  == (string) 6}}
													{{$txt['107586::53706_00wys_7']}}
												{{elseif  $xml->getItem("/shop/basket/shipping_time/@week_day")  == (string) 7}}
													{{$txt['107586::53706_00wys_8']}}
												{{/if}}
											{{elseif $immediately_txt and ( $xml->getItem("/shop/basket/shipping_time/@days")  == (string) 0) and ( $xml->getItem("/shop/basket/shipping_time/@hours")  == (string) 0) and ( $xml->getItem("/shop/basket/shipping_time/@minutes")  == (string) 0)}}
												{{$immediately_txt}}
											{{else}}
												{{$txt['107586::53706_003']}}
												<b>
													{{if ( $xml->getItem("/shop/basket/shipping_time/@days")  == (string) 0) and ( $xml->getItem("/shop/basket/shipping_time/@hours")  == (string) 0) and ( $xml->getItem("/shop/basket/shipping_time/@minutes")  == (string) 0)}}
														{{$txt['107586::53706_003c24']}}
													{{/if}}
													{{if  $xml->getItem("/shop/basket/shipping_time/@days")  gt (string) 0}}
														{{$xml->getItemEscape("/shop/basket/shipping_time/@days")}}
														{{if  $xml->getItem("/shop/basket/shipping_time/@days")  == (string)'1'}}
															{{$txt['107586::53706_003c']}}
														{{else}}
															{{$txt['107586::53706_003b']}}
														{{/if}}
													{{/if}}
													{{if $hours_68242}}
														{{if  $xml->getItem("/shop/basket/shipping_time/@hours")  gt (string) 0}}
															{{$xml->getItemEscape("/shop/basket/shipping_time/@hours")}}
															{{if  $xml->getItem("/shop/basket/shipping_time/@hours")  gt (string) 1}}
																{{$hours_68242}}
															{{else}}
																{{$txt['107586::53706_003godz']}}
															{{/if}}
														{{/if}}
													{{else}}
														{{if  $xml->getItem("/shop/basket/shipping_time/@hours")  gt (string) 0}}
															{{$xml->getItemEscape("/shop/basket/shipping_time/@hours")}}{{$txt['107586::53706_003godz']}}
														{{/if}}
													{{/if}}
													{{if  $xml->getItem("/shop/basket/shipping_time/@minutes")  gt (string) 0}}
														{{$xml->getItemEscape("/shop/basket/shipping_time/@minutes")}}{{$txt['107586::53706_003min']}}
													{{/if}}
													</b>
											{{/if}}
										</div>
									{{/if}}
									<div class="btn_wrapper d-sm-none">
										<a {{assign "classAttributeTmp13" ""}}{{capture name="classAttributeTmp13" assign="classAttributeTmp13"}}n53706_button1 btn_arrow{{/capture}} href="/order1.php" id="basket_go_next_phone"{{capture name="classAttributeTmp13" assign="classAttributeTmp13"}}btn-large btn_arrow n53706_button1 {{/capture}}{{if $xml->getItem("/shop/order_edit/@order_id")}}{{capture name="classAttributeTmp13" assign="classAttributeTmp13"}}btn-large n53706_button1 btn_arrow basketedit_change_order{{/capture}}{{/if}}{{if $xml->getItem("/shop/page/communicates/warning[@type='order_minimal_wholesale_blocked']")}}{{capture name="classAttributeTmp13" assign="classAttributeTmp13"}}btn-large n53706_button1 btn_arrow basketedit_disable{{/capture}} onclick="Alertek.show_alert('{{$txt['107586::w0000_1']}} {{if $signbeforeprice == (string) 'true'}}{{$xml->getItemEscape("/shop/currency/@name")}}{{$signbetweenpricecurrency}}{{/if}}{{$xml->getItemEscape("/shop/page/communicates/warning/@value")}}{{if $signbeforeprice == (string) 'false'}}{{$signbetweenpricecurrency}}{{$xml->getItemEscape("/shop/currency/@name")}}{{/if}}');" {{/if}}  class="{{$classAttributeTmp13}}">{{$txt['107586::53706_005']}}</a>
									</div>
									<span id="basketedit_summary_buttons_sepratator" class="d-sm-none">
										<span>{{$txt['107586::546547_butt_separ']}}</span></span>
									<div class="btn_wrapper">
										<a class="button_go_shopping" href=" {{if $xml->getItem("/shop/lastsearch/text()")}}{{$xml->getItemEscape("/shop/lastsearch/text()")}}{{elseif $xml->getItem("/shop/page/basket-details/direct-navigation/@url")}}{{$xml->getItemEscape("/shop/page/basket-details/direct-navigation/@url")}}{{else}}/{{/if}} ">{{$txt['107586::53706_004']}}</a>
									</div>
									{{if  $xml->getItem("/shop/basket/shipping_time/@days") and !( $xml->getItem("basket/@shipping_undefined")  == (string) 'true')}}
										<div class="basketedit_summary_shipment_time d-none d-sm-table-cell" {{if $xml->getItem("/shop/basket/delay_time[@unknown_delivery_time='true']")}} style="display:none;" {{/if}}{{capture name="wys_1_68242" assign="wys_1_68242"}}{{$txt['107586::53706_00wys_1']}}{{/capture}} >
											{{if $wys_1_68242 and ( $xml->getItem("/shop/basket/shipping_time/@week_amount")  == (string) 0) and ( $xml->getItem("/shop/basket/shipping_time/@week_day"))}}
												{{$txt['107586::53706_00wys_0']}}
												{{if  $xml->getItem("/shop/basket/shipping_time/@today")  == (string) 'true'}}
													{{$txt['107586::53706_00wys_1']}}
												{{elseif  $xml->getItem("/shop/basket/shipping_time/@week_day")  == (string) 1}}
													{{$txt['107586::53706_00wys_2']}}
												{{elseif  $xml->getItem("/shop/basket/shipping_time/@week_day")  == (string) 2}}
													{{$txt['107586::53706_00wys_3']}}
												{{elseif  $xml->getItem("/shop/basket/shipping_time/@week_day")  == (string) 3}}
													{{$txt['107586::53706_00wys_4']}}
												{{elseif  $xml->getItem("/shop/basket/shipping_time/@week_day")  == (string) 4}}
													{{$txt['107586::53706_00wys_5']}}
												{{elseif  $xml->getItem("/shop/basket/shipping_time/@week_day")  == (string) 5}}
													{{$txt['107586::53706_00wys_6']}}
												{{elseif  $xml->getItem("/shop/basket/shipping_time/@week_day")  == (string) 6}}
													{{$txt['107586::53706_00wys_7']}}
												{{elseif  $xml->getItem("/shop/basket/shipping_time/@week_day")  == (string) 7}}
													{{$txt['107586::53706_00wys_8']}}
												{{/if}}
											{{elseif $immediately_txt and ( $xml->getItem("/shop/basket/shipping_time/@days")  == (string) 0) and ( $xml->getItem("/shop/basket/shipping_time/@hours")  == (string) 0) and ( $xml->getItem("/shop/basket/shipping_time/@minutes")  == (string) 0)}}
												{{$immediately_txt}}
											{{else}}
												{{$txt['107586::53706_003']}}
												<b>
													{{if ( $xml->getItem("/shop/basket/shipping_time/@days")  == (string) 0) and ( $xml->getItem("/shop/basket/shipping_time/@hours")  == (string) 0) and ( $xml->getItem("/shop/basket/shipping_time/@minutes")  == (string) 0)}}
														{{$txt['107586::53706_003c24']}}
													{{/if}}
													{{if  $xml->getItem("/shop/basket/shipping_time/@days")  gt (string) 0}}
														{{$xml->getItemEscape("/shop/basket/shipping_time/@days")}}
														{{if  $xml->getItem("/shop/basket/shipping_time/@days")  == (string)'1'}}
															{{$txt['107586::53706_003c']}}
														{{else}}
															{{$txt['107586::53706_003b']}}
														{{/if}}
													{{/if}}
													{{if $hours_68242}}
														{{if  $xml->getItem("/shop/basket/shipping_time/@hours")  gt (string) 0}}
															{{$xml->getItemEscape("/shop/basket/shipping_time/@hours")}}
															{{if  $xml->getItem("/shop/basket/shipping_time/@hours")  gt (string) 1}}
																{{$hours_68242}}
															{{else}}
																{{$txt['107586::53706_003godz']}}
															{{/if}}
														{{/if}}
													{{else}}
														{{if  $xml->getItem("/shop/basket/shipping_time/@hours")  gt (string) 0}}
															{{$xml->getItemEscape("/shop/basket/shipping_time/@hours")}}{{$txt['107586::53706_003godz']}}
														{{/if}}
													{{/if}}
													{{if  $xml->getItem("/shop/basket/shipping_time/@minutes")  gt (string) 0}}
														{{$xml->getItemEscape("/shop/basket/shipping_time/@minutes")}}{{$txt['107586::53706_003min']}}
													{{/if}}
													</b>
											{{/if}}
										</div>
									{{/if}}
									<div class="btn_wrapper d-none d-sm-table-cell">
										<a {{assign "classAttributeTmp14" ""}}{{capture name="classAttributeTmp14" assign="classAttributeTmp14"}}n53706_button1 btn_arrow{{/capture}} href="/order1.php" id="basket_go_next"{{capture name="classAttributeTmp14" assign="classAttributeTmp14"}}btn-large btn_arrow n53706_button1 {{/capture}}{{if $xml->getItem("/shop/order_edit/@order_id")}}{{capture name="classAttributeTmp14" assign="classAttributeTmp14"}}btn-large n53706_button1 btn_arrow basketedit_change_order{{/capture}}{{/if}}{{if $xml->getItem("/shop/page/communicates/warning[@type='order_minimal_wholesale_blocked']")}}{{capture name="classAttributeTmp14" assign="classAttributeTmp14"}}btn-large n53706_button1 btn_arrow basketedit_disable{{/capture}} onclick="Alertek.show_alert('{{$txt['107586::w0000_1']}} {{if $signbeforeprice == (string) 'true'}}{{$xml->getItemEscape("/shop/currency/@name")}}{{$signbetweenpricecurrency}}{{/if}}{{$xml->getItemEscape("/shop/page/communicates/warning/@value")}}{{if $signbeforeprice == (string) 'false'}}{{$signbetweenpricecurrency}}{{$xml->getItemEscape("/shop/currency/@name")}}{{/if}}');" {{/if}}  class="{{$classAttributeTmp14}}">{{$txt['107586::53706_005']}}</a>
									</div>
								</div>
							</div>
						{{/if}}
						<script>
            var client_data_uses_vat = '{{$xml->getItemEscape("/shop/client_data/@uses_vat")}}';
        						</script>

						<!--Rabaty na stronie koszyka (basketedit_rebates, 107589.1)-->
						{{capture name="showGifts" assign="showGifts"}}
							{{$txt['107589::basketedit_showGifts']}}
						{{/capture}}
						{{if  $xml->getItem("/shop/page[@type='basketedit']")}}
							{{if  $xml->getItem("/shop/page/rebates[@rebates_codes='y']")}}
								<div class="basketedit_rebatecodes_outline">
									{{if  $xml->getItem("/shop/page/rebates/code_details[@active='y']")}}
										<div class="basketedit_rebatecode_title">
											<span class="basketedit_rebatecode_title">{{$txt['107589::basketedit_rebatecode_accepted']}}</span>
											<span class="basketedit_rebatecode_value">{{$xml->getItemEscape("/shop/page/rebates/code_details/@number")}}</span>
											<div class="basketedit_rebatecode_action">
												<a id="a_remove_code" href="#">{{$txt['107589::57228_remove_code']}}</a>
												<a id="a_change_code" href="#">{{$txt['107589::57228_a_change_code']}}</a>
											</div>
											<form action="/settings.php?from=basket" method="post" id="change_code">
												<input class="basketedit_rebatecode_input" name="rebates_codes" type="text" value=""/>
												<input id="global_rebates_codes" name="global_rebates_codes" value="add" type="hidden"/>
												<input {{assign "valueAttributeTmp35" ""}}{{assign "classAttributeTmp15" ""}}{{capture name="classAttributeTmp15" assign="classAttributeTmp15"}}basketedit_change_code{{/capture}} type="submit"{{capture name="valueAttributeTmp35" assign="valueAttributeTmp35"}}{{/capture}}{{capture name="classAttributeTmp15" assign="classAttributeTmp15"}}btn-small basketedit_change_code{{/capture}}{{capture name="valueAttributeTmp35" assign="valueAttributeTmp35"}}{{$txt['107589::57228_change_code']}}{{/capture}}  class="{{$classAttributeTmp15}}"  value="{{$valueAttributeTmp35}}"></input>
											</form>
										</div>
										<div class="basketedit_rebatecode_r">
											{{if  $xml->getItem("/shop/page/rebates/code_details/@min_order")  gt (string) 0}}
												<div class="basketedit_rebatecode_title_out">
													<span class="basketedit_rebatecode_title">{{$txt['107589::basketedit_min_order']}}</span>
													<span class="basketedit_rebatecode_value">{{$xml->getItemEscape("/shop/page/rebates/code_details/@min_order")}}{{$signbetweenpricecurrency}}{{$xml->getItemEscape("/shop/currency/@name")}}</span>
												</div>
											{{/if}}
											{{if  $xml->getItem("/shop/page/rebates/code_details/@expires")}}
												<div class="basketedit_rebatecode_title_out">
													<span class="basketedit_rebatecode_title">{{$txt['107589::basketedit_rebatecode_expires']}}</span>
													<span class="basketedit_rebatecode_value">{{$xml->getItemEscape("/shop/page/rebates/code_details/@expires")}}</span>
												</div>
											{{/if}}
											<a {{assign "classAttributeTmp16" ""}}  href="/client-rebate.php"{{capture name="classAttributeTmp16" assign="classAttributeTmp16"}}basketedit_client_rebate{{/capture}} id="basketedit_client_rebate"{{capture name="classAttributeTmp16" assign="classAttributeTmp16"}}btn-small basketedit_client_rebate{{/capture}} title="{{$txt['107589::basketedit_client_rebate_title']}}"  class="{{$classAttributeTmp16}}">{{$txt['107589::basketedit_client_rebate']}}</a>
										</div>
									{{/if}}
									{{if  $xml->getItem("/shop/page/rebates/code_details[@active='n']")}}
										{{if  $xml->getItem("/shop/rebate_code_delete_client_advanced_rebate[@active='y']")}}
											<div id="basketedit_rebatecode_activate_info" style="display:none;">{{$txt['107589::text_57854_1']}}
											</div>
										{{/if}}
										<span class="basketedit_rebatecode_activate_txt">{{$txt['107589::basketedit_rebatecode_givecode']}}</span>
										<form action="/settings.php?from=basket" method="post">{{$txt['107589::text_57854']}}
											<input onclick="$('#basketedit_rebatecode_activate_info').fadeIn('slow');" class="basketedit_rebatecode_input" name="rebates_codes" type="text" value=""/>
											<input id="global_rebates_codes" name="global_rebates_codes" value="add" type="hidden"/>
											<input {{assign "valueAttributeTmp36" ""}}{{assign "classAttributeTmp17" ""}}{{capture name="classAttributeTmp17" assign="classAttributeTmp17"}}basketedit_submit_code{{/capture}} type="submit"{{capture name="valueAttributeTmp36" assign="valueAttributeTmp36"}}{{/capture}}{{capture name="classAttributeTmp17" assign="classAttributeTmp17"}}btn-small basketedit_submit_code{{/capture}}{{capture name="valueAttributeTmp36" assign="valueAttributeTmp36"}}{{$txt['107589::57228_02989']}}{{/capture}}  class="{{$classAttributeTmp17}}"  value="{{$valueAttributeTmp36}}"></input>
										</form>
										<a {{assign "classAttributeTmp18" ""}}  href="/client-rebate.php"{{capture name="classAttributeTmp18" assign="classAttributeTmp18"}}basketedit_client_rebate{{/capture}}{{capture name="classAttributeTmp18" assign="classAttributeTmp18"}}btn-small basketedit_client_rebate{{/capture}} title="{{$txt['107589::basketedit_client_rebate_title']}}"  class="{{$classAttributeTmp18}}">{{$txt['107589::basketedit_client_rebate_0']}}</a>
									{{/if}}
								</div>
							{{/if}}
							{{if ( $xml->getItem("/shop/rebatesLocal") and ( $xml->getItem("/shop/rebatesLocal/rebate/@value")  gt (string) 0 )) or  $xml->getItem("/shop/page/basket-details/rebate_local/active/products/product") or  $xml->getItem("/shop/page/basket-details/rebate_local/rebates/rebate/products/product") or  $xml->getItem("/shop/page/rebates_for_points/rebate")}}
								<div id="basketedit_gifts" class="bg_alter">
									{{if ( $xml->getItem("/shop/rebatesLocal") and ( $xml->getItem("/shop/rebatesLocal/rebate/@value")  gt (string) 0 )) or  $xml->getItem("/shop/rebatecode/@code")}}
										<div class="basket_rabates col-lg-4 col-md-6 col-12" {{if $xml->getItem("/shop/page/basket-details/rebate_local/active/products/product") or $xml->getItem("/shop/page/basket-details/rebate_local/rebates/rebate/products/product")}} STYLE="float: right;" {{/if}}>
											{{if  $xml->getItem("/shop/rebatesLocal") and ( $xml->getItem("/shop/rebatesLocal/rebate/@value")  gt (string) 0 )}}
												<div class="basket_rabates_label">{{$txt['107589::31019_001']}}
												</div>
												<table class="menu_rebates">
													<tr>
														<th>
															<span>{{$txt['107589::31019_002']}}</span>
														</th>
														<th class="menu_rebates_value">
															<span>{{$txt['107589::31019_003']}}</span>
														</th>
													</tr>
													{{foreach from=$xml->getList("/shop/rebatesLocal/rebate[@value > 0 ]") item=loop1419}}
														<tr {{if $loop1419->getItem("@selected") == (string) 'selected'}} class="selected" {{/if}}>
															<td class="menu_rebates_threshold">{{$loop1419->getItemEscape("format-number(@threshold, '#')")}}{{literal}}{{/literal}}{{$loop1419->getItemEscape("/shop/currency/@name")}}
																{{if !( $loop1419->getItem("@selected")  == (string) 'selected') and  $loop1419->getItem("@left")  gt (string) 0}}
																	{{$txt['107589::31019_005aa']}}
																	<span>{{$txt['107589::31019_005ab']}}{{$loop1419->getItemEscape("@left_formatted")}}</span>
																{{/if}}
															</td>
															<td class="menu_rebates_value">
																{{if  $loop1419->getItem("@selected")  == (string) 'selected'}}
																	<strong>{{$txt['107589::31019_005a']}}</strong>
																{{/if}}
																{{if  $loop1419->getItem("contains(@value, '.00')")}}
																	{{$loop1419->getItemEscape("format-number(@value, '#')")}}{{$txt['107589::31019_005']}}
																{{else}}
																	{{$loop1419->getItemEscape("@value")}}{{$txt['107589::31019_005']}}
																{{/if}}
															</td>
														</tr>
													{{/foreach}}
												</table>
											{{/if}}
										</div>
									{{/if}}
									{{if  $xml->getItem("/shop/page/basket-details/rebate_local/active/products/product") or  $xml->getItem("/shop/page/basket-details/rebate_local/rebates/rebate/products/product")}}
										<div class="basketedit_gifts_label col-lg-8 col-md-6 col-12">
											<strong>{{$txt['107589::basketedit_gift_00']}}</strong>
											<span>{{$txt['107589::basketedit_gift_01']}}</span>
											{{if !($showGifts  == (string) '1')}}
												<a {{assign "classAttributeTmp19" ""}}  href="#showGifts"{{capture name="classAttributeTmp19" assign="classAttributeTmp19"}}btn-small basketedit_gifts_btn{{/capture}}{{capture name="classAttributeTmp19" assign="classAttributeTmp19"}}btn btn-inverse basketedit_gifts_btn{{/capture}}{{if $xml->getItem("/shop/page/basket-details/rebate_local/active/selected/product/@id")}}{{capture name="classAttributeTmp19" assign="classAttributeTmp19"}}btn btn-inverse basketedit_gifts_btn active{{/capture}}{{/if}} title="{{$txt['107589::basketedit_gift_01a']}}"  class="{{$classAttributeTmp19}}">{{$txt['107589::basketedit_gift_01a']}}</a>
											{{/if}}
										</div>
										<div {{assign "styleAttributeTmp1" ""}}  class="basketedit_gifts_wrapper"{{capture name="styleAttributeTmp1" assign="styleAttributeTmp1"}}display: none;{{/capture}}{{if $showGifts == (string) '1' or $xml->getItem("/shop/page/basket-details/rebate_local/active/selected/product/@id")}}{{capture name="styleAttributeTmp1" assign="styleAttributeTmp1"}}display: block;{{/capture}}{{/if}}  style="{{$styleAttributeTmp1}}">
											{{if  $xml->getItem("/shop/page/basket-details/rebate_local/active/products/product")}}
												<p class="gift_info">{{$txt['107589::basketedit_gift_1a']}}
													<b>
														{{if $signbeforeprice  == (string) 'true'}}
															{{$xml->getItemEscape("/shop/currency/@name")}}{{$signbetweenpricecurrency}}
														{{/if}}
														{{$xml->getItemEscape("/shop/page/basket-details/rebate_local/active/@threshold")}}
														{{if $signbeforeprice  == (string) 'false'}}
															{{$signbetweenpricecurrency}}{{$xml->getItemEscape("/shop/currency/@name")}}
														{{/if}}
														</b>{{$txt['107589::basketedit_gift_4a']}}
												</p>
											{{/if}}
											<ul>
												{{foreach from=$xml->getList("/shop/page/basket-details/rebate_local/active") item=loop1473}}
													{{foreach from=$loop1473->getList("products/product") item=loop1475}}
														<li {{assign "classAttributeTmp20" ""}}{{capture name="classAttributeTmp20" assign="classAttributeTmp20"}}gift_enable col-lg-3 col-md-4 col-sm-6 col-12{{/capture}}{{if $loop1475->getItem("@id") == (string) $loop1475->getItem("/shop/page/basket-details/rebate_local/active/selected/product/@id")}}{{capture name="classAttributeTmp20" assign="classAttributeTmp20"}}gift_enable col-lg-3 col-md-4 col-sm-6 col-12 gift_active{{/capture}}{{/if}}  class="{{$classAttributeTmp20}}">
															<div class="gift_item_sub">
																<input type="radio" name="radio_gift" {{if $loop1475->getItem("@id") == (string) $loop1475->getItem("/shop/page/basket-details/rebate_local/active/selected/product/@id")}} checked="checked" {{/if}}></input>
																<input type="hidden" name="product[0]" value="{{$loop1475->getItemEscape("@id")}}"></input>
																<input type="hidden" value="1" name="gift[0]"/>
																<input type="hidden" value="1" name="set_quantity[0]"/>
																<div class="gift_item_icon">
																	<img alt="{{$loop1475->getItemEscape("name")}}" src="{{$loop1475->getItemEscape("icon_small")}}"></img>
																</div>
																<div class="gift_item_info">
																	<h3>
																		{{if  $loop1475->getItem("@id") == (string) $loop1475->getItem("/shop/page/basket-details/rebate_local/active/selected/product/@id")}}
																			<div id="your_gift_txt">{{$txt['107589::68756_js_txt_1']}}
																			</div>
																		{{/if}}
																		<strong class="gift_item_name">{{$loop1475->getItemEscape("name")}}</strong>
																	</h3>
																	{{if  $loop1475->getItem("sizes/size/@type")  == (string) 'uniw' or !( $loop1475->getItem("sizes/size"))}}
																		<input type="hidden" name="size[0]" value="{{$loop1475->getItemEscape("sizes/size/@type")}}"></input>
																	{{elseif count( $loop1475->getList("sizes/size"))  == (string) 1}}
																		<input type="hidden" name="size[0]" value="{{$loop1475->getItemEscape("sizes/size/@type")}}"></input>
																		<div class="gift_choose_size">
																			<label>{{$txt['107589::55128_rozmiar']}}
																			</label>
																			{{foreach from=$loop1475->getList("sizes/size") item=loop1511}}
																				{{$loop1511->getItemEscape("@description")}}
																			{{/foreach}}
																		</div>
																	{{else}}
																		<div class="gift_choose_size">
																			<label>{{$txt['107589::55128_rozmiar']}}
																			</label>
																			<select>
																				{{foreach from=$loop1475->getList("sizes/size[@amount != 0]") item=loop1521}}
																					<option {{if $loop1521->getItem("@amount") == (string) '0'}} class="no_gift" {{/if}}{{if $loop1521->getItem("@type") == (string) $loop1521->getItem("/shop/page/basket-details/rebate_local/active/selected/product/@size") and $loop1521->getItem("../../@id") == (string) $loop1521->getItem("/shop/page/basket-details/rebate_local/active/selected/product/@id")}} selected="selected" {{/if}} value="{{$loop1521->getItemEscape("@type")}}">{{$loop1521->getItemEscape("@description")}}
																					</option>
																				{{/foreach}}
																			</select>
																			<input type="hidden" name="size[0]" value="{{$loop1475->getItemEscape("sizes/size/@type")}}"></input>
																		</div>
																	{{/if}}
																	{{if  $loop1475->getItem("@link")}}
																		<div class="gift_tooltip" style="display:none;">
																			<a target="_blank" class="gift_description" href="{{$loop1475->getItemEscape("@link")}}">{{$txt['107589::55128_more']}}</a>
																			<div class="gift_choose">{{$txt['107589::55128_choose']}}
																			</div>
																			<div class="gift_resign">{{$txt['107589::55128_resign']}}
																			</div>
																		</div>
																	{{/if}}
																	{{if  $loop1475->getItem("price/@beforerebate")  gt (string) 0}}
																		<div class="gift_price">
																			<b>{{$txt['107589::basketedit_rebatelvels_cost']}}</b>
																			<span>{{$loop1475->getItemEscape("price/@beforerebate_formatted")}}</span>
																		</div>
																	{{elseif  $loop1475->getItem("price/@value")  gt (string) 0}}
																		<div class="gift_price">
																			<b>{{$txt['107589::basketedit_rebatelvels_cost']}}</b>
																			<span>{{$loop1475->getItemEscape("price/@price_formatted")}}</span>
																		</div>
																	{{else}}
																	{{/if}}
																</div>
															</div>
														</li>
													{{/foreach}}
												{{/foreach}}
												{{foreach from=$xml->getList("/shop/page/basket-details/rebate_local/rebates/rebate[products/product][1]") item=loop1575}}
													{{if  $loop1575->getItem("products/product")}}
														<li class="gift_label_needs">
															{{if ( $loop1575->getItem("@left_price")  gt (string) 0) and ( $loop1575->getItem("@left_quantity")  gt (string) 0)}}
																<span>{{$txt['107589::basketedit_gift_01_1']}}{{$loop1575->getItemEscape("@left_price_formatted")}}{{$txt['107589::basketedit_gift_01_1a']}}{{$loop1575->getItemEscape("@left_quantity")}}
																	{{if ( $loop1575->getItem("@left_quantity")  == (string) '1' )}}
																		{{$txt['107589::61330_left_quantity_txt_1']}}
																	{{elseif  ( $loop1575->getItem("substring(@left_quantity, string-length(@left_quantity), 1)")  == (string) '2') or ( $loop1575->getItem("substring(@left_quantity, string-length(@left_quantity), 1)") == (string)'3') or ( $loop1575->getItem("substring(@left_quantity, string-length(@left_quantity), 1)") == (string)'4') }}
																		{{$txt['107589::61330_left_quantity_txt_2']}}
																	{{else}}
																		{{$txt['107589::61330_left_quantity_txt_3']}}
																	{{/if}}
																	</span>
															{{elseif !( $loop1575->getItem("@left_price")  gt (string) 0) and ( $loop1575->getItem("@left_quantity")  gt (string) 0)}}
																<span>{{$txt['107589::basketedit_gift_01_1jeszcze']}}{{$loop1575->getItemEscape("@left_quantity")}}
																	{{if ( $loop1575->getItem("@left_quantity")  == (string) '1' )}}
																		{{$txt['107589::61330_left_quantity_txt_1a']}}
																	{{elseif  ( $loop1575->getItem("substring(@left_quantity, string-length(@left_quantity), 1)")  == (string) '2') or ( $loop1575->getItem("substring(@left_quantity, string-length(@left_quantity), 1)") == (string)'3') or ( $loop1575->getItem("substring(@left_quantity, string-length(@left_quantity), 1)") == (string)'4') }}
																		{{$txt['107589::61330_left_quantity_txt_2a']}}
																	{{else}}
																		{{$txt['107589::61330_left_quantity_txt_3a']}}
																	{{/if}}
																	</span>
															{{elseif ( $loop1575->getItem("@left_price")  gt (string) 0) and !( $loop1575->getItem("@left_quantity")  gt (string) 0)}}
																<span>{{$txt['107589::basketedit_gift_01_1']}}{{$loop1575->getItemEscape("@left_price_formatted")}}</span>
															{{/if}}
														</li>
													{{/if}}
													{{foreach from=$loop1575->getList("products/product") item=loop1598}}
														<li class="gift_disable showTip_gift col-lg-3 col-md-4 col-sm-6 col-12">
															<div class="gift_item_sub">
																<input type="radio" disabled="disabled" name="radio_gift" value="{{$loop1598->getItemEscape("@id")}}"></input>
																<div class="gift_item_icon">
																	<img alt="{{$loop1598->getItemEscape("name")}}" src="{{$loop1598->getItemEscape("icon_small")}}"></img>
																</div>
																<div class="gift_item_info">
																	<h3>
																		<strong class="gift_item_name">{{$loop1598->getItemEscape("name")}}</strong>
																	</h3>
																	{{if  $loop1598->getItem("sizes/size/@type")  == (string) 'uniw' or !( $loop1598->getItem("sizes/size"))}}
																		<input type="hidden" name="size[0]" value="{{$loop1598->getItemEscape("sizes/size/@type")}}"></input>
																	{{else}}
																		<div class="gift_choose_size">
																			<label>{{$txt['107589::55128_rozmiar']}}
																			</label>
																			{{foreach from=$loop1598->getList("sizes/size") item=loop1618}}
																				{{$loop1618->getItemEscape("@description")}}
																				{{if !( $loop1618@iteration  == (string) $loop1618@total )}}
																					{{$txt['107589::55128_prz']}}
																				{{/if}}
																			{{/foreach}}
																		</div>
																	{{/if}}
																	{{if  $loop1598->getItem("@link")}}
																		<a target="_blank" href="{{$loop1598->getItemEscape("@link")}}">{{$txt['107589::55128_more']}}</a>
																	{{/if}}
																	{{if  $loop1598->getItem("price/@beforerebate")  gt (string) 0}}
																		<div class="gift_price">
																			<b>{{$txt['107589::basketedit_rebatelvels_cost']}}</b>
																			<span>{{$loop1598->getItemEscape("price/@beforerebate_formatted")}}</span>
																		</div>
																	{{elseif  $loop1598->getItem("price/@value")  gt (string) 0}}
																		<div class="gift_price">
																			<b>{{$txt['107589::basketedit_rebatelvels_cost']}}</b>
																			<span>{{$loop1598->getItemEscape("price/@price_formatted")}}</span>
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
														<span class="rebates_for_points col-12">{{$txt['107589::31019_002k']}}</span>
													</th>
												</tr>
												<tr>
													<td class="rebates_for_points">
														{{foreach from=$xml->getList("/shop/page/rebates_for_points/rebate") item=loop1670}}
															<div class="col-lg-4 col-md-6 col-12">
																{{if  $loop1670->getItem("@order_link")}}
																	<a {{assign "classAttributeTmp21" ""}}{{capture name="classAttributeTmp21" assign="classAttributeTmp21"}}btn for_points{{/capture}}{{capture name="classAttributeTmp21" assign="classAttributeTmp21"}}btn for_points{{/capture}} href="{{$loop1670->getItemEscape("@order_link")}}" {{if $loop1670->getItem("/shop/rebate_for_profit_points_delete_client_advanced_rebate[@active='y']")}} title="{{$txt['107589::31019_005_3']}}" data-title="{{$txt['107589::31019_005_2']}}" data-button_txt="{{$txt['107589::31019_005_1']}}"{{capture name="classAttributeTmp21" assign="classAttributeTmp21"}}btn for_points confirmation_link{{/capture}}{{/if}}{{if $loop1670->getItem("/shop/rebate_for_profit_points_delete_rebate_code[@active='y']")}} title="{{$txt['107589::31019_005_3_a']}}" data-title="{{$txt['107589::31019_005_2']}}" data-button_txt="{{$txt['107589::31019_005_1']}}"{{capture name="classAttributeTmp21" assign="classAttributeTmp21"}}btn for_points confirmation_link{{/capture}}{{/if}}{{if $loop1670->getItem("@selected") == (string) 'selected'}}{{capture name="classAttributeTmp21" assign="classAttributeTmp21"}}btn for_points selected{{/capture}}{{if $loop1670->getItem("/shop/rebate_for_profit_points_delete_rebate_code[@active='y']")}}{{capture name="classAttributeTmp21" assign="classAttributeTmp21"}}btn for_points selected confirmation_link{{/capture}}{{/if}}{{if $loop1670->getItem("/shop/rebate_for_profit_points_delete_client_advanced_rebate[@active='y']")}}{{capture name="classAttributeTmp21" assign="classAttributeTmp21"}}btn for_points selected confirmation_link{{/capture}}{{/if}}{{/if}}  class="{{$classAttributeTmp21}}">
																		<span class="for_points_value">
																			{{if  $loop1670->getItem("@selected")  == (string) 'selected'}}
																				<strong>{{$txt['107589::31019_005a']}}</strong>
																			{{/if}}
																			<span>{{$txt['107589::31019_005rr']}}
																				{{if  $loop1670->getItem("@rebate_type") == (string)'quota'}}
																					{{$loop1670->getItemEscape("format-number(@threshold, '#')")}}{{literal}}{{/literal}}{{$loop1670->getItemEscape("/shop/currency/@name")}}
																				{{else}}
																					{{$loop1670->getItemEscape("format-number(@threshold, '#')")}}{{$txt['107589::31019_005']}}
																				{{/if}}
																				</span>
																			{{if  $loop1670->getItem("@permanent") == (string)'true'}}
																				{{$txt['107589::31019_005st']}}
																			{{else}}
																				{{$txt['107589::31019_005tor']}}
																			{{/if}}
																			</span>
																		<span class="for_points_points">{{$loop1670->getItemEscape("format-number(@points, '#')")}}{{$txt['107589::31019_005pkt']}}</span></a>
																{{else}}
																	<div {{assign "classAttributeTmp22" ""}}{{capture name="classAttributeTmp22" assign="classAttributeTmp22"}}btn for_points{{/capture}}{{if $loop1670->getItem("@selected") == (string) 'selected'}}{{capture name="classAttributeTmp22" assign="classAttributeTmp22"}}btn for_points selected{{/capture}}{{/if}}  class="{{$classAttributeTmp22}}">
																		<span class="for_points_value">
																			{{if  $loop1670->getItem("@selected")  == (string) 'selected'}}
																				<strong>{{$txt['107589::31019_005a']}}</strong>
																			{{/if}}
																			<span>{{$txt['107589::31019_005rr']}}
																				{{if  $loop1670->getItem("@rebate_type") == (string)'quota'}}
																					{{$loop1670->getItemEscape("@threshold_formatted")}}
																				{{else}}
																					{{$loop1670->getItemEscape("@threshold")}}{{$txt['107589::31019_005']}}
																				{{/if}}
																				</span>
																			{{if  $loop1670->getItem("@permanent") == (string)'true'}}
																				{{$txt['107589::31019_005st']}}
																			{{else}}
																				{{$txt['107589::31019_005tor']}}
																			{{/if}}
																			</span>
																		<span class="for_points_points">{{$loop1670->getItemEscape("@points")}}{{$txt['107589::31019_005pkt']}}</span>
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
							{{/if}}
						{{/if}}
						<!--Lista produktów obserwowanych (basketedit_wishlist, 107591.1)-->
						{{if  $xml->getItem("page[@type='wishesedit']")}}
							{{capture name="changePrice" assign="changePrice"}}
								{{$txt['107591::57649_changePrice']}}
							{{/capture}}
							{{if !( $xml->getItem("/shop/basket/@login")) or ( $xml->getItem("/shop/basket/@login")  == (string) '')}}
								<div class="menu_messages_message">{{$txt['107591::65754_wishlist_info']}}
								</div>
							{{/if}}
							<div class="products_bought row" id="favourites_list">
								<div class="col-12">
									<div id="pb_list" class="pb_list">
										<div class="pb_list_header row d-none d-md-flex">
											<div class="pb_header_name col-6">{{$txt['107591::40014_hname']}}
											</div>
											<div class="pb_header_date col-2">{{$txt['107591::52600_w012']}}
											</div>
											<div class="pb_header_price col-2">{{$txt['107591::40014_hprice']}}
											</div>
										</div>
										<div class="row products_wrapper">
											{{foreach from=$xml->getList("page/basket-details/product") item=loop1773}}
												<div class="col-md-12 col-sm-4 col-6">
													<div class="pb_product">
														<div class="row align-items-center product_inner_wrapper">
															<div class="col-md-1 col-12 mb-3 mb-md-0">
																<div class="pb_icon">
																	<a href="{{$loop1773->getItemEscape("@link")}}">
																		<img class="basket_prod rwd-src" alt="Szczegoly" src="/gfx/__IAI_TEMPLATE_LANG_639_1__/loader.gif?r=1570606968" data-src_desktop="{{$loop1773->getItemEscape("iconsmall")}}" data-src_tablet="{{$loop1773->getItemEscape("iconsmall")}}" data-src_mobile="{{$loop1773->getItemEscape("icon")}}"></img></a>
																</div>
															</div>
															<div class="col-md-5 col-12 mb-3 mb-md-0">
																<div class="pb_info">
																	<h2 class="basket_name">
																		<a href="{{$loop1773->getItemEscape("@link")}}">{{$loop1773->getItem("name/text()")}}</a>
																	</h2>
																	{{if !( $loop1773->getItem("@barcode")  == (string)'')}}
																		<div class="pb_single_info" id="kod_54008x">
																			<span>{{$txt['107591::50001_99']}}</span>{{$loop1773->getItemEscape("@barcode")}}
																		</div>
																	{{/if}}
																	{{if !( $loop1773->getItem("sizes/size[@buy_date]/@type") == (string)'uniw')}}
																		<div class="pb_single_info">
																			<span>{{$txt['107591::50001_004']}}</span>{{$loop1773->getItemEscape("size/@description")}}
																		</div>
																	{{/if}}
																	{{if ( $loop1773->getItem("version")) and (!( $loop1773->getItem("version/@product_name") == (string)''))}}
																		<div class="pb_single_info">
																			<span>{{$loop1773->getItemEscape("version/@name")}}:</span>{{$loop1773->getItemEscape("version/@product_name")}}
																		</div>
																	{{/if}}
																</div>
															</div>
															<div class="col-md-2 col-12 mb-3 mb-md-0">
																<div class="pb_date">
																	<span class="d-block d-md-none">{{$txt['107591::52600_w012']}}</span>{{$loop1773->getItemEscape("size/@observed_since")}}
																</div>
															</div>
															<div class="col-md-2 col-12 mb-3 mb-md-0">
																<div class="pb_price">
																	<span class="d-block d-md-none">{{$txt['107591::40014_hprice']}}</span>
																	{{if  $loop1773->getItem("price/@value")  == (string) 0}}
																		{{if  $loop1773->getItem("price/@points_sum")}}
																			{{$loop1773->getItemEscape("price/@points_sum")}}{{$txt['107591::55925_pkt']}}
																		{{else}}
																			<a class="col2_54008x_phone" href="/contact.php">{{$txt['107591::n56465_099_phone']}}</a>
																		{{/if}}
																	{{else}}
																		{{if  $loop1773->getItem("price/@maxprice")  neq (string) ''}}
																			{{if ( $loop1773->getItem("/shop/basket/@wholesaler")  == (string) 'true')}}
																				{{if $changePrice}}
																					<del>{{$loop1773->getItemEscape("price/@maxprice_net_formatted")}}</del>
																				{{else}}
																					<del>{{$loop1773->getItemEscape("price/@maxprice_formatted")}}</del>
																				{{/if}}
																			{{else}}
																				<del>{{$loop1773->getItemEscape("price/@maxprice_formatted")}}</del>
																			{{/if}}
																		{{/if}}
																		{{if ( $loop1773->getItem("/shop/basket/@wholesaler")  == (string) 'true')}}
																			{{if $changePrice}}
																				<strong>{{$loop1773->getItemEscape("price/@price_net_formatted")}}</strong>
																			{{else}}
																				<strong>{{$loop1773->getItemEscape("price/@price_formatted")}}</strong>
																			{{/if}}
																		{{else}}
																			<strong>{{$loop1773->getItemEscape("price/@price_formatted")}}</strong>
																		{{/if}}
																	{{/if}}
																</div>
															</div>
															<div class="col-md-2 col-12 mb-3 mb-md-0">
																<div class="pb_button">
																	{{if  $loop1773->getItem("size/@amount")  == (string) 0}}
																		<span class="product_unavailable">{{$txt['107591::52600_w004_unavailable']}}</span>
																	{{else}}
																		<a class="btn" href="{{$loop1773->getItemEscape("@link")}}" title="{{$txt['107591::52600_w004']}}">{{$txt['107591::52600_w004']}}</a>
																	{{/if}}
																	<a class="btn mt-3" href="{{$loop1773->getItemEscape("removeall")}}" title="{{$txt['107591::52600_w005']}}">{{$txt['107591::52600_w005']}}</a>
																</div>
															</div>
														</div>
													</div>
												</div>
											{{/foreach}}
										</div>
									</div>
								</div>
							</div>
						{{/if}}
						<!--Hotspot w koszyku strefa 1 (basketedit_hotspot_zone1, 107913.1)-->
						<iaiajaxstart iai-ajax-id="basketedit_hotspot_zone1" iai-ajax-generated="false"/>
						{{if  $xml->getItem("page/hotspot/products_zone1/product") or  $xml->getItem("page/hotspot/products_zone1/opinion")}}
							<div class="main_hotspot mb-4" id="basketedit_hotspot_zone1" data-ajaxLoad="true" data-pageType="basket">
								<div class="big_label">
									{{if  $xml->getItem("page/hotspot/products_zone1/@name")}}
										{{$xml->getItemEscape("page/hotspot/products_zone1/@name")}}
									{{else}}
										{{$txt['107913::58826_label']}}
									{{/if}}
									{{$txt['107913::58826_label-after']}}
								</div>
								<div class="align_row main_hotspot_sub">
									<div class="products_wrapper row m-0">
										{{foreach from=$xml->getList("page/hotspot/products_zone1/*") item=loop1915}}
											{{capture name="var_name" assign="var_name"}}
												{{if  $loop1915->getItem("product")}}
													{{$loop1915->getItem("product/name/text()")}}
												{{else}}
													{{$loop1915->getItem("name/text()")}}
												{{/if}}
											{{/capture}}
											{{capture name="var_icon" assign="var_icon"}}
												{{if  $loop1915->getItem("product")}}
													{{$loop1915->getItemEscape("product/icon")}}
												{{else}}
													{{$loop1915->getItemEscape("icon")}}
												{{/if}}
											{{/capture}}
											{{capture name="var_icon_small" assign="var_icon_small"}}
												{{if  $loop1915->getItem("product")}}
													{{$loop1915->getItemEscape("product/icon_small")}}
												{{else}}
													{{$loop1915->getItemEscape("icon_small")}}
												{{/if}}
											{{/capture}}
											{{capture name="var_link" assign="var_link"}}
												{{if  $loop1915->getItem("product")}}
													{{$loop1915->getItemEscape("product/@link")}}
												{{else}}
													{{$loop1915->getItemEscape("@link")}}
												{{/if}}
											{{/capture}}
											{{capture name="var_yousave" assign="var_yousave"}}
												{{$txt['107913::TXT_hotspot_yousave']}}
											{{/capture}}
											<div class="product_wrapper col-6 col-sm-3">
												{{if $var_yousave and !($var_yousave  == (string) '') and  $loop1915->getItem("price/@yousave_formatted")  neq (string) ''}}
													<div class="hotspot_yousave">
														<span class="yousave_label">{{$var_yousave}}</span>
														<span class="yousave_value">{{$loop1915->getItemEscape("price/@yousave_formatted")}}</span>
													</div>
												{{/if}}
												<a class="product-icon d-flex justify-content-center align-items-center" data-product-id="{{$loop1915->getItemEscape("@id")}}" href="{{$var_link}}" title="{{$var_name}}">
													<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/loader.gif?r=1570606968" class="b-lazy" data-src-small="{{$loop1915->getItem("$var_icon_small")}}" data-src="{{$loop1915->getItem("$var_icon")}}" alt="{{$loop1915->getItem("$var_name")}}"></img></a>
												<h3>
													<a class="product-name" href="{{$var_link}}" title="{{$var_name}}">{{$var_name}}</a>
												</h3>
												{{capture name="main_hotspot_zone1_b2b_var" assign="main_hotspot_zone1_b2b_var"}}
													{{$txt['107913::main_hotspot_zone1_b2b']}}
												{{/capture}}
												{{capture name="var_net_prices" assign="var_net_prices"}}
													{{$txt['107913::hotspot_net_prices']}}
												{{/capture}}
												{{if $var_net_prices  == (string) ''}}
													{{capture name="var_size_min_formatted" assign="var_size_min_formatted"}}
														{{if  $loop1915->getItem("product")}}
															{{$loop1915->getItemEscape("product/price/@size_min_formatted")}}
														{{else}}
															{{$loop1915->getItemEscape("price/@size_min_formatted")}}
														{{/if}}
													{{/capture}}
													{{capture name="var_size_max_formatted" assign="var_size_max_formatted"}}
														{{if  $loop1915->getItem("product")}}
															{{$loop1915->getItemEscape("product/price/@size_max_formatted")}}
														{{else}}
															{{$loop1915->getItemEscape("price/@size_max_formatted")}}
														{{/if}}
													{{/capture}}
													{{capture name="var_size_min_maxprice_formatted" assign="var_size_min_maxprice_formatted"}}
														{{if  $loop1915->getItem("product")}}
															{{$loop1915->getItemEscape("product/price/@size_min_maxprice_formatted")}}
														{{else}}
															{{$loop1915->getItemEscape("price/@size_min_maxprice_formatted")}}
														{{/if}}
													{{/capture}}
													{{capture name="var_size_max_maxprice_formatted" assign="var_size_max_maxprice_formatted"}}
														{{if  $loop1915->getItem("product")}}
															{{$loop1915->getItemEscape("product/price/@size_max_maxprice_formatted")}}
														{{else}}
															{{$loop1915->getItemEscape("price/@size_max_maxprice_formatted")}}
														{{/if}}
													{{/capture}}
													{{capture name="var_points" assign="var_points"}}
														{{if  $loop1915->getItem("product")}}
															{{$loop1915->getItemEscape("product/price/@points")}}
														{{else}}
															{{$loop1915->getItemEscape("price/@points")}}
														{{/if}}
													{{/capture}}
													{{capture name="var_value" assign="var_value"}}
														{{if  $loop1915->getItem("product")}}
															{{$loop1915->getItemEscape("product/price/@size_min")}}
														{{else}}
															{{$loop1915->getItemEscape("price/@size_min")}}
														{{/if}}
													{{/capture}}
													{{capture name="var_price_formatted" assign="var_price_formatted"}}
														{{if  $loop1915->getItem("price/@price_unit_formatted") and  $loop1915->getItem("sizes/@unit")}}
															{{$loop1915->getItemEscape("price/@price_unit_formatted")}}{{literal}}/{{/literal}}{{$loop1915->getItemEscape("sizes/@unit_sellby")}}{{literal}}{{/literal}}{{$loop1915->getItemEscape("sizes/@unit")}}
														{{elseif  $loop1915->getItem("product/price/@price_unit_formatted") and  $loop1915->getItem("product/sizes/@unit")}}
															{{$loop1915->getItemEscape("product/price/@price_unit_formatted")}}{{literal}}/{{/literal}}{{$loop1915->getItemEscape("product/sizes/@unit_sellby")}}{{literal}}{{/literal}}{{$loop1915->getItemEscape("product/sizes/@unit")}}
														{{else}}
															{{$var_size_min_formatted}}
														{{/if}}
													{{/capture}}
													{{capture name="var_maxprice_formatted" assign="var_maxprice_formatted"}}
														{{if  $loop1915->getItem("price/@maxprice_unit_formatted")}}
															{{$loop1915->getItemEscape("price/@maxprice_unit_formatted")}}
														{{elseif  $loop1915->getItem("product/price/@maxprice_unit_formatted")}}
															{{$loop1915->getItemEscape("product/price/@maxprice_unit_formatted")}}
														{{elseif  $loop1915->getItem("product")}}
															{{$loop1915->getItemEscape("product/price/@maxprice_formatted")}}
														{{else}}
															{{$loop1915->getItemEscape("price/@maxprice_formatted")}}
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
																	<span class="currency">{{$txt['107913::58826_012']}}</span></span>
															{{/if}}
														{{elseif (($var_value  == (string) 0) and $var_points  == (string) '') or ($var_value  == (string) 0 and $main_hotspot_zone1_b2b_var and !($main_hotspot_zone1_b2b_var  == (string) '') and !( $loop1915->getItem("/shop/basket/@wholesaler")  == (string) 'true'))}}
															<a {{assign "hrefAttributeTmp31" ""}}  class="fon_price" data-mobile-class="btn-small" {{if $main_hotspot_zone1_b2b_var and !($main_hotspot_zone1_b2b_var == (string) '')}} title="{{$main_hotspot_zone1_b2b_var}}"{{capture name="hrefAttributeTmp31" assign="hrefAttributeTmp31"}}{{$loop1915->getItemEscape("/shop/action/signin/@url")}}{{/capture}}{{$main_hotspot_zone1_b2b_var}}{{else}} title="{{$txt['107913::58826_009']}}"{{capture name="hrefAttributeTmp31" assign="hrefAttributeTmp31"}}{{$loop1915->getItemEscape("/shop/contact/link/@url")}}{{/capture}} {{$txt['107913::58826_010']}} {{/if}}  href="{{$hrefAttributeTmp31}}"></a>
														{{else}}
															<span class="price">{{$txt['107913::58826_003']}}{{$var_price_formatted}}</span>
															{{if $var_maxprice_formatted  neq (string) ''}}
																<del class="max-price">{{$txt['107913::58826_006']}}{{$var_maxprice_formatted}}</del>
															{{/if}}
															{{if $var_points  neq (string) ''}}
																<span class="point-price">{{$var_points}}
																	<span class="currency">{{$txt['107913::58826_012']}}</span></span>
															{{/if}}
														{{/if}}
														{{if  $loop1915->getItem("price/@unit_converted_price_formatted")}}
															<small class="s_unit_converted_price">{{$loop1915->getItemEscape("price/@unit_converted_price_formatted")}}{{literal}}/{{/literal}}{{$loop1915->getItemEscape("price/@unit_converted_format")}}</small>
														{{/if}}
													</div>
												{{else}}
													{{capture name="var_size_min_net_formatted" assign="var_size_min_net_formatted"}}
														{{if  $loop1915->getItem("product")}}
															{{$loop1915->getItemEscape("product/price/@size_min_net_formatted")}}
														{{else}}
															{{$loop1915->getItemEscape("price/@size_min_net_formatted")}}
														{{/if}}
													{{/capture}}
													{{capture name="var_size_max_net_formatted" assign="var_size_max_net_formatted"}}
														{{if  $loop1915->getItem("product")}}
															{{$loop1915->getItemEscape("product/price/@size_max_net_formatted")}}
														{{else}}
															{{$loop1915->getItemEscape("price/@size_max_net_formatted")}}
														{{/if}}
													{{/capture}}
													{{capture name="var_size_min_net_maxprice_formatted" assign="var_size_min_net_maxprice_formatted"}}
														{{if  $loop1915->getItem("product")}}
															{{$loop1915->getItemEscape("product/price/@size_min_maxprice_net_formatted")}}
														{{else}}
															{{$loop1915->getItemEscape("price/@size_min_maxprice_net_formatted")}}
														{{/if}}
													{{/capture}}
													{{capture name="var_size_max_maxprice_net_formatted" assign="var_size_max_maxprice_net_formatted"}}
														{{if  $loop1915->getItem("product")}}
															{{$loop1915->getItemEscape("product/price/@size_max_maxprice_net_formatted")}}
														{{else}}
															{{$loop1915->getItemEscape("price/@size_max_maxprice_net_formatted")}}
														{{/if}}
													{{/capture}}
													{{capture name="var_points_net" assign="var_points_net"}}
														{{if  $loop1915->getItem("product")}}
															{{$loop1915->getItemEscape("product/price/@points")}}
														{{else}}
															{{$loop1915->getItemEscape("price/@points")}}
														{{/if}}
													{{/capture}}
													{{capture name="var_net_value" assign="var_net_value"}}
														{{if  $loop1915->getItem("product")}}
															{{$loop1915->getItemEscape("product/price/@size_min_net")}}
														{{else}}
															{{$loop1915->getItemEscape("price/@size_min_net")}}
														{{/if}}
													{{/capture}}
													{{capture name="var_price_formatted" assign="var_price_formatted"}}
														{{if  $loop1915->getItem("price/@price_unit_net_formatted") and  $loop1915->getItem("sizes/@unit")}}
															{{$loop1915->getItemEscape("price/@price_unit_net_formatted")}}{{literal}}/{{/literal}}{{$loop1915->getItemEscape("sizes/@unit_sellby")}}{{literal}}{{/literal}}{{$loop1915->getItemEscape("sizes/@unit")}}
														{{elseif  $loop1915->getItem("product/price/@price_unit_net_formatted") and  $loop1915->getItem("product/sizes/@unit")}}
															{{$loop1915->getItemEscape("product/price/@price_unit_net_formatted")}}{{literal}}/{{/literal}}{{$loop1915->getItemEscape("product/sizes/@unit_sellby")}}{{literal}}{{/literal}}{{$loop1915->getItemEscape("product/sizes/@unit")}}
														{{else}}
															{{$var_size_min_net_formatted}}
														{{/if}}
													{{/capture}}
													{{capture name="var_maxprice_net_formatted" assign="var_maxprice_net_formatted"}}
														{{if  $loop1915->getItem("price/@maxprice_unit_net_formatted")}}
															{{$loop1915->getItemEscape("price/@maxprice_unit_net_formatted")}}
														{{elseif  $loop1915->getItem("product/price/@maxprice_unit_net_formatted")}}
															{{$loop1915->getItemEscape("product/price/@maxprice_unit_net_formatted")}}
														{{elseif  $loop1915->getItem("product")}}
															{{$loop1915->getItemEscape("product/price/@maxprice_net_formatted")}}
														{{else}}
															{{$loop1915->getItemEscape("price/@maxprice_net_formatted")}}
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
																	<span class="currency">{{$txt['107913::58826_012']}}</span></span>
															{{/if}}
														{{elseif (($var_net_value  == (string) 0) and $var_points_net  == (string) '') or ($var_net_value  == (string) 0 and $main_hotspot_zone1_b2b_var and !($main_hotspot_zone1_b2b_var  == (string) '') and !( $loop1915->getItem("/shop/basket/@wholesaler")  == (string) 'true'))}}
															<a {{assign "hrefAttributeTmp31" ""}}  class="fon_price" data-mobile-class="btn-small" {{if $main_hotspot_zone1_b2b_var and !($main_hotspot_zone1_b2b_var == (string) '')}} title="{{$main_hotspot_zone1_b2b_var}}"{{capture name="hrefAttributeTmp31" assign="hrefAttributeTmp31"}}{{$loop1915->getItemEscape("/shop/action/signin/@url")}}{{/capture}}{{$main_hotspot_zone1_b2b_var}}{{else}} title="{{$txt['107913::58826_009']}}"{{capture name="hrefAttributeTmp31" assign="hrefAttributeTmp31"}}{{$loop1915->getItemEscape("/shop/contact/link/@url")}}{{/capture}} {{$txt['107913::58826_010']}} {{/if}}  href="{{$hrefAttributeTmp31}}"></a>
														{{else}}
															<span class="price">{{$txt['107913::58826_003']}}{{$var_price_formatted}}{{$var_net_prices}}</span>
															{{if $var_maxprice_net_formatted  neq (string) ''}}
																<del class="max-price">{{$txt['107913::58826_006']}}{{$var_maxprice_net_formatted}}{{$var_net_prices}}</del>
															{{/if}}
															{{if $var_points_net  neq (string) ''}}
																<span class="point-price">{{$var_points_net}}
																	<span class="currency">{{$txt['107913::58826_012']}}</span></span>
															{{/if}}
														{{/if}}
														{{if  $loop1915->getItem("price/@unit_converted_price_net_formatted")}}
															<small class="s_unit_converted_price">{{$loop1915->getItemEscape("price/@unit_converted_price_net_formatted")}}{{literal}}/{{/literal}}{{$loop1915->getItemEscape("price/@unit_converted_format")}}{{$var_net_prices}}</small>
														{{/if}}
													</div>
												{{/if}}
												{{if  $loop1915->getItem("client/@client")}}
													<div class="client">{{$loop1915->getItem("client/@client")}}
													</div>
												{{/if}}
												{{if  $loop1915->getItem("@note")}}
													<div class="note">
														<span>
															<i {{assign "classAttributeTmp23" ""}}{{capture name="classAttributeTmp23" assign="classAttributeTmp23"}}icon-star{{/capture}}{{if $loop1915->getItem("@note") gt (string) 0.5}}{{capture name="classAttributeTmp23" assign="classAttributeTmp23"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp23}}"></i>
															<i {{assign "classAttributeTmp24" ""}}{{capture name="classAttributeTmp24" assign="classAttributeTmp24"}}icon-star{{/capture}}{{if $loop1915->getItem("@note") gt (string) 1.5}}{{capture name="classAttributeTmp24" assign="classAttributeTmp24"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp24}}"></i>
															<i {{assign "classAttributeTmp25" ""}}{{capture name="classAttributeTmp25" assign="classAttributeTmp25"}}icon-star{{/capture}}{{if $loop1915->getItem("@note") gt (string) 2.5}}{{capture name="classAttributeTmp25" assign="classAttributeTmp25"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp25}}"></i>
															<i {{assign "classAttributeTmp26" ""}}{{capture name="classAttributeTmp26" assign="classAttributeTmp26"}}icon-star{{/capture}}{{if $loop1915->getItem("@note") gt (string) 3.5}}{{capture name="classAttributeTmp26" assign="classAttributeTmp26"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp26}}"></i>
															<i {{assign "classAttributeTmp27" ""}}{{capture name="classAttributeTmp27" assign="classAttributeTmp27"}}icon-star{{/capture}}{{if $loop1915->getItem("@note") gt (string) 4.5}}{{capture name="classAttributeTmp27" assign="classAttributeTmp27"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp27}}"></i></span>
														<small>{{$txt['107913::58826_oc']}}{{$loop1915->getItem("@note")}}{{$txt['107913::58826_oce']}}</small>
													</div>
												{{/if}}
												{{if  $loop1915->getItem("content")}}
													<div class="cleardescription">{{$loop1915->getItem("content")}}
													</div>
												{{/if}}
											</div>
										{{/foreach}}
									</div>
								</div>
							</div>
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone1/@iairs_ajax")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone1/@hotspot_ajax")}}
						{{/if}}
						<iaiajaxend/>
						{{include file="component_menu_security_policy_106610.tpl"}}
						{{include file="component_menu_basketedit_hotspot_zone1_106611.tpl"}}
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
