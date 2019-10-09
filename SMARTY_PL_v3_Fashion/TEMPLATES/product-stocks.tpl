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
					<aside {{assign "classAttributeTmp1" ""}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}span3{{/capture}}{{if $xml->getItem("page/@type") == (string) 'projector'}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}{{$txt['107419::70925_projector_a_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'search'}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}{{$txt['107419::70925_search_a_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'main'}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}{{$txt['107419::70925_main_a_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'blog-item'}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}{{$txt['107419::70925_blog_item_a_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'blog-list'}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}{{$txt['107419::70925_blog_list_a_class']}}{{/capture}}{{else}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}{{$txt['107419::70925_otherwise_a_class']}}{{/capture}}{{/if}}  class="{{$classAttributeTmp1}}">
						{{include file="component_menu_additional1_106528.tpl"}}
					</aside>
				{{/if}}
				{{if !( $xml->getItem("action/set_render/item")) or ( $xml->getItem("action/set_render/item/@name")  == (string) 'content')}}
					<div {{assign "classAttributeTmp2" ""}}  id="content"{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}span9{{/capture}}{{if $xml->getItem("page/@type") == (string) 'projector'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['107419::70925_projector_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'search'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['107419::70925_search_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'main'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['107419::70925_main_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'navigation'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['107419::70925_navigation_page_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'blog-list'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['107419::70925_blog_list_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'blog-item'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['107419::70925_blog_item_c_class']}}{{/capture}}{{else}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['107419::70925_otherwise_c_class']}}{{/capture}}{{/if}}  class="{{$classAttributeTmp2}}">
						{{include file="component_menu_messages_106608.tpl"}}
						<!--CMS - Informacja o dostępności w magazynach (product_stocks_cms, 58196.1)-->
						{{if  $xml->getItem("page/text/body")}}
							<div {{assign "classAttributeTmp3" ""}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}product_stocks_cms_label{{/capture}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}product_stocks_cms_label big_label{{/capture}}  class="{{$classAttributeTmp3}}">
								<span class="product_stocks_cms_label">{{$txt['58196::product_stocks_cms_label']}}</span>
							</div>
							<div class="product_stocks_cms">
								<div class="product_stocks_cms_sub">{{$xml->getItem("page/text/body")}}
								</div>
							</div>
						{{/if}}
						<!--Informacja o dostępności w magazynach (product_stocks_list, 107900.1)-->
						<div id="product_stocks_list">
							<h1>{{$txt['107900::product_stocks_list_label']}}
							</h1>
							<div class="product_stocks_list_productinfo product_wrapper">
								{{capture name="var_name" assign="var_name"}}
									{{$xml->getItem("/shop/page/product/name/text()")}}
								{{/capture}}
								{{capture name="var_icon" assign="var_icon"}}
									{{$xml->getItemEscape("/shop/page/product/icon")}}
								{{/capture}}
								{{capture name="var_icon_small" assign="var_icon_small"}}
									{{$xml->getItemEscape("/shop/page/product/icon_small")}}
								{{/capture}}
								{{capture name="var_link" assign="var_link"}}
									{{$xml->getItemEscape("/shop/page/product/@link")}}
								{{/capture}}
								<a class="product-icon align_row" rel="nofollow" data-align="img#css" href="{{$var_link}}" title="{{$var_name}}">
									<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/loader.gif?r=1570606968" class="b-lazy" data-src-small="{{$xml->getItem("$var_icon_small")}}" data-src="{{$xml->getItem("$var_icon")}}" alt="{{$xml->getItem("$var_name")}}"></img></a>
								<a class="product-name" href="{{$var_link}}" title="{{$var_name}}">{{$var_name}}</a>
								{{capture name="var_size_min_formatted" assign="var_size_min_formatted"}}
									{{$xml->getItemEscape("/shop/page/product/price/@size_min_formatted")}}
								{{/capture}}
								{{capture name="var_size_max_formatted" assign="var_size_max_formatted"}}
									{{$xml->getItemEscape("/shop/page/product/price/@size_max_formatted")}}
								{{/capture}}
								{{capture name="var_points" assign="var_points"}}
									{{$xml->getItemEscape("/shop/page/product/price/@points")}}
								{{/capture}}
								{{capture name="var_value" assign="var_value"}}
									{{$xml->getItemEscape("/shop/page/product/price/@value")}}
								{{/capture}}
								{{capture name="var_price_formatted" assign="var_price_formatted"}}
									{{$xml->getItemEscape("/shop/page/product/price/@price_formatted")}}
								{{/capture}}
								{{capture name="var_maxprice_formatted" assign="var_maxprice_formatted"}}
									{{$xml->getItemEscape("/shop/page/product/price/@maxprice_formatted")}}
								{{/capture}}
								<div class="product_prices">
									{{if $var_size_min_formatted  neq (string) $var_size_max_formatted}}
										<span class="price">{{$var_size_min_formatted}}{{literal}}-{{/literal}}{{$var_size_max_formatted}}</span>
										{{if $var_points  neq (string) ''}}
											<span class="point-price">{{$var_points}}
												<span class="currency">{{$txt['107900::58826_012']}}</span></span>
										{{/if}}
									{{elseif ($var_value  == (string) 0) and $var_points  neq (string) ''}}
										<a class="fon_price" data-mobile-class="btn-small" title="{{$txt['107900::58826_009']}}" href="{{$xml->getItemEscape("/shop/contact/link/@url")}}">{{$txt['107900::58826_010']}}</a>
									{{else}}
										<span class="price">{{$txt['107900::58826_003']}}{{$var_price_formatted}}</span>
										{{if $var_maxprice_formatted  neq (string) ''}}
											<del class="max-price">{{$txt['107900::58826_006']}}{{$var_maxprice_formatted}}</del>
										{{/if}}
										{{if $var_points  neq (string) ''}}
											<span class="point-price">{{$var_points}}
												<span class="currency">{{$txt['107900::58826_012']}}</span></span>
										{{/if}}
									{{/if}}
								</div>
								{{if  $xml->getItem("page/product/traits/trait[not(@gfx)]")}}
									<div class="list_traits">
										<ul>
											{{foreach from=$xml->getList("page/product/traits/trait[not(@gfx)]") item=loop364}}
												{{if !( $loop364->getItem("@groupid")  == (string)  $loop364->getItem("preceding-sibling::trait/@groupid"))}}
													<li>
														<span>{{$loop364->getItemEscape("@groupdescription")}}{{$txt['107900::58668_traitseparator']}}</span>
														<div>
															<a href="{{$loop364->getItemEscape("@link")}}">{{$loop364->getItemEscape("@traitdescription")}}</a>
															{{if  $loop364->getItem("@groupid")  == (string)  $loop364->getItem("following-sibling::trait/@groupid")}}
																{{capture name="temporaryGroup" assign="temporaryGroup"}}
																	{{$loop364->getItemEscape("@groupid")}}
																{{/capture}}
																{{foreach from=$loop364->getList("following-sibling::trait[(@groupid = {{$temporaryGroup}})]") item=loop373}}{{$txt['107900::n58633_traitseparator']}}
																	<a href="{{$loop373->getItemEscape("@link")}}">{{$loop373->getItemEscape("@traitdescription")}}</a>
																{{/foreach}}
															{{/if}}
														</div>
													</li>
												{{/if}}
											{{/foreach}}
										</ul>
									</div>
								{{/if}}
							</div>
							<div class="product_stocks_list_s_w">
								{{if  $xml->getItem("page/table_stocks/row/@type")  == (string) 'size'}}
									{{foreach from=$xml->getList("page/table_stocks/row") item=loop389}}
										<div class="product_stocks_size_wrapper">
											{{if count( $loop389->getList("/shop/page/table_stocks/row"))  == (string) '1'}}
												{{if !( $loop389->getItem("@id")  == (string) 'uniw')}}
													<b>{{$txt['107900::product_stocks_size']}}{{$loop389->getItemEscape("@name")}}</b>
												{{/if}}
											{{else}}
												<a class="show_tab tab_hidden" href="#size_{{$loop389->getItemEscape("@id")}}">{{$txt['107900::product_stocks_size']}}{{$loop389->getItemEscape("@name")}}</a>
											{{/if}}
											<div class="sizes_wrapper" {{if count( $loop389->getList("/shop/page/table_stocks/row")) == (string) '1'}} style="display: table;" {{/if}} id="size_{{$loop389->getItemEscape("@id")}}">
												{{foreach from=$loop389->getList("col") item=loop413}}
													<a class="size_wrappers" href="{{$loop413->getItemEscape("@link")}}">
														<div class="size_wrapper">
															<strong>{{$loop413->getItemEscape("@name")}}</strong>
															<b>
																{{if  $loop413->getItem("available/@status")  == (string) 'enable'}}
																	{{$txt['107900::product_stocks_list_d']}}
																{{elseif  $loop413->getItem("available/@status")  == (string) 'disable'}}
																	{{$txt['107900::product_stocks_list_n']}}
																{{elseif  $loop413->getItem("available/@status")  == (string) 'order'}}
																	{{$txt['107900::product_stocks_list_z']}}
																{{/if}}
																</b>
															<div class="icon_next">{{$txt['107900::product_stocks_list_zii']}}
															</div>
														</div></a>
												{{/foreach}}
											</div>
										</div>
									{{/foreach}}
								{{else}}
									{{foreach from=$xml->getList("page/table_stocks/row[1]/col") item=loop446}}
										{{if !( $loop446->getItem("@id")  == (string) 'uniw')}}
											<b>{{$txt['107900::product_stocks_size']}}{{$loop446->getItemEscape("@name")}}</b>
										{{/if}}
										{{capture name="tmp_size" assign="tmp_size"}}
											{{$loop446->getItemEscape("@id")}}
										{{/capture}}
										<div class="sizes_wrapper" {{if $loop446->getItem("/shop/page/table_stocks/row[1]/col")}} style="display: table;" {{/if}}>
											{{foreach from=$loop446->getList("/shop/page/table_stocks/row") item=loop460}}
												<a class="size_wrappers" href="{{$loop460->getItemEscape("@link")}}">
													<div class="size_wrapper">
														<strong>{{$loop460->getItemEscape("@name")}}</strong>
														<b>
															{{if  $loop460->getItem("col[@id = $tmp_size]/available/@status")  == (string) 'enable'}}
																{{$txt['107900::product_stocks_list_d']}}
															{{elseif  $loop460->getItem("col[@id = $tmp_size]/available/@status")  == (string) 'disable'}}
																{{$txt['107900::product_stocks_list_n']}}
															{{elseif  $loop460->getItem("col[@id = $tmp_size]/available/@status")  == (string) 'order'}}
																{{$txt['107900::product_stocks_list_z']}}
															{{/if}}
															</b>
														<div class="icon_next">{{$txt['107900::product_stocks_list_zii']}}
														</div>
													</div></a>
											{{/foreach}}
										</div>
									{{/foreach}}
								{{/if}}
							</div>
						</div>
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
