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
						<!--CMS - Formularz logowania (signin_cms, 60072.1)-->
						{{if  $xml->getItem("page/text/body")}}
							<div class="signin_cms">
								<div {{assign "classAttributeTmp3" ""}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}signin_cms_sub{{/capture}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}signin_cms_sub cm{{/capture}}  class="{{$classAttributeTmp3}}">{{$xml->getItem("page/text/body")}}
								</div>
							</div>
						{{/if}}
						<!--Social networking - logowanie (signin_social_networking, 68380.1)-->
						{{if  $xml->getItem("/shop/fn/mode_popup")}}
						{{/if}}
						{{if !( $xml->getItem("login_options/service[@connected='true']"))}}
							{{if count( $xml->getList("login_options/service")) gt (string)1}}
								<div id="client_new_social">
									<h2 class="{{$txt['68380::n56203_label_class1']}}">{{$txt['68380::n56203_konto']}}
									</h2>
									<div class="client_new_social_sub">
										{{if !( $xml->getItem("page/client-data/@allow_register")  == (string) 'false')}}
											<p>{{$txt['68380::n56203_konto1']}}
											</p>
										{{/if}}
										{{if count( $xml->getList("login_options/service")) gt (string)1}}
											<ul>
												{{foreach from=$xml->getList("login_options/service[not(@name='shop_register')]") item=loop275}}
													<li>
														{{if  $loop275->getItem("@login_url")}}
															<a href="{{$loop275->getItemEscape("@login_url")}}">
																<span class="social_button_txt">
																	<span class="social_login_label">{{$txt['68380::56478_009za']}}</span>{{$loop275->getItemEscape("@name")}}</span>
																{{if  $loop275->getItem("@gfx_big")}}
																	<img alt="{{$loop275->getItemEscape("@name")}}" src="{{$loop275->getItemEscape("@gfx_big")}}"></img>
																{{/if}}
																</a>
														{{else}}
															<strong rel="{{$loop275->getItemEscape("@name")|replace:' ':'_'}}">
																<span class="social_button_txt">
																	<span class="social_login_label">{{$txt['68380::56478_009za']}}</span>{{$loop275->getItemEscape("@name")}}</span>
																{{if  $loop275->getItem("@gfx_big")}}
																	<img alt="{{$loop275->getItemEscape("@name")}}" src="{{$loop275->getItemEscape("@gfx_big")}}"></img>
																{{/if}}
																</strong>
														{{/if}}
													</li>{{literal}}{{/literal}}
												{{/foreach}}
											</ul>
											{{foreach from=$xml->getList("login_options/service[not(@name='shop_register') and not(@login_url)]") item=loop305}}
												<form action="login.php" method="post" style="display:none;" id="social_networking_{{$loop305->getItemEscape("@name")|replace:' ':'_'}}" {{if $loop305->getItem("@form_action")}} action="{{$loop305->getItemEscape("@form_action")}}" {{/if}}>
													<input type="hidden" name="openid_serviceid" value="{{$loop305->getItemEscape("@id")}}"></input>
													{{if  $loop305->getItem("@name") == (string)'OpenId'}}
														<label>{{$loop305->getItemEscape("@name")}}
															<span>{{$txt['68380::56478_009oiu']}}</span>
														</label>
													{{/if}}
													{{if !( $loop305->getItem("@name") == (string)'OpenId')}}
														<label>{{$loop305->getItemEscape("@name")}}
															<span>{{$txt['68380::56478_009olo']}}</span>
														</label>
													{{/if}}
													<input id="signin_login_url" type="text" name="openid_url" size="160"/>
													<button type="submit" class="signin_button btn-small {{$loop305->getItemEscape("@name")}}">{{$txt['68380::56478_log']}}
													</button>
												</form>
											{{/foreach}}
										{{/if}}
									</div>
								</div>
							{{/if}}
						{{/if}}
						<!--Formularz logowania (signin-form, 67949.1)-->
						<div id="signin-form" class="signin-form">
							<div id="signin-form_box_left" class="signin-form_box">
								<div class="signin-form_box_sub">
									{{if  $xml->getItem("page/actions/client_once")}}
										<h2 class="big_label">{{$txt['67949::56478_001']}}
										</h2>
										<p class="registration_desc">{{$txt['67949::56478_002']}}
										</p>
										{{if  $xml->getItem("page/actions/client_register")}}
											<a {{assign "classAttributeTmp4" ""}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}signin-form_register{{/capture}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}btn signin-form_register{{/capture}} href="{{$xml->getItemEscape("page/actions/client_register/@url")}}"  class="{{$classAttributeTmp4}}">{{$txt['67949::56478_003b']}}</a>{{$txt['67949::56478_001signin_register3txt']}}
										{{/if}}
										{{if  $xml->getItem("page/actions/client_once")}}
											<a {{assign "classAttributeTmp5" ""}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}signin-form_once{{/capture}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}btn signin-form_once{{/capture}} href="{{$xml->getItemEscape("page/actions/client_once/@url")}}"  class="{{$classAttributeTmp5}}">{{$txt['67949::56478_003']}}</a>
										{{/if}}
									{{else}}
										<h2 class="big_label">{{$txt['67949::56478_004']}}
										</h2>
										<p class="registration_desc">{{$txt['67949::56478_005']}}
										</p>
										<a {{assign "classAttributeTmp6" ""}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}signin-form_register2{{/capture}} href="/client-new.php?register"{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}btn signin-form_register2{{/capture}}  class="{{$classAttributeTmp6}}">{{$txt['67949::56478_006']}}</a>
									{{/if}}
								</div>
							</div>
							<div id="signin-form_box_right" class="signin-form_box">
								<div class="signin-form_box_sub" id="signin-form_box_sub_1">
									<h2 class="big_label">{{$txt['67949::56478_007']}}
									</h2>
									<p>{{$txt['67949::56478_008']}}
									</p>
									<div class="signin-form_select">
										<h3>{{$txt['67949::56478_007login']}}
										</h3>
										<input id="signin-form_radio1" type="radio" value="signin-form_box_sub_1" checked="checked" name="login_form1"/>
										<label for="signin-form_radio1">{{$txt['67949::56478_007l1']}}
										</label>
										<input id="signin-form_radio2" type="radio" value="signin-form_box_sub_2" name="email_form1"/>
										<label for="signin-form_radio2">{{$txt['67949::56478_007l2']}}
										</label>
									</div>
									<form action="/signin.php" method="post">
										<input type="hidden" name="operation" value="login"/>
										<div class="signin_inputs">
											<label>{{$txt['67949::56478_009']}}
											</label>
											<input autocomplete="off" id="signin_login_input" class="signin_login_input" type="text" name="login" size="20"/>
										</div>
										<div class="signin_inputs">
											<label>{{$txt['67949::56478_010']}}
											</label>
											<input autocomplete="off" id="signin_pass_input" class="signin_pass_input" type="password" name="password" size="15"/>
										</div>
										<button {{assign "classAttributeTmp7" ""}}{{capture name="classAttributeTmp7" assign="classAttributeTmp7"}}signin_button{{/capture}} type="submit"{{capture name="classAttributeTmp7" assign="classAttributeTmp7"}}btn signin_button{{/capture}}  class="{{$classAttributeTmp7}}">{{$txt['67949::56478_log']}}
										</button>
										<a class="password_reminder_signin" href="#">{{$txt['67949::65718_remindpassword']}}</a>
									</form>{{$txt['67949::56478_011']}}
								</div>
								<div class="signin-form_box_sub" id="signin-form_box_sub_2">
									<h2 class="big_label">{{$txt['67949::56478_007rec']}}
									</h2>
									<p class="reminder_desc">{{$txt['67949::51100_001']}}
									</p>
									<div class="signin-form_select">
										<h3>{{$txt['67949::56478_007login']}}
										</h3>
										<input id="signin-form_radio3" type="radio" value="signin-form_box_sub_1" name="login_form2"/>
										<label for="signin-form_radio3">{{$txt['67949::56478_007l1']}}
										</label>
										<input id="signin-form_radio4" type="radio" value="signin-form_box_sub_2" name="email_form2" checked="checked"/>
										<label for="signin-form_radio4">{{$txt['67949::56478_007l2']}}
										</label>
									</div>
									<form class="password-recover" action="/password-recover.php" method="post" {{if ( $xml->getItem("/shop/@sslurl")) and ( $xml->getItem("/shop/@sslurl") neq (string) '')}} action="{{$xml->getItemEscape("/shop/@sslurl")}}password-recover.php"{{/if}}>
										<input type="hidden" name="operation" value="recover"/>
										<div class="signin_inputs">
											<label class="reminder_label_signin">{{$txt['67949::51100_007']}}
											</label>
											<input id="signin_pass_recover_input" type="text" name="email"/>
											<button {{assign "classAttributeTmp8" ""}}{{capture name="classAttributeTmp8" assign="classAttributeTmp8"}}signin_password-recover{{/capture}} type="submit"{{capture name="classAttributeTmp8" assign="classAttributeTmp8"}}btn-small signin_password-recover{{/capture}}  class="{{$classAttributeTmp8}}">{{$txt['67949::51100_003']}}
											</button>
										</div>
									</form>
									<a class="password_back_signin" href="#">{{$txt['67949::65718_011bis']}}</a>{{$txt['67949::56478_011bis']}}
								</div>
							</div>
						</div>
						{{if  $xml->getItem("/shop/page/password-recover")}}
							<span></span>
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
