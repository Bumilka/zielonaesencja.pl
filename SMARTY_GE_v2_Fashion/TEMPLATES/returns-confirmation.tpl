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
						<!--Zwroty potwierdzenie CMS (returns_confirmation_cms, 69375.1)-->
						{{if  $xml->getItem("page/text/body")}}
							<div class="returns_cms">
								<div class="returns_cms_sub">{{$xml->getItem("page/text/body")}}
								</div>
							</div>
						{{/if}}
						<!--Zwroty potwierdzenie (returns_confirmation_form, 69374.1)-->
						{{if  $xml->getItem("page/@type")  == (string) 'return_products' and  $xml->getItem("page/@display")  == (string) 'confirmation'}}
							<div class="step6">
								<div {{assign "classAttributeTmp3" ""}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}progress_bar_wrapper{{/capture}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}progress_bar_wrapper pb_step5{{/capture}}  class="{{$classAttributeTmp3}}">
									<div class="_progress_bar">
									</div>
									<div class="_step _step1">
										<span>
											1</span>
										<p>
											<i></i>{{$txt['69374::step1_txt']}}
										</p>
									</div>
									<div class="_step _step2">
										<span>2</span>
										<p>
											<i></i>{{$txt['69374::step2_txt']}}
										</p>
									</div>
									<div class="_step _step3">
										<span>3</span>
										<p>
											<i></i>{{$txt['69374::step3_txt']}}
										</p>
									</div>
									<div class="_step _step4">
										<span>4</span>
										<p>
											<i></i>{{$txt['69374::step4_txt']}}
										</p>
									</div>
									<div class="_step _step5">
										<span>5</span>
										<p>
											<i></i>{{$txt['69374::step5_txt']}}
										</p>
									</div>
									<div class="_step _step6">
										<span>6</span>
										<p>
											<i></i>{{$txt['69374::step6_txt']}}
										</p>
									</div>
								</div>
								<script type="text/javascript">
  $(function(){
     $('div.progress_bar_wrapper').attr('class', 'progress_bar_wrapper pb_step6')
  })  
								</script>

								<div class="n57856_order_overtaker">
									<form class="returns_form" method="post" action="{{$xml->getItemEscape("page/formactionlink/@url")}}">
										<div {{assign "classAttributeTmp4" ""}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}order2_info_label{{/capture}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}big_label order2_info_label{{/capture}}  class="{{$classAttributeTmp4}}">{{$txt['69374::54568_001ca']}}
										</div>
										<div class="order2_info">
											<div class="order2_info_sub" id="order2_info_sub1">
												<h3 class="order2_info1" id="order2_nagl_1">{{$txt['69374::51000_info1ba']}}
												</h3>
												<div class="order2_info1" id="order2_box_1">
													<div class="order2_info1_sub">
														{{if  $xml->getItem("page/orderclient/@firm")}}
															{{$xml->getItemEscape("page/orderclient/@firm")}}
															<br/>
														{{/if}}
														{{if !( $xml->getItem("page/orderclient/@firm"))}}
															{{$xml->getItemEscape("page/orderclient/@firstname")}}{{literal}}{{/literal}}{{$xml->getItemEscape("page/orderclient/@lastname")}}
															<br/>
														{{/if}}
														{{$xml->getItemEscape("page/orderclient/@street")}}
														<br/>{{$xml->getItemEscape("page/orderclient/@zipcode")}}{{literal}}{{/literal}}{{$xml->getItemEscape("page/orderclient/@city")}}({{$xml->getItemEscape("page/orderclient/@country_long")}})
														<br/>
														{{if  $xml->getItem("page/orderclient/@nip")}}
															{{$txt['69374::51000_infonip']}}{{$xml->getItemEscape("page/orderclient/@nip")}}
															<br/>
														{{/if}}
														{{$txt['69374::40009_010']}}{{$xml->getItemEscape("page/orderclient/@email")}}
														<br/>
													</div>
													<a class="order2_button_change" href="{{$xml->getItemEscape("page/orderclient/@changelink")}}">{{$txt['69374::51000_900a']}}</a>
												</div>
											</div>
											<div class="order2_info_sub" id="order2_info_sub2">
												{{if  $xml->getItem("page/pickup")}}
													<h3 class="order2_info1" id="order2_nagl_2a">{{$txt['69374::51000_info2a']}}
													</h3>
													<div class="order2_info1" id="order2_box_2b">
														<div class="order2_info1_sub">
															<span class="order2_stock_name">{{$xml->getItemEscape("page/pickup/name")}}</span>{{$xml->getItemEscape("page/pickup/address")}}
															<br/>{{$xml->getItemEscape("page/pickup/zipcode")}}{{literal}}{{/literal}}{{$xml->getItemEscape("page/pickup/city")}}({{$xml->getItemEscape("page/pickup/country")}})
															<br/>
															<div class="order2_moreinfo">
																<a class="order2_stock_moreinfo" href="{{$xml->getItemEscape("page/pickup/link")}}">{{$txt['69374::order2_stock_link']}}</a>
															</div>
														</div>
														<a class="order2_button_change_stock" target="_blank" href="{{$xml->getItemEscape("page/pickupchangelink/@url")}}">{{$txt['69374::order2_change_stock_link']}}</a>
													</div>
												{{else}}
													<h3 class="order2_info1" id="order2_nagl_2b">{{$txt['69374::51000_info2bc']}}
													</h3>
													<div class="order2_info1" id="order2_box_2b">
														<div class="order2_info1_sub">
															{{if  $xml->getItem("page/deliveryaddress/@additional")}}
																{{$xml->getItemEscape("page/deliveryaddress/@additional")}}
																<br/>
															{{/if}}
															{{$xml->getItemEscape("page/deliveryaddress/@street")}}
															<br/>{{$xml->getItemEscape("page/deliveryaddress/@zipcode")}}{{literal}}{{/literal}}{{$xml->getItemEscape("page/deliveryaddress/@city")}}({{$xml->getItemEscape("page/deliveryaddress/@country_long")}})
															<br/>
														</div>
														<a class="order2_button_change_address" href="{{$xml->getItemEscape("page/deliveryaddress/@changelink")}}">{{$txt['69374::51000_900']}}</a>
													</div>
												{{/if}}
											</div>
											{{if  $xml->getItem("/shop/page/remarks")}}
												<div class="order2_info_sub">
													<h3 class="order2_info1">{{$txt['69374::order2_comment1']}}
													</h3>
													<div class="order2_info1" id="order2_box_1">
														<div class="order2_info1_sub">{{$xml->getItem("/shop/page/remarks")}}
														</div>
													</div>
												</div>
											{{/if}}
										</div>
										<div class="order2_products">
											{{capture name="return_with_special_offer" assign="return_with_special_offer"}}
												{{$txt['69374::57649_return_with_special_offer']}}
											{{/capture}}
											{{capture name="required_from_special_offer" assign="required_from_special_offer"}}
												{{$txt['69374::57649_required_from_special_offer']}}
											{{/capture}}
											{{if $return_with_special_offer  neq (string) '' and  $xml->getItem("/shop/page/returnproducts/products/@return_with_special_offer")  == (string) 'true'}}
												<div {{assign "classAttributeTmp5" ""}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}menu_messages_message{{/capture}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}menu_messages_message menu_messages_return_with_specia{{/capture}}  class="{{$classAttributeTmp5}}">
													<div>{{$return_with_special_offer}}
													</div>
												</div>
											{{/if}}
											<table class="order2_table">
												<tr>
													<th class="order2_name">{{$txt['69374::51000b']}}
													</th>
													{{if  $xml->getItem("/shop/page/returnproducts/products/product/@required_from_special_offer")  == (string) 'true' and $required_from_special_offer  neq (string) ''}}
														<th class="order2_special_offer">{{$txt['69374::51000_1thorder2_special_offer']}}
														</th>
													{{/if}}
													<th class="order2_price">{{$txt['69374::51000_1']}}
													</th>
													<th class="order2_quantity">{{$txt['69374::51000_2']}}
													</th>
													<th class="order2_worth">{{$txt['69374::51000_3']}}
													</th>
												</tr>
												{{foreach from=$xml->getList("page/returnproducts/products/product") item=loop510}}
													<tr>
														<td class="order2_name">
															{{if  $loop510->getItem("@gratis") == (string)'y'}}
																<span class="order2_name">{{$loop510->getItem("@name")}}</span>
															{{else}}
																<a class="order2_name" href="{{$loop510->getItemEscape("@link")}}">{{$loop510->getItem("@name")}}</a>
															{{/if}}
															{{if !( $loop510->getItem("size/@type") == (string)'uniw')}}
																<div class="order2_size_desc">{{$txt['69374::51000_013']}}{{$loop510->getItemEscape("size/@description")}}
																</div>
															{{/if}}
															{{if ( $loop510->getItem("version")) and (!( $loop510->getItem("version/@product_name") == (string)''))}}
																<div class="order2_size_desc">{{$loop510->getItemEscape("version/@name")}}{{$txt['69374::51000_0kro']}}{{$loop510->getItemEscape("version/@product_name")}}
																</div>
															{{/if}}
															{{if  $loop510->getItem("@required_from_special_offer")  == (string) 'true' and $required_from_special_offer  neq (string) ''}}
																{{if  $loop510->getItem("@required_from_special_offer")  == (string) 'true'}}
																	<div {{assign "classAttributeTmp6" ""}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}productslist_product_special_offer{{/capture}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}productslist_product_info visible-phone{{/capture}}  class="{{$classAttributeTmp6}}">{{$txt['69374::57649_required_from_special_offer']}}
																	</div>
																{{/if}}
															{{/if}}
														</td>
														{{if  $loop510->getItem("@required_from_special_offer")  == (string) 'true' and $required_from_special_offer  neq (string) ''}}
															<td {{assign "classAttributeTmp7" ""}}{{capture name="classAttributeTmp7" assign="classAttributeTmp7"}}productslist_product_special_offer{{/capture}}{{capture name="classAttributeTmp7" assign="classAttributeTmp7"}}productslist_product_special_offer hidden-phone{{/capture}}  class="{{$classAttributeTmp7}}">
																{{if  $loop510->getItem("@required_from_special_offer")  == (string) 'true'}}
																	<div class="productslist_product_special_offer">{{$txt['69374::57649_required_from_special_offer']}}
																	</div>
																{{/if}}
															</td>
														{{/if}}
														<td class="order2_price">
															{{if  $loop510->getItem("@forpoints")}}
																{{$loop510->getItemEscape("@points_for_one")}}{{$txt['69374::51000_993']}}
															{{/if}}
															{{if !( $loop510->getItem("@forpoints"))}}
																{{$loop510->getItemEscape("@detalprice_formatted")}}
															{{/if}}
														</td>
														<td class="order2_quantity">{{$loop510->getItemEscape("@quantity")}}{{literal}}{{/literal}}{{$loop510->getItemEscape("@worth_unit")}}
														</td>
														<td class="order2_bruttoworth">
															{{if  $loop510->getItem("@gratis") == (string)'y'}}
																{{$txt['69374::51000_gratis']}}
															{{elseif !( $loop510->getItem("@forpoints"))}}
																{{$loop510->getItemEscape("@bruttoworth_formatted")}}
															{{elseif  $loop510->getItem("@forpoints")}}
																{{$loop510->getItemEscape("@points")}}{{$txt['69374::51000_993']}}
															{{/if}}
														</td>
													</tr>
												{{/foreach}}
											</table>
										</div>
										<div class="order2_products">
											<table class="order2_table">
												<tr>
													<th class="order2_name">{{$txt['69374::deliv51066abis']}}
													</th>
													<th class="order2_worth">
													</th>
												</tr>
												{{if  $xml->getItem("/shop/page/return_method")}}
													<tr>
														<td class="order2_name">
															{{if  $xml->getItem("/shop/page/return_method/@description")}}
																<span class="order2_name">{{$txt['69374::order2_info_21a']}}{{$xml->getItemEscape("/shop/page/return_method/@name")}}</span>
																<div class="return_description">{{$xml->getItemEscape("/shop/page/return_method/@description")}}
																</div>
															{{elseif  $xml->getItem("/shop/page/return_method/@id")  == (string) 1}}
																<span class="order2_name">{{$txt['69374::order2_info_21a']}}{{$txt['69374::51900_1_bis']}}</span>
																<div class="return_description">{{$txt['69374::51900_1_d_bis']}}
																</div>
															{{elseif  $xml->getItem("/shop/page/return_method/@id")  == (string) 2}}
																<span class="order2_name">{{$txt['69374::order2_info_21a']}}{{$txt['69374::51900_2_bis']}}</span>
																<div class="return_description">{{$txt['69374::51900_2_d_bis']}}
																</div>
															{{elseif  $xml->getItem("/shop/page/return_method/@id")  == (string) 3}}
																<span class="order2_name">{{$txt['69374::order2_info_21a']}}{{$txt['69374::51900_3_bis']}}</span>
																<div class="return_description">{{$txt['69374::51900_3_d_bis']}}
																</div>
															{{/if}}
														</td>
														<td class="order2_bruttoworth">
															<div class="worth_box">
																{{if  $xml->getItem("/shop/page/costs/cost[@type='shop_shipping']")}}
																	{{$xml->getItemEscape("/shop/page/costs/cost[@type='shop_shipping']/@value_formatted")}}
																{{/if}}
															</div>
														</td>
													</tr>
												{{/if}}
												<tr>
													<td class="order2_name">
														{{if  $xml->getItem("/shop/page/repayment_method/@id")  == (string) 't'}}
															<span class="order2_name">{{$txt['69374::51900_1']}}</span>
															<div class="return_description">{{$txt['69374::51900_1_d']}}
															</div>
														{{elseif  $xml->getItem("/shop/page/repayment_method/@id")  == (string) 'b'}}
															<span class="order2_name">{{$txt['69374::51900_2']}}</span>
															<div class="return_description">{{$txt['69374::51900_2_d']}}
															</div>
														{{elseif  $xml->getItem("/shop/page/repayment_method/@id")  == (string) 'tc'}}
															<span class="order2_name">{{$txt['69374::51900_3']}}</span>
															<div class="return_description">{{$txt['69374::51900_3_d']}}
															</div>
														{{else}}
															<span class="order2_name">{{$xml->getItemEscape("/shop/page/repayment_method/@name")}}</span>
															<div class="return_description">{{$xml->getItemEscape("/shop/page/repayment_method/@description")}}
															</div>
														{{/if}}
													</td>
													<td class="order2_bruttoworth">
													</td>
												</tr>
											</table>
										</div>
										<div class="basketedit_summary">
											<div class="basketedit_summary_sub">
												<div class="basketedit_summary_left">
												</div>
												<div class="basketedit_summary_right">
													<div class="basketedit_calculations">
														{{if  $xml->getItem("/shop/page/costs/cost[@type='products']/@value_formatted")}}
															<div class="basketedit_product_summary">
																<label>{{$txt['69374::prepaid008w']}}
																</label>
																<strong>{{$xml->getItemEscape("/shop/page/costs/cost[@type='products']/@value_formatted")}}</strong>
															</div>
														{{/if}}
														{{if  $xml->getItem("/shop/page/costs/cost[@type='shipping']/@value_formatted")}}
															<div class="basketedit_product_summary">
																<label>{{$txt['69374::prepaid011do']}}
																</label>
																<strong>{{$xml->getItemEscape("/shop/page/costs/cost[@type='shipping']/@value_formatted")}}</strong>
															</div>
														{{/if}}
														{{if  $xml->getItem("/shop/page/costs/cost[@type='shop_shipping']/@value_formatted")}}
															<div class="basketedit_product_summary">
																<label>{{$txt['69374::prepaid011do2']}}
																</label>
																<strong class="paymentcost_value">{{$xml->getItemEscape("/shop/page/costs/cost[@type='shop_shipping']/@value_formatted")}}</strong>
															</div>
														{{/if}}
														<div style="clear:both">
														</div>
													</div>
													{{if  $xml->getItem("/shop/page/costs/@value_formatted")}}
														<div class="basketedit_total_summary">
															<label>{{$txt['69374::53706_001c']}}
															</label>
															<strong>{{$xml->getItemEscape("/shop/page/costs/@value_formatted")}}</strong>
														</div>
													{{/if}}
												</div>
												<div class="basketedit_summary_buttons table_display">
													<div class="btn_wrapper backlink">
														{{if  $xml->getItem("page/backlink/@url")}}
															<a class="btn" href="{{$xml->getItemEscape("page/backlink/@url")}}">{{$txt['69374::order2_button_back']}}</a>
														{{/if}}
													</div>
													<div class="btn_wrapper">
														<input {{assign "valueAttributeTmp8" ""}}  class="btn-large" type="submit"{{capture name="valueAttributeTmp8" assign="valueAttributeTmp8"}}{{$txt['69374::order2_button_order']}}{{/capture}}{{if $xml->getItem("/shop/return_edit/@return_id")}}{{capture name="valueAttributeTmp8" assign="valueAttributeTmp8"}}{{$txt['69374::order2_button_order_ch']}}{{/capture}}{{/if}}  value="{{$valueAttributeTmp8}}"></input>
													</div>
												</div>
											</div>
										</div>
									</form>
								</div>
							</div>
						{{/if}}
						<div id="alert_cover" class="projector_alert_55916" style="display:none" onclick="Alertek.hide_alert();">
							NIEDASIE
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
