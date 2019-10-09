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
			<script type="text/javascript" src="/gfx/{{$xml->getItemEscape("language/@id")}}/client_new_form.js.gzip?r=1570606968">			</script>

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
					<aside {{assign "classAttributeTmp4" ""}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}span3{{/capture}}{{if $xml->getItem("page/@type") == (string) 'projector'}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}{{$txt['107419::70925_projector_a_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'search'}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}{{$txt['107419::70925_search_a_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'main'}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}{{$txt['107419::70925_main_a_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'blog-item'}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}{{$txt['107419::70925_blog_item_a_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'blog-list'}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}{{$txt['107419::70925_blog_list_a_class']}}{{/capture}}{{else}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}{{$txt['107419::70925_otherwise_a_class']}}{{/capture}}{{/if}}  class="{{$classAttributeTmp4}}">
						{{include file="component_menu_additional1_106528.tpl"}}
					</aside>
				{{/if}}
				{{if !( $xml->getItem("action/set_render/item")) or ( $xml->getItem("action/set_render/item/@name")  == (string) 'content')}}
					<div {{assign "classAttributeTmp5" ""}}  id="content"{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}span9{{/capture}}{{if $xml->getItem("page/@type") == (string) 'projector'}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}{{$txt['107419::70925_projector_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'search'}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}{{$txt['107419::70925_search_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'main'}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}{{$txt['107419::70925_main_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'navigation'}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}{{$txt['107419::70925_navigation_page_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'blog-list'}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}{{$txt['107419::70925_blog_list_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'blog-item'}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}{{$txt['107419::70925_blog_item_c_class']}}{{/capture}}{{else}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}{{$txt['107419::70925_otherwise_c_class']}}{{/capture}}{{/if}}  class="{{$classAttributeTmp5}}">
						{{include file="component_menu_order_progress_106607.tpl"}}
						{{include file="component_menu_messages_106608.tpl"}}
						<!--Cms na stronę dodawania konta (client-new) (client_new_cms, 107668.1)-->
						{{if  $xml->getItem("page/text/body")}}
							{{capture name="loginedit_cms_label" assign="loginedit_cms_label"}}
								{{$txt['107668::52201_001']}}
							{{/capture}}
							<div class="loginedit_cms">
								{{if $loginedit_cms_label and !($loginedit_cms_label  == (string) '')}}
									<div class="client_cms_label">
										<span class="n53873_label">{{$loginedit_cms_label}}</span>
									</div>
								{{/if}}
								<div class="loginedit_cms_sub cm">{{$xml->getItem("page/text/body")}}
								</div>
							</div>
						{{/if}}
						<!--Social networking (client_new_social_networking, 108841.1)-->
						{{if !( $xml->getItem("login_options/service[@connected='true']"))}}
							{{if  $xml->getItem("/shop/page/client-data")}}
								{{if count( $xml->getList("login_options/service")) gt (string)1 and !( $xml->getItem("/shop/page/client-data/@registerByExternalService") == (string)'true')}}
									<div id="client_new_social" {{if $xml->getItem("page/client-data/@action") == (string) 'password_token'}} class="d-none" {{/if}}>
										{{if  $xml->getItem("/shop/page/client-data/@edit") == (string)'true'}}
											<h2 class="{{$txt['108841::n56203_label_class1']}}">{{$txt['108841::n56203_konto_b']}}
											</h2>
										{{/if}}
										{{if !( $xml->getItem("/shop/page/client-data/@edit") == (string)'true')}}
											<h2 class="{{$txt['108841::n56203_label_class2']}}">{{$txt['108841::n56203_konto']}}
											</h2>
										{{/if}}
										<div class="client_new_social_sub">
											{{if !( $xml->getItem("page/client-data/@allow_register")  == (string) 'false')}}
												{{if  $xml->getItem("/shop/page/client-data/@edit") == (string)'true'}}
													<p>{{$txt['108841::n56203_konto1_b']}}
													</p>
												{{/if}}
												{{if !( $xml->getItem("/shop/page/client-data/@edit") == (string)'true')}}
													<p>{{$txt['108841::n56203_konto1']}}
													</p>
												{{/if}}
											{{/if}}
											{{if  $xml->getItem("page/client-data/@allow_register")  == (string) 'false'}}
												<div class="client_new_form_info" id="client_new_form_info">{{$txt['108841::n56203_regSoc']}}
												</div>
											{{/if}}
											{{if count( $xml->getList("login_options/service")) gt (string)1}}
												<ul>
													{{foreach from=$xml->getList("login_options/service[not(@name='shop_register') and @login_url]") item=loop314}}
														<li>
															{{if  $loop314->getItem("@login_url")}}
																<a class="service_item service_{{$loop314->getItemEscape("@name")|replace:' +':'_'}}" href="{{$loop314->getItemEscape("@login_url")}}">
																	<span>{{$loop314->getItemEscape("@name")}}</span></a>
															{{else}}
																<strong class="service_item service_{{$loop314->getItemEscape("@name")|replace:' +':'_'}}" data-service="{{$loop314->getItemEscape("@name")|replace:' +':'_'}}">
																	<span>{{$loop314->getItemEscape("@name")}}</span></strong>
															{{/if}}
														</li>{{literal}}{{/literal}}
													{{/foreach}}
												</ul>
											{{/if}}
										</div>
									</div>
								{{/if}}
							{{/if}}
							{{if  $xml->getItem("/shop/page/communicates/message/@type") == (string)'login_connect'}}
								<div style="display:none;">
									<div id="client_new_social_info">
										<h2>{{$txt['108841::57295_info_1']}}{{$xml->getItemEscape("/shop/page/communicates/message/@value")}}
										</h2>
										<strong>{{$txt['108841::57295_info_2']}}{{$xml->getItemEscape("/shop/page/communicates/message/@value")}}{{$txt['108841::57295_info_3']}}</strong>
										<button {{assign "classAttributeTmp6" ""}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}go_to_register_form{{/capture}} onclick="$('#dialog_close').click();"{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}btn go_to_register_form{{/capture}}  class="{{$classAttributeTmp6}}">{{$txt['108841::57295_info_4']}}
										</button>
									</div>
								</div>
							{{elseif  $xml->getItem("/shop/page/communicates/message/@type") == (string)'login_connected'}}
								<div style="display:none;">
									<div id="client_new_social_info">
										<h2>{{$txt['108841::57295_info_1a']}}{{$xml->getItemEscape("/shop/page/communicates/message/@value")}}
										</h2>
										<strong>{{$txt['108841::57295_info_2a']}}{{$xml->getItemEscape("/shop/page/communicates/message/@value")}}{{$txt['108841::57295_info_3a']}}</strong>
										<button {{assign "classAttributeTmp7" ""}}{{capture name="classAttributeTmp7" assign="classAttributeTmp7"}}go_to_register_form2{{/capture}} onclick="$('#dialog_close').click();"{{capture name="classAttributeTmp7" assign="classAttributeTmp7"}}btn go_to_register_form2{{/capture}}  class="{{$classAttributeTmp7}}">{{$txt['108841::57295_info_4a']}}
										</button>
									</div>
								</div>
							{{/if}}
						{{/if}}
						<!--Formularz dodawania nowego klienta (client_new_form, 108535.1)-->
						{{capture name="data_edit_blocked" assign="data_edit_blocked"}}
							{{$txt['108535::n67953_data_edit_blocked']}}
						{{/capture}}
						{{capture name="n81519_order2_document_invoice" assign="n81519_order2_document_invoice"}}
							{{$txt['108535::n81519_order2_document_invoice']}}
						{{/capture}}
						{{capture name="mail_newsletter_active" assign="mail_newsletter_active"}}
							{{$xml->getItemEscape("/shop/page/client-data/contact_data/@mailing")}}
						{{/capture}}
						{{capture name="sms_newsletter_active" assign="sms_newsletter_active"}}
							{{$xml->getItemEscape("/shop/page/client-data/contact_data/@send_sms")}}
						{{/capture}}
						{{capture name="client_new_mode" assign="client_new_mode"}}
							{{if  $xml->getItem("/shop/page/client-data/@edit") == (string)'true'}}
								edit
							{{elseif  $xml->getItem("/shop/page/client-data/@register") == (string)'true'}}
								register
							{{elseif !( $xml->getItem("/shop/page/client-data/@edit") == (string)'true')}}
								onceorder
							{{/if}}
						{{/capture}}
						{{capture name="is_firm" assign="is_firm"}}
							{{if ( $xml->getItem("/shop/page/client-data/client_type/@type")  == (string) 'firm') or ( $xml->getItem("page/client-data/@operation")  == (string) 'register-wholesale-add') or ( $xml->getItem("page/client-data/@operation")  == (string) 'edit-wholesale-add') or  ( $xml->getItem("page/client-data/@operation")  == (string) 'edit-wholesale-edit')}}
								true
							{{else}}
								false
							{{/if}}
						{{/capture}}
						<script type="text/javascript" class="ajaxLoad">{{if  $xml->getItem("/shop/page/client-data/profile_data/@min_password_length") and  $xml->getItem("/shop/page/client-data/profile_data/@max_password_length")}}
                var ClNewPasswordLengthMin ="{{$xml->getItemEscape("/shop/page/client-data/profile_data/@min_password_length")}}";
                var ClNewPasswordLengthMax ="{{$xml->getItemEscape("/shop/page/client-data/profile_data/@max_password_length")}}";
            {{/if}}
            var  is_firm = {{$is_firm}};
            var  client_new_mode = "{{$client_new_mode}}";
        						</script>

						{{if  $xml->getItem("page/client-data/@disallow_change_company_data")  == (string) 'true'}}
							<div class="menu_messages_message">
								<div class="menu_messages_message_sub">
									<p>{{$data_edit_blocked}}
									</p>
								</div>
							</div>
						{{/if}}
						<form {{assign "classAttributeTmp8" ""}}  method="post"{{capture name="classAttributeTmp8" assign="classAttributeTmp8"}}form-horizontal{{/capture}} id="client_new_form" enctype="multipart/form-data"{{capture name="classAttributeTmp8" assign="classAttributeTmp8"}}form-horizontal {{if !( $xml->getItem("/shop/page/client-data/invoice_data-list"))}}invoice_to_billingaddr{{/if}}{{if ( $xml->getItem("/shop/page/client-data/delivery_data/@use") == (string) 'no')}} deliver_to_billingaddr {{/if}} type-{{$client_new_mode}}{{/capture}}  class="{{$classAttributeTmp8}}">
							<input type="hidden" name="operation" value="{{$xml->getItemEscape("/shop/page/client-data/@action")}}"></input>
							{{if  $xml->getItem("/shop/page/client-data/wholesale_data/@id")}}
								<input type="hidden" name="appId" value="{{$xml->getItemEscape("/shop/page/client-data/wholesale_data/@id")}}"></input>
							{{/if}}
							{{if ( $xml->getItem("page/client-data/@operation")  == (string) 'register-wholesale-add') or ( $xml->getItem("page/client-data/@operation")  == (string) 'edit-wholesale-add') or ( $xml->getItem("page/client-data/@operation")  == (string) 'edit-wholesale-edit')}}
								<div class="row clearfix wholesale_box">
									<div class="col-12">
										<h2 class="big_label" id="wholesale_header">{{$txt['108535::box_wholesale_header']}}
										</h2>
									</div>
									<div class="col-12">
										<div class="wholesale_box cn_wrapper">
											<div class="form-group">
												<label class="control-label">
													{{if  $xml->getItem("/shop/contact/owner/@vat_registered")  == (string) 'false' and $n81519_order2_document_invoice  neq (string)''}}
														{{$txt['108535::n81519_order2_document_invoice']}}
													{{else}}
														{{$txt['108535::wholesale_025']}}
													{{/if}}
												</label>
												<div class="form-control-static">
													<label class="radio-inline">
														<input id="client_vat_payer_k" name="client_vat_payer" type="radio" value="k" {{if $xml->getItem("/shop/page/client-data/wholesale_data/@vat_payer") == (string)'k'}} checked="checked"{{/if}}></input>{{$txt['108535::wholesale_702']}}
													</label>
													<label class="radio-inline">
														<input id="client_vat_payer_w" name="client_vat_payer" type="radio" value="w" {{if $xml->getItem("/shop/page/client-data/wholesale_data/@vat_payer") == (string)'w'}} checked="checked"{{/if}}></input>{{$txt['108535::wholesale_703']}}
													</label>
													<label class="radio-inline">
														<input id="client_vat_payer_e" name="client_vat_payer" type="radio" value="e" {{if $xml->getItem("/shop/page/client-data/wholesale_data/@vat_payer") == (string)'e'}} checked="checked"{{/if}}></input>{{$txt['108535::wholesale_704']}}
													</label>
												</div>
											</div>
											<div class="form-group">
												<div class="has-feedback">
													<textarea class="form-control" rows="3" id="client_description" name="client_description">{{$xml->getItemEscape("/shop/page/client-data/wholesale_data/@description")}}</textarea>
													<label for="client_description" class="control-label">{{$txt['108535::wholesale_026']}}
													</label>
												</div>
											</div>
										</div>
									</div>
									<div class="col-12">
										<div class="wholesale_box cn_wrapper">
											<div class="form-group">
												<label for="client_attachment1" class="control-label">{{$txt['108535::wholesale_027']}}
												</label>
												<div class="form-control-static">
													<input id="client_attachment1" type="file" name="client_attachment1" size="14" {{if $xml->getItem("/shop/form_data/upload_file/max_filesize/@bytes")}} data-max_filesize="{{$xml->getItemEscape("/shop/form_data/upload_file/max_filesize/@bytes")}}" {{/if}}></input>
													{{if  $xml->getItem("/shop/page/client-data/wholesale_data/@file1_link")}}
														<p class="help-block">{{$txt['108535::wholesale_700']}}
															<a href="{{$xml->getItemEscape("/shop/page/client-data/wholesale_data/@file1_link")}}">{{$txt['108535::wholesale_026bebe']}}</a>{{$txt['108535::wholesale_701']}}
														</p>
													{{/if}}
												</div>
											</div>
											<div class="form-group">
												<label for="client_attachment2" class="control-label">{{$txt['108535::wholesale_028']}}
												</label>
												<div class="form-control-static">
													<input id="client_attachment2" type="file" name="client_attachment2" size="14" {{if $xml->getItem("/shop/form_data/upload_file/max_filesize/@bytes")}} data-max_filesize="{{$xml->getItemEscape("/shop/form_data/upload_file/max_filesize/@bytes")}}" {{/if}}></input>
													{{if  $xml->getItem("/shop/page/client-data/wholesale_data/@file2_link")}}
														<p class="help-block">{{$txt['108535::wholesale_700']}}
															<a href="{{$xml->getItemEscape("/shop/page/client-data/wholesale_data/@file2_link")}}">{{$txt['108535::wholesale_026bebe']}}</a>{{$txt['108535::wholesale_701']}}
														</p>
													{{/if}}
												</div>
											</div>
											<div class="form-group">
												<label for="client_attachment3" class="control-label">{{$txt['108535::wholesale_029']}}
												</label>
												<div class="form-control-static">
													<input id="client_attachment3" type="file" name="client_attachment3" size="14" {{if $xml->getItem("/shop/form_data/upload_file/max_filesize/@bytes")}} data-max_filesize="{{$xml->getItemEscape("/shop/form_data/upload_file/max_filesize/@bytes")}}" {{/if}}></input>
													{{if  $xml->getItem("/shop/page/client-data/wholesale_data/@file3_link")}}
														<p class="help-block">{{$txt['108535::wholesale_700']}}
															<a href="{{$xml->getItemEscape("/shop/page/client-data/wholesale_data/@file3_link")}}">{{$txt['108535::wholesale_026bebe']}}</a>{{$txt['108535::wholesale_701']}}
														</p>
													{{/if}}
												</div>
											</div>
										</div>
									</div>
								</div>
							{{/if}}
							<div class="row clearfix">
								<div class="col-12" id="client_new_client">
									<h2 class="big_label" id="client_header">{{$txt['108535::55101_js_txt3']}}
									</h2>
									{{if  $xml->getItem("/shop/page/client-data/@operation")  == (string) 'register' and  $xml->getItem("/shop/action/registration_options/wholesale")}}
										<div class="cn_wrapper choose_other_form">{{$txt['108535::go_to_wholesale']}}
											<a href="{{$xml->getItemEscape("/shop/action/registration_options/wholesale/@registration_url")}}" title="{{$txt['108535::go_to_wholesale_link_title']}}">{{$txt['108535::go_to_wholesale_text']}}</a>
										</div>
									{{elseif  $xml->getItem("/shop/page/client-data/@operation")  == (string) 'register-wholesale-add' and  $xml->getItem("/shop/action/registration_options/retail")}}
										<div class="cn_wrapper choose_other_form">{{$txt['108535::go_to_retail']}}
											<a href="{{$xml->getItemEscape("/shop/action/registration_options/retail/@registration_url")}}" title="{{$txt['108535::go_to_retail_link_title']}}">{{$txt['108535::go_to_retail_text']}}</a>
										</div>
									{{/if}}
									<div class="client_box cn_wrapper">
										{{if !(( $xml->getItem("page/client-data/@operation")  == (string) 'register-wholesale-add') or ( $xml->getItem("page/client-data/@operation")  == (string) 'edit-wholesale-add') or  ( $xml->getItem("page/client-data/@operation")  == (string) 'edit-wholesale-edit')) or ( $xml->getItem("page/client-data/@disallow_change_company_data")  == (string) 'false')}}
											<div class="form-group firm_switcher">
												<label class="control-label">{{$txt['108535::n56203_004_zamjako']}}
												</label>
												<div class="form-control-static">
													<label class="radio-inline">
														<input type="radio" id="client_type2" value="private" name="client_type" {{if $is_firm == (string) 'false'}} checked="checked" {{/if}}></input>{{$txt['108535::n56203_008']}}
													</label>
													<label class="radio-inline">
														<input type="radio" id="client_type1" value="firm" name="client_type" {{if $is_firm == (string) 'true'}} checked="checked" {{/if}}></input>{{$txt['108535::n56203_008b']}}
													</label>
												</div>
											</div>
											<div {{assign "classAttributeTmp9" ""}}{{capture name="classAttributeTmp9" assign="classAttributeTmp9"}}form-group firm-group{{/capture}}{{if $is_firm == (string) 'false'}} style="display:none;"{{/if}}{{if $xml->getItem("page/client-data/@disallow_change_company_data") == (string) 'true'}}{{capture name="classAttributeTmp9" assign="classAttributeTmp9"}}form-group firm-group readonly{{/capture}}{{/if}}  class="{{$classAttributeTmp9}}">
												<div class="row">
													<div {{assign "classAttributeTmp10" ""}}{{capture name="classAttributeTmp10" assign="classAttributeTmp10"}}has-feedback has-required col-sm-6 col-12{{/capture}}{{if $xml->getItem("/shop/page/client-data/nip/@active") == (string) 'hide'}}{{capture name="classAttributeTmp10" assign="classAttributeTmp10"}}has-feedback has-required {{$txt['108535::GRID_client_new_one_column']}}{{/capture}}{{/if}}  class="{{$classAttributeTmp10}}">
														<input {{assign "classAttributeTmp11" ""}}  type="text"{{capture name="classAttributeTmp11" assign="classAttributeTmp11"}}form-control validate{{/capture}} name="client_firm" id="client_firm" {{if !( $xml->getItem("/shop/page/client-data/invoice_data/@firm") == (string) '')}}{{capture name="classAttributeTmp11" assign="classAttributeTmp11"}}form-control validate focused{{/capture}}{{/if}} required="required" maxlength="{{$xml->getItemEscape("/shop/page/input_option/@additional")}}" value="{{$xml->getItemEscape("/shop/page/client-data/invoice_data/@firm")}}" {{if $is_firm == (string) 'false'}} disabled="disabled"{{/if}}{{if $xml->getItem("page/client-data/@disallow_change_company_data") == (string) 'true'}} readonly="readonly"{{/if}}  class="{{$classAttributeTmp11}}"></input>
														<label for="client_firm" class="control-label">{{$txt['108535::n56203_004']}}
														</label>
														<span class="form-control-feedback"></span>
													</div>
													{{if  $xml->getItem("/shop/page/client-data/nip/@active")  neq (string) 'hide'}}
														<div class="has-feedback {{if $xml->getItem("/shop/page/client-data/nip/@active") == (string) 'required'}}has-required {{/if}}{{$txt['108535::GRID_client_new_two_column']}}">
															<input {{assign "classAttributeTmp12" ""}}  type="text"{{capture name="classAttributeTmp12" assign="classAttributeTmp12"}}form-control validate{{/capture}} name="client_nip" id="client_nip" data-serialize="#client_region" {{if !( $xml->getItem("/shop/page/client-data/invoice_data/@nip") == (string) '')}}{{capture name="classAttributeTmp12" assign="classAttributeTmp12"}}form-control validate focused{{/capture}}{{/if}}{{if $xml->getItem("/shop/page/client-data/nip/@active") == (string) 'required'}} required="required"{{/if}} maxlength="{{$xml->getItemEscape("/shop/page/input_option/@tax_number")}}" value="{{$xml->getItemEscape("/shop/page/client-data/invoice_data/@nip")}}" {{if $is_firm == (string) 'false'}} disabled="disabled"{{/if}}{{if $xml->getItem("page/client-data/@disallow_change_company_data") == (string) 'true'}} readonly="readonly"{{/if}}  class="{{$classAttributeTmp12}}"></input>
															<label for="client_nip" class="control-label">{{$txt['108535::n56203_005']}}
															</label>
															<span class="form-control-feedback"></span>
														</div>
													{{/if}}
												</div>
											</div>
										{{/if}}
										<div {{assign "classAttributeTmp13" ""}}{{capture name="classAttributeTmp13" assign="classAttributeTmp13"}}form-group{{/capture}}{{if $xml->getItem("page/client-data/@disallow_change_company_data") == (string) 'true'}}{{capture name="classAttributeTmp13" assign="classAttributeTmp13"}}form-group readonly{{/capture}}{{/if}}  class="{{$classAttributeTmp13}}">
											<div class="row">
												<div class="has-feedback has-required col-sm-6 col-12">
													<input {{assign "classAttributeTmp14" ""}}  id="client_firstname" type="text"{{capture name="classAttributeTmp14" assign="classAttributeTmp14"}}form-control validate{{/capture}} name="client_firstname" {{if !( $xml->getItem("/shop/page/client-data/invoice_data/@firstname") == (string) '')}}{{capture name="classAttributeTmp14" assign="classAttributeTmp14"}}form-control validate focused{{/capture}}{{/if}} maxlength="{{$xml->getItemEscape("/shop/page/input_option/@name")}}" value="{{$xml->getItemEscape("/shop/page/client-data/invoice_data/@firstname")}}" {{if $xml->getItem("page/client-data/@disallow_change_company_data") == (string) 'true'}} readonly="readonly"{{/if}} required="required"  class="{{$classAttributeTmp14}}"></input>
													<label for="client_firstname" class="control-label">{{$txt['108535::n56203_002']}}
													</label>
													<span class="form-control-feedback"></span>
												</div>
												<div class="has-feedback has-required col-sm-6 col-12">
													<input {{assign "classAttributeTmp15" ""}}  id="client_lastname" type="text"{{capture name="classAttributeTmp15" assign="classAttributeTmp15"}}form-control validate{{/capture}} name="client_lastname" {{if !( $xml->getItem("/shop/page/client-data/invoice_data/@lastname") == (string) '')}}{{capture name="classAttributeTmp15" assign="classAttributeTmp15"}}form-control validate focused{{/capture}}{{/if}} maxlength="{{$xml->getItemEscape("/shop/page/input_option/@lastname")}}" value="{{$xml->getItemEscape("/shop/page/client-data/invoice_data/@lastname")}}" {{if $xml->getItem("page/client-data/@disallow_change_company_data") == (string) 'true'}} readonly="readonly"{{/if}}{{if $xml->getItem("/shop/page/client-data/profile_data/@mandatory_lastname") == (string) 'true'}} required="required"{{/if}}  class="{{$classAttributeTmp15}}"></input>
													<label for="client_lastname" class="control-label">{{$txt['108535::n56203_003']}}
													</label>
													<span class="form-control-feedback"></span>
												</div>
											</div>
										</div>
										{{if ( $xml->getItem("/shop/page/client-data/client_type/@active")  neq (string) 'n') and !( $xml->getItem("/shop/page/client-data/client_type/@type")  == (string) 'firm')}}
											<div {{assign "classAttributeTmp16" ""}}{{capture name="classAttributeTmp16" assign="classAttributeTmp16"}}form-group{{/capture}} id="client_sex" {{if $xml->getItem("page/client-data/@disallow_change_company_data") == (string) 'true'}}{{capture name="classAttributeTmp16" assign="classAttributeTmp16"}}form-group readonly{{/capture}}{{/if}}  class="{{$classAttributeTmp16}}">
												<label class="control-label">{{$txt['108535::n56203_008112']}}
												</label>
												<div class="form-control-static">
													<label class="radio-inline">
														<input type="radio" name="client_sex" id="client_sex_male" value="male" {{if ( $xml->getItem("/shop/page/client-data/client_type/@type") == (string) 'male')}} checked="checked"{{/if}}{{if $xml->getItem("page/client-data/@disallow_change_company_data") == (string) 'true'}} readonly="readonly"{{/if}} required="required"></input>{{$txt['108535::n56203_0081']}}
													</label>
													<label class="radio-inline">
														<input type="radio" name="client_sex" id="client_sex_male" value="female" {{if ( $xml->getItem("/shop/page/client-data/client_type/@type") == (string) 'female')}} checked="checked"{{/if}}{{if $xml->getItem("page/client-data/@disallow_change_company_data") == (string) 'true'}} readonly="readonly"{{/if}} required="required"></input>{{$txt['108535::n56203_0082']}}
													</label>
												</div>
											</div>
										{{/if}}
										{{if  $xml->getItem("/shop/page/client-data/birth_date/@active")  neq (string) 'hide'}}
											<div {{assign "classAttributeTmp17" ""}}{{capture name="classAttributeTmp17" assign="classAttributeTmp17"}}form-group row{{/capture}}{{if $xml->getItem("page/client-data/@disallow_change_company_data") == (string) 'true'}}{{capture name="classAttributeTmp17" assign="classAttributeTmp17"}}form-group readonly{{/capture}}{{/if}}  class="{{$classAttributeTmp17}}">
												<div class="has-feedback {{if $xml->getItem("/shop/page/client-data/birth_date/@active") == (string)'required'}}has-required {{/if}}{{$txt['108535::GRID_client_new_one_column']}}">
													<input {{assign "classAttributeTmp18" ""}}  id="birth_date" type="text"{{capture name="classAttributeTmp18" assign="classAttributeTmp18"}}form-control validate{{/capture}} name="birth_date" {{if !( $xml->getItem("/shop/page/client-data/birth_date/@date") == (string) '')}}{{capture name="classAttributeTmp18" assign="classAttributeTmp18"}}form-control validate focused{{/capture}}{{/if}} maxlength="{{$xml->getItemEscape("/shop/page/input_option/@birthdate")}}" {{if $xml->getItem("/shop/page/client-data/birth_date/@date") neq (string) '0000-00-00'}} value="{{$xml->getItemEscape("/shop/page/client-data/birth_date/@date")}}"{{/if}}{{if $xml->getItem("page/client-data/@disallow_change_company_data") == (string) 'true'}} readonly="readonly"{{/if}}{{if $xml->getItem("/shop/page/client-data/birth_date/@active") == (string)'required'}} required="required"{{/if}}  class="{{$classAttributeTmp18}}"></input>
													<label for="birth_date" class="control-label">{{$txt['108535::n56203_003dd']}}
													</label>
													<span class="form-control-feedback"></span>
												</div>
											</div>
										{{/if}}
										<div {{assign "classAttributeTmp19" ""}}{{capture name="classAttributeTmp19" assign="classAttributeTmp19"}}form-group row{{/capture}}{{if $xml->getItem("page/client-data/@disallow_change_company_data") == (string) 'true'}}{{capture name="classAttributeTmp19" assign="classAttributeTmp19"}}form-group row readonly{{/capture}}{{/if}}  class="{{$classAttributeTmp19}}">
											<div class="has-feedback has-required col-12">
												<input {{assign "classAttributeTmp20" ""}}  id="client_street" type="text"{{capture name="classAttributeTmp20" assign="classAttributeTmp20"}}form-control validate{{/capture}} name="client_street" data-serialize="#client_region" {{if !( $xml->getItem("/shop/page/client-data/invoice_data/@street") == (string) '')}}{{capture name="classAttributeTmp20" assign="classAttributeTmp20"}}form-control validate focused{{/capture}}{{/if}} maxlength="{{$xml->getItemEscape("/shop/page/input_option/@addres")}}" value="{{$xml->getItemEscape("/shop/page/client-data/invoice_data/@street")}}" {{if $xml->getItem("page/client-data/@disallow_change_company_data") == (string) 'true'}} readonly="readonly"{{/if}} required="required"  class="{{$classAttributeTmp20}}"></input>
												<label for="client_street" class="control-label">{{$txt['108535::n56203_010']}}
												</label>
												<span class="form-control-feedback"></span>
											</div>
										</div>
										<div {{assign "classAttributeTmp21" ""}}{{capture name="classAttributeTmp21" assign="classAttributeTmp21"}}form-group{{/capture}}{{if $xml->getItem("page/client-data/@disallow_change_company_data") == (string) 'true'}}{{capture name="classAttributeTmp21" assign="classAttributeTmp21"}}form-group readonly{{/capture}}{{/if}}  class="{{$classAttributeTmp21}}">
											<div class="row">
												<div id="zipcode_wrapper" class="has-feedback has-required col-sm-6 col-12">
													<input {{assign "classAttributeTmp22" ""}}  id="client_zipcode" type="text"{{capture name="classAttributeTmp22" assign="classAttributeTmp22"}}form-control validate{{/capture}} name="client_zipcode" data-serialize="#client_region" {{if !( $xml->getItem("/shop/page/client-data/invoice_data/@zipcode") == (string) '')}}{{capture name="classAttributeTmp22" assign="classAttributeTmp22"}}form-control validate focused{{/capture}}{{/if}} maxlength="{{$xml->getItemEscape("/shop/page/input_option/@zipcode")}}" value="{{$xml->getItemEscape("/shop/page/client-data/invoice_data/@zipcode")}}" {{if $xml->getItem("page/client-data/@disallow_change_company_data") == (string) 'true'}} readonly="readonly"{{/if}} required="required"  class="{{$classAttributeTmp22}}"></input>
													<label for="client_zipcode" class="control-label">{{$txt['108535::n56203_011']}}
													</label>
													<span class="form-control-feedback"></span>
												</div>
												<div id="city_wrapper" class="has-feedback has-required col-sm-6 col-12">
													<input {{assign "classAttributeTmp23" ""}}  id="client_city" type="text"{{capture name="classAttributeTmp23" assign="classAttributeTmp23"}}form-control validate{{/capture}} name="client_city" {{if !( $xml->getItem("/shop/page/client-data/invoice_data/@city") == (string) '')}}{{capture name="classAttributeTmp23" assign="classAttributeTmp23"}}form-control validate focused{{/capture}}{{/if}} maxlength="{{$xml->getItemEscape("/shop/page/input_option/@city")}}" value="{{$xml->getItemEscape("/shop/page/client-data/invoice_data/@city")}}" {{if $xml->getItem("page/client-data/@disallow_change_company_data") == (string) 'true'}} readonly="readonly"{{/if}} required="required"  class="{{$classAttributeTmp23}}"></input>
													<label for="client_city" class="control-label">{{$txt['108535::n56203_011a']}}
													</label>
													<span class="form-control-feedback"></span>
												</div>
											</div>
										</div>
										{{if count( $xml->getList("/shop/page/options/countries/country"))  == (string) 1 and ( $xml->getItem("/shop/page/options/countries/country/@id")  == (string) 1143020003)}}
											<input id="client_region" type="hidden" name="client_region" value="{{$xml->getItemEscape("/shop/page/options/countries/country/@id")}}" data-vat_company="{{$xml->getItemEscape("/shop/page/options/countries/country/@vat_company")}}" data-vat="{{$xml->getItemEscape("/shop/page/options/countries/country/@vat")}}"></input>
										{{else}}
											<div {{assign "classAttributeTmp24" ""}}{{capture name="classAttributeTmp24" assign="classAttributeTmp24"}}form-group row country{{/capture}}{{if $xml->getItem("page/client-data/@disallow_change_company_data") == (string) 'true'}}{{capture name="classAttributeTmp24" assign="classAttributeTmp24"}}form-group row country readonly{{/capture}}{{/if}}  class="{{$classAttributeTmp24}}">
												<div class="has-feedback col-12">
													<select class="form-control delivery_countries focused" id="client_region" name="client_region" data-revalidate="#client_street,#client_zipcode" {{if $xml->getItem("page/client-data/@disallow_change_company_data") == (string) 'true'}} readonly="readonly"{{/if}}>
														{{foreach from=$xml->getList("/shop/page/options/countries/country") item=loop773}}
															<option value="{{$loop773->getItemEscape("@id")}}" data-vat_company="{{$loop773->getItemEscape("@vat_company")}}" data-vat="{{$loop773->getItemEscape("@vat")}}" {{if $loop773->getItem("/shop/page/client-data/invoice_data/@region") gt (string) 0}}{{if $loop773->getItem("@id") == (string) $loop773->getItem("/shop/page/client-data/invoice_data/@region")}} selected="selected" {{/if}}{{else}}{{if $loop773->getItem("@selected") == (string) 'true'}} selected="selected" {{/if}}{{/if}}>{{$loop773->getItemEscape("@name")}}
															</option>
														{{/foreach}}
													</select>
													<label for="client_region" class="control-label">{{$txt['108535::n56203_013']}}
													</label>
												</div>
											</div>
										{{/if}}
										{{foreach from=$xml->getList("/shop/page/options/countries/country") item=loop799}}
											{{if  $loop799->getItem("provinces/province")}}
												<div {{assign "classAttributeTmp25" ""}}{{assign "styleAttributeTmp1" ""}}{{capture name="classAttributeTmp25" assign="classAttributeTmp25"}}form-group client_provinces{{/capture}}{{capture name="styleAttributeTmp1" assign="styleAttributeTmp1"}}display: none;{{/capture}}{{if $loop799->getItem("@selected") == (string) 'true'}}{{capture name="styleAttributeTmp1" assign="styleAttributeTmp1"}}display: block;{{/capture}}{{/if}} id="client_region_{{$loop799->getItemEscape("@id")}}" {{if $loop799->getItem("page/client-data/@disallow_change_company_data") == (string) 'true'}}{{capture name="classAttributeTmp25" assign="classAttributeTmp25"}}form-group client_provinces readonly{{/capture}}{{/if}}  style="{{$styleAttributeTmp1}}"  class="{{$classAttributeTmp25}}">
													<label for="client_province" class="control-label">
														{{foreach from=$loop799->getList("province_types/type") item=loop807}}
															{{if  $loop807->getItem("text()")  == (string) 'state'}}
																{{$txt['108535::n56203_013_state']}}
															{{elseif  $loop807->getItem("text()")  == (string) 'province'}}
																{{$txt['108535::n56203_013_province']}}
															{{elseif  $loop807->getItem("text()")  == (string) 'territory'}}
																{{$txt['108535::n56203_013_territory']}}
															{{else}}
																{{$txt['108535::n56203_013_region']}}
															{{/if}}
															{{if !( $loop807@iteration   == (string)  $loop807@total )}}
																{{$txt['108535::n56203_013_sep']}}
															{{/if}}
														{{/foreach}}
														{{$txt['108535::n56203_013_sep2']}}
													</label>
													<div class="has-feedback col-12">
														<select class="form-control" name="client_province" {{if $loop799->getItem("page/client-data/@disallow_change_company_data") == (string) 'true'}} readonly="readonly"{{/if}}{{if !( $loop799->getItem("@selected") == (string) 'true')}} disabled="disabled"{{/if}} id="client_province_{{$loop799->getItemEscape("@id")}}">
															{{foreach from=$loop799->getList("provinces/province") item=loop819}}
																<option value="{{$loop819->getItemEscape("@id")}}" {{if $loop819->getItem("/shop/page/client-data/invoice_data/@province") gt (string) 0}}{{if $loop819->getItem("@id") == (string) $loop819->getItem("/shop/page/client-data/invoice_data/@province")}} selected="selected" {{/if}}{{else}}{{if $loop819->getItem("@selected") == (string) 'true'}} selected="selected" {{/if}}{{/if}}>{{$loop819->getItemEscape("@name")}}
																</option>
															{{/foreach}}
														</select>
													</div>
												</div>
											{{/if}}
										{{/foreach}}
										<div class="form-group">
											<div class="row">
												<div {{assign "classAttributeTmp26" ""}}{{capture name="classAttributeTmp26" assign="classAttributeTmp26"}}has-feedback has-required col-sm-6 col-12{{/capture}}{{if !( $xml->getItem("/shop/page/client-data/contact_data/@mandatory_phone") == (string) 'true')}}{{capture name="classAttributeTmp26" assign="classAttributeTmp26"}}has-feedback {{$txt['108535::GRID_client_new_two_column']}}{{/capture}}{{/if}}  class="{{$classAttributeTmp26}}">
													<input {{assign "classAttributeTmp27" ""}}  id="client_phone" type="tel"{{capture name="classAttributeTmp27" assign="classAttributeTmp27"}}form-control validate{{/capture}} name="client_phone" data-serialize="#client_region" {{if !( $xml->getItem("/shop/page/client-data/contact_data/@phone") == (string) '')}}{{capture name="classAttributeTmp27" assign="classAttributeTmp27"}}form-control validate focused{{/capture}}{{/if}} value="{{$xml->getItemEscape("/shop/page/client-data/contact_data/@phone")}}" {{if $xml->getItem("/shop/page/client-data/contact_data/@mandatory_phone") == (string) 'true'}} required="required" {{/if}}  class="{{$classAttributeTmp27}}"></input>
													<label for="client_phone" class="control-label">{{$txt['108535::n56203_006b']}}
													</label>
													<span class="form-control-feedback"></span>
												</div>
												<div {{assign "classAttributeTmp28" ""}}{{capture name="classAttributeTmp28" assign="classAttributeTmp28"}}has-feedback has-required col-sm-6 col-12{{/capture}}{{if !( $xml->getItem("/shop/page/client-data/contact_data/@mandatory_email") == (string) 'true')}}{{capture name="classAttributeTmp28" assign="classAttributeTmp28"}}has-feedback {{$txt['108535::GRID_client_new_one_column']}}{{/capture}}{{/if}}  class="{{$classAttributeTmp28}}">
													<input {{assign "classAttributeTmp29" ""}}  id="client_email" type="email"{{capture name="classAttributeTmp29" assign="classAttributeTmp29"}}form-control validate{{/capture}} name="client_email" {{if !( $xml->getItem("/shop/page/client-data/contact_data/@email") == (string) '')}}{{capture name="classAttributeTmp29" assign="classAttributeTmp29"}}form-control validate focused{{/capture}}{{/if}} value="{{$xml->getItemEscape("/shop/page/client-data/contact_data/@email")}}" {{if $xml->getItem("/shop/page/client-data/contact_data/@mandatory_email") == (string) 'true'}} required="required" {{/if}}  class="{{$classAttributeTmp29}}"></input>
													<label for="client_email" class="control-label">{{$txt['108535::n56203_006a']}}
													</label>
													<span class="form-control-feedback"></span>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-12" id="delivery_box_switcher">
									<div class="cn_wrapper">
										<div class="form-group row">
											<input type="checkbox" name="deliver_to_billingaddr" id="deliver_to_billingaddr" value="0" {{if ( $xml->getItem("/shop/page/client-data/delivery_data/@use") == (string) 'yes')}} checked="checked"{{/if}}></input>
											<label for="deliver_to_billingaddr" class="control-label">{{$txt['108535::n56203_014']}}
											</label>
										</div>
									</div>
								</div>
								<div class="col-12" id="client_new_additional" {{if $xml->getItem("/shop/page/options/countries/country[@selected='true']")}} data-active-country="{{$xml->getItemEscape("/shop/page/options/countries/country[@selected='true']/@id")}}" {{/if}}>
									{{if  $xml->getItem("basket/@login")}}
										{{foreach from=$xml->getList("page/client-data/addresses-list/address[@default = 'yes']") item=loop899}}
											<div class="additional_box cn_wrapper">
												{{if count( $loop899->getList("/shop/page/client-data/addresses-list/address"))  gt (string) 1}}
													<div class="form-group addresses_list_wrapper">
														{{foreach from=$loop899->getList("/shop/page/client-data/addresses-list/address[@default = 'yes']") item=loop905}}
															<input type="hidden" name="delivery_id" id="delivery_id" class="addresse_id" value="{{$loop905->getItemEscape("@id")}}"></input>
															<input type="hidden" name="default_delivery_id" id="default_delivery_id" value="{{$loop905->getItemEscape("@id")}}"></input>
														{{/foreach}}
														<div class="col-12 px-0">
															<div class="dropdown cn_dropdown">
																<button class="btn-small dropdown-toggle" type="button" id="dropdownAdressMenu" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">{{$txt['108535::n56703_017g']}}
																</button>
																<ul class="dropdown-menu addresses-list" aria-labelledby="dropdownAdressMenu">
																	{{foreach from=$loop899->getList("/shop/page/client-data/addresses-list/address") item=loop917}}
																		<li>
																			<a data-wrapper="#client_new_additional" data-id="{{$loop917->getItemEscape("@id")}}" data-zipcode="{{$loop917->getItemEscape("@zipcode")}}" data-phone="{{$loop917->getItemEscape("@phone")}}" data-region_id="{{$loop917->getItemEscape("@region_id")}}" data-country_name="{{$loop917->getItemEscape("@country_name")}}" data-removable="{{$loop917->getItemEscape("@removable")}}" data-editable="{{$loop917->getItemEscape("@editable")}}" data-used="{{$loop917->getItemEscape("@used")}}" {{if $loop917->getItem("@default") == (string) 'yes'}} class="active"{{/if}} href="#address_{{$loop917->getItemEscape("@id")}}">
																				<span>
																					{{if !( $loop917->getItem("@additional")  == (string) '')}}
																						{{$loop917->getItemEscape("@additional")}}{{literal}}{{/literal}}
																					{{/if}}
																					{{$loop917->getItemEscape("@firstname")}}{{literal}}{{/literal}}{{$loop917->getItemEscape("@lastname")}}</span>
																				<span>{{$loop917->getItemEscape("@street")}}</span>
																				<span>{{$loop917->getItemEscape("@zipcode")}}{{literal}}{{/literal}}{{$loop917->getItemEscape("@city")}}</span>
																				<span style="display:none">
																					<span class="data-additional">{{$loop917->getItemEscape("@additional")}}</span>
																					<span class="data-firstname">{{$loop917->getItemEscape("@firstname")}}</span>
																					<span class="data-lastname">{{$loop917->getItemEscape("@lastname")}}</span>
																					<span class="data-street">{{$loop917->getItemEscape("@street")}}</span>
																					<span class="data-city">{{$loop917->getItemEscape("@city")}}</span></span></a>
																		</li>
																	{{/foreach}}
																</ul>
															</div>
														</div>
													</div>
												{{/if}}
												<div class="form-group">
													<div class="row">
														<div class="has-feedback has-required col-sm-6 col-12">
															<input id="additional_firstname" type="text" class="form-control validate focused" name="additional_firstname" value="{{$loop899->getItemEscape("@firstname")}}" {{if $loop899->getItem("@editable") == (string) 'no'}} disabled="disabled"{{/if}} required="required"></input>
															<label for="additional_firstname" class="control-label">{{$txt['108535::n56703_017']}}
															</label>
															<span class="form-control-feedback"></span>
														</div>
														<div {{assign "classAttributeTmp30" ""}}{{capture name="classAttributeTmp30" assign="classAttributeTmp30"}}has-feedback has-required col-sm-6 col-12{{/capture}}{{if !( $loop899->getItem("/shop/page/client-data/profile_data/@mandatory_lastname") == (string) 'true')}}{{capture name="classAttributeTmp30" assign="classAttributeTmp30"}}has-feedback {{$txt['108535::GRID_client_new_two_column']}}{{/capture}}{{/if}}  class="{{$classAttributeTmp30}}">
															<input id="additional_lastname" type="text" class="form-control validate focused" name="additional_lastname" value="{{$loop899->getItemEscape("@lastname")}}" {{if $loop899->getItem("@editable") == (string) 'no'}} disabled="disabled"{{/if}}{{if $loop899->getItem("/shop/page/client-data/profile_data/@mandatory_lastname") == (string) 'true'}} required="required"{{/if}}></input>
															<label for="additional_lastname" class="control-label">{{$txt['108535::n56703_018']}}
															</label>
															<span class="form-control-feedback"></span>
														</div>
													</div>
												</div>
												<div class="form-group row">
													<div class="has-feedback col-12">
														<input {{assign "classAttributeTmp31" ""}}  id="additional_additional" type="text"{{capture name="classAttributeTmp31" assign="classAttributeTmp31"}}form-control validate {{/capture}} name="additional_additional" {{if !( $loop899->getItem("@additional") == (string) '')}}{{capture name="classAttributeTmp31" assign="classAttributeTmp31"}}form-control validate focused{{/capture}}{{/if}} value="{{$loop899->getItemEscape("@additional")}}" {{if $loop899->getItem("@editable") == (string) 'no'}} disabled="disabled"{{/if}}  class="{{$classAttributeTmp31}}"></input>
														<label for="additional_additional" class="control-label">{{$txt['108535::n56703_016']}}
														</label>
														<span class="form-control-feedback"></span>
													</div>
												</div>
												<div class="form-group row">
													<div class="has-feedback has-required col-12">
														<input id="additional_street" type="text" class="form-control validate focused" name="additional_street" data-serialize="#additional_region" value="{{$loop899->getItemEscape("@street")}}" {{if $loop899->getItem("@editable") == (string) 'no'}} disabled="disabled"{{/if}} required="required"></input>
														<label for="additional_street" class="control-label">{{$txt['108535::n56703_020']}}
														</label>
														<span class="form-control-feedback"></span>
													</div>
												</div>
												<div class="form-group">
													<div class="row">
														<div id="delivery_zipcode_wrapper" class="has-feedback has-required col-sm-6 col-12">
															<input id="additional_zipcode" type="text" class="form-control validate focused" name="additional_zipcode" data-serialize="#additional_region" value="{{$loop899->getItemEscape("@zipcode")}}" {{if $loop899->getItem("@editable") == (string) 'no'}} disabled="disabled"{{/if}} required="required"></input>
															<label for="additional_zipcode" class="control-label">{{$txt['108535::n56203_011']}}
															</label>
															<span class="form-control-feedback"></span>
														</div>
														<div id="delivery_city_wrapper" class="has-feedback has-required col-sm-6 col-12">
															<input id="additional_city" type="text" class="form-control validate focused" name="additional_city" value="{{$loop899->getItemEscape("@city")}}" {{if $loop899->getItem("@editable") == (string) 'no'}} disabled="disabled"{{/if}} required="required"></input>
															<label for="additional_city" class="control-label">{{$txt['108535::n56203_011a']}}
															</label>
															<span class="form-control-feedback"></span>
														</div>
													</div>
												</div>
												{{if count( $loop899->getList("/shop/page/options/countries/country"))  == (string) 1 and ( $loop899->getItem("/shop/page/options/countries/country/@id")  == (string) 1143020003)}}
													<input id="additional_region" type="hidden" name="additional_region" value="{{$loop899->getItemEscape("/shop/page/options/countries/country/@id")}}" data-vat_company="{{$loop899->getItemEscape("/shop/page/options/countries/country/@vat_company")}}" data-vat="{{$loop899->getItemEscape("/shop/page/options/countries/country/@vat")}}"></input>
												{{else}}
													<div class="form-group row country">
														<div class="has-feedback col-12">
															<select class="form-control delivery_countries focused" id="additional_region" name="additional_region" data-revalidate="#additional_street,#additional_zipcode" {{if $loop899->getItem("@editable") == (string) 'no'}} disabled="disabled"{{/if}}>
																{{foreach from=$loop899->getList("/shop/page/options/countries/country") item=loop1050}}
																	<option value="{{$loop1050->getItemEscape("@id")}}" data-vat_company="{{$loop1050->getItemEscape("@vat_company")}}" data-vat="{{$loop1050->getItemEscape("@vat")}}" {{if $loop1050->getItem("@id") == (string) $loop1050->getItem("/shop/page/options/countries/@delivery_active") }} selected="selected" {{/if}}>{{$loop1050->getItemEscape("@name")}}
																	</option>
																{{/foreach}}
															</select>
															<label for="additional_region" class="control-label">{{$txt['108535::n56703_022']}}
															</label>
														</div>
													</div>
												{{/if}}
												{{capture name="default_province" assign="default_province"}}
													{{$loop899->getItemEscape("@province")}}
												{{/capture}}
												{{capture name="editable_province" assign="editable_province"}}
													{{$loop899->getItemEscape("@editable")}}
												{{/capture}}
												{{foreach from=$loop899->getList("/shop/page/options/countries/country") item=loop1072}}
													{{if  $loop1072->getItem("provinces/province")}}
														<div {{assign "styleAttributeTmp2" ""}}  class="form-group client_provinces"{{capture name="styleAttributeTmp2" assign="styleAttributeTmp2"}}display: none;{{/capture}}{{if $loop1072->getItem("@id") == (string) $loop1072->getItem("/shop/page/options/countries/@delivery_active")}}{{capture name="styleAttributeTmp2" assign="styleAttributeTmp2"}}display: block;{{/capture}}{{/if}} id="additional_region_{{$loop1072->getItemEscape("@id")}}"  style="{{$styleAttributeTmp2}}">
															<label for="additional_province" class="control-label">
																{{foreach from=$loop1072->getList("province_types/type") item=loop1080}}
																	{{if  $loop1080->getItem("text()")  == (string) 'state'}}
																		{{$txt['108535::n56203_013_state']}}
																	{{elseif  $loop1080->getItem("text()")  == (string) 'province'}}
																		{{$txt['108535::n56203_013_province']}}
																	{{elseif  $loop1080->getItem("text()")  == (string) 'territory'}}
																		{{$txt['108535::n56203_013_territory']}}
																	{{else}}
																		{{$txt['108535::n56203_013_region']}}
																	{{/if}}
																	{{if !( $loop1080@iteration   == (string)  $loop1080@total )}}
																		{{$txt['108535::n56203_013_sep']}}
																	{{/if}}
																{{/foreach}}
																{{$txt['108535::n56203_013_sep2']}}
															</label>
															<div class="{{$txt['108535::72793clinetnew_04']}}">
																<select class="form-control" name="additional_province" {{if !( $loop1072->getItem("@id") == (string) $loop1072->getItem("/shop/page/options/countries/@delivery_active"))}} disabled="disabled"{{/if}}{{if $editable_province == (string) 'no'}} disabled="disabled"{{/if}}>
																	{{foreach from=$loop1072->getList("provinces/province") item=loop1091}}
																		<option value="{{$loop1091->getItemEscape("@id")}}" {{if $loop1091->getItem("@id") == (string) $default_province}} selected="selected" {{/if}}>{{$loop1091->getItemEscape("@name")}}
																		</option>
																	{{/foreach}}
																</select>
															</div>
														</div>
													{{/if}}
												{{/foreach}}
												<div class="form-group row">
													<div {{assign "classAttributeTmp32" ""}}{{capture name="classAttributeTmp32" assign="classAttributeTmp32"}}has-feedback has-required col-12{{/capture}}{{if !( $loop899->getItem("/shop/page/client-data/contact_data/@mandatory_phone") == (string) 'true')}}{{capture name="classAttributeTmp32" assign="classAttributeTmp32"}}has-feedback {{$txt['108535::GRID_client_new_one_column']}}{{/capture}}{{/if}}  class="{{$classAttributeTmp32}}">
														<input {{assign "classAttributeTmp33" ""}}  id="additional_phone" type="tel"{{capture name="classAttributeTmp33" assign="classAttributeTmp33"}}form-control validate{{/capture}} name="additional_phone" data-serialize="#additional_region" {{if !( $loop899->getItem("@phone") == (string) '')}}{{capture name="classAttributeTmp33" assign="classAttributeTmp33"}}form-control validate focused{{/capture}}{{/if}} value="{{$loop899->getItemEscape("@phone")}}" {{if $loop899->getItem("@editable") == (string) 'no'}} disabled="disabled"{{/if}}{{if $loop899->getItem("/shop/page/client-data/contact_data/@mandatory_phone") == (string) 'true'}} required="required" {{/if}}  class="{{$classAttributeTmp33}}"></input>
														<label for="additional_phone" class="control-label">{{$txt['108535::n56703_021d']}}
														</label>
														<span class="form-control-feedback"></span>
													</div>
												</div>
												<div class="form-group button-form">
													<div class="col-12 px-0">
														<button id="delete_delivery_address" class="btn-small delete_address" {{if !( $loop899->getItem("@removable") == (string) 'yes')}} style="display: none;"{{/if}}>{{$txt['108535::delete_address_56203a']}}
														</button>
														<button id="new_delivery_address" class="btn-small new_address">{{$txt['108535::n56203_015add']}}
														</button>
														<button id="save_delivery_address" type="submit" class="btn-small save_address" style="display:none;">{{$txt['108535::n56203_015save']}}
														</button>
													</div>
												</div>
											</div>
										{{/foreach}}
									{{/if}}
									{{if !( $xml->getItem("/shop/page/client-data/@edit")  == (string) 'true') and ( $xml->getItem("/shop/page/client-data/delivery_data/@use")  neq (string) 'hide')}}
										<div class="delivery_box cn_wrapper">
											{{foreach from=$xml->getList("/shop/page/client-data/delivery_data") item=loop1148}}
												<div class="form-group">
													<div class="row">
														<div class="has-feedback has-required col-sm-6 col-12">
															<input id="delivery_firstname" type="text" class="form-control validate" name="delivery_firstname" value="{{$loop1148->getItemEscape("@firstname")}}" maxlength="{{$loop1148->getItemEscape("/shop/page/input_option/@name")}}" {{if $loop1148->getItem("@use") == (string) 'no'}} disabled="disabled"{{/if}} required="required"></input>
															<label for="delivery_firstname" class="control-label">{{$txt['108535::n56203_017']}}
															</label>
															<span class="form-control-feedback"></span>
														</div>
														<div {{assign "classAttributeTmp34" ""}}{{capture name="classAttributeTmp34" assign="classAttributeTmp34"}}has-feedback has-required col-sm-6 col-12{{/capture}}{{if $loop1148->getItem("/shop/page/client-data/profile_data/@mandatory_lastname") == (string) 'true'}}{{capture name="classAttributeTmp34" assign="classAttributeTmp34"}}has-feedback {{$txt['108535::GRID_client_new_two_column']}}{{/capture}}{{/if}}  class="{{$classAttributeTmp34}}">
															<input id="delivery_lastname" type="text" class="form-control validate" name="delivery_lastname" value="{{$loop1148->getItemEscape("@lastname")}}" maxlength="{{$loop1148->getItemEscape("/shop/page/input_option/@name")}}" {{if $loop1148->getItem("@use") == (string) 'no'}} disabled="disabled"{{/if}}{{if $loop1148->getItem("/shop/page/client-data/profile_data/@mandatory_lastname") == (string) 'true'}} required="required"{{/if}}></input>
															<label for="delivery_lastname" class="control-label">{{$txt['108535::n56703_018']}}
															</label>
															<span class="form-control-feedback"></span>
														</div>
													</div>
												</div>
												<div class="form-group row">
													<div class="has-feedback col-12">
														<input id="delivery_additional" type="text" class="form-control validate" name="delivery_additional" value="{{$loop1148->getItemEscape("@additional")}}" maxlength="{{$loop1148->getItemEscape("/shop/page/input_option/@additional")}}" {{if $loop1148->getItem("@use") == (string) 'no'}} disabled="disabled"{{/if}}></input>
														<label for="delivery_additional" class="control-label">{{$txt['108535::n56703_016']}}
														</label>
														<span class="form-control-feedback"></span>
													</div>
												</div>
												<div class="form-group row">
													<div class="has-feedback has-required col-12">
														<input id="delivery_street" type="text" class="form-control validate" name="delivery_street" data-serialize="#delivery_region" value="{{$loop1148->getItemEscape("@street")}}" maxlength="{{$loop1148->getItemEscape("/shop/page/input_option/@addres")}}" {{if $loop1148->getItem("@use") == (string) 'no'}} disabled="disabled"{{/if}} required="required"></input>
														<label for="delivery_street" class="control-label">{{$txt['108535::n56703_020']}}
														</label>
														<span class="form-control-feedback"></span>
													</div>
												</div>
												<div class="form-group">
													<div class="row">
														<div id="new_delivery_zipcode_wrapper" class="has-feedback has-required col-sm-6 col-12">
															<input id="delivery_zipcode" type="text" class="form-control validate" name="delivery_zipcode" data-serialize="#delivery_region" value="{{$loop1148->getItemEscape("@zipcode")}}" maxlength="{{$loop1148->getItemEscape("/shop/page/input_option/@zipcode")}}" {{if $loop1148->getItem("@use") == (string) 'no'}} disabled="disabled"{{/if}} required="required"></input>
															<label for="delivery_zipcode" class="control-label">{{$txt['108535::n56203_011']}}
															</label>
															<span class="form-control-feedback"></span>
														</div>
														<div id="new_delivery_city_wrapper" class="has-feedback has-required col-sm-6 col-12">
															<input id="delivery_city" type="text" class="form-control validate" name="delivery_city" value="{{$loop1148->getItemEscape("@city")}}" maxlength="{{$loop1148->getItemEscape("/shop/page/input_option/@city")}}" {{if $loop1148->getItem("@use") == (string) 'no'}} disabled="disabled"{{/if}} required="required"></input>
															<label for="delivery_city" class="control-label">{{$txt['108535::n56203_011a']}}
															</label>
															<span class="form-control-feedback"></span>
														</div>
													</div>
												</div>
												{{if count( $loop1148->getList("/shop/page/options/countries/country"))  == (string) 1 and ( $loop1148->getItem("/shop/page/options/countries/country/@id")  == (string) 1143020003)}}
													<input id="delivery_region" type="hidden" name="delivery_region" value="{{$loop1148->getItemEscape("/shop/page/options/countries/country/@id")}}" data-vat_company="{{$loop1148->getItemEscape("/shop/page/options/countries/country/@vat_company")}}" data-vat="{{$loop1148->getItemEscape("/shop/page/options/countries/country/@vat")}}" {{if ( $loop1148->getItem("/shop/page/client-data/delivery_data/@use") == (string) 'no')}} disabled="disabled" {{/if}}></input>
												{{else}}
													<div class="form-group row country">
														<div class="has-feedback col-12">
															<select class="form-control delivery_countries focused" id="delivery_region" name="delivery_region" data-revalidate="#delivery_street,#delivery_zipcode" {{if ( $loop1148->getItem("/shop/page/client-data/delivery_data/@use") == (string) 'no')}} disabled="disabled" {{/if}}>
																{{foreach from=$loop1148->getList("/shop/page/options/countries/country") item=loop1259}}
																	<option value="{{$loop1259->getItemEscape("@id")}}" data-vat_company="{{$loop1259->getItemEscape("@vat_company")}}" data-vat="{{$loop1259->getItemEscape("@vat")}}" {{if ( $loop1259->getItem("@id") == (string) $loop1259->getItem("/shop/page/client-data/delivery_data/@region")) or ( $loop1259->getItem("@selected") == (string) 'true')}} selected="selected" {{/if}}>{{$loop1259->getItemEscape("@name")}}
																	</option>
																{{/foreach}}
															</select>
															<label for="delivery_region" class="control-label">{{$txt['108535::n56703_022']}}
															</label>
														</div>
													</div>
												{{/if}}
												{{foreach from=$loop1148->getList("/shop/page/options/countries/country") item=loop1279}}
													{{if  $loop1279->getItem("provinces/province")}}
														<div class="form-group client_provinces" style="display: none;" id="delivery_region_{{$loop1279->getItemEscape("@id")}}">
															<label for="delivery_province" class="control-label">
																{{foreach from=$loop1279->getList("province_types/type") item=loop1285}}
																	{{if  $loop1285->getItem("text()")  == (string) 'state'}}
																		{{$txt['108535::n56203_013_state']}}
																	{{elseif  $loop1285->getItem("text()")  == (string) 'province'}}
																		{{$txt['108535::n56203_013_province']}}
																	{{elseif  $loop1285->getItem("text()")  == (string) 'territory'}}
																		{{$txt['108535::n56203_013_territory']}}
																	{{else}}
																		{{$txt['108535::n56203_013_region']}}
																	{{/if}}
																	{{if !( $loop1285@iteration   == (string)  $loop1285@total )}}
																		{{$txt['108535::n56203_013_sep']}}
																	{{/if}}
																{{/foreach}}
																{{$txt['108535::n56203_013_sep2']}}
															</label>
															<div class="{{$txt['108535::72793clinetnew_04']}}">
																<select class="form-control" name="delivery_province" disabled="disabled">
																	{{foreach from=$loop1279->getList("provinces/province") item=loop1295}}
																		<option value="{{$loop1295->getItemEscape("@id")}}" {{if ( $loop1295->getItem("@id") == (string) $loop1295->getItem("/shop/page/client-data/invoice_data/@province")) or ( $loop1295->getItem("@selected") == (string) 'true')}} selected="selected" {{/if}}>{{$loop1295->getItemEscape("@name")}}
																		</option>
																	{{/foreach}}
																</select>
															</div>
														</div>
													{{/if}}
												{{/foreach}}
												<div class="form-group row">
													<div {{assign "classAttributeTmp35" ""}}{{capture name="classAttributeTmp35" assign="classAttributeTmp35"}}has-feedback has-required col-12{{/capture}}{{if !( $loop1148->getItem("/shop/page/client-data/contact_data/@mandatory_phone") == (string) 'true')}}{{capture name="classAttributeTmp35" assign="classAttributeTmp35"}}has-feedback {{$txt['108535::GRID_client_new_one_column']}}{{/capture}}{{/if}}  class="{{$classAttributeTmp35}}">
														<input id="delivery_phone" type="text" class="form-control validate" name="delivery_phone" data-serialize="#delivery_region" value="{{$loop1148->getItemEscape("@phone")}}" maxlength="{{$loop1148->getItemEscape("/shop/page/input_option/@phone")}}" {{if $loop1148->getItem("@use") == (string) 'no'}} disabled="disabled"{{/if}}{{if $loop1148->getItem("/shop/page/client-data/contact_data/@mandatory_phone") == (string) 'true'}} required="required" {{/if}}></input>
														<label for="delivery_phone" class="control-label">{{$txt['108535::n56703_021d']}}
														</label>
														<span class="form-control-feedback"></span>
													</div>
												</div>
											{{/foreach}}
										</div>
									{{/if}}
								</div>
								{{capture name="show_invoice_test" assign="show_invoice_test"}}
									{{$txt['108535::n56703_021show_invoice_test']}}
								{{/capture}}
								{{if  $xml->getItem("/shop/page/client-data/invoice_data/@allow_another_adress") or $show_invoice_test  == (string) 'true'}}
									<div class="col-12" id="invoice_box_switcher">
										<div class="cn_wrapper">
											<div class="form-group row">
												<input type="checkbox" name="invoice_to_billingaddr" id="invoice_to_billingaddr" value="0" {{if $xml->getItem("/shop/page/client-data/invoice_data-list")}} checked="checked"{{/if}}></input>
												<label for="invoice_to_billingaddr" class="control-label">{{$txt['108535::n56203_014fv']}}
												</label>
											</div>
										</div>
									</div>
									<div class="col-12" id="client_new_invoice">
										<div class="additional_box cn_wrapper">
											{{if count( $xml->getList("/shop/page/client-data/invoice_data-list/address"))  gt (string) 1}}
												<div class="form-group addresses_list_wrapper">
													{{foreach from=$xml->getList("/shop/page/client-data/invoice_data-list/address[@default = 'yes']") item=loop1356}}
														<input type="hidden" name="invoice_id" id="invoice_id" class="addresse_id" value="{{$loop1356->getItemEscape("@id")}}"></input>
														<input type="hidden" name="default_invoice_id" id="default_invoice_id" value="{{$loop1356->getItemEscape("@id")}}"></input>
													{{/foreach}}
													<div class="col-12 px-0">
														<div class="dropdown cn_dropdown">
															<button class="btn-small dropdown-toggle" type="button" id="dropdownAdressMenu" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">{{$txt['108535::n56703_017g']}}
															</button>
															<ul class="dropdown-menu invoice_data-list" aria-labelledby="dropdownAdressMenu">
																{{foreach from=$xml->getList("/shop/page/client-data/invoice_data-list/address") item=loop1368}}
																	<li>
																		<a data-wrapper="#client_new_invoice" data-id="{{$loop1368->getItemEscape("@id")}}" data-zipcode="{{$loop1368->getItemEscape("@zipcode")}}" data-phone="{{$loop1368->getItemEscape("@phone")}}" data-region_id="{{$loop1368->getItemEscape("@region_id")}}" data-country_name="{{$loop1368->getItemEscape("@country_name")}}" data-removable="{{$loop1368->getItemEscape("@removable")}}" data-editable="{{$loop1368->getItemEscape("@editable")}}" data-used="{{$loop1368->getItemEscape("@used")}}" {{if $loop1368->getItem("@default") == (string) 'yes'}} class="active"{{/if}} href="#address_{{$loop1368->getItemEscape("@id")}}">
																			<span>
																				{{if !( $loop1368->getItem("@additional")  == (string) '')}}
																					{{$loop1368->getItemEscape("@additional")}}{{literal}}{{/literal}}
																				{{/if}}
																				{{$loop1368->getItemEscape("@firstname")}}{{literal}}{{/literal}}{{$loop1368->getItemEscape("@lastname")}}</span>
																			<span>{{$loop1368->getItemEscape("@street")}}</span>
																			<span>{{$loop1368->getItemEscape("@zipcode")}}{{literal}}{{/literal}}{{$loop1368->getItemEscape("@city")}}</span>
																			<span style="display:none">
																				<span class="data-additional">{{$loop1368->getItemEscape("@additional")}}</span>
																				<span class="data-firstname">{{$loop1368->getItemEscape("@firstname")}}</span>
																				<span class="data-lastname">{{$loop1368->getItemEscape("@lastname")}}</span>
																				<span class="data-street">{{$loop1368->getItemEscape("@street")}}</span>
																				<span class="data-city">{{$loop1368->getItemEscape("@city")}}</span></span></a>
																	</li>
																{{/foreach}}
															</ul>
														</div>
													</div>
												</div>
											{{/if}}
											<div class="form-group row">
												<div class="has-feedback has-required col-12">
													<input type="text" class="form-control validate" name="invoice_firm" id="invoice_firm" required="required" maxlength="{{$xml->getItemEscape("/shop/page/input_option/@additional")}}" value="{{$xml->getItemEscape("/shop/page/client-data/invoice_data-list/address[@default = 'yes']/@additional")}}" {{if $xml->getItem("page/invoice-data/@disallow_change_company_data") == (string) 'true'}} readonly="readonly"{{/if}}></input>
													<label for="invoice_firm" class="control-label">{{$txt['108535::n56203_004']}}
													</label>
													<span class="form-control-feedback"></span>
												</div>
											</div>
											{{if  $xml->getItem("/shop/page/client-data/nip/@active")  neq (string) 'hide'}}
												<div {{assign "classAttributeTmp36" ""}}{{capture name="classAttributeTmp36" assign="classAttributeTmp36"}}form-group row{{/capture}}{{if $xml->getItem("page/invoice-data/@disallow_change_company_data") == (string) 'true'}}{{capture name="classAttributeTmp36" assign="classAttributeTmp36"}}form-group readonly{{/capture}}{{/if}}  class="{{$classAttributeTmp36}}">
													<div class=" has-feedback {{if $xml->getItem("/shop/page/invoice-data/nip/@active") == (string) 'required'}}has-required {{/if}}{{$txt['108535::GRID_client_new_one_column']}} ">
														<input type="text" class="form-control validate" name="invoice_nip" id="invoice_nip" data-serialize="#invoice_region" {{if $xml->getItem("/shop/page/client-data/nip/@active") == (string) 'required'}} required="required" {{/if}} maxlength="{{$xml->getItemEscape("/shop/page/input_option/@tax_number")}}" value="{{$xml->getItemEscape("/shop/page/client-data/invoice_data-list/address[@default = 'yes']/@nip")}}" {{if $xml->getItem("page/invoice-data/@disallow_change_company_data") == (string) 'true'}} readonly="readonly"{{/if}}></input>
														<label for="invoice_nip" class="control-label">{{$txt['108535::n56203_005']}}
														</label>
														<span class="form-control-feedback"></span>
													</div>
												</div>
											{{/if}}
											<div {{assign "classAttributeTmp37" ""}}{{capture name="classAttributeTmp37" assign="classAttributeTmp37"}}form-group{{/capture}}{{if $xml->getItem("page/invoice-data/@disallow_change_company_data") == (string) 'true'}}{{capture name="classAttributeTmp37" assign="classAttributeTmp37"}}form-group readonly{{/capture}}{{/if}}  class="{{$classAttributeTmp37}}">
												<div class="row">
													<div class="has-feedback has-required col-sm-6 col-12">
														<input id="invoice_firstname" type="text" class="form-control validate" name="invoice_firstname" maxlength="{{$xml->getItemEscape("/shop/page/input_option/@name")}}" value="{{$xml->getItemEscape("/shop/page/client-data/invoice_data-list/address[@default = 'yes']/@firstname")}}" {{if $xml->getItem("page/invoice-data/@disallow_change_company_data") == (string) 'true'}} readonly="readonly"{{/if}} required="required"></input>
														<label for="invoice_firstname" class="control-label">{{$txt['108535::n56203_002']}}
														</label>
														<span class="form-control-feedback"></span>
													</div>
													<div {{assign "classAttributeTmp38" ""}}{{capture name="classAttributeTmp38" assign="classAttributeTmp38"}}has-feedback has-required col-sm-6 col-12{{/capture}}{{if !( $xml->getItem("/shop/page/invoice-data/profile_data/@mandatory_lastname") == (string) 'true')}}{{capture name="classAttributeTmp38" assign="classAttributeTmp38"}}has-feedback {{$txt['108535::GRID_client_new_two_column']}}{{/capture}}{{/if}}  class="{{$classAttributeTmp38}}">
														<input id="invoice_lastname" type="text" class="form-control validate" name="invoice_lastname" maxlength="{{$xml->getItemEscape("/shop/page/input_option/@lastname")}}" value="{{$xml->getItemEscape("/shop/page/client-data/invoice_data-list/address[@default = 'yes']/@lastname")}}" {{if $xml->getItem("page/invoice-data/@disallow_change_company_data") == (string) 'true'}} readonly="readonly"{{/if}}{{if $xml->getItem("/shop/page/invoice-data/profile_data/@mandatory_lastname") == (string) 'true'}} required="required"{{/if}}></input>
														<label for="invoice_lastname" class="control-label">{{$txt['108535::n56203_003']}}
														</label>
														<span class="form-control-feedback"></span>
													</div>
												</div>
											</div>
											<div {{assign "classAttributeTmp39" ""}}{{capture name="classAttributeTmp39" assign="classAttributeTmp39"}}form-group row{{/capture}}{{if $xml->getItem("page/invoice-data/@disallow_change_company_data") == (string) 'true'}}{{capture name="classAttributeTmp39" assign="classAttributeTmp39"}}form-group row readonly{{/capture}}{{/if}}  class="{{$classAttributeTmp39}}">
												<div class="has-feedback has-required col-12">
													<input id="invoice_street" type="text" class="form-control validate" name="invoice_street" data-serialize="#client_region" maxlength="{{$xml->getItemEscape("/shop/page/input_option/@addres")}}" value="{{$xml->getItemEscape("/shop/page/client-data/invoice_data-list/address[@default = 'yes']/@street")}}" {{if $xml->getItem("page/invoice-data/@disallow_change_company_data") == (string) 'true'}} readonly="readonly"{{/if}} required="required"></input>
													<label for="invoice_street" class="control-label">{{$txt['108535::n56203_010']}}
													</label>
													<span class="form-control-feedback"></span>
												</div>
											</div>
											<div {{assign "classAttributeTmp40" ""}}{{capture name="classAttributeTmp40" assign="classAttributeTmp40"}}form-group{{/capture}}{{if $xml->getItem("page/invoice-data/@disallow_change_company_data") == (string) 'true'}}{{capture name="classAttributeTmp40" assign="classAttributeTmp40"}}form-group readonly{{/capture}}{{/if}}  class="{{$classAttributeTmp40}}">
												<div class="row">
													<div id="invoice_zipcode_wrapper" class="has-feedback has-required col-sm-6 col-12">
														<input id="invoice_zipcode" type="text" class="form-control validate" name="invoice_zipcode" data-serialize="#invoice_region" maxlength="{{$xml->getItemEscape("/shop/page/input_option/@zipcode")}}" value="{{$xml->getItemEscape("/shop/page/client-data/invoice_data-list/address[@default = 'yes']/@zipcode")}}" {{if $xml->getItem("page/invoice-data/@disallow_change_company_data") == (string) 'true'}} readonly="readonly"{{/if}} required="required"></input>
														<label for="invoice_zipcode" class="control-label">{{$txt['108535::n56203_011']}}
														</label>
														<span class="form-control-feedback"></span>
													</div>
													<div id="invoice_city_wrapper" class="has-feedback has-required col-sm-6 col-12">
														<input id="invoice_city" type="text" class="form-control validate" name="invoice_city" maxlength="{{$xml->getItemEscape("/shop/page/input_option/@city")}}" value="{{$xml->getItemEscape("/shop/page/client-data/invoice_data-list/address[@default = 'yes']/@city")}}" {{if $xml->getItem("page/invoice-data/@disallow_change_company_data") == (string) 'true'}} readonly="readonly"{{/if}} required="required"></input>
														<label for="invoice_city" class="control-label">{{$txt['108535::n56203_011a']}}
														</label>
														<span class="form-control-feedback"></span>
													</div>
												</div>
											</div>
											{{if count( $xml->getList("/shop/page/options/countries/country"))  == (string) 1 and ( $xml->getItem("/shop/page/options/countries/country/@id")  == (string) 1143020003)}}
												<input id="invoice_region" type="hidden" name="invoice_region" value="{{$xml->getItemEscape("/shop/page/client-data/invoice_data-list/address[@default = 'yes']/@region")}}" data-vat_company="{{$xml->getItemEscape("/shop/page/options/countries/country/@vat_company")}}" data-vat="{{$xml->getItemEscape("/shop/page/options/countries/country/@vat")}}"></input>
											{{else}}
												<div {{assign "classAttributeTmp41" ""}}{{capture name="classAttributeTmp41" assign="classAttributeTmp41"}}form-group row country{{/capture}}{{if $xml->getItem("page/invoice-data/@disallow_change_company_data") == (string) 'true'}}{{capture name="classAttributeTmp41" assign="classAttributeTmp41"}}form-group row readonly{{/capture}}{{/if}}  class="{{$classAttributeTmp41}}">
													<div class="has-feedback col-12">
														<select class="form-control delivery_countries focused" id="invoice_region" name="invoice_region" data-revalidate="#invoice_street,#invoice_zipcode" {{if $xml->getItem("page/invoice-data/@disallow_change_company_data") == (string) 'true'}} readonly="readonly"{{/if}}>
															{{foreach from=$xml->getList("/shop/page/options/countries/country") item=loop1542}}
																<option value="{{$loop1542->getItemEscape("@id")}}" data-vat_company="{{$loop1542->getItemEscape("@vat_company")}}" data-vat="{{$loop1542->getItemEscape("@vat")}}" {{if $loop1542->getItem("/shop/page/client-data/invoice_data-list/address[@default = 'yes']/@region") gt (string) 0}}{{if $loop1542->getItem("@id") == (string) $loop1542->getItem("/shop/page/client-data/invoice_data-list/address[@default = 'yes']/@region")}} selected="selected" {{/if}}{{else}}{{if $loop1542->getItem("@selected") == (string) 'true'}} selected="selected" {{/if}}{{/if}}>{{$loop1542->getItemEscape("@name")}}
																</option>
															{{/foreach}}
														</select>
														<label for="invoice_region" class="control-label">{{$txt['108535::n56203_013']}}
														</label>
													</div>
												</div>
											{{/if}}
											{{foreach from=$xml->getList("/shop/page/options/countries/country") item=loop1568}}
												{{if  $loop1568->getItem("provinces/province")}}
													<div {{assign "classAttributeTmp42" ""}}{{assign "styleAttributeTmp3" ""}}{{capture name="classAttributeTmp42" assign="classAttributeTmp42"}}form-group client_provinces{{/capture}}{{capture name="styleAttributeTmp3" assign="styleAttributeTmp3"}}display: none;{{/capture}}{{if $loop1568->getItem("@selected") == (string) 'true'}}{{capture name="styleAttributeTmp3" assign="styleAttributeTmp3"}}display: block;{{/capture}}{{/if}} id="invoice_region_{{$loop1568->getItemEscape("@id")}}" {{if $loop1568->getItem("page/invoice-data/@disallow_change_company_data") == (string) 'true'}}{{capture name="classAttributeTmp42" assign="classAttributeTmp42"}}form-group client_provinces readonly{{/capture}}{{/if}}  style="{{$styleAttributeTmp3}}"  class="{{$classAttributeTmp42}}">
														<label for="invoice_province" class="control-label">
															{{foreach from=$loop1568->getList("province_types/type") item=loop1576}}
																{{if  $loop1576->getItem("text()")  == (string) 'state'}}
																	{{$txt['108535::n56203_013_state']}}
																{{elseif  $loop1576->getItem("text()")  == (string) 'province'}}
																	{{$txt['108535::n56203_013_province']}}
																{{elseif  $loop1576->getItem("text()")  == (string) 'territory'}}
																	{{$txt['108535::n56203_013_territory']}}
																{{else}}
																	{{$txt['108535::n56203_013_region']}}
																{{/if}}
																{{if !( $loop1576@iteration   == (string)  $loop1576@total )}}
																	{{$txt['108535::n56203_013_sep']}}
																{{/if}}
															{{/foreach}}
															{{$txt['108535::n56203_013_sep2']}}
														</label>
														<div class="{{$txt['108535::72793clinetnew_04']}}">
															<select class="form-control" name="invoice_province" {{if $loop1568->getItem("page/invoice-data/@disallow_change_company_data") == (string) 'true'}} readonly="readonly"{{/if}}{{if !( $loop1568->getItem("@selected") == (string) 'true')}} disabled="disabled"{{/if}} id="invoice_province_{{$loop1568->getItemEscape("@id")}}">
																{{foreach from=$loop1568->getList("provinces/province") item=loop1589}}
																	<option value="{{$loop1589->getItemEscape("@id")}}" {{if $loop1589->getItem("/shop/page/client-data/invoice_data-list/address[@default = 'yes']/@province") gt (string) 0}}{{if $loop1589->getItem("@id") == (string) $loop1589->getItem("/shop/page/client-data/invoice_data-list/address[@default = 'yes']/@province")}} selected="selected" {{/if}}{{else}}{{if $loop1589->getItem("@selected") == (string) 'true'}} selected="selected" {{/if}}{{/if}}>{{$loop1589->getItemEscape("@name")}}
																	</option>
																{{/foreach}}
															</select>
														</div>
													</div>
												{{/if}}
											{{/foreach}}
											{{if count( $xml->getList("/shop/page/client-data/invoice_data-list/address"))  gt (string) 1}}
												<div class="form-group button-form">
													<div class="col-12 px-0">
														<button id="delete_delivery_address" class="btn-small delete_address" {{if !( $xml->getItem("@removable") == (string) 'yes')}} style="display: none;"{{/if}}>{{$txt['108535::delete_address_56203a']}}
														</button>
														<button id="new_delivery_address" class="btn-small new_address">{{$txt['108535::n56203_015add']}}
														</button>
														<button id="save_delivery_address" type="submit" class="btn-small save_address" style="display:none;">{{$txt['108535::n56203_015save']}}
														</button>
													</div>
												</div>
											{{/if}}
										</div>
									</div>
								{{/if}}
								{{if $client_new_mode  neq (string) 'onceorder'}}
									<div class="col-12" id="client_new_login">
										<h2 class="big_label">{{$txt['108535::clinetnew_log']}}
										</h2>
										<div {{assign "classAttributeTmp43" ""}}{{capture name="classAttributeTmp43" assign="classAttributeTmp43"}}login_box cn_wrapper{{/capture}}{{if $xml->getItem("page/client-data/@action") == (string) 'password_token' and $client_new_mode == (string) 'edit'}}{{capture name="classAttributeTmp43" assign="classAttributeTmp43"}}login_box cn_wrapper change_password_mode{{/capture}}{{/if}}  class="{{$classAttributeTmp43}}">
											{{if $client_new_mode  == (string) 'edit'}}
												<div class="form-group has-feedback">
													<label class="control-label">{{$txt['108535::56478_cr007login1']}}
													</label>
													<div class="form-control-static {{$txt['108535::72793clinetnew_04']}}">
														<label class="radio-inline">
															<input type="radio" name="client_generate_password" id="client_generate_password1" value="y" checked="checked" {{if !( $xml->getItem("/shop/page/client-data/@register") == (string)'true')}} name="client_generate_password_n"{{/if}}></input>{{$txt['108535::56478_cr007l11']}}
														</label>
														<label class="radio-inline">
															<input type="radio" name="client_generate_password" id="client_generate_password2" value="no" {{if !( $xml->getItem("/shop/page/client-data/@register") == (string)'true')}} name="client_generate_password_n"{{/if}}></input>{{$txt['108535::cr56478_007l21']}}
														</label>
													</div>
												</div>
											{{/if}}
											<div class="form-group row">
												<div class="has-feedback {{if !( $xml->getItem("/shop/page/client-data/@edit") == (string) 'true')}}has-required {{/if}}{{$txt['108535::GRID_client_new_one_column']}}">
													<input {{assign "classAttributeTmp44" ""}}  id="client_login" type="text"{{capture name="classAttributeTmp44" assign="classAttributeTmp44"}}form-control validate{{/capture}} name="client_login" {{if !( $xml->getItem("/shop/page/client-data/profile_data/@login") == (string) '')}}{{capture name="classAttributeTmp44" assign="classAttributeTmp44"}}form-control validate focused{{/capture}}{{/if}}{{if $client_new_mode == (string) 'edit'}} disabled="disabled"{{/if}}{{if !( $xml->getItem("/shop/page/client-data/@edit") == (string) 'true')}} required="required"{{/if}} value="{{$xml->getItemEscape("/shop/page/client-data/profile_data/@login")}}"  class="{{$classAttributeTmp44}}"></input>
													<label for="client_login" class="control-label">{{$txt['108535::n56203_024']}}
													</label>
													<span class="form-control-feedback"></span>
												</div>
												<div class="form-desc col-12">{{$txt['108535::107195_login_length']}}
												</div>
											</div>
											<div class="form-group row password-group" {{if $client_new_mode == (string) 'edit'}} style="display:none;"{{/if}}>
												<div class="has-feedback {{if $xml->getItem("/shop/page/client-data/@register") == (string)'true' and $xml->getItem("/shop/page/client-data/profile_data/@mandatory_password") == (string)'true'}}has-required {{/if}}{{$txt['108535::GRID_client_new_one_column']}}">
													<input id="client_password" class="form-control validate" type="password" name="client_password" {{if $xml->getItem("/shop/page/client-data/profile_data/@max_password_length") and $xml->getItem("/shop/page/client-data/profile_data/@max_password_length") gt (string) 0}} maxlength="{{$xml->getItemEscape("/shop/page/client-data/profile_data/@max_password_length")}}" {{/if}}{{if $xml->getItem("/shop/page/client-data/@register") == (string)'true' and $xml->getItem("/shop/page/client-data/profile_data/@mandatory_password") == (string)'true'}} required="required" {{/if}}{{if $client_new_mode == (string) 'edit'}} disabled="disabled"{{/if}}></input>
													<label for="client_password" class="control-label">{{$txt['108535::n56203_025']}}
													</label>
													<span class="form-control-feedback"></span>
													<a href="#show_pass" class="show_pass">{{$txt['108535::107195_show_pass']}}</a>
													<input id="repeat_password" class="form-control validate" type="hidden" name="repeat_password" data-serialize="#client_password" {{if $xml->getItem("/shop/page/client-data/profile_data/@max_password_length") and $xml->getItem("/shop/page/client-data/profile_data/@max_password_length") gt (string) 0}} maxlength="{{$xml->getItemEscape("/shop/page/client-data/profile_data/@max_password_length")}}" {{/if}}{{if $xml->getItem("/shop/page/client-data/@register") == (string)'true' and $xml->getItem("/shop/page/client-data/profile_data/@mandatory_password") == (string)'true'}} required="required" {{/if}}{{if $client_new_mode == (string) 'edit'}} disabled="disabled"{{/if}}></input>
												</div>
												{{if  $xml->getItem("/shop/page/client-data/profile_data/@max_password_length") and  $xml->getItem("/shop/page/client-data/profile_data/@max_password_length")  gt (string) 0}}
													<div class="form-desc col-12">{{$txt['108535::107195_min_pass_length']}}
													</div>
												{{/if}}
												{{if  $xml->getItem("/shop/page/client-data/@register") == (string)'true' and  $xml->getItem("/shop/page/client-data/profile_data/@mandatory_password") neq (string)'true'}}
													<input id="cnew-generate_password" type="hidden" value="n" name="client_generate_password"/>
												{{/if}}
											</div>
											{{if  $xml->getItem("page/client-data/@action")  == (string) 'password_token' and $client_new_mode  == (string) 'edit'}}
												<p class="no_password_social_text" style="display:none;">{{$txt['108535::password_remind_desc']}}
												</p>
											{{/if}}
										</div>
									</div>
								{{/if}}
							</div>
							<div id="client_new_summary" class="row clearfix">
								<div class="col-6">
									<div class="clientnew_regulations">
										{{if ($client_new_mode  == (string) 'edit') and  $xml->getItem("login_options/service[@connected='true']")}}
											<div class="form-group">
												<div class="col-12">
													<label>{{$txt['108535::n56203_konto1']}}{{$xml->getItemEscape("login_options/service[@connected='true']/@name")}}
													</label>
													<a class="btn-connected btn-small" href="{{$xml->getItemEscape("login_options/service[@connected='true']/@disconnect_url")}}">{{$txt['108535::n56203_konto2']}}</a>
												</div>
											</div>
										{{/if}}
										{{if !( $xml->getItem("/shop/contact/owner/@vat_registered")  == (string) 'false')}}
											<div class="checkbox">
												<label>
													<input type="checkbox" name="vat_company" id="vat_company" value="1" {{if ( $xml->getItem("/shop/page/client-data/invoice_data/@vat_company") == (string) 'n') or ( $xml->getItem("/shop/page/client-data/invoice_data/@vat_company") == (string) 'p')}} checked="checked" {{/if}}{{if $xml->getItem("page/client-data/@disallow_change_company_data") == (string) 'true'}} readonly="readonly" {{/if}}></input>{{$txt['108535::n56203_014_vat']}}
												</label>
											</div>
										{{/if}}
										{{if $client_new_mode  neq (string) 'edit'}}
											<div class="checkbox">
												<label class="has-required">
													<input id="terms_agree" type="checkbox" name="terms_agree" value="0" required="required"/>
													<i class="icon-need"/>{{$xml->getItem("/shop/page/personal_data_processing_texts/personal_data")}}
												</label>
											</div>
										{{else}}
											<input id="terms_agree" type="hidden" value="1"/>
										{{/if}}
										<div class="form-group">
											<div class="checkbox">
												<label>
													<input id="client_mailing" type="checkbox" name="client_mailing" value="1" {{if $xml->getItem("/shop/page/client-data/contact_data/@mailing") neq (string) '0'}} checked="checked"{{/if}}></input>{{$txt['108535::n56203_027']}}
												</label>
											</div>
										</div>
										{{if  $xml->getItem("/shop/page/client-data/contact_data/@send_sms")}}
											<div class="form-group">
												<div class="checkbox">
													<label>
														<input id="client_send_sms" type="checkbox" name="client_send_sms" value="y" {{if $xml->getItem("/shop/page/client-data/contact_data/@send_sms") == (string) 'y' or $xml->getItem("/shop/page/client-data/contact_data/@send_sms") == (string) 'd' or $xml->getItem("/shop/page/client-data/contact_data/@send_sms") == (string) '1'}} checked="checked"{{/if}}></input>{{$txt['108535::n56203_027sms']}}
														<input type="hidden" name="client_send_sms_exists" value="1"/>
													</label>
												</div>
											</div>
										{{/if}}
									</div>
									<div class="clientnew_buttons">
										<div class="button_legend">{{$txt['108535::n56203_031b']}}
										</div>
										<button id="submit_clientnew_form" type="submit" class="btn">
											{{if $client_new_mode  == (string) 'edit'}}
												{{$txt['108535::n56203_029a']}}
											{{elseif $client_new_mode  == (string) 'register'}}
												{{$txt['108535::n56203_029']}}
											{{elseif $client_new_mode  == (string) 'onceorder'}}
												{{$txt['108535::n56203_030']}}
											{{/if}}
										</button>
									</div>
								</div>
							</div>
						</form>
						{{if  $xml->getItem("/shop/page/client-data/delivery_data/@use") == (string)'hide'}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/client-data/allow_change_company_data")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/communicates/warning[@type='illegal_characters_client_firstname']")}}
						{{/if}}
						<!--Formularz do podania kodu/karty rabatowej (client_new_rebate_code, 107674.1)-->
						{{if  $xml->getItem("/shop/page/client-data/@card_discount_program_activated") == (string)'true'}}
							<div class="rebate_card_wrap row">
								<div class="col-sm-6 col-12">
									{{if  $xml->getItem("/shop/page/client-data/@active_card") and !( $xml->getItem("/shop/page/client-data/@active_card") == (string)'')}}
										<div class="form-group">
											<span class="rebate_card_header">{{$txt['107674::72793clinetnew_rebate0']}}</span>
											<div class="has-feedback d-flex align-items-center">
												<div class="rebate_card_icon">
													<i class="icon-credit-card"/>
												</div>
												<div class="rebate_card_input">
													<input type="hidden" value="add" name="global_rebates_codes"/>
													<input {{assign "valueAttributeTmp45" ""}}  id="card_discount_code" type="text" placeholder="Numer karty rabatowej"{{capture name="valueAttributeTmp45" assign="valueAttributeTmp45"}}{{/capture}} name="card_discount_code" class="form-control focused"{{capture name="valueAttributeTmp45" assign="valueAttributeTmp45"}}{{$xml->getItemEscape("/shop/page/client-data/@active_card")}}{{/capture}}  value="{{$valueAttributeTmp45}}"></input>
													<label for="card_discount_code" class="control-label">{{$txt['107674::546457_card_number']}}
													</label>
												</div>
											</div>
										</div>
										<p class="rebate_card_desc">{{$txt['107674::72793clinetnew_rebate2']}}
										</p>
									{{else}}
										<div class="form-group">
											<div class="d-flex align-items-center">
												<div class="rebate_card_icon">
													<i class="icon-credit-card"/>
												</div>
												<div class="has-feedback rebate_card_input">
													<input type="hidden" value="add" name="global_rebates_codes"/>
													<input type="text" value="" name="card_discount_code" class="form-control" placeholder=""></input>
													<label for="card_discount_code" class="control-label">{{$txt['107674::546457_card_number']}}
													</label>
												</div>
											</div>
										</div>
										<p class="rebate_card_desc">{{$txt['107674::72793clinetnew_rebate1']}}
										</p>
									{{/if}}
								</div>
							</div>
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
