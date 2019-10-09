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
						<!--CMS - Formularz logowania (signin_cms, 107646.1)-->
						{{if  $xml->getItem("page/text/body")}}
							<div class="signin_cms">
								<div class="signin_cms_sub cm">{{$xml->getItem("page/text/body")}}
								</div>
							</div>
						{{/if}}
						<!--Formularz logowania (signin-form, 110018.1)-->
						{{capture name="social_media_name" assign="social_media_name"}}
							{{if  $xml->getItem("/shop/client_data/@last_login_option")  == (string) 'fb'}}
								Facebook
							{{elseif  $xml->getItem("/shop/client_data/@last_login_option")  == (string) 'google'}}
								Google
							{{elseif  $xml->getItem("/shop/client_data/@last_login_option")  == (string) 'paypal'}}
								PayPal
							{{elseif  $xml->getItem("/shop/client_data/@last_login_option")  == (string) 'openid-27'}}
								OpenID
							{{elseif  $xml->getItem("/shop/client_data/@last_login_option")  == (string) 'openid-28'}}
								OpenID
							{{/if}}
						{{/capture}}
						{{capture name="wholesaler_register" assign="wholesaler_register"}}
							{{$txt['110018::3524123_wholesale_register']}}
						{{/capture}}
						{{capture name="register_number" assign="register_number"}}
							{{$xml->getItemEscape("count(/shop/action/registration_options/*)")}}
						{{/capture}}
						<div id="signin-form" class="signin-form row">
							<div {{assign "classAttributeTmp3" ""}}  id="signin-form_box_left"{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}signin-form_box col-md-8 col-sm-7 col-12{{/capture}}{{if $xml->getItem("/shop/client_data[@signin='cookie']")}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}signin-form_box col-12 signin_cookie{{/capture}}{{/if}}  class="{{$classAttributeTmp3}}">
								<h2 class="big_label">{{$txt['110018::56478_007']}}
								</h2>
								{{if  $xml->getItem("/shop/fn/mode_popup")}}
								{{/if}}
								{{if !( $xml->getItem("/shop/client_data/@signin")  == (string) 'cookie') and  $xml->getItem("/shop/client_data/@iai_accounts")  == (string) 'consent' and (!( $xml->getItem("/shop/client_data/@last_login_option")  == (string) 'shop'))}}
									<div id="cookie_login_social" class="iai_accounts">
										<span id="cookie_login_social_desc" class="iai_accounts">{{$txt['110018::2345235_iaiaccounts']}}{{$social_media_name}}{{$txt['110018::2345235_iaiaccounts123124']}}</span>
										<div id="cookie_login_social_item">
											<div id="client_new_social">
												<div class="client_new_social_sub">
													<ul>
														{{foreach from=$xml->getList("login_options/service[@name = {{$social_media_name}}]") item=loop292}}
															<li>
																{{if  $loop292->getItem("@login_url")}}
																	<a class="service_item service_{{$loop292->getItemEscape("@name")|replace:' +':'_'}}" href="{{$loop292->getItemEscape("@login_url")}}">
																		<span>{{$loop292->getItemEscape("@name")}}</span></a>
																{{else}}
																	<strong class="service_item service_{{$loop292->getItemEscape("@name")|replace:' +':'_'}}" data-service="{{$loop292->getItemEscape("@name")|replace:' +':'_'}}">
																		<span>{{$loop292->getItemEscape("@name")}}</span></strong>
																{{/if}}
															</li>{{literal}}{{/literal}}
														{{/foreach}}
													</ul>
												</div>
											</div>
										</div>
									</div>
									{{if count( $xml->getList("login_options/service[not(@name = $social_media_name)]"))  gt (string) 0}}
										<div id="cookie_login_social_more">
											<ul>
												{{foreach from=$xml->getList("login_options/service[not(@name='shop_register') and not(@name = {{$social_media_name}})]") item=loop319}}
													<li>
														{{if  $loop319->getItem("@login_url")}}
															<a class="service_item service_{{$loop319->getItemEscape("@name")|replace:' +':'_'}}" href="{{$loop319->getItemEscape("@login_url")}}">
																<span>{{$loop319->getItemEscape("@name")}}</span></a>
														{{else}}
															<strong class="service_item service_{{$loop319->getItemEscape("@name")|replace:' +':'_'}}" data-service="{{$loop319->getItemEscape("@name")|replace:' +':'_'}}">
																<span>{{$loop319->getItemEscape("@name")}}</span></strong>
														{{/if}}
													</li>{{literal}}{{/literal}}
												{{/foreach}}
											</ul>
											{{foreach from=$xml->getList("login_options/service[not(@name='shop_register') and not(@login_url)]") item=loop339}}
												<form action="login.php" method="post" style="display:none;" id="social_networking_{{$loop339->getItemEscape("@name")|replace:' +':'_'}}" {{if $loop339->getItem("@form_action")}} action="{{$loop339->getItemEscape("@form_action")}}" {{/if}}>
													<input type="hidden" name="openid_serviceid" value="{{$loop339->getItemEscape("@id")}}"></input>
													{{if  $loop339->getItem("@name") == (string)'OpenId'}}
														<label>{{$loop339->getItemEscape("@name")}}
															<span>{{$txt['110018::56478_009oiu']}}</span>
														</label>
													{{/if}}
													{{if !( $loop339->getItem("@name") == (string)'OpenId')}}
														<label>{{$loop339->getItemEscape("@name")}}
															<span>{{$txt['110018::56478_009olo']}}</span>
														</label>
													{{/if}}
													<input id="signin_login_url" type="text" name="openid_url" size="160"/>
													<button type="submit" class="signin_button btn-small {{$loop339->getItemEscape("@name")}}">{{$txt['110018::56478_log']}}
													</button>
												</form>
											{{/foreach}}
										</div>
									{{/if}}
									<div id="signin_login_separator">
										<span>{{$txt['110018::3534624_or']}}</span>
									</div>
								{{elseif  $xml->getItem("/shop/client_data/@signin")  == (string) 'cookie' and (!( $xml->getItem("/shop/client_data/@last_login_option")  == (string) 'shop'))}}
									<div id="cookie_login_social" {{if $xml->getItem("/shop/client_data[@iai_accounts='consent']")}} class="iai_accounts" {{/if}}>
										<span id="cookie_login_social_desc">
											{{if !( $xml->getItem("/shop/client_data/@iai_accounts")  == (string) 'consent')}}
												<strong>{{$txt['110018::3523234_iaisocial1']}}</strong>{{$txt['110018::3523234_iaisocial2']}}{{$social_media_name}}{{$txt['110018::3523234_iaisocial3']}}
											{{else}}
												class="iai_accounts"{{$txt['110018::2345235_iaiaccounts']}}{{$social_media_name}}{{$txt['110018::2345235_iaiaccounts123124']}}
											{{/if}}
											</span>
										<div id="cookie_login_social_item">
											<div id="client_new_social">
												<div class="client_new_social_sub">
													<ul>
														{{foreach from=$xml->getList("login_options/service[@name = {{$social_media_name}}]") item=loop390}}
															<li>
																{{if  $loop390->getItem("@login_url")}}
																	<a class="service_item service_{{$loop390->getItemEscape("@name")|replace:' +':'_'}}" href="{{$loop390->getItemEscape("@login_url")}}">
																		<span>{{$loop390->getItemEscape("@name")}}</span></a>
																{{else}}
																	<strong class="service_item service_{{$loop390->getItemEscape("@name")|replace:' +':'_'}}" data-service="{{$loop390->getItemEscape("@name")|replace:' +':'_'}}">
																		<span>{{$loop390->getItemEscape("@name")}}</span></strong>
																{{/if}}
															</li>{{literal}}{{/literal}}
														{{/foreach}}
													</ul>
												</div>
											</div>
										</div>
									</div>
									{{if count( $xml->getList("login_options/service[not(@name = $social_media_name)]"))  gt (string) 0}}
										<div id="cookie_login_social_more">
											<ul>
												{{foreach from=$xml->getList("login_options/service[not(@name='shop_register') and not(@name = {{$social_media_name}})]") item=loop417}}
													<li>
														{{if  $loop417->getItem("@login_url")}}
															<a class="service_item service_{{$loop417->getItemEscape("@name")|replace:' +':'_'}}" href="{{$loop417->getItemEscape("@login_url")}}">
																<span>{{$loop417->getItemEscape("@name")}}</span></a>
														{{else}}
															<strong class="service_item service_{{$loop417->getItemEscape("@name")|replace:' +':'_'}}" data-service="{{$loop417->getItemEscape("@name")|replace:' +':'_'}}">
																<span>{{$loop417->getItemEscape("@name")}}</span></strong>
														{{/if}}
													</li>{{literal}}{{/literal}}
												{{/foreach}}
											</ul>
											{{foreach from=$xml->getList("login_options/service[not(@name='shop_register') and not(@login_url)]") item=loop437}}
												<form action="login.php" method="post" style="display:none;" id="social_networking_{{$loop437->getItemEscape("@name")|replace:' +':'_'}}" {{if $loop437->getItem("@form_action")}} action="{{$loop437->getItemEscape("@form_action")}}" {{/if}}>
													<input type="hidden" name="openid_serviceid" value="{{$loop437->getItemEscape("@id")}}"></input>
													{{if  $loop437->getItem("@name") == (string)'OpenId'}}
														<label>{{$loop437->getItemEscape("@name")}}
															<span>{{$txt['110018::56478_009oiu']}}</span>
														</label>
													{{/if}}
													{{if !( $loop437->getItem("@name") == (string)'OpenId')}}
														<label>{{$loop437->getItemEscape("@name")}}
															<span>{{$txt['110018::56478_009olo']}}</span>
														</label>
													{{/if}}
													<input id="signin_login_url" type="text" name="openid_url" size="160"/>
													<button type="submit" class="signin_button btn-small {{$loop437->getItemEscape("@name")}}">{{$txt['110018::56478_log']}}
													</button>
												</form>
											{{/foreach}}
										</div>
									{{/if}}
									<div id="signin_login_separator">
										<span>{{$txt['110018::3534624_or']}}</span>
									</div>
								{{else}}
									{{if !( $xml->getItem("login_options/service[@connected='true']"))}}
										{{if count( $xml->getList("login_options/service")) gt (string)1}}
											<div id="client_new_social">
												<div class="client_new_social_sub">
													{{if !( $xml->getItem("page/client-data/@allow_register")  == (string) 'false')}}
														<p>{{$txt['110018::n56203_konto1']}}
														</p>
													{{/if}}
													{{if count( $xml->getList("login_options/service")) gt (string)1}}
														<ul>
															{{foreach from=$xml->getList("login_options/service[not(@name='shop_register')]") item=loop476}}
																<li>
																	{{if  $loop476->getItem("@login_url")}}
																		<a class="service_item service_{{$loop476->getItemEscape("@name")|replace:' +':'_'}}" href="{{$loop476->getItemEscape("@login_url")}}">
																			<span>{{$loop476->getItemEscape("@name")}}</span></a>
																	{{else}}
																		<strong class="service_item service_{{$loop476->getItemEscape("@name")|replace:' +':'_'}}" data-service="{{$loop476->getItemEscape("@name")|replace:' +':'_'}}">
																			<span>{{$loop476->getItemEscape("@name")}}</span></strong>
																	{{/if}}
																</li>{{literal}}{{/literal}}
															{{/foreach}}
														</ul>
														{{foreach from=$xml->getList("login_options/service[not(@name='shop_register') and not(@login_url)]") item=loop496}}
															<form action="login.php" method="post" style="display:none;" id="social_networking_{{$loop496->getItemEscape("@name")|replace:' +':'_'}}" {{if $loop496->getItem("@form_action")}} action="{{$loop496->getItemEscape("@form_action")}}" {{/if}}>
																<input type="hidden" name="openid_serviceid" value="{{$loop496->getItemEscape("@id")}}"></input>
																{{if  $loop496->getItem("@name") == (string)'OpenId'}}
																	<label>{{$loop496->getItemEscape("@name")}}
																		<span>{{$txt['110018::56478_009oiu']}}</span>
																	</label>
																{{/if}}
																{{if !( $loop496->getItem("@name") == (string)'OpenId')}}
																	<label>{{$loop496->getItemEscape("@name")}}
																		<span>{{$txt['110018::56478_009olo']}}</span>
																	</label>
																{{/if}}
																<input id="signin_login_url" type="text" name="openid_url" size="160"/>
																<button type="submit" class="signin_button btn-small {{$loop496->getItemEscape("@name")}}">{{$txt['110018::56478_log']}}
																</button>
															</form>
														{{/foreach}}
													{{/if}}
												</div>
											</div>
											<script>
                                    $('#client_new_social li strong').click(function(){
                                    $('#client_new_social form').not($('#social_networking_'+$(this).attr('data-service'))).hide();
                                    $('#social_networking_'+$(this).attr('data-service')).toggle();
                                    });
                                    $('#client_new_social form').live('submit',function(){
                                    window.location = '/'+$(this).attr('action')+'?'+$(this).serialize();
                                    return false
                                    });
                                											</script>

											<div id="signin_login_separator">
												<span>{{$txt['110018::3534624_or']}}</span>
											</div>
										{{/if}}
									{{/if}}
								{{/if}}
								<div class="signin-form_box_sub" id="signin-form_box_sub_1">
									<div class="signin-form_select">
										<h3>{{$txt['110018::56478_007login']}}
										</h3>
										<input id="signin-form_radio1" type="radio" value="signin-form_box_sub_1" checked="checked" name="login_form1" data-target="login_form2"/>
										<label for="signin-form_radio1">{{$txt['110018::56478_007l1']}}
										</label>
										<input id="signin-form_radio2" type="radio" value="signin-form_box_sub_2" name="email_form1" data-target="email_form2"/>
										<label for="signin-form_radio2">{{$txt['110018::56478_007l2']}}
										</label>
									</div>
									<form action="/signin.php" method="post" novalidate="novalidate">
										<input type="hidden" name="operation" value="login"/>
										<div class="signin_inputs col-md-10 col-12">
											<div class="form-group">
												<div class="has-feedback">
													<input {{assign "classAttributeTmp4" ""}}  id="user_login" type="text"{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}form-control{{/capture}} name="login" {{if $xml->getItem("/shop/client_data/@signin") == (string) 'cookie' and $xml->getItem("/shop/client_data/@email")}} value="{{$xml->getItemEscape("/shop/client_data/@email")}}"{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}form-control focused{{/capture}}{{/if}}  class="{{$classAttributeTmp4}}"></input>
													<label for="user_login" class="control-label">{{$txt['110018::56478_009']}}
													</label>
													<span class="form-control-feedback"></span>
												</div>
											</div>
											<div class="form-group">
												<div class="has-feedback">
													<input id="user_pass" type="password" class="form-control" name="password"/>
													<label for="user_pass" class="control-label">{{$txt['110018::56478_010']}}
													</label>
													<span class="form-control-feedback"></span>
												</div>
											</div>
										</div>
										<div class="signin_buttons col-md-10 col-12">
											<button class="btn signin_button" type="submit">{{$txt['110018::56478_log']}}
											</button>
											<a class="password_reminder_signin" href="#signin-form_radio2">
												{{if  $xml->getItem("/shop/client_data/@signin")  == (string) 'cookie'}}
													{{$txt['110018::65718_remindpassword222']}}
												{{else}}
													{{$txt['110018::65718_remindpassword']}}
												{{/if}}
												</a>
											{{if  $xml->getItem("/shop/client_data[@signin='cookie']")}}
												<a class="cookie_login_social_new_account" href="/client-new.php?register">{{$txt['110018::46345324_new_account']}}</a>
											{{/if}}
											{{if  $xml->getItem("/shop/client_data/@signin")  == (string) 'cookie' and !( $xml->getItem("/shop/client_data/@last_login_option")  == (string) 'shop') and count( $xml->getList("login_options/service[not(@name = $social_media_name)]"))  gt (string) 0}}
												<a class="cookie_login_social_more_social" href="#more_social">{{$txt['110018::46345324_more_social']}}</a>
											{{/if}}
										</div>
									</form>{{$txt['110018::56478_011']}}
								</div>
								<div class="signin-form_box_sub" id="signin-form_box_sub_2">
									<p class="reminder_desc">{{$txt['110018::51100_001']}}
									</p>
									<div class="signin-form_select">
										<h3>{{$txt['110018::56478_007login']}}
										</h3>
										<input id="signin-form_radio3" type="radio" value="signin-form_box_sub_1" name="login_form2" data-target="login_form1"/>
										<label for="signin-form_radio3">{{$txt['110018::56478_007l1']}}
										</label>
										<input id="signin-form_radio4" type="radio" value="signin-form_box_sub_2" name="email_form2" data-target="email_form1" checked="checked"/>
										<label for="signin-form_radio4">{{$txt['110018::56478_007l2']}}
										</label>
									</div>
									<form class="password-recover" action="/password-recover.php" method="post" novalidate="novalidate" {{if ( $xml->getItem("/shop/@sslurl")) and ( $xml->getItem("/shop/@sslurl") neq (string) '')}} action="{{$xml->getItemEscape("/shop/@sslurl")}}password-recover.php"{{/if}}>
										<input type="hidden" name="operation" value="recover"/>
										<div class="signin_inputs col-md-10 col-12">
											<div class="form-group">
												<div class="has-feedback">
													<input id="user_mail_recover" type="mail" class="form-control validate" name="email" required="required" autocomplete="off" placeholder=""></input>
													<label for="user_mail_recover" class="control-label">{{$txt['110018::51100_007a']}}
													</label>
													<span class="form-control-feedback"></span>
												</div>
												<div class="form-desc">{{$txt['110018::51100_007']}}
												</div>
											</div>
											<div class="signin_buttons col-md-10 col-12">
												<button class="btn signin_password-recover" type="submit">{{$txt['110018::51100_003']}}
												</button>
												<a class="password_back_signin" href="#signin-form_radio1">{{$txt['110018::65718_011bis']}}</a>
											</div>
										</div>
									</form>
								</div>
							</div>
							{{if !( $xml->getItem("/shop/client_data/@signin")  == (string) 'cookie')}}
								<div id="signin-form_box_right" class="signin-form_box col-md-4 col-sm-5 col-12">
									<div class="signin-form_box_sub">
										{{if  $xml->getItem("page/actions/client_once")}}
											<h2 class="big_label">{{$txt['110018::56478_001']}}
											</h2>
											<p class="registration_desc">{{$txt['110018::56478_002']}}
											</p>
											{{if  $xml->getItem("page/actions/client_register")}}
												<a {{assign "hrefAttributeTmp5" ""}}  class="btn signin-form_register" {{if $register_number == (string) 1}}{{capture name="hrefAttributeTmp5" assign="hrefAttributeTmp5"}}{{$xml->getItemEscape("/shop/action/registration_options/*/@registration_url")}}{{/capture}}{{else}}{{capture name="hrefAttributeTmp5" assign="hrefAttributeTmp5"}}{{$xml->getItemEscape("/shop/action/registration_options/retail/@registration_url")}}{{/capture}}{{/if}}  href="{{$hrefAttributeTmp5}}">{{$txt['110018::56478_003b']}}</a>
												{{if $register_number  gt (string) 1}}
													<div class="register_wholesaler">{{$txt['110018::56478_003go_to_wholesale']}}
														<a href="{{$xml->getItemEscape("/shop/action/registration_options/wholesale/@registration_url")}}" title="{{$txt['110018::56478_003go_to_wholesale_link_title']}}">{{$txt['110018::56478_003go_to_wholesale_text']}}</a>
													</div>
												{{/if}}
											{{/if}}
											{{if  $xml->getItem("page/actions/client_once")}}
												<a class="btn signin-form_once btn-inverse" href="{{$xml->getItemEscape("page/actions/client_once/@url")}}">{{$txt['110018::56478_003']}}</a>
											{{/if}}
										{{else}}
											<h2 class="big_label">{{$txt['110018::56478_004']}}
											</h2>
											<p class="registration_desc">{{$txt['110018::56478_005']}}
											</p>
											<a {{assign "hrefAttributeTmp6" ""}}  class="btn signin-form_register2" {{if $register_number == (string) 1}}{{capture name="hrefAttributeTmp6" assign="hrefAttributeTmp6"}}{{$xml->getItemEscape("/shop/action/registration_options/*/@registration_url")}}{{/capture}}{{else}}{{capture name="hrefAttributeTmp6" assign="hrefAttributeTmp6"}}{{$xml->getItemEscape("/shop/action/registration_options/retail/@registration_url")}}{{/capture}}{{/if}}  href="{{$hrefAttributeTmp6}}">{{$txt['110018::56478_006']}}</a>
											{{if $register_number  gt (string) 1}}
												<div class="register_wholesaler">{{$txt['110018::56478_003go_to_wholesale']}}
													<a href="{{$xml->getItemEscape("/shop/action/registration_options/wholesale/@registration_url")}}" title="{{$txt['110018::56478_003go_to_wholesale_link_title']}}">{{$txt['110018::56478_003go_to_wholesale_text']}}</a>
												</div>
											{{/if}}
										{{/if}}
									</div>
								</div>
							{{/if}}
						</div>
						{{if  $xml->getItem("/shop/page/password-recover")}}
							<span></span>
						{{/if}}
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
				{{include file="component_menu_calendar_107960.tpl"}}
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
