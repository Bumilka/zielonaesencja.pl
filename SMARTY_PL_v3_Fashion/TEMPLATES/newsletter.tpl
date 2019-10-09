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
						<!--Newsletter - CMS (newsletter_cms, 107874.1)-->
						{{if  $xml->getItem("page/text/body")}}
							<div class="newsletter_cms">
								<div class="newsletter_cms_sub">{{$xml->getItem("page/text/body")}}
								</div>
							</div>
						{{/if}}
						<!--Newsletter - formularz dodania/usunięcia adresu em (newsletter_form, 107875.1)-->
						{{capture name="account_email_info" assign="account_email_info"}}
							{{$txt['107875::newsletter_text_signed_alt1']}}
						{{/capture}}
						<div id="newsletter_form">
							<div {{assign "classAttributeTmp3" ""}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}newsletter_form_label{{/capture}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}newsletter_form_label big_label{{/capture}}  class="{{$classAttributeTmp3}}">
								<span class="newsletter_form_label">{{$txt['107875::newsletter_form_label']}}</span>
							</div>
							{{if  $xml->getItem("/shop/page/communicates_newsletter/message")}}
								<div class="newsletter_message_wrapper">
									<div {{assign "idAttributeTmp5" ""}}{{assign "classAttributeTmp4" ""}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}newsletter_message n54531_outline{{/capture}}{{if ( $xml->getItem("/shop/page/communicates_newsletter/message/@type") == (string) 'mailing_maileregerror') or ( $xml->getItem("/shop/page/communicates_newsletter/message/@type") == (string) 'mailing_nosuchemail')}}{{capture name="idAttributeTmp5" assign="idAttributeTmp5"}}return_error{{/capture}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}newsletter_message n54531_outline menu_messages_error{{/capture}}{{elseif ( $xml->getItem("/shop/page/communicates_newsletter/message/@type") == (string) 'mailing_addsuccess') or ( $xml->getItem("/shop/page/communicates_newsletter/message/@type") == (string) 'mailing_removesuccess')}}{{capture name="idAttributeTmp5" assign="idAttributeTmp5"}}return_success{{/capture}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}newsletter_message n54531_outline menu_messages_success{{/capture}}{{else}}{{capture name="idAttributeTmp5" assign="idAttributeTmp5"}}return_message{{/capture}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}newsletter_message n54531_outline menu_messages_message{{/capture}}{{/if}}  class="{{$classAttributeTmp4}}"  id="{{$idAttributeTmp5}}">
										<div class="n54531_outline_sub">
											{{if  $xml->getItem("/shop/page/communicates_newsletter/message/@type")  == (string) 'mailing_addsuccess'}}
												{{$txt['107875::newsletter_mailing_addsuccess']}}
											{{elseif  $xml->getItem("/shop/page/communicates_newsletter/message/@type")  == (string) 'mailing_maileregerror'}}
												{{$txt['107875::newsletter_maileregerror']}}
											{{elseif  $xml->getItem("/shop/page/communicates_newsletter/message/@type")  == (string) 'mailing_removesuccess'}}
												{{$txt['107875::newsletter_mailing_removesuccess']}}
											{{elseif  $xml->getItem("/shop/page/communicates_newsletter/message/@type")  == (string) 'mailing_nosuchemail'}}
												{{$txt['107875::newsletter_mailing_nosuchemail']}}
											{{elseif  $xml->getItem("/shop/page/communicates_newsletter/message/@type")  == (string) 'mailing_sendingconfirm'}}
												{{$txt['107875::newsletter_mailing_sendingconfirm']}}
											{{elseif  $xml->getItem("/shop/page/communicates_newsletter/message/@type")  == (string) 'mailing_emailexist'}}
												{{$txt['107875::newsletter_mailing_exist']}}
											{{elseif  $xml->getItem("/shop/page/communicates_newsletter/message/@type")  == (string) 'mailing_sendingconfirm_remove'}}
												{{$txt['107875::newsletter_mailing_sendingconfirm_remove']}}
											{{/if}}
										</div>
									</div>
								</div>
							{{/if}}
							{{if !( $xml->getItem("/shop/page/communicates_newsletter/message")) or ( $xml->getItem("/shop/page/communicates_newsletter/message/@type")  == (string) 'mailing_maileregerror') or ( $xml->getItem("/shop/page/communicates_newsletter/message/@type")  == (string) 'mailing_emailexist') or ( $xml->getItem("/shop/page/communicates_newsletter/message/@type")  == (string) 'mailing_nosuchemail')}}
								{{if  $xml->getItem("page/client/@login")  neq (string) ''}}
									{{if  $xml->getItem("/shop/page/client/@newsletter")  == (string) 'yes'}}
										<form action="/settings.php" method="post" class="newsletter_form row flex-column align-items-center">
											<input id="mailing_action_contact" name="mailing_action" value="remove" type="hidden"/>
											{{if $account_email_info}}
												<p class="col-md-6 col-12">{{$txt['107875::newsletter_text_signed_alt1']}}
													<b>{{$xml->getItemEscape("/shop/page/client/@email")}}</b>.
													<br />{{$txt['107875::newsletter_text_signed_alt2']}}
												</p>
											{{else}}
												<p class="col-md-6 col-12">{{$txt['107875::newsletter_text_signed']}}
												</p>
											{{/if}}
											<input name="mailing_email" type="hidden" value="{{$xml->getItemEscape("page/client/@email")}}"></input>
											<div class="newsletter_button_wrapper col-md-6 col-12">
												<button id="newsletter_button_remove" type="submit" class="btn-small" value="{{$txt['107875::newsletter_button_remove']}}">{{$txt['107875::newsletter_button_remove']}}
												</button>
											</div>
										</form>
									{{elseif  $xml->getItem("page/client/@newsletter") == (string) 'no'}}
										{{if  $xml->getItem("/shop/page/client/@email")  neq (string) ''}}
											<form action="/settings.php" method="post" class="newsletter_form row flex-column align-items-center">
												<input id="mailing_action_contact" name="mailing_action" value="add" type="hidden"/>
												<p id="newsletter_longdesc" class="col-md-6 col-12">{{$txt['107875::newsletter_text_email1']}}
													<strong>{{$xml->getItemEscape("page/client/@email")}}</strong>{{$txt['107875::newsletter_text_email2']}}
													<a href="/loginedit.php?operation=edit">{{$txt['107875::newsletter_text_email3']}}</a>
												</p>
												<input name="mailing_email" type="hidden" value="{{$xml->getItemEscape("page/client/@email")}}"></input>
												<div id="newsletter_privacy_consent" class="form-group col-md-6 col-12">
													<div class="has-feedback">
														<label class="control-label d-flex align-items-center">
															<div class="text_to_right">
																<input class="newsletter_form_field validate" name="newsletter_consent" id="newsletter_consent" type="checkbox"/>
															</div>
															<div class="text_to_left">{{$txt['107875::62523423_newsletter_consent']}}
																<a href="{{$xml->getItemEscape("/shop/action/private_policy/@url")}}">{{$txt['107875::62523423_newsletter_consent_privacy']}}</a>
															</div>
														</label>
													</div>
												</div>
												<div class="newsletter_button_wrapper col-md-6 col-12">
													<button id="newsletter_button_add" type="submit" class="btn-small" value="{{$txt['107875::newsletter_button_add']}}">{{$txt['107875::newsletter_button_add']}}
													</button>
												</div>
											</form>
										{{else}}
											<form action="/settings.php" method="post" class="newsletter_form row flex-column align-items-center">
												<input id="mailing_action_contact" name="mailing_action" value="add" type="hidden"/>
												<p id="newsletter_longdesc" class="col-md-6 col-12">{{$txt['107875::newsletter_text_noemail1']}}
													<a href="/loginedit.php?operation=edit">{{$txt['107875::newsletter_text_noemail2']}}</a>
												</p>
												<div class="form-group col-md-6 col-12">
													<div class="has-feedback">
														<input class="newsletter_form_field form-control validate" name="mailing_email" id="mailing_email" type="text" data-validate="email"/>
														<label for="mailing_email" class="control-label">{{$txt['107875::newsletter_form_field']}}
														</label>
														<span class="form-control-feedback"></span>
													</div>
												</div>
												<div class="form-group col-md-6 col-12">
													<div class="has-feedback">
														<input class="newsletter_form_field form-control validate" name="mailing_name" id="mailing_name" type="text" maxlength="50" minlength="3"/>
														<label for="mailing_name" class="control-label">{{$txt['107875::newsletter_form_field2']}}
														</label>
														<span class="form-control-feedback"></span>
													</div>
												</div>
												<div id="newsletter_privacy_consent" class="form-group col-md-6 col-12">
													<div class="has-feedback">
														<label class="control-label d-flex align-items-center">
															<div class="text_to_right">
																<input class="newsletter_form_field validate" name="newsletter_consent" id="newsletter_consent" type="checkbox"/>
															</div>
															<div class="text_to_left">{{$txt['107875::62523423_newsletter_consent']}}
																<a href="{{$xml->getItemEscape("/shop/action/private_policy/@url")}}">{{$txt['107875::62523423_newsletter_consent_privacy']}}</a>
															</div>
														</label>
													</div>
												</div>
												<div class="newsletter_button_wrapper col-md-6 col-12">
													<button id="newsletter_button_add" type="submit" class="btn-small" value="{{$txt['107875::newsletter_button_add']}}">{{$txt['107875::newsletter_button_add']}}
													</button>
												</div>
											</form>
										{{/if}}
									{{/if}}
								{{else}}
									<form action="/settings.php" method="post" class="newsletter_form row flex-column align-items-center">
										<input id="mailing_action_contact" name="mailing_action" value="add" type="hidden"/>
										<p class="col-md-6 col-12">{{$txt['107875::newsletter_text_notlogged']}}
										</p>
										<div class="form-group col-md-6 col-12">
											<div class="has-feedback">
												<input class="newsletter_form_field form-control validate" name="mailing_email" id="mailing_email" type="text" data-validate="email"/>
												<label for="mailing_email" class="control-label">{{$txt['107875::newsletter_form_field']}}
												</label>
												<span class="form-control-feedback"></span>
											</div>
										</div>
										<div class="form-group col-md-6 col-12">
											<div class="has-feedback">
												<input class="newsletter_form_field form-control validate" name="mailing_name" id="mailing_name" type="text" maxlength="50" minlength="3"/>
												<label for="mailing_name" class="control-label">{{$txt['107875::newsletter_form_field2']}}
												</label>
												<span class="form-control-feedback"></span>
											</div>
										</div>
										<div id="newsletter_privacy_consent" class="form-group col-md-6 col-12">
											<div class="has-feedback">
												<label class="control-label d-flex align-items-center">
													<div class="text_to_right">
														<input class="newsletter_form_field validate" name="newsletter_consent" id="newsletter_consent" type="checkbox"/>
													</div>
													<div class="text_to_left">{{$txt['107875::62523423_newsletter_consent']}}
														<a href="{{$xml->getItemEscape("/shop/action/private_policy/@url")}}">{{$txt['107875::62523423_newsletter_consent_privacy']}}</a>
													</div>
												</label>
											</div>
										</div>
										<div class="newsletter_button_wrapper col-md-6 col-12">
											<button type="submit" style="display: none;"/>
											<button id="newsletter_button_add" type="submit" class="btn-small" value="{{$txt['107875::newsletter_button_add']}}">{{$txt['107875::newsletter_button_add']}}
											</button>
											<button id="newsletter_button_remove" type="submit" class="btn-small" value="{{$txt['107875::newsletter_button_remove']}}">{{$txt['107875::newsletter_button_remove']}}
											</button>
										</div>
									</form>
								{{/if}}
							{{else}}
								{{capture name="newsletter_mainpage_txt" assign="newsletter_mainpage_txt"}}
									{{$txt['107875::newsletter_button_stronaglowna']}}
								{{/capture}}
								<div class="newsletter_button_wrapper">
									<a class="btn-small" href="/" {{if $newsletter_mainpage_txt}} title="{{$newsletter_mainpage_txt}}" {{$newsletter_mainpage_txt}}{{else}} title="Strona główna" Strona główna {{/if}}></a>
								</div>
							{{/if}}
						</div>
						{{if  $xml->getItem("/shop/@newsletter_form_remove")}}
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
