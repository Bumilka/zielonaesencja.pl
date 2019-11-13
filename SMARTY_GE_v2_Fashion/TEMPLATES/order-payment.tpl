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
						{{include file="component_menu_order_progress_68745.tpl"}}
						{{include file="component_menu_messages_67953.tpl"}}
						<!--Płatność kartą kredytową (order_payment_creditcard, 77380.1)-->
						{{if (( $xml->getItem("page/payment/@payform")  == (string) '25') or ( $xml->getItem("page/payment/@embeded_card_form")  == (string) 'y')) and  $xml->getItem("page/payform") and !( $xml->getItem("/shop/page/communicates/warning[@type='onlyHttps']"))}}
							<div class="payment_card">
								<div class="payment_card_sub">
									<div class="payment_card_info">{{$txt['77380::payment_card_info']}}
									</div>
									{{if  $xml->getItem("page/payment/@payform")  neq (string) '25' and  $xml->getItem("page/payment/@embeded_card_form")  == (string) 'y' and (( $xml->getItem("page/paymentdescription") and  $xml->getItem("page/paymentdescription")  neq (string) '') or ( $xml->getItem("page/payform/headermessage") and  $xml->getItem("page/payform/headermessage")  neq (string) '') or ( $xml->getItem("page/payform/headerlogo") and  $xml->getItem("page/payform/headerlogo")  neq (string) ''))}}
										<div class="payment_head_info">
											{{if  $xml->getItem("page/payform/headermessage") and  $xml->getItem("page/payform/headermessage")  neq (string) ''}}
												<div class="payment_headermessage">{{$xml->getItem("page/payform/headermessage")}}
												</div>
											{{/if}}
											{{if  $xml->getItem("page/payform/headerlogo") and  $xml->getItem("page/payform/headerlogo")  neq (string) ''}}
												<div class="payment_headerlogo">
													<img src="{{$xml->getItemEscape("page/payform/headerlogo")}}"></img>
												</div>
											{{/if}}
											{{if  $xml->getItem("page/paymentdescription") and  $xml->getItem("page/paymentdescription")  neq (string) ''}}
												<div class="payment_description">{{$xml->getItem("page/paymentdescription")}}
												</div>
											{{/if}}
										</div>
									{{/if}}
									<form class="payment_card" action="{{$xml->getItemEscape("page/payform/@action")}}" method="{{$xml->getItemEscape("page/payform/@method")}}">
										{{foreach from=$xml->getList("page/payform/item") item=loop293}}
											{{if  $loop293->getItem("@name")  == (string) 'creditCard[system]'}}
												<div class="payment_card_formel cc_wrapper">
													<label for="credit_card_system" class="payment_card_formel">{{$txt['77380::payment_card_formlab1']}}
													</label>
													<div id="credit_card_system" class="clear_data">
														{{foreach from=$loop293->getList("option") item=loop299}}
															<label>
																<input type="radio" class="validate required" data-serialize="#credit_card_system input" value="{{$loop299->getItemEscape("@value")}}" name="{{$loop299->getItemEscape("../@name")}}"></input>
																<div>
																	<img src="{{$loop299->getItemEscape("@data-img")}}" alt="{{$loop299->getItemEscape("@label")}}"></img>
																	<span>{{$loop299->getItemEscape("@label")}}</span>
																</div>
															</label>
														{{/foreach}}
													</div>
													<span class="payment_card_need">
														<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/need.gif?r=1570606529" class="payment_card_nedd_img" alt="{{$txt['77380::payment_card_need']}}" title="{{$txt['77380::n57692_010b']}}"></img>
														<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/correct.png?r=1570606529" class="payment_card_correct_img" style="display:none;"/>
														<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/incorrect.png?r=1570606529" class="payment_card_wrong_img" style="display:none;"/>
														<span class="payment_card_help">
															<span class="payment_card_help2">{{$txt['77380::payment_card_help1']}}</span></span></span>
												</div>
											{{elseif  $loop293->getItem("@name")  == (string) 'creditCard[number]'}}
												<div class="payment_card_formel">
													<label for="credit_card_number" class="payment_card_formel">{{$txt['77380::payment_card_formlab2']}}
													</label>
													<input type="text" id="credit_card_number" name="{{$loop293->getItemEscape("@name")}}" {{if $loop293->getItem("@value") neq (string) ''}} value="{{$loop293->getItemEscape("@value")}}" {{/if}}></input>
													<span class="payment_card_need">
														<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/need.gif?r=1570606529" class="payment_card_nedd_img" alt="{{$txt['77380::payment_card_need']}}" title="{{$txt['77380::n57692_010b']}}"></img>
														<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/correct.png?r=1570606529" class="payment_card_correct_img" style="display:none;"/>
														<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/incorrect.png?r=1570606529" class="payment_card_wrong_img" style="display:none;"/>
														<span class="payment_card_help">
															<span class="payment_card_help2"></span></span></span>
												</div>
											{{elseif  $loop293->getItem("@name")  == (string) 'creditCard[endDateMonth]'}}
												<div class="payment_card_formel">
													<label for="credit_card_month" class="payment_card_formel">{{$txt['77380::payment_card_formlab3']}}
													</label>
													<input type="text" id="credit_card_month" name="{{$loop293->getItemEscape("@name")}}" {{if $loop293->getItem("@value") neq (string) ''}} value="{{$loop293->getItemEscape("@value")}}" {{/if}}></input>
													{{if  $loop293->getItem("/shop/page/payform/item[@name = 'creditCard[endDateYear]']")}}
														<span class="payment_card_expire">{{$txt['77380::payment_card_expireslash']}}</span>
														{{foreach from=$loop293->getList("/shop/page/payform/item[@name = 'creditCard[endDateYear]']") item=loop352}}
															<input type="text" id="credit_card_year" name="{{$loop352->getItemEscape("@name")}}" {{if $loop352->getItem("@value") neq (string) ''}} value="{{$loop352->getItemEscape("@value")}}" {{/if}}></input>
														{{/foreach}}
													{{/if}}
													<span class="payment_card_need">
														<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/need.gif?r=1570606529" class="payment_card_nedd_img" alt="{{$txt['77380::payment_card_need']}}" title="{{$txt['77380::n57692_010b']}}"></img>
														<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/correct.png?r=1570606529" class="payment_card_correct_img" style="display:none;"/>
														<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/incorrect.png?r=1570606529" class="payment_card_wrong_img" style="display:none;"/>
														<span class="payment_card_help">
															<span class="payment_card_help2"></span></span></span>
												</div>
												<div class="payment_card_datedesc">{{$txt['77380::payment_card_datedesc']}}
												</div>
											{{elseif  $loop293->getItem("@name")  == (string) 'creditCard[securityCode]'}}
												<div class="payment_card_formel">
													<label for="credit_card_code" class="payment_card_formel">{{$txt['77380::payment_card_formlab4']}}
													</label>
													<input type="text" id="credit_card_code" name="{{$loop293->getItemEscape("@name")}}" {{if $loop293->getItem("@value") neq (string) ''}} value="{{$loop293->getItemEscape("@value")}}" {{/if}}></input>
													<span class="payment_card_need">
														<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/need.gif?r=1570606529" class="payment_card_nedd_img" alt="{{$txt['77380::payment_card_need']}}" title="{{$txt['77380::n57692_010b']}}"></img>
														<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/correct.png?r=1570606529" class="payment_card_correct_img" style="display:none;"/>
														<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/incorrect.png?r=1570606529" class="payment_card_wrong_img" style="display:none;"/>
														<span class="payment_card_help">
															<span class="payment_card_help2"></span></span></span>
												</div>
											{{elseif  $loop293->getItem("@name")  == (string) 'creditCard[name]'}}
												<div class="payment_card_formel">
													<label for="credit_card_name" class="payment_card_formel">{{$txt['77380::payment_card_formlab5']}}
													</label>
													<input type="text" id="credit_card_name" name="{{$loop293->getItemEscape("@name")}}" {{if $loop293->getItem("@value") neq (string) ''}} value="{{$loop293->getItemEscape("@value")}}" {{/if}}></input>
													<span class="payment_card_need">
														<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/need.gif?r=1570606529" class="payment_card_nedd_img" alt="{{$txt['77380::payment_card_need']}}" title="{{$txt['77380::n57692_010b']}}"></img>
														<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/correct.png?r=1570606529" class="payment_card_correct_img" style="display:none;"/>
														<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/incorrect.png?r=1570606529" class="payment_card_wrong_img" style="display:none;"/>
														<span class="payment_card_help">
															<span class="payment_card_help2"></span></span></span>
												</div>
											{{elseif  $loop293->getItem("@name")  == (string) 'payment'}}
												<input id="credit_card_payment" type="hidden" name="{{$loop293->getItemEscape("@name")}}" {{if $loop293->getItem("@value") neq (string) ''}} value="{{$loop293->getItemEscape("@value")}}" {{/if}}></input>
											{{elseif  $loop293->getItem("@name")  == (string) 'payformid'}}
												<input id="credit_card_payformid" type="hidden" name="{{$loop293->getItemEscape("@name")}}" {{if $loop293->getItem("@value") neq (string) ''}} value="{{$loop293->getItemEscape("@value")}}" {{/if}}></input>
											{{/if}}
										{{/foreach}}
										<div class="credit_card_submit">
											<button {{assign "classAttributeTmp3" ""}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}credit_card_submit{{/capture}} type="submit"{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}btn-large credit_card_submit disabled{{/capture}} title="{{$txt['77380::credit_card_submittitle']}}"  class="{{$classAttributeTmp3}}">{{$txt['77380::credit_card_submit_txt']}}
											</button>
											<div id="alert_cover" class="projector_alert_55916" style="display:none" onclick="Alertek.hide_alert();">NIEDASIE
											</div>
										</div>
									</form>
								</div>
							</div>
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
