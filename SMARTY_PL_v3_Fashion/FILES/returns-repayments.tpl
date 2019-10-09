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
			<script type="text/javascript" src="/gfx/{{$xml->getItemEscape("language/@id")}}/returns_repayments_form.js.gzip?r=1570606968">			</script>

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
						<!--Zwroty sposób zwrotu CMS (returns_repayments_cms, 69380.1)-->
						{{if  $xml->getItem("page/text/body")}}
							<div class="returns_cms">
								<div class="returns_cms_sub">{{$xml->getItem("page/text/body")}}
								</div>
							</div>
						{{/if}}
						<!--Zwroty sposób zwrotu  (returns_repayments_form, 107783.1)-->
						{{if  $xml->getItem("page/@type")  == (string) 'return_products' and  $xml->getItem("page/@display")  == (string) 'repayment'}}
							{{capture name="n83521_shipping_title" assign="n83521_shipping_title"}}
								{{$txt['107783::n69372_shipping_title']}}
							{{/capture}}
							<div class="step5">
								<div {{assign "classAttributeTmp3" ""}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}progress_bar_wrapper{{/capture}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}progress_bar_wrapper pb_step5{{/capture}}  class="{{$classAttributeTmp3}}">
									<div class="_progress_bar">
									</div>
									<div class="_step _step1">
										<span>
											1</span>
										<p>
											<i></i>{{$txt['107783::step1_txt']}}
										</p>
									</div>
									<div class="_step _step2">
										<span>2</span>
										<p>
											<i></i>{{$txt['107783::step2_txt']}}
										</p>
									</div>
									<div class="_step _step3">
										<span>3</span>
										<p>
											<i></i>{{$txt['107783::step3_txt']}}
										</p>
									</div>
									<div class="_step _step4">
										<span>4</span>
										<p>
											<i></i>{{$txt['107783::step4_txt']}}
										</p>
									</div>
									<div class="_step _step5">
										<span>5</span>
										<p>
											<i></i>{{$txt['107783::step5_txt']}}
										</p>
									</div>
									<div class="_step _step6">
										<span>6</span>
										<p>
											<i></i>{{$txt['107783::step6_txt']}}
										</p>
									</div>
								</div>
								<h1 class="big_label return_label">{{$txt['107783::51900_00634aass']}}
								</h1>
								<form class="returm_return_list_form" method="post" novalidate="novalidate">
									<div class="table_display">
										{{if count( $xml->getList("page/repayment_methods/repayment_method"))  gt (string) 1}}
											{{foreach from=$xml->getList("page/repayment_methods/repayment_method") item=loop356}}
												<div {{assign "classAttributeTmp4" ""}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}return_form{{/capture}}{{if $loop356->getItem("@additional_field_name")}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}return_form disable_button{{/capture}}{{if $loop356->getItem("@checked") == (string)'true'}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}return_form disable_button active{{/capture}}{{/if}}{{/if}}{{if $loop356->getItem("@checked") == (string)'true'}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}return_form active{{/capture}}{{/if}}  class="{{$classAttributeTmp4}}">
													<input class="return_type" name="return_type" type="radio" {{if $loop356->getItem("@checked") == (string)'true'}} checked="checked" {{/if}} value="{{$loop356->getItemEscape("@id")}}"></input>
													<img class="return_form" alt="" src="{{$loop356->getItemEscape("@icon")}}"></img>
													<div class="return_form_sub">
														<div class="return_form_name">
															{{if  $loop356->getItem("@id")  == (string) 't'}}
																{{$txt['107783::51900_1']}}
															{{elseif  $loop356->getItem("@id")  == (string) 'b'}}
																{{$txt['107783::51900_2']}}
															{{elseif  $loop356->getItem("@id")  == (string) 'tc'}}
																{{$txt['107783::51900_3']}}
															{{elseif  $loop356->getItem("@id")  == (string) 'cashback'}}
																{{$txt['107783::51900_4']}}
															{{else}}
																{{$loop356->getItemEscape("@name")}}
															{{/if}}
														</div>
														<div class="return_form_desc">
															{{if  $loop356->getItem("@id")  == (string) 't'}}
																{{$txt['107783::51900_1_d']}}
															{{elseif  $loop356->getItem("@id")  == (string) 'b'}}
																{{$txt['107783::51900_2_d']}}
															{{elseif  $loop356->getItem("@id")  == (string) 'tc'}}
																{{$txt['107783::51900_3_d']}}
															{{elseif  $loop356->getItem("@id")  == (string) 'cashback'}}
																{{$txt['107783::51900_cashback']}}
																{{if  $loop356->getItem("@payment_system")}}
																	{{$txt['107783::51900_cashback_payment_system']}}
																	<span>{{$loop356->getItemEscape("@payment_system")}}.</span>
																{{/if}}
															{{else}}
																{{$loop356->getItemEscape("@description")}}
															{{/if}}
														</div>
														{{if  $loop356->getItem("@additional_field_name")}}
															<div class="form-group clearfix">
																<div class="{{$txt['107783::50201_return_row']}}">
																	<div class="has-feedback has-required row {{$txt['107783::50201_return_next_grid']}}">
																		<input type="text" class="return_form form-control validate" minlength="26" data-ajaxtype="get" name="{{$loop356->getItemEscape("@additional_field_name")}}" value="{{$loop356->getItemEscape("@additional_field_value")}}" placeholder="{{$txt['107783::5345234_numformat']}}" {{if $loop356->getItem("@validation") == (string) 'bank_account'}} data-validation="bankAccount" {{else}} data-validation="{{$loop356->getItemEscape("@validation")}}" {{/if}}{{if $loop356->getItem("@validation_url") == (string) '/ajax/returns.php'}} data-validation-url="/ajax/payments.php?action=verify_iban" {{else}} data-validation-url="{{$loop356->getItemEscape("@validation_url")}}" {{/if}}></input>
																		<p id="iban_number_description">{{$txt['107783::6346435_ibantext']}}
																		</p>
																		<span class="form-control-feedback"></span>
																	</div>
																</div>
															</div>
														{{/if}}
													</div>
													{{if $n83521_shipping_title and  $loop356->getItem("@id")  == (string) 't' and   $loop356->getItem("/shop/page/repayment_methods/@shipping_balanced_refund")  == (string) 'true'}}
														<div class="n69372_shipping_balance">
															<strong>{{$txt['107783::n69372_shipping_title']}}</strong>
															<div>{{$txt['107783::n69372_shipping_balance']}}
															</div>
														</div>
													{{/if}}
												</div>
											{{/foreach}}
										{{else}}
											{{foreach from=$xml->getList("page/repayment_methods/repayment_method") item=loop450}}
												<div class="return_form_one">
													<input class="return_type" name="return_type" type="radio" checked="checked" value="{{$loop450->getItemEscape("@id")}}"></input>
													<img class="return_form_one" alt="" src="{{$loop450->getItemEscape("@icon")}}"></img>
													<div class="return_form_one_sub">
														<div class="return_form_one_name">
															{{if  $loop450->getItem("@id")  == (string) 't'}}
																{{$txt['107783::51900_1']}}
															{{elseif  $loop450->getItem("@id")  == (string) 'b'}}
																{{$txt['107783::51900_2']}}
															{{elseif  $loop450->getItem("@id")  == (string) 'tc'}}
																{{$txt['107783::51900_3']}}
															{{elseif  $loop450->getItem("@id")  == (string) 'cashback'}}
																{{$txt['107783::51900_4']}}
															{{else}}
																{{$loop450->getItemEscape("@name")}}
															{{/if}}
														</div>
														<div class="return_form_one_desc">
															{{if  $loop450->getItem("@id")  == (string) 't'}}
																{{$txt['107783::51900_1_d']}}
															{{elseif  $loop450->getItem("@id")  == (string) 'b'}}
																{{$txt['107783::51900_2_d']}}
															{{elseif  $loop450->getItem("@id")  == (string) 'tc'}}
																{{$txt['107783::51900_3_d']}}
															{{elseif  $loop450->getItem("@id")  == (string) 'cashback'}}
																{{$txt['107783::51900_cashback']}}
																{{if  $loop450->getItem("@payment_system")}}
																	{{$txt['107783::51900_cashback_payment_system']}}
																	<span>{{$loop450->getItemEscape("@payment_system")}}.</span>
																{{/if}}
															{{else}}
																{{$loop450->getItemEscape("@description")}}
															{{/if}}
														</div>
														{{if  $loop450->getItem("@additional_field_name")}}
															<div class="form-group clearfix">
																<div class="{{$txt['107783::50201_return_row']}}">
																	<div class="has-feedback has-required row {{$txt['107783::50201_return_next_grid']}}">
																		<input type="text" class="return_form form-control validate" name="{{$loop450->getItemEscape("@additional_field_name")}}" value="{{$loop450->getItemEscape("@additional_field_value")}}" data-validation="{{$loop450->getItemEscape("@validation")}}"></input>
																		<span class="form-control-feedback"></span>
																	</div>
																</div>
															</div>
														{{/if}}
													</div>
												</div>
											{{/foreach}}
										{{/if}}
									</div>
									<div class="returns_summary_buttons table_display">
										<div class="btn_wrapper backlink">
											{{if  $xml->getItem("page/backlink/@url")}}
												<a class="btn" href="{{$xml->getItemEscape("page/backlink/@url")}}">{{$txt['107783::order2_button_back']}}</a>
											{{/if}}
										</div>
										<div class="btn_wrapper">
											<button id="return_go_next" type="submit" class="btn-large btn_arrow">{{$txt['107783::50001_10a']}}
											</button>
										</div>
									</div>
									{{foreach from=$xml->getList("page/repayment_methods/repayment_method[@additional_field_name][1]") item=loop528}}
										<div class="button_legend">{{$txt['107783::50201_return_legend']}}
										</div>
									{{/foreach}}
								</form>
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
