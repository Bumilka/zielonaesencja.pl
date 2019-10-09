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
						{{include file="component_menu_order_progress_106607.tpl"}}
						{{include file="component_menu_messages_106608.tpl"}}
						<!--CMS na stronie Order2 (order2_cms, 58336.1)-->
						{{if  $xml->getItem("page/order2/text/body")}}
							<div class="order2_cms">
								<div {{assign "classAttributeTmp3" ""}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}order2_cms_sub{{/capture}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}order2_cms_sub cm{{/capture}}  class="{{$classAttributeTmp3}}">{{$xml->getItem("page/order2/text/body")}}
								</div>
							</div>
						{{/if}}
						<!--Potwierdzenie zamówienia (order2, 107694.1)-->
						{{capture name="txt_60826_advance_a" assign="txt_60826_advance_a"}}
							{{$txt['107694::60826_advance_a']}}
						{{/capture}}
						{{capture name="wholesalerPrice2" assign="wholesalerPrice2"}}
							{{$txt['107694::63643_wholesalerPrice2']}}
						{{/capture}}
						{{capture name="txt_68638_rpoz" assign="txt_68638_rpoz"}}
							{{$txt['107694::68638_rpoz']}}
						{{/capture}}
						{{capture name="order_edit_button" assign="order_edit_button"}}
							{{$txt['107694::63643_order_edit_button']}}
						{{/capture}}
						{{capture name="hours_68242" assign="hours_68242"}}
							{{$txt['107694::68242_hours']}}
						{{/capture}}
						{{capture name="immediately_txt" assign="immediately_txt"}}
							{{$txt['107694::68313_immediately']}}
						{{/capture}}
						{{capture name="n68313_order2_document_invoice" assign="n68313_order2_document_invoice"}}
							{{$txt['107694::n68313_order2_document_invoice']}}
						{{/capture}}
						{{capture name="n68313_order2_document_e_invoice" assign="n68313_order2_document_e_invoice"}}
							{{$txt['107694::n68313_order2_document_e_invoice']}}
						{{/capture}}
						{{capture name="returns_agree_control" assign="returns_agree_control"}}
							{{$txt['107694::643778_returnsagree']}}
						{{/capture}}
						{{capture name="b2b_mask" assign="b2b_mask"}}
							{{$txt['107694::46345324_b2bmask']}}
						{{/capture}}
						<script>
            var only_virtual = '{{$xml->getItemEscape("page/order2/@only-virtual")}}';
        						</script>

						<div class="n57856_order_overtaker">
							<form class="order2_form" action="{{$xml->getItemEscape("page/order2/@url")}}" {{if $xml->getItem("page/order2/@navigation") == (string)'order'}} method="post" {{elseif $xml->getItem("page/order2/@navigation") == (string)'next'}} method="get" {{else}} method="post" {{/if}}>
								<div class="big_label order2_info_label">
									<span class="n57856_label" id="labels">{{$txt['107694::54568_001ca']}}</span>
								</div>
								<div class="order2_info">
									<div class="order2_info_sub" id="order2_info_sub1">
										<div class="order2_info_label_sub">
											<h3 class="order2_info1" id="order2_nagl_1">{{$txt['107694::51000_info1ba']}}
											</h3>
											<a class="order2_button_change_mobile d-sm-none" href="{{$xml->getItemEscape("page/order2/orderclient/@changelink")}}">{{$txt['107694::51000_900amobile']}}</a>
										</div>
										<div class="order2_info1" id="order2_box_1">
											<div class="order2_info1_sub">
												{{if  $xml->getItem("page/order2/orderclient/@firm")}}
													{{$xml->getItemEscape("page/order2/orderclient/@firm")}}
													<br/>
												{{/if}}
												{{if !( $xml->getItem("page/order2/orderclient/@firm"))}}
													{{$xml->getItemEscape("page/order2/orderclient/@firstname")}}{{literal}}{{/literal}}{{$xml->getItemEscape("page/order2/orderclient/@lastname")}}
													<br/>
												{{/if}}
												{{$xml->getItemEscape("page/order2/orderclient/@street")}}
												<br/>{{$xml->getItemEscape("page/order2/orderclient/@zipcode")}}{{literal}}{{/literal}}{{$xml->getItemEscape("page/order2/orderclient/@city")}}(
												{{if  $xml->getItem("page/order2/orderclient/@province")}}
													{{$xml->getItemEscape("page/order2/orderclient/@province")}}{{literal}},{{/literal}}
												{{/if}}
												{{$xml->getItemEscape("page/order2/orderclient/@country_long")}})
												<br/>
												{{if  $xml->getItem("page/order2/orderclient/@nip")}}
													{{$txt['107694::51000_infonip']}}{{$xml->getItemEscape("page/order2/orderclient/@nip")}}
													<br/>
												{{/if}}
												{{if ( $xml->getItem("page/order2/orderclient/@phone1")) and !( $xml->getItem("page/order2/orderclient/@phone1")  == (string) '')}}
													{{$txt['107694::40009_009']}}{{$xml->getItemEscape("page/order2/orderclient/@phone1")}}
													<br/>
												{{/if}}
												{{if ( $xml->getItem("page/order2/orderclient/@email")) and !( $xml->getItem("page/order2/orderclient/@email")  == (string) '')}}
													{{$txt['107694::40009_010']}}{{$xml->getItemEscape("page/order2/orderclient/@email")}}
													<br/>
												{{/if}}
											</div>
											<a class="order2_button_change d-none d-sm-inline-block" href="{{$xml->getItemEscape("page/order2/orderclient/@changelink")}}">{{$txt['107694::51000_900a']}}</a>
										</div>
									</div>
									<div class="order2_info_sub" id="order2_info_sub2">
										{{if  $xml->getItem("page/order2/stock")}}
											<div class="order2_info_label_sub">
												<h3 class="order2_info1" id="order2_nagl_2a">{{$txt['107694::51000_info2a']}}
												</h3>
												{{if  $xml->getItem("/shop/page/order2/stock[@other_stocks='true']")}}
													<a class="order2_button_change_stock_mobile d-sm-none" href="{{$xml->getItemEscape("page/order2/stock/@change_link")}}">{{$txt['107694::order2_change_stock_linkmobile']}}</a>
												{{/if}}
											</div>
											<div class="order2_info1" id="order2_box_2b">
												<div class="order2_info1_sub">
													<p>
														<span class="order2_stock_name">{{$xml->getItemEscape("page/order2/stock/@name")}}</span>{{$xml->getItemEscape("page/order2/stock/@street")}}
														<br/>{{$xml->getItemEscape("page/order2/stock/@zipcode")}}{{literal}}{{/literal}}{{$xml->getItemEscape("page/order2/stock/@city")}}(
														{{if  $xml->getItem("page/order2/stock/@province")}}
															{{$xml->getItemEscape("page/order2/stock/@province")}}{{literal}},{{/literal}}
														{{/if}}
														{{$xml->getItemEscape("page/order2/deliveryaddress/@country_long")}})
														<br/>
													</p>
												</div>
												{{if !( $xml->getItem("/shop/page/order2/stock/@link")  == (string) '')}}
													<div class="order2_moreinfo">
														<a class="order2_stock_moreinfo" target="_blank" href="{{$xml->getItemEscape("page/order2/stock/@link")}}">{{$txt['107694::order2_stock_link']}}</a>
													</div>
												{{/if}}
												{{if  $xml->getItem("/shop/page/order2/stock[@other_stocks='true']")}}
													<a class="order2_button_change_stock d-none d-sm-inline-block" href="{{$xml->getItemEscape("page/order2/stock/@change_link")}}">{{$txt['107694::order2_change_stock_link']}}</a>
												{{/if}}
											</div>
										{{else}}
											<div class="order2_info_label_sub">
												<h3 class="order2_info1" id="order2_nagl_2b">{{$txt['107694::51000_info2bc']}}
												</h3>
												<a class="order2_button_change_address_mobile d-sm-none" href="{{$xml->getItemEscape("page/order2/deliveryaddress/@changelink")}}">{{$txt['107694::51000_900mobile']}}</a>
											</div>
											<div class="order2_info1" id="order2_box_2b">
												<div class="order2_info1_sub">
													{{if  $xml->getItem("page/order2/deliveryaddress/@additional")}}
														{{$xml->getItemEscape("page/order2/deliveryaddress/@additional")}}
														<br/>
													{{/if}}
													{{$xml->getItemEscape("page/order2/deliveryaddress/@firstname")}}{{literal}}{{/literal}}{{$xml->getItemEscape("page/order2/deliveryaddress/@lastname")}}
													<br/>{{$xml->getItemEscape("page/order2/deliveryaddress/@street")}}
													<br/>{{$xml->getItemEscape("page/order2/deliveryaddress/@zipcode")}}{{literal}}{{/literal}}{{$xml->getItemEscape("page/order2/deliveryaddress/@city")}}(
													{{if  $xml->getItem("page/order2/deliveryaddress/@province")}}
														{{$xml->getItemEscape("page/order2/deliveryaddress/@province")}}{{literal}},{{/literal}}
													{{/if}}
													{{$xml->getItemEscape("page/order2/deliveryaddress/@country_long")}})
													<br/>
													{{if  $xml->getItem("page/order2/deliveryaddress/@phone") and  $xml->getItem("page/order2/deliveryaddress/@phone")  neq (string) ''}}
														{{$txt['107694::40009_009']}}{{$xml->getItemEscape("page/order2/deliveryaddress/@phone")}}
														<br/>
													{{/if}}
												</div>
												<a class="order2_button_change_address d-none d-sm-inline-block" href="{{$xml->getItemEscape("page/order2/deliveryaddress/@changelink")}}">{{$txt['107694::51000_900']}}</a>
											</div>
										{{/if}}
									</div>
									<div class="order2_info_sub" id="order2_info_sub3">
										<div class="order2_info_label_sub">
											<h3 class="order2_info1" id="order2_nagl_1">{{$txt['107694::51000_info1a']}}
											</h3>
											<a class="order2_button_change2_mobile d-sm-none" href="{{$xml->getItemEscape("page/order2/orderclient/@changelink")}}">{{$txt['107694::51000_900komobile']}}</a>
										</div>
										<div class="order2_info1" id="order2_box_3">
											<div class="order2_info1_sub">
												{{if  $xml->getItem("page/order2/deliveryaddress/@lastname")}}
													{{$xml->getItemEscape("page/order2/deliveryaddress/@firstname")}}{{literal}}{{/literal}}{{$xml->getItemEscape("page/order2/deliveryaddress/@lastname")}}
													<br/>
												{{else}}
													{{if  $xml->getItem("page/order2/orderclient/@firm")}}
														{{$xml->getItemEscape("page/order2/orderclient/@firm")}}
														<br/>
													{{/if}}
													{{if !( $xml->getItem("page/order2/orderclient/@firm"))}}
														{{$xml->getItemEscape("page/order2/orderclient/@firstname")}}{{literal}}{{/literal}}{{$xml->getItemEscape("page/order2/orderclient/@lastname")}}
														<br/>
													{{/if}}
												{{/if}}
												{{$xml->getItemEscape("page/order2/deliveryaddress/@street")}}
												<br/>{{$xml->getItemEscape("page/order2/deliveryaddress/@zipcode")}}{{literal}}{{/literal}}{{$xml->getItemEscape("page/order2/deliveryaddress/@city")}}(
												{{if  $xml->getItem("page/order2/deliveryaddress/@province")}}
													{{$xml->getItemEscape("page/order2/deliveryaddress/@province")}}{{literal}},{{/literal}}
												{{/if}}
												{{$xml->getItemEscape("page/order2/deliveryaddress/@country_long")}})
												<br/>
												{{if (!(( $xml->getItem("page/order2/deliveryaddress/@phone"))  == (string) ( $xml->getItem("page/order2/orderclient/@phone1")))) and (!( $xml->getItem("page/order2/deliveryaddress/@phone")  == (string) ''))}}
													{{$txt['107694::40009_009']}}{{$xml->getItemEscape("page/order2/deliveryaddress/@phone")}}
													<br/>
												{{else}}
													{{if ( $xml->getItem("page/order2/orderclient/@phone1")) and !( $xml->getItem("page/order2/orderclient/@phone1")  == (string) '')}}
														{{$txt['107694::40009_009']}}{{$xml->getItemEscape("page/order2/orderclient/@phone1")}}
														<br/>
													{{/if}}
												{{/if}}
											</div>
											<a class="order2_button_change2 d-none d-sm-inline-block" href="{{$xml->getItemEscape("page/order2/orderclient/@changelink")}}">{{$txt['107694::51000_900ko']}}</a>
										</div>
									</div>
								</div>
								{{if  $xml->getItem("/shop/page/order2/personal_data_processing_texts/email")}}
									<div class="email_processing_consent">
										<label class="email_processing_consent">
											<input type="checkbox" name="email_processing_consent" value="yes" class="css-checkbox" {{if ( $xml->getItem("/shop/page/order2/personal_data_processing_texts/email/@checked") == (string) 'true')}} checked="checked" {{/if}}></input>
											<i class="css-label"/>
											<span>{{$xml->getItem("/shop/page/order2/personal_data_processing_texts/email")}}</span>
										</label>
									</div>
								{{/if}}
								<div class="order2_info">
									<div id="order2_info_sub4">
										<strong>{{$txt['107694::order2_otrzymac']}}</strong>
										<div class="order2_info1" id="order2_box_4">
											<div class="order2_info1_sub">
												<input type="hidden" name="checkinvoice" value="true"/>
												<label for="order2_document_confirmation">
													<input type="radio" class="order2_radio_document" name="invoice" id="order2_document_confirmation" value="0" {{if ( $xml->getItem("page/order2/orderinvoice/@request") == (string) '0' and !($b2b_mask) and !( $xml->getItem("page/order2/orderclient/@firm"))) or (!( $xml->getItem("page/order2/orderinvoice/@request") == (string) '0') and !( $xml->getItem("page/order2/orderclient/@firm")) and !($b2b_mask))}} checked="checked" {{/if}}></input>{{$txt['107694::order2_document_confirmation']}}
												</label>
												{{if  $xml->getItem("page/order2/orderinvoice/@e_invoice") == (string)'true' and $n68313_order2_document_e_invoice}}
													<label for="order2_document_e_invoice">
														<input type="radio" class="order2_radio_document" name="invoice" id="order2_document_e_invoice" value="2" {{if (( $xml->getItem("page/order2/orderclient/@firm")) and ( $xml->getItem("page/order2/orderclient/@firm") neq (string) '')) or !( $xml->getItem("page/order2/orderinvoice/@request") == (string) '0') or $b2b_mask}} checked="checked" {{/if}}></input>{{$txt['107694::n68313_order2_document_e_invoice']}}
													</label>
													<div id="e-invoice_dialog">
														<span class="big_label">{{$txt['107694::n68313_order2_document_e_invoice2']}}</span>
														<div>
															<span class="e-invoice_dialog">{{$txt['107694::n68313_order2_document_e_invoice3']}}</span>
															<p>{{$txt['107694::n68313_order2_document_e_invoice4']}}
															</p>
															<button class="btn">{{$txt['107694::n68313_order2_document_e_invoice5']}}
															</button>
														</div>
													</div>
												{{/if}}
												<label for="order2_document_invoice">
													<input type="radio" class="order2_radio_document" name="invoice" id="order2_document_invoice" value="1" {{if !( $xml->getItem("page/order2/orderinvoice/@e_invoice") == (string)'true') and ( $xml->getItem("page/order2/orderinvoice/@request") == (string) '1' or ( $xml->getItem("page/order2/orderclient/@firm")) and ( $xml->getItem("page/order2/orderclient/@firm") neq (string) '') and !( $xml->getItem("page/order2/orderinvoice/@e_invoice") == (string)'true'))}} checked="checked" {{/if}}></input>
													{{if  $xml->getItem("/shop/contact/owner/@vat_registered")  == (string) 'false' and $n68313_order2_document_invoice  neq (string)''}}
														{{$n68313_order2_document_invoice}}
													{{else}}
														{{$txt['107694::order2_document_invoice']}}
													{{/if}}
												</label>
											</div>
										</div>
									</div>
								</div>
								<div class="order2_info_sub">
									<h3 class="order2_info1">{{$txt['107694::order2_comment3']}}
									</h3>
									<div class="order2_info1" id="order2_box_7">
										<div class="order2_info1_sub">
											<div class="basketedit_summary_shipment_time" {{if $xml->getItem("/shop/basket/delay_time[@unknown_delivery_time='true']")}} style="display:none;" {{/if}}>
												{{if  $xml->getItem("/shop/basket/delivery_time/@days") and !( $xml->getItem("basket/@shipping_undefined")  == (string) 'true')}}
													{{capture name="wys_1_68242" assign="wys_1_68242"}}
														{{$txt['107694::53706_00wys_1']}}
													{{/capture}}
													{{if !(( $xml->getItem("/shop/page/order2/orderdetails/@deliveryid")  == (string) '0-0') or ( $xml->getItem("/shop/page/order2/orderdetails/@deliveryid")  == (string) '0-1')) and $wys_1_68242 and ( $xml->getItem("/shop/basket/shipping_time/@week_amount")) and ( $xml->getItem("/shop/basket/shipping_time/@week_amount")  == (string) 0) and ( $xml->getItem("/shop/basket/shipping_time/@week_day"))}}
														<div class="shipping_time_order1">{{$txt['107694::53706_00wys_0']}}
															{{if  $xml->getItem("/shop/basket/shipping_time/@today")  == (string) 'true'}}
																{{$txt['107694::53706_00wys_1']}}
															{{elseif  $xml->getItem("/shop/basket/shipping_time/@week_day")  == (string) 1}}
																{{$txt['107694::53706_00wys_2']}}
															{{elseif  $xml->getItem("/shop/basket/shipping_time/@week_day")  == (string) 2}}
																{{$txt['107694::53706_00wys_3']}}
															{{elseif  $xml->getItem("/shop/basket/shipping_time/@week_day")  == (string) 3}}
																{{$txt['107694::53706_00wys_4']}}
															{{elseif  $xml->getItem("/shop/basket/shipping_time/@week_day")  == (string) 4}}
																{{$txt['107694::53706_00wys_5']}}
															{{elseif  $xml->getItem("/shop/basket/shipping_time/@week_day")  == (string) 5}}
																{{$txt['107694::53706_00wys_6']}}
															{{elseif  $xml->getItem("/shop/basket/shipping_time/@week_day")  == (string) 6}}
																{{$txt['107694::53706_00wys_7']}}
															{{elseif  $xml->getItem("/shop/basket/shipping_time/@week_day")  == (string) 7}}
																{{$txt['107694::53706_00wys_8']}}
															{{/if}}
														</div>
													{{/if}}
													{{if ( $xml->getItem("/shop/page/order2/orderdetails/@deliveryid")  == (string) '0-0') or ( $xml->getItem("/shop/page/order2/orderdetails/@deliveryid")  == (string) '0-1')}}
														{{if $immediately_txt and ( $xml->getItem("/shop/basket/delivery_time/@days")  == (string) 0) and ( $xml->getItem("/shop/basket/delivery_time/@hours")  == (string) 0) and ( $xml->getItem("/shop/basket/delivery_time/@minutes")  == (string) 0)}}
															{{$immediately_txt}}
														{{else}}
															{{$txt['107694::01021_time_pick4']}}
														{{/if}}
													{{elseif $wys_1_68242  and ( $xml->getItem("/shop/basket/delivery_time/@week_amount"))  and  ( $xml->getItem("/shop/basket/delivery_time/@week_amount")  == (string) 0) and ( $xml->getItem("/shop/basket/delivery_time/@hours")  == (string) 0) and ( $xml->getItem("/shop/basket/delivery_time/@minutes")  == (string) 0)}}
														{{$txt['107694::01021_time_11']}}
													{{elseif  $xml->getItem("/shop/page/order2/orderremarks/@select_date") and ( $xml->getItem("/shop/page/order2/orderremarks/@select_date")  neq (string) '')}}
														{{$txt['107694::01021_time_pick2']}}
													{{else}}
														{{$txt['107694::01021_time_pick']}}
													{{/if}}
													{{if  $xml->getItem("/shop/page/order2/orderremarks/@select_date") and ( $xml->getItem("/shop/page/order2/orderremarks/@select_date")  neq (string) '')}}
														{{$xml->getItemEscape("/shop/page/order2/orderremarks/@select_date")}}
														{{if  $xml->getItem("/shop/page/order2/orderremarks/@select_time") and ( $xml->getItem("/shop/page/order2/orderremarks/@select_time")  neq (string) '')}}
															,{{$xml->getItemEscape("/shop/page/order2/orderremarks/@select_time")}}
														{{/if}}
													{{elseif $wys_1_68242  and ( $xml->getItem("/shop/basket/delivery_time/@week_amount"))  and ( $xml->getItem("/shop/basket/delivery_time/@week_amount")  == (string) 0) and ( $xml->getItem("/shop/basket/delivery_time/@week_day"))}}
														{{if  $xml->getItem("/shop/basket/delivery_time/@week_day")  == (string) 0}}
															{{$wys_1_68242}}
														{{elseif  $xml->getItem("/shop/basket/delivery_time/@week_day")  == (string) 1}}
															{{$txt['107694::53706_00wys_2']}}
														{{elseif  $xml->getItem("/shop/basket/delivery_time/@week_day")  == (string) 2}}
															{{$txt['107694::53706_00wys_3']}}
														{{elseif  $xml->getItem("/shop/basket/delivery_time/@week_day")  == (string) 3}}
															{{$txt['107694::53706_00wys_4']}}
														{{elseif  $xml->getItem("/shop/basket/delivery_time/@week_day")  == (string) 4}}
															{{$txt['107694::53706_00wys_5']}}
														{{elseif  $xml->getItem("/shop/basket/delivery_time/@week_day")  == (string) 5}}
															{{$txt['107694::53706_00wys_6']}}
														{{elseif  $xml->getItem("/shop/basket/delivery_time/@week_day")  == (string) 6}}
															{{$txt['107694::53706_00wys_7']}}
														{{elseif  $xml->getItem("/shop/basket/delivery_time/@week_day")  == (string) 7}}
															{{$txt['107694::53706_00wys_8']}}
														{{/if}}
													{{elseif ( $xml->getItem("/shop/basket/delivery_time/@days")  == (string) 0) and ( $xml->getItem("/shop/basket/delivery_time/@hours")  == (string) 0) and ( $xml->getItem("/shop/basket/delivery_time/@minutes")  == (string) 0)}}
														{{$txt['107694::53706_003c24']}}
													{{else}}
														{{if  $xml->getItem("/shop/basket/delivery_time/@days")  gt (string) 0}}
															{{$txt['107694::463463_wciagu']}}{{$xml->getItemEscape("/shop/basket/delivery_time/@days")}}
															{{if  $xml->getItem("/shop/basket/delivery_time/@days")  == (string)'1'}}
																{{if ( $xml->getItem("/shop/page/order2/orderdetails/@deliveryid")  == (string) '0-0') or ( $xml->getItem("/shop/page/order2/orderdetails/@deliveryid")  == (string) '0-1')}}
																	{{$txt['107694::53706_003dnia']}}
																{{else}}
																	{{$txt['107694::53706_003c']}}
																{{/if}}
															{{else}}
																{{$txt['107694::53706_003b']}}
															{{/if}}
														{{/if}}
														{{if $hours_68242}}
															{{if  $xml->getItem("/shop/basket/delivery_time/@hours")  gt (string) 0}}
																{{$xml->getItemEscape("/shop/basket/delivery_time/@hours")}}
																{{if  $xml->getItem("/shop/basket/delivery_time/@hours")  gt (string) 1}}
																	{{$hours_68242}}
																{{else}}
																	{{$txt['107694::53706_003godz']}}
																{{/if}}
															{{/if}}
														{{else}}
															{{if  $xml->getItem("/shop/basket/delivery_time/@hours")  gt (string) 0}}
																{{$xml->getItemEscape("/shop/basket/delivery_time/@hours")}}{{$txt['107694::53706_003godz']}}
															{{/if}}
														{{/if}}
														{{if  $xml->getItem("/shop/basket/delivery_time/@minutes")  gt (string) 0}}
															{{$xml->getItemEscape("/shop/basket/delivery_time/@minutes")}}{{$txt['107694::53706_003min']}}
														{{/if}}
														{{if !( $xml->getItem("/shop/basket/delivery_time/@hours")  gt (string) 0)}}
															{{$txt['107694::53706_003dot']}}
														{{/if}}
													{{/if}}
												{{/if}}
											</div>
											{{if ( $xml->getItem("page/order2/orderdetails/points/@debit")) and ( $xml->getItem("page/order2/orderdetails/points/@debit")  gt (string) 0)}}
												<div class="basketedit_summary_debit">{{$txt['107694::basketedit_summary_points_gain1']}}{{$xml->getItemEscape("page/order2/orderdetails/points/@debit")}}
													<span>{{$txt['107694::basketedit_points_pts']}}</span>{{$txt['107694::basketedit_summary_points_gain2']}}
												</div>
											{{/if}}
											{{if  $xml->getItem("/shop/client_data/client_balance/limit/@value")  gt (string) '0'}}
												<div class="basketedit_limit_section">
													<div class="basketedit_product_summary">
														<label>{{$txt['107694::53706_001a_limit']}}
														</label>
														<strong class="limit_total">{{$xml->getItemEscape("/shop/client_data/client_balance/limit/@value_formatted")}}</strong>
													</div>
													<div class="basketedit_product_summary">
														<label>{{$txt['107694::53706_001a_limit_touse']}}
														</label>
														<strong class="limit_touse">{{$xml->getItemEscape("/shop/client_data/client_balance/limit/@to_use_formatted")}}</strong>
													</div>
												</div>
											{{/if}}
										</div>
									</div>
								</div>
								<div class="order2_info comment_container clearfix">
									<a href="#toggleComments" id="toggle_comments_button" class="d-sm-none">{{$txt['107694::5234124_toggle_comments']}}</a>
									<div class="order2_info_sub order_comments">
										<h3 class="order2_info1">{{$txt['107694::order2_comment1']}}
										</h3>
										<div class="order2_info1" id="order2_box_5">
											<div class="order2_info1_sub">
												<textarea name="remarks" class="order2_text">
													{{if  $xml->getItem("/shop/page/order2/orderremarks")}}
														{{$xml->getItemEscape("/shop/page/order2/orderremarks")}}
													{{/if}}
													{{if !( $xml->getItem("/shop/page/order2/orderremarks"))}}
														{{$txt['107694::53687_017']}}
													{{/if}}
													</textarea>
											</div>
										</div>
									</div>
									<div class="order2_info_sub">
										<h3 class="order2_info1">{{$txt['107694::order2_comment2']}}
										</h3>
										<div class="order2_info1" id="order2_box_6">
											<div class="order2_info1_sub">
												<textarea name="deliverer_remarks" class="order2_text">
													{{if  $xml->getItem("/shop/page/order2/deliverer_remarks")}}
														{{$xml->getItemEscape("/shop/page/order2/deliverer_remarks")}}
													{{/if}}
													{{if !( $xml->getItem("/shop/page/order2/deliverer_remarks"))}}
														{{$txt['107694::53687_017']}}
													{{/if}}
													</textarea>
											</div>
										</div>
									</div>
								</div>
								{{if  $xml->getItem("/shop/basket/delay_time[@unknown_delivery_time='true']")}}
									<div class="unknown_delivery_time">{{$txt['107694::91570_001a']}}
										<div>{{$txt['107694::91570_001']}}
											<a target="_blank" href="{{$xml->getItemEscape("/shop/contact/link/@url")}}">{{$txt['107694::91570_002']}}</a>
										</div>
									</div>
								{{/if}}
								<div class="basketedit_summary_container">
									<div class="basketedit_summary">
										<div class="basketedit_summary_sub">
											{{if !( $xml->getItem("page/order2/ordersproducts/product/@product_type"))}}
												<div class="order2_products">
													<table class="order2_table">
														<tr>
															<th class="order2_name">{{$txt['107694::51000b']}}
															</th>
															<th class="order2_price" data-mobile-class="hide">{{$txt['107694::51000_1']}}
															</th>
															{{if !( $xml->getItem("/shop/contact/owner/@vat_registered")  == (string) 'false')}}
																<th class="order2_vat">{{$txt['107694::51000_4']}}
																</th>
															{{/if}}
															<th class="order2_quantity">{{$txt['107694::51000_2']}}
															</th>
															<th class="order2_worth">{{$txt['107694::51000_3']}}
															</th>
														</tr>
														{{foreach from=$xml->getList("page/order2/ordersproducts/product") item=loop699}}
															<tr>
																<td class="order2_name">
																	{{if  $loop699->getItem("@gratis") == (string)'y'}}
																		<span class="order2_name">{{$loop699->getItem("@name")}}</span>
																	{{else}}
																		<a class="order2_name" href="{{$loop699->getItemEscape("@link")}}">{{$loop699->getItem("@name")}}</a>
																	{{/if}}
																	{{if  $loop699->getItem("price/priceformula/parameters")}}
																		{{foreach from=$loop699->getList("price/priceformula/parameters/parameter") item=loop715}}
																			<div class="order2_priceformula">
																				<span>{{$loop715->getItemEscape("name")}}:</span>{{$loop715->getItemEscape("values/value")}}
																			</div>
																		{{/foreach}}
																	{{/if}}
																	{{if !( $loop699->getItem("@size")  == (string) '') and ( $loop699->getItem("@size")  neq (string) 'uniw')}}
																		<div class="order2_size_desc">{{$txt['107694::51000_013']}}{{$loop699->getItemEscape("@size_desc")}}
																		</div>
																	{{/if}}
																	{{if  $loop699->getItem("version/@name")}}
																		<div class="order2_size_desc">{{$loop699->getItemEscape("version/@name")}}{{$txt['107694::51000_0kro']}}{{$loop699->getItemEscape("version/@product_name")}}
																		</div>
																	{{/if}}
																	{{if  $loop699->getItem("@product_type")  == (string) 'product_bundle'}}
																		<div class="productslist_product_bundle">{{$txt['107694::50001_z001']}}
																			{{foreach from=$loop699->getList("bundled/product") item=loop739}}
																				<span>
																					{{if  $loop739->getItem("@quantity")  gt (string) 1}}
																						{{$loop739->getItemEscape("@quantity")}}x
																					{{/if}}
																					{{$loop739->getItemEscape("@name")}}
																					{{if !( $loop739->getItem("size/@type") == (string)'uniw') or (( $loop739->getItem("version")) and (!( $loop739->getItem("version/@product_name") == (string)'')))}}
																						{{$txt['107694::50001_z002']}}
																						{{if !( $loop739->getItem("size/@type") == (string)'uniw')}}
																							{{$txt['107694::51000_013']}}{{$loop739->getItemEscape("size/@description")}}
																						{{/if}}
																						{{if !( $loop739->getItem("size/@type") == (string)'uniw') and (( $loop739->getItem("version")) and (!( $loop739->getItem("version/@product_name") == (string)'')))}}
																							{{$txt['107694::50001_z003']}}
																						{{/if}}
																						{{if ( $loop739->getItem("version")) and (!( $loop739->getItem("version/@product_name") == (string)''))}}
																							{{$loop739->getItemEscape("version/@name")}}:{{$loop739->getItemEscape("version/@product_name")}}
																						{{/if}}
																						{{$txt['107694::50001_z004']}}
																					{{/if}}
																					{{if  $loop739->getItem("@product_type")  == (string) 'product_virtual'}}
																						<i class="product_virtual">{{$txt['107694::50001_z004v']}}</i>
																					{{/if}}
																					{{if  $loop739->getItem("@product_type")  == (string) 'product_service'}}
																						<i class="product_service">{{$txt['107694::50001_z004s']}}</i>
																					{{/if}}
																					</span>
																			{{/foreach}}
																		</div>
																	{{/if}}
																	{{if  $loop699->getItem("order_files/file")}}
																		<div class="order2_productlist_files">
																			<span class="n53330_projectorlink">{{$txt['107694::51000_f_01']}}</span>
																			<div class="order2_fileslist">
																				{{foreach from=$loop699->getList("order_files/file") item=loop764}}
																					<div>
																						<span>{{$loop764->getItemEscape("@file")}}</span>{{$txt['107694::order2_change_delivery_left']}}
																						<a {{assign "hrefAttributeTmp10" ""}}  class="previewFile"{{capture name="hrefAttributeTmp10" assign="hrefAttributeTmp10"}}#previewFile{{/capture}}{{if $loop764->getItem("@preview") == (string) 'true'}} rel="{{$loop764->getItemEscape("@path")}}" {{else}}{{capture name="hrefAttributeTmp10" assign="hrefAttributeTmp10"}}{{$loop764->getItemEscape("@path")}}{{/capture}} target="_blank" {{/if}}  href="{{$hrefAttributeTmp10}}">{{$txt['107694::51000_f_02']}}</a>{{$txt['107694::order2_change_delivery_right']}}
																					</div>
																				{{/foreach}}
																			</div>
																		</div>
																	{{/if}}
																</td>
																<td class="order2_price" data-mobile-class="hide">
																	{{if  $loop699->getItem("@forpoints")}}
																		{{$loop699->getItemEscape("@points_for_one")}}{{$txt['107694::51000_993']}}
																	{{/if}}
																	{{if !( $loop699->getItem("@forpoints"))}}
																		{{$loop699->getItemEscape("@detalprice_formatted")}}
																	{{/if}}
																</td>
																{{if !( $loop699->getItem("/shop/contact/owner/@vat_registered")  == (string) 'false')}}
																	<td class="order2_vat">{{$loop699->getItemEscape("@vat")}}{{$txt['107694::51000_procent']}}
																	</td>
																{{/if}}
																<td class="order2_quantity">{{$loop699->getItemEscape("@quantity")}}{{$txt['107694::51000_spacja']}}{{$loop699->getItemEscape("@price_unit")}}
																</td>
																<td class="order2_bruttoworth">
																	{{if  $loop699->getItem("@gratis") == (string)'y'}}
																		{{$txt['107694::51000_gratis']}}
																	{{elseif !( $loop699->getItem("@forpoints"))}}
																		{{$loop699->getItemEscape("@bruttoworth_formatted")}}
																	{{elseif  $loop699->getItem("@forpoints")}}
																		{{$loop699->getItemEscape("@points")}}{{$txt['107694::51000_993']}}
																	{{/if}}
																</td>
															</tr>
															{{if  $loop699->getItem("comment")}}
																<tr>
																	<td colspan="4">
																		<div class="order2_comment">
																			<span class="comment_label">{{$txt['107694::51000_022comment']}}</span>{{$loop699->getItemEscape("comment")}}
																		</div>
																	</td>
																</tr>
															{{/if}}
														{{/foreach}}
													</table>
												</div>
											{{/if}}
											{{if  $xml->getItem("page/order2/ordersproducts/product")}}
												<div class="order2_products">
													<table class="order2_table">
														<tr>
															<th class="order2_name">{{$txt['107694::51000b']}}
															</th>
															<th class="order2_price" data-mobile-class="hide">{{$txt['107694::51000_1']}}
															</th>
															{{if !( $xml->getItem("/shop/contact/owner/@vat_registered")  == (string) 'false')}}
																<th class="order2_vat">{{$txt['107694::51000_4']}}
																</th>
															{{/if}}
															<th class="order2_quantity">{{$txt['107694::51000_2']}}
															</th>
															<th class="order2_worth">{{$txt['107694::51000_3']}}
															</th>
														</tr>
														{{foreach from=$xml->getList("page/order2/ordersproducts/product") item=loop849}}
															{{if !( $loop849->getItem("@product_type")  == (string) 'product_virtual' or  $loop849->getItem("@product_type")  == (string) 'product_service')}}
																<tr>
																	<td class="order2_name">
																		{{if  $loop849->getItem("@gratis") == (string)'y'}}
																			<span class="order2_name">{{$loop849->getItem("@name")}}</span>
																		{{else}}
																			<a class="order2_name" href="{{$loop849->getItemEscape("@link")}}">{{$loop849->getItem("@name")}}</a>
																		{{/if}}
																		{{if  $loop849->getItem("price/priceformula/parameters")}}
																			{{foreach from=$loop849->getList("price/priceformula/parameters/parameter") item=loop866}}
																				<div class="order2_priceformula">
																					<span>{{$loop866->getItemEscape("name")}}:</span>{{$loop866->getItemEscape("values/value")}}
																				</div>
																			{{/foreach}}
																		{{/if}}
																		{{if !( $loop849->getItem("@size")  == (string) '') and ( $loop849->getItem("@size")  neq (string) 'uniw')}}
																			<div class="order2_size_desc">{{$txt['107694::51000_013']}}{{$loop849->getItemEscape("@size_desc")}}
																			</div>
																		{{/if}}
																		{{if  $loop849->getItem("version/@name")}}
																			<div class="order2_size_desc">{{$loop849->getItemEscape("version/@name")}}{{$txt['107694::51000_0kro']}}{{$loop849->getItemEscape("version/@product_name")}}
																			</div>
																		{{/if}}
																		{{if  $loop849->getItem("@product_type")  == (string) 'product_bundle'}}
																			<div class="productslist_product_bundle">{{$txt['107694::50001_z001']}}
																				{{foreach from=$loop849->getList("bundled/product") item=loop890}}
																					<span>
																						{{if  $loop890->getItem("@quantity")  gt (string) 1}}
																							{{$loop890->getItemEscape("@quantity")}}x
																						{{/if}}
																						{{$loop890->getItemEscape("@name")}}
																						{{if !( $loop890->getItem("size/@type") == (string)'uniw') or (( $loop890->getItem("version")) and (!( $loop890->getItem("version/@product_name") == (string)'')))}}
																							{{$txt['107694::50001_z002']}}
																							{{if !( $loop890->getItem("size/@type") == (string)'uniw')}}
																								{{$txt['107694::51000_013']}}{{$loop890->getItemEscape("size/@description")}}
																							{{/if}}
																							{{if !( $loop890->getItem("size/@type") == (string)'uniw') and (( $loop890->getItem("version")) and (!( $loop890->getItem("version/@product_name") == (string)'')))}}
																								{{$txt['107694::50001_z003']}}
																							{{/if}}
																							{{if ( $loop890->getItem("version")) and (!( $loop890->getItem("version/@product_name") == (string)''))}}
																								{{$loop890->getItemEscape("version/@name")}}:{{$loop890->getItemEscape("version/@product_name")}}
																							{{/if}}
																							{{$txt['107694::50001_z004']}}
																						{{/if}}
																						{{if  $loop890->getItem("@product_type")  == (string) 'product_virtual'}}
																							<i class="product_virtual">{{$txt['107694::50001_z004v']}}</i>
																						{{/if}}
																						{{if  $loop890->getItem("@product_type")  == (string) 'product_service'}}
																							<i class="product_service">{{$txt['107694::50001_z004s']}}</i>
																						{{/if}}
																						</span>
																				{{/foreach}}
																			</div>
																		{{/if}}
																		{{if  $loop849->getItem("order_files/file")}}
																			<div class="order2_productlist_files">
																				<span class="n53330_projectorlink">{{$txt['107694::51000_f_01']}}</span>
																				<div class="order2_fileslist">
																					{{foreach from=$loop849->getList("order_files/file") item=loop915}}
																						<div>
																							<span>{{$loop915->getItemEscape("@file")}}</span>{{$txt['107694::order2_change_delivery_left']}}
																							<a {{assign "hrefAttributeTmp11" ""}}  class="previewFile"{{capture name="hrefAttributeTmp11" assign="hrefAttributeTmp11"}}#previewFile{{/capture}}{{if $loop915->getItem("@preview") == (string) 'true'}} rel="{{$loop915->getItemEscape("@path")}}" {{else}}{{capture name="hrefAttributeTmp11" assign="hrefAttributeTmp11"}}{{$loop915->getItemEscape("@path")}}{{/capture}} target="_blank" {{/if}}  href="{{$hrefAttributeTmp11}}">{{$txt['107694::51000_f_02']}}</a>{{$txt['107694::order2_change_delivery_right']}}
																						</div>
																					{{/foreach}}
																				</div>
																			</div>
																		{{/if}}
																	</td>
																	<td class="order2_price" data-mobile-class="hide">
																		{{if  $loop849->getItem("@forpoints")}}
																			{{$loop849->getItemEscape("@points_for_one")}}{{$txt['107694::51000_993']}}
																		{{/if}}
																		{{if !( $loop849->getItem("@forpoints"))}}
																			{{$loop849->getItemEscape("@detalprice_formatted")}}
																		{{/if}}
																	</td>
																	{{if !( $loop849->getItem("/shop/contact/owner/@vat_registered")  == (string) 'false')}}
																		<td class="order2_vat">{{$loop849->getItemEscape("@vat")}}{{$txt['107694::51000_procent']}}
																		</td>
																	{{/if}}
																	<td class="order2_quantity">{{$loop849->getItemEscape("@quantity")}}{{$txt['107694::51000_spacja']}}{{$loop849->getItemEscape("@price_unit")}}
																	</td>
																	<td class="order2_bruttoworth" {{if $loop849->getItem("@gratis") == (string)'y'}} {{$txt['107694::51000_gratis']}} {{elseif !( $loop849->getItem("@forpoints"))}}{{$loop849->getItemEscape("@bruttoworth_formatted")}}{{elseif $loop849->getItem("@forpoints")}} id="points" {{$loop849->getItemEscape("@points")}} {{$txt['107694::51000_993']}} {{/if}}>
																	</td>
																</tr>
																{{if  $loop849->getItem("comment")}}
																	<tr>
																		<td colspan="4">
																			<div class="order2_comment">
																				<span class="comment_label">{{$txt['107694::51000_022comment']}}</span>{{$loop849->getItemEscape("comment")}}
																			</div>
																		</td>
																	</tr>
																{{/if}}
															{{/if}}
														{{/foreach}}
													</table>
												</div>
											{{/if}}
											{{if  $xml->getItem("page/order2/ordersproducts/product[@product_type = 'product_virtual']")}}
												<div class="order2_products">
													<table class="order2_table">
														<tr>
															<th class="order2_name">{{$txt['107694::51000b_c']}}
																<span class="product_virtual">{{$txt['107694::51000b_v']}}</span>
															</th>
															<th class="order2_price" data-mobile-class="hide">{{$txt['107694::51000_1']}}
															</th>
															{{if !( $xml->getItem("/shop/contact/owner/@vat_registered")  == (string) 'false')}}
																<th class="order2_vat">{{$txt['107694::51000_4']}}
																</th>
															{{/if}}
															<th class="order2_quantity">{{$txt['107694::51000_2']}}
															</th>
															<th class="order2_worth">{{$txt['107694::51000_3']}}
															</th>
														</tr>
														{{foreach from=$xml->getList("page/order2/ordersproducts/product") item=loop1002}}
															{{if  $loop1002->getItem("@product_type")  == (string) 'product_virtual'}}
																<tr>
																	<td class="order2_name">
																		{{if  $loop1002->getItem("@gratis") == (string)'y'}}
																			<span class="order2_name">{{$loop1002->getItem("@name")}}</span>
																		{{else}}
																			<a class="order2_name" href="{{$loop1002->getItemEscape("@link")}}">{{$loop1002->getItem("@name")}}</a>
																		{{/if}}
																		{{if  $loop1002->getItem("price/priceformula/parameters")}}
																			{{foreach from=$loop1002->getList("price/priceformula/parameters/parameter") item=loop1019}}
																				<div class="order2_priceformula">
																					<span>{{$loop1019->getItemEscape("name")}}:</span>{{$loop1019->getItemEscape("values/value")}}
																				</div>
																			{{/foreach}}
																		{{/if}}
																		{{if !( $loop1002->getItem("@size")  == (string) '') and ( $loop1002->getItem("@size")  neq (string) 'uniw')}}
																			<div class="order2_size_desc">{{$txt['107694::51000_013']}}{{$loop1002->getItemEscape("@size_desc")}}
																			</div>
																		{{/if}}
																		{{if  $loop1002->getItem("version/@name")}}
																			<div class="order2_size_desc">{{$loop1002->getItemEscape("version/@name")}}{{$txt['107694::51000_0kro']}}{{$loop1002->getItemEscape("version/@product_name")}}
																			</div>
																		{{/if}}
																		{{if  $loop1002->getItem("order_files/file")}}
																			<div class="order2_productlist_files">
																				<span class="n53330_projectorlink">{{$txt['107694::51000_f_01']}}</span>
																				<div class="order2_fileslist">
																					{{foreach from=$loop1002->getList("order_files/file") item=loop1043}}
																						<div>
																							<span>{{$loop1043->getItemEscape("@file")}}</span>{{$txt['107694::order2_change_delivery_left']}}
																							<a {{assign "hrefAttributeTmp12" ""}}  class="previewFile"{{capture name="hrefAttributeTmp12" assign="hrefAttributeTmp12"}}#previewFile{{/capture}}{{if $loop1043->getItem("@preview") == (string) 'true'}} rel="{{$loop1043->getItemEscape("@path")}}" {{else}}{{capture name="hrefAttributeTmp12" assign="hrefAttributeTmp12"}}{{$loop1043->getItemEscape("@path")}}{{/capture}} target="_blank" {{/if}}  href="{{$hrefAttributeTmp12}}">{{$txt['107694::51000_f_02']}}</a>{{$txt['107694::order2_change_delivery_right']}}
																						</div>
																					{{/foreach}}
																				</div>
																			</div>
																		{{/if}}
																	</td>
																	<td class="order2_price" data-mobile-class="hide">
																		{{if  $loop1002->getItem("@forpoints")}}
																			{{$loop1002->getItemEscape("@points_for_one")}}{{$txt['107694::51000_993']}}
																		{{/if}}
																		{{if !( $loop1002->getItem("@forpoints"))}}
																			{{$loop1002->getItemEscape("@detalprice_formatted")}}
																		{{/if}}
																	</td>
																	{{if !( $loop1002->getItem("/shop/contact/owner/@vat_registered")  == (string) 'false')}}
																		<td class="order2_vat">{{$loop1002->getItemEscape("@vat")}}{{$txt['107694::51000_procent']}}
																		</td>
																	{{/if}}
																	<td class="order2_quantity">{{$loop1002->getItemEscape("@quantity")}}{{$txt['107694::51000_spacja']}}{{$loop1002->getItemEscape("@price_unit")}}
																	</td>
																	<td class="order2_bruttoworth" {{if $loop1002->getItem("@gratis") == (string)'y'}} {{$txt['107694::51000_gratis']}} {{elseif !( $loop1002->getItem("@forpoints"))}}{{$loop1002->getItemEscape("@bruttoworth_formatted")}}{{elseif $loop1002->getItem("@forpoints")}} id="points" {{$loop1002->getItemEscape("@points")}} {{$txt['107694::51000_993']}} {{/if}}>
																	</td>
																</tr>
																{{if  $loop1002->getItem("comment")}}
																	<tr>
																		<td colspan="4">
																			<div class="order2_comment">
																				<span class="comment_label">{{$txt['107694::51000_022comment']}}</span>{{$loop1002->getItemEscape("comment")}}
																			</div>
																		</td>
																	</tr>
																{{/if}}
															{{/if}}
														{{/foreach}}
													</table>
												</div>
											{{/if}}
											{{if  $xml->getItem("page/order2/ordersproducts/product[@product_type = 'product_service']")}}
												<div class="order2_products">
													<table class="order2_table">
														<tr>
															<th class="order2_name">{{$txt['107694::51000b_c']}}
																<span class="product_virtual">{{$txt['107694::51000b_s']}}</span>
															</th>
															<th class="order2_price" data-mobile-class="hide">{{$txt['107694::51000_1']}}
															</th>
															{{if !( $xml->getItem("/shop/contact/owner/@vat_registered")  == (string) 'false')}}
																<th class="order2_vat">{{$txt['107694::51000_4']}}
																</th>
															{{/if}}
															<th class="order2_quantity">{{$txt['107694::51000_2']}}
															</th>
															<th class="order2_worth">{{$txt['107694::51000_3']}}
															</th>
														</tr>
														{{foreach from=$xml->getList("page/order2/ordersproducts/product") item=loop1129}}
															{{if  $loop1129->getItem("@product_type")  == (string) 'product_service'}}
																<tr>
																	<td class="order2_name">
																		{{if  $loop1129->getItem("@gratis") == (string)'y'}}
																			<span class="order2_name">{{$loop1129->getItem("@name")}}</span>
																		{{else}}
																			<a class="order2_name" href="{{$loop1129->getItemEscape("@link")}}">{{$loop1129->getItem("@name")}}</a>
																		{{/if}}
																		{{if  $loop1129->getItem("price/priceformula/parameters")}}
																			{{foreach from=$loop1129->getList("price/priceformula/parameters/parameter") item=loop1146}}
																				<div class="order2_priceformula">
																					<span>{{$loop1146->getItemEscape("name")}}:</span>{{$loop1146->getItemEscape("values/value")}}
																				</div>
																			{{/foreach}}
																		{{/if}}
																		{{if !( $loop1129->getItem("@size")  == (string) '') and ( $loop1129->getItem("@size")  neq (string) 'uniw')}}
																			<div class="order2_size_desc">{{$txt['107694::51000_013']}}{{$loop1129->getItemEscape("@size_desc")}}
																			</div>
																		{{/if}}
																		{{if  $loop1129->getItem("version/@name")}}
																			<div class="order2_size_desc">{{$loop1129->getItemEscape("version/@name")}}{{$txt['107694::51000_0kro']}}{{$loop1129->getItemEscape("version/@product_name")}}
																			</div>
																		{{/if}}
																		{{if  $loop1129->getItem("order_files/file")}}
																			<div class="order2_productlist_files">
																				<span class="n53330_projectorlink">{{$txt['107694::51000_f_01']}}</span>
																				<div class="order2_fileslist">
																					{{foreach from=$loop1129->getList("order_files/file") item=loop1170}}
																						<div>
																							<span>{{$loop1170->getItemEscape("@file")}}</span>{{$txt['107694::order2_change_delivery_left']}}
																							<a {{assign "hrefAttributeTmp13" ""}}  class="previewFile"{{capture name="hrefAttributeTmp13" assign="hrefAttributeTmp13"}}#previewFile{{/capture}}{{if $loop1170->getItem("@preview") == (string) 'true'}} rel="{{$loop1170->getItemEscape("@path")}}" {{else}}{{capture name="hrefAttributeTmp13" assign="hrefAttributeTmp13"}}{{$loop1170->getItemEscape("@path")}}{{/capture}} target="_blank" {{/if}}  href="{{$hrefAttributeTmp13}}">{{$txt['107694::51000_f_02']}}</a>{{$txt['107694::order2_change_delivery_right']}}
																						</div>
																					{{/foreach}}
																				</div>
																			</div>
																		{{/if}}
																	</td>
																	<td class="order2_price" data-mobile-class="hide">
																		{{if  $loop1129->getItem("@forpoints")}}
																			{{$loop1129->getItemEscape("@points_for_one")}}{{$txt['107694::51000_993']}}
																		{{/if}}
																		{{if !( $loop1129->getItem("@forpoints"))}}
																			{{$loop1129->getItemEscape("@detalprice_formatted")}}
																		{{/if}}
																	</td>
																	{{if !( $loop1129->getItem("/shop/contact/owner/@vat_registered")  == (string) 'false')}}
																		<td class="order2_vat">{{$loop1129->getItemEscape("@vat")}}{{$txt['107694::51000_procent']}}
																		</td>
																	{{/if}}
																	<td class="order2_quantity">{{$loop1129->getItemEscape("@quantity")}}{{$txt['107694::51000_spacja']}}{{$loop1129->getItemEscape("@price_unit")}}
																	</td>
																	<td class="order2_bruttoworth" {{if $loop1129->getItem("@gratis") == (string)'y'}} {{$txt['107694::51000_gratis']}} {{elseif !( $loop1129->getItem("@forpoints"))}}{{$loop1129->getItemEscape("@bruttoworth_formatted")}}{{elseif $loop1129->getItem("@forpoints")}} id="points" {{$loop1129->getItemEscape("@points")}} {{$txt['107694::51000_993']}} {{/if}}>
																	</td>
																</tr>
																{{if  $loop1129->getItem("comment")}}
																	<tr>
																		<td colspan="4" {{if !( $loop1129->getItem("/shop/contact/owner/@vat_registered") == (string) 'false')}} colspan="3" {{/if}}>
																			<div class="order2_comment">
																				<span class="comment_label">{{$txt['107694::51000_022comment']}}</span>{{$loop1129->getItemEscape("comment")}}
																			</div>
																		</td>
																	</tr>
																{{/if}}
															{{/if}}
														{{/foreach}}
													</table>
												</div>
											{{/if}}
											{{if  $xml->getItem("page/wrappers/wrapper")}}
												<div class="order2_products">
													<table class="order2_table">
														<tr>
															<th class="order2_name">{{$txt['107694::51066b']}}
															</th>
															<th class="order2_worth">
															</th>
														</tr>
														{{foreach from=$xml->getList("page/wrappers/wrapper[@selected = 'true']") item=loop1248}}
															<tr>
																<td class="order2_name">
																	<span class="order2_name">{{$loop1248->getItemEscape("name")}}</span>
																</td>
																<td class="order2_bruttoworth">
																	{{if $signbeforeprice  == (string) 'true'}}
																		{{$loop1248->getItemEscape("/shop/currency/@name")}}{{$signbetweenpricecurrency}}
																	{{/if}}
																	{{$loop1248->getItemEscape("price/@value")}}
																	{{if $signbeforeprice  == (string) 'false'}}
																		{{$signbetweenpricecurrency}}{{$loop1248->getItemEscape("/shop/currency/@name")}}
																	{{/if}}
																</td>
															</tr>
														{{/foreach}}
													</table>
												</div>
											{{/if}}
											{{if  $xml->getItem("/shop/page/order2/orderdetails/@deliveryid")  neq (string)'47-1'}}
												<div class="order2_products">
													<table class="order2_table">
														<tr>
															<th class="order2_name">
																{{if  $xml->getItem("/shop/page/order2/insurance_product")}}
																	{{$txt['107694::deliv51066abis']}}
																{{else}}
																	{{$txt['107694::deliv51066ab']}}
																{{/if}}
															</th>
															<th class="order2_worth">
															</th>
														</tr>
														<tr>
															<td class="order2_name">
																<span class="order2_name">{{$txt['107694::order2_info_21a']}}{{$xml->getItemEscape("page/order2/orderdetails/@deliveryname")}}
																	<a class="order2_change_delivery_link" href="order1.php">{{$txt['107694::order2_change_delivery_txt']}}</a></span>
																{{if  $xml->getItem("/shop/page/order2/shipping/comment") and  $xml->getItem("/shop/page/order2/shipping/comment")  neq (string) ''}}
																	<div class="order2_delivery_info">{{$xml->getItem("/shop/page/order2/shipping/comment")}}
																	</div>
																{{/if}}
															</td>
															<td class="order2_bruttoworth">
																<div class="worth_box">
																	{{if ( $xml->getItem("page/order2/shipping/@cost")  gt (string) 0) or (!( $xml->getItem("page/order2/orderdetails/@deliverytype")  == (string) 'dvp' and  $xml->getItem("page/order2/stock/@stock_id")))}}
																		{{if !( $xml->getItem("page/order2/shipping/@hide_cost")  == (string) 'true')}}
																			{{if  $xml->getItem("page/order2/shipping/@cost_type")  == (string) 'points'}}
																				{{$xml->getItemEscape("page/order2/shipping/@points_cost")}}{{$txt['107694::51000_993']}}
																			{{elseif  $xml->getItem("page/order2/shipping/@cost")  == (string) 0}}
																				{{$txt['107694::51000_gratis']}}
																			{{elseif  $xml->getItem("page/order2/shipping/@cost")}}
																				{{$xml->getItemEscape("page/order2/shipping/@cost_formatted")}}
																			{{/if}}
																		{{/if}}
																	{{/if}}
																</div>
															</td>
														</tr>
														{{if !( $xml->getItem("page/order2/orderdetails/@deliverytype")  == (string) 'prepaid' and  $xml->getItem("page/order2/orderdetails/@payment_name")  == (string) '') or ( $xml->getItem("page/order2/orderdetails/@tradeCredit")  == (string) 'y')}}
															<tr>
																<td class="order2_name">
																	<span class="order2_name">
																		{{if  $xml->getItem("page/order2/orderdetails/voucher/@value")}}
																			{{$txt['107694::order2_info_21']}}{{$xml->getItemEscape("page/order2/orderdetails/@payment_name")}}
																		{{elseif ( $xml->getItem("page/order2/orderdetails/@deliverytype")  == (string) 'prepaid') and ( $xml->getItem("page/order2/orderdetails/@tradeCredit")  == (string) 'y')}}
																			{{$txt['107694::order2_info_21']}}{{$txt['107694::order2_kredytkupiecki']}}
																		{{elseif  $xml->getItem("page/order2/orderdetails/@deliverytype")  == (string) 'prepaid'}}
																			{{$txt['107694::order2_info_21']}}{{$xml->getItemEscape("page/order2/orderdetails/@payment_name")}}
																		{{elseif  $xml->getItem("page/order2/orderdetails/@deliverytype")  == (string) 'dvp'}}
																			{{$txt['107694::order2_info_21']}}{{$txt['107694::order2_infoodb']}}
																		{{/if}}
																		{{if  $xml->getItem("page/order2/instalment")}}
																			<a class="order2_instalment" onclick="calculate_instalments('{{$xml->getItemEscape("page/order2/instalment/@minprice")}}','{{$xml->getItemEscape("page/order2/instalment/@maxprice")}}','{{$xml->getItemEscape("page/order2/instalment/@priceTotal")}}','{{$xml->getItemEscape("page/order2/instalment/@alert")}}',$(this).attr('rel'),'{{$xml->getItemEscape("page/order2/instalment/@maxquantity")}}');" rel="{{$xml->getItemEscape("page/order2/instalment/@calculate")}}">{{$txt['107694::order2_instalment_txt']}}</a>
																		{{/if}}
																		{{if !( $xml->getItem("page/order2/orderdetails/@tradeCredit")  == (string) 'y')}}
																			<a class="order2_change_delivery_link" href="order1.php">{{$txt['107694::order2_change_delivery_txt']}}</a>
																		{{/if}}
																		</span>
																	<div class="order2_delivery_info">
																		{{if  $xml->getItem("page/order2/orderdetails/voucher/@value") and ( $xml->getItem("page/order2/orderdetails/@paymentcost")  gt (string) 0)}}
																			{{$txt['107694::order2_info_deliverymethod_prepaida1234']}}{{$xml->getItemEscape("page/order2/orderdetails/@paymentcost_formatted")}}
																		{{elseif ( $xml->getItem("page/order2/orderdetails/@deliverytype")  == (string) 'prepaid') and !( $xml->getItem("page/order2/orderdetails/@tradeCredit")  == (string) 'y')}}
																			{{$txt['107694::order2_info_deliverymethod_prepaida1']}}
																		{{elseif  $xml->getItem("page/order2/orderdetails/@deliverytype")  == (string) 'dvp' and  $xml->getItem("page/order2/stock/@stock_id")}}
																			{{$txt['107694::order2_info_deliverymethod_dvpz2']}}
																		{{elseif  $xml->getItem("page/order2/orderdetails/@deliverytype")  == (string) 'dvp'}}
																			{{$txt['107694::order2_info_deliverymethod_dvpz']}}
																		{{/if}}
																	</div>
																</td>
																<td class="order2_bruttoworth">
																	<div class="worth_box">
																		{{if  $xml->getItem("page/order2/orderdetails/voucher/@value")}}
																			{{if $signbeforeprice  == (string) 'true'}}
																				<span class="currency_order2">{{$xml->getItemEscape("/shop/currency/@name")}}</span>{{$signbetweenpricecurrency}}
																			{{/if}}
																			{{$xml->getItemEscape("page/order2/orderdetails/voucher/@value")}}
																			{{if $signbeforeprice  == (string) 'false'}}
																				{{$signbetweenpricecurrency}}
																				<span class="currency_order2">{{$xml->getItemEscape("/shop/currency/@name")}}</span>
																			{{/if}}
																		{{elseif  $xml->getItem("page/order2/orderdetails/@paymentcost")  gt (string) 0 and  $xml->getItem("page/order2/shipping/@cost")}}
																			{{$xml->getItemEscape("page/order2/orderdetails/@paymentcost_formatted")}}
																		{{/if}}
																	</div>
																</td>
															</tr>
														{{/if}}
														{{if  $xml->getItem("/shop/page/order2/balance/@currency_value") and  $xml->getItem("/shop/page/order2/balance/@currency_value")  gt (string) 0}}
															<tr>
																<td class="order2_name">
																	<span class="order2_name">{{$txt['107694::order2_info_21saldo']}}</span>
																</td>
																<td class="order2_bruttoworth">
																	<div {{assign "classAttributeTmp4" ""}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}worth_box{{/capture}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}worth_box minus_sign{{/capture}}  class="{{$classAttributeTmp4}}">
																		{{if $signbeforeprice  == (string) 'true'}}
																			<span class="currency_order2">{{$xml->getItemEscape("/shop/currency/@name")}}</span>{{$signbetweenpricecurrency}}
																		{{/if}}
																		{{$xml->getItemEscape("/shop/page/order2/balance/@currency_value")}}
																		{{if $signbeforeprice  == (string) 'false'}}
																			{{$signbetweenpricecurrency}}
																			<span class="currency_order2">{{$xml->getItemEscape("/shop/currency/@name")}}</span>
																		{{/if}}
																	</div>
																</td>
															</tr>
														{{/if}}
														{{if  $xml->getItem("/shop/page/order2/insurance_product")}}
															<tr>
																<td class="order2_name">
																	<span class="order2_name">{{$txt['107694::53790_001ts']}}{{$xml->getItemEscape("/shop/page/order2/insurance_product/@service")}}</span>
																	<div class="order2_delivery_info">
																		{{if  $xml->getItem("/shop/page/order2/insurance_product/@status")  == (string) 'unconfirmed'}}
																			{{$txt['107694::53790_001stat']}}
																		{{elseif  $xml->getItem("/shop/page/order2/insurance_product/@status")  == (string) 'confirmed'}}
																			{{$txt['107694::53790_001stat1']}}
																		{{/if}}
																	</div>
																</td>
																<td class="order2_bruttoworth">
																	<div class="worth_box">
																		{{if  $xml->getItem("/shop/page/order2/insurance_product/@price_gross")  gt (string) 0}}
																			{{if $signbeforeprice  == (string) 'true'}}
																				<span class="currency_order2">{{$xml->getItemEscape("/shop/currency/@name")}}</span>{{$signbetweenpricecurrency}}
																			{{/if}}
																			{{$xml->getItemEscape("/shop/page/order2/insurance_product/@price_gross")}}
																			{{if $signbeforeprice  == (string) 'false'}}
																				{{$signbetweenpricecurrency}}
																				<span class="currency_order2">{{$xml->getItemEscape("/shop/currency/@name")}}</span>
																			{{/if}}
																		{{/if}}
																	</div>
																</td>
															</tr>
														{{/if}}
													</table>
												</div>
											{{/if}}
											<div class="basketedit_summary_right">
												<div class="basketedit_calculations">
													{{if  $xml->getItem("/shop/basket/summary/products_worth/@value_formatted")}}
														<div class="basketedit_product_summary">
															<label>{{$txt['107694::53706_001a']}}
															</label>
															<strong>{{$xml->getItemEscape("/shop/basket/summary/products_worth/@value_formatted")}}</strong>
														</div>
													{{/if}}
													{{if  $xml->getItem("/shop/basket/summary/total_additional_cost_after_rebate/@value")}}
														{{if  $xml->getItem("/shop/basket/summary/total_additional_cost_after_rebate/@value")  gt (string) 0}}
															<div class="basketedit_product_summary">
																<label>{{$txt['107694::53706_001a_dodatkowe_opłaty']}}
																</label>
																<strong {{assign "classAttributeTmp5" ""}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}paymentcost_value{{/capture}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}paymentcost_value plus_sign{{/capture}}  class="{{$classAttributeTmp5}}">{{$xml->getItemEscape("/shop/basket/summary/total_additional_cost_after_rebate/@value_formatted")}}</strong>
															</div>
														{{/if}}
													{{else}}
														{{if  $xml->getItem("/shop/basket/summary/total_additional_cost/@value")  gt (string) 0}}
															<div class="basketedit_product_summary">
																<label>{{$txt['107694::53706_001a_dodatkowe_opłaty']}}
																</label>
																<strong {{assign "classAttributeTmp5" ""}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}paymentcost_value{{/capture}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}paymentcost_value plus_sign{{/capture}}  class="{{$classAttributeTmp5}}">{{$xml->getItemEscape("/shop/basket/summary/total_additional_cost/@value_formatted")}}</strong>
															</div>
														{{/if}}
													{{/if}}
													{{if  $xml->getItem("/shop/client_data/client_balance/balance/@is_selected_and_allowed_order") == (string)'true' and  $xml->getItem("/shop/client_data/client_balance/balance[@is_selected_and_allowed_order='true']/@value")  neq (string) 0}}
														<div class="basketedit_product_summary">
															<label>{{$txt['107694::53706_001a_saldo']}}
															</label>
															<strong {{assign "classAttributeTmp7" ""}}{{capture name="classAttributeTmp7" assign="classAttributeTmp7"}}saldo_value{{/capture}}{{capture name="classAttributeTmp7" assign="classAttributeTmp7"}}saldo_value minus_sign{{/capture}}  class="{{$classAttributeTmp7}}">{{$xml->getItemEscape("/shop/page/order2/balance[@active='y']/@currency_value_formatted")}}</strong>
														</div>
													{{/if}}
													{{if  $xml->getItem("/shop/basket/@total_rebate_without_shipping")}}
														{{if  $xml->getItem("/shop/basket/@total_rebate_without_shipping")  gt (string) 0}}
															<div class="basketedit_rabats_summary">
																<label>{{$txt['107694::53706_001b']}}
																</label>
																<strong class="minus_sign">{{$xml->getItemEscape("/shop/basket/@total_rebate_without_shipping_formatted")}}</strong>
															</div>
														{{/if}}
													{{else}}
														{{if  $xml->getItem("/shop/basket/summary/total_rebate/@value_formatted")}}
															<div class="basketedit_rabats_summary">
																<label>{{$txt['107694::53706_001b']}}
																</label>
																<strong class="minus_sign">{{$xml->getItemEscape("/shop/basket/summary/total_rebate/@value_formatted")}}</strong>
															</div>
														{{/if}}
													{{/if}}
												</div>
												<div class="basketedit_total_summary">
													<label>{{$txt['107694::53706_001c']}}
													</label>
													{{if ( $xml->getItem("/shop/basket/@wholesaler")  == (string) 'true') and !($wholesalerPrice2)}}
														<strong>{{$xml->getItemEscape("/shop/basket/summary/total_to_pay/@value_formatted")}}</strong>
													{{else}}
														<strong>{{$xml->getItemEscape("/shop/basket/summary/total_to_pay/@value_formatted")}}
															{{if !( $xml->getItem("/shop/client_data/@uses_vat") == (string)'false') and !( $xml->getItem("/shop/contact/owner/@vat_registered")  == (string) 'false')}}
																{{$txt['107694::53833_brutto']}}
															{{/if}}
															</strong>
													{{/if}}
													{{if ( $xml->getItem("basket/@points_used")) and ( $xml->getItem("basket/@points_used")  neq (string) 0)}}
														<b>{{$txt['107694::53833_andpts']}}
															<span>{{$xml->getItemEscape("basket/@points_used")}}{{$txt['107694::53833_justpts']}}</span></b>
													{{/if}}
												</div>
												{{if  $xml->getItem("/shop/basket/summary/prepaid_discount/@value_formatted") and $txt_68638_rpoz}}
													<div style="clear:both">
													</div>
													<div class="basketedit_product_summary prepaid_discount_wrapper">
														<label>{{$txt_68638_rpoz}}
															<span id="discount_paiment_name">{{$xml->getItemEscape("page/order2/orderdetails/@payment_name")}}</span>{{$txt['107694::53833_odr']}}
														</label>
														<strong {{assign "classAttributeTmp8" ""}}{{capture name="classAttributeTmp8" assign="classAttributeTmp8"}}paymentcost_value{{/capture}}{{capture name="classAttributeTmp8" assign="classAttributeTmp8"}}paymentcost_value minus_sign{{/capture}}  class="{{$classAttributeTmp8}}">{{$xml->getItemEscape("/shop/basket/summary/prepaid_discount/@value_formatted")}}</strong>
													</div>
												{{/if}}
												{{if $txt_60826_advance_a and ( $xml->getItem("/shop/page/order2/orderdetails/@advance")  gt (string) 0)}}
													<div class="basketedit_product_summary advance">
														<label>{{$txt['107694::60826_advance_a']}}
														</label>
														<strong>{{$xml->getItemEscape("/shop/page/order2/orderdetails/@advance_formatted")}}</strong>
													</div>
												{{/if}}
											</div>
											<div class="order2_terms_wrapper">
												<div class="order2_terms_wrapper_sub">
													<label class="order2_terms_conditions">
														<input type="checkbox" name="order2_terms_conditions" value="yes" class="css-checkbox" required="required"/>
														<i class="css-label"/>
														<span>{{$txt['107694::53833_terms_001']}}
															<a target="_blank" title="{{$txt['107694::53833_terms_001a']}} " href=" {{$xml->getItemEscape("/shop/action/terms/@url")}} ">{{$txt['107694::53833_terms_002']}}</a></span>
													</label>
												</div>
												{{if !($returns_agree_control)}}
													<div class="order2_terms_wrapper_sub">
														<label class="order2_cancel">
															<input type="checkbox" name="order2_cancel" value="yes" class="css-checkbox" required="required"/>
															<i class="css-label"/>
															<span>{{$txt['107694::53833_terms_003']}}
																<a target="_blank" title="{{$txt['107694::53833_terms_003a']}} " href=" {{$xml->getItemEscape("/shop/action/order_cancel/@url")}} ">{{$txt['107694::53833_terms_004']}}</a></span>
														</label>
													</div>
												{{/if}}
												{{if  $xml->getItem("page/order2/ordersproducts//product[@product_type = 'product_virtual']")}}
													<div class="order2_terms_wrapper_sub virtual">
														<label class="order2_virtual">
															<input type="checkbox" name="order2_virtual" value="yes" class="css-checkbox" required="required"/>
															<i class="css-label"/>
															<span>{{$txt['107694::53833_terms_005']}}</span>
														</label>
													</div>
												{{/if}}
												{{if  $xml->getItem("page/order2/ordersproducts//product[@product_type = 'product_service']")}}
													<div class="order2_terms_wrapper_sub service">
														<label class="order2_service">
															<input type="checkbox" name="order2_service" value="yes" class="css-checkbox" required="required"/>
															<i class="css-label"/>
															<span>{{$txt['107694::53833_terms_006']}}</span>
														</label>
													</div>
												{{/if}}
											</div>
											<div class="basketedit_summary_buttons table_display">
												<div class="btn_wrapper">
													<input {{assign "valueAttributeTmp14" ""}}{{assign "classAttributeTmp9" ""}}{{capture name="classAttributeTmp9" assign="classAttributeTmp9"}}order2_button_order terms_required{{/capture}} type="submit"{{capture name="classAttributeTmp9" assign="classAttributeTmp9"}}btn-large order2_button_order terms_required{{/capture}}{{capture name="valueAttributeTmp14" assign="valueAttributeTmp14"}}{{$txt['107694::order2_button_order']}}{{/capture}}{{if $xml->getItem("/shop/order_edit/@order_id")}}{{capture name="classAttributeTmp9" assign="classAttributeTmp9"}}btn-large order2_button_order order2_change_order terms_required{{/capture}}{{if $order_edit_button}}{{capture name="valueAttributeTmp14" assign="valueAttributeTmp14"}}{{$order_edit_button}}{{/capture}}{{/if}}{{/if}}  class="{{$classAttributeTmp9}}"  value="{{$valueAttributeTmp14}}"></input>
													<div class="button_legend">{{$txt['107694::50201_order2_legend']}}
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								{{if  $xml->getItem("/shop/page/wrappers")}}
									{{foreach from=$xml->getList("/shop/page/wrappers/wrapper") item=loop1614}}
										{{if  $loop1614->getItem("@selected")  == (string) 'true'}}
											<input type="hidden" name="wrapper_id" value="{{$loop1614->getItemEscape("@id")}}"></input>
										{{/if}}
									{{/foreach}}
								{{/if}}
							</form>
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
