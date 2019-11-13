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
					<aside {{assign "classAttributeTmp3" ""}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}span3{{/capture}}{{if $xml->getItem("page/@type") == (string) 'projector'}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}{{$txt['73991::70925_projector_a_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'search'}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}{{$txt['73991::70925_search_a_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'main'}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}{{$txt['73991::70925_main_a_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'blog-list' or $xml->getItem("page/@type") == (string) 'blog-item'}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}{{$txt['73991::70925_blog_a_class']}}{{/capture}}{{else}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}{{$txt['73991::70925_otherwise_a_class']}}{{/capture}}{{/if}}  class="{{$classAttributeTmp3}}">
						{{include file="component_menu_filter_79091.tpl"}}
						{{include file="component_menu_buttons_77612.tpl"}}
						{{include file="component_menu_additional1_76965.tpl"}}
					</aside>
				{{/if}}
				{{if !( $xml->getItem("action/set_render/item")) or ( $xml->getItem("action/set_render/item/@name")  == (string) 'content')}}
					<div {{assign "classAttributeTmp4" ""}}  id="content"{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}span9{{/capture}}{{if $xml->getItem("page[@type='projector']")}} itemscope="itemscope" itemtype="http://schema.org/Product" {{/if}}{{if $xml->getItem("page/@type") == (string) 'projector'}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}{{$txt['73991::70925_projector_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'search'}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}{{$txt['73991::70925_search_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'main'}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}{{$txt['73991::70925_main_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'navigation'}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}{{$txt['73991::70925_navigation_page_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'blog-list' or $xml->getItem("page/@type") == (string) 'blog-item'}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}{{$txt['73991::70925_blog_c_class']}}{{/capture}}{{else}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}{{$txt['73991::70925_otherwise_c_class']}}{{/capture}}{{/if}}  class="{{$classAttributeTmp4}}">
						{{include file="component_menu_order_progress_68745.tpl"}}
						{{include file="component_menu_messages_67953.tpl"}}
						<!--Cms na stronę dodawania konta (client-new) (client_new_cms, 55824.1)-->
						{{if  $xml->getItem("page/text/body")}}
							<div class="client_cms_label" style="display:none">
								<span class="n53873_label">{{$txt['55824::52201_001']}}</span>
							</div>
							<div class="loginedit_cms">
								<div {{assign "classAttributeTmp5" ""}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}loginedit_cms_sub{{/capture}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}loginedit_cms_sub cm{{/capture}}  class="{{$classAttributeTmp5}}">{{$xml->getItem("page/text/body")}}
								</div>
							</div>
						{{/if}}
						<!--Social networking (client_new_social_networking, 68193.1)-->
						{{if !( $xml->getItem("login_options/service[@connected='true']"))}}
							{{if  $xml->getItem("/shop/page/client-data")}}
								{{if count( $xml->getList("login_options/service")) gt (string)1 and !( $xml->getItem("/shop/page/client-data/@registerByExternalService") == (string)'true')}}
									<div id="client_new_social">
										{{if  $xml->getItem("/shop/page/client-data/@edit") == (string)'true'}}
											<h2 class="{{$txt['68193::n56203_label_class1']}}">{{$txt['68193::n56203_konto_b']}}
											</h2>
										{{/if}}
										{{if !( $xml->getItem("/shop/page/client-data/@edit") == (string)'true')}}
											<h2 class="{{$txt['68193::n56203_label_class2']}}">{{$txt['68193::n56203_konto']}}
											</h2>
										{{/if}}
										<div class="client_new_social_sub">
											{{if !( $xml->getItem("page/client-data/@allow_register")  == (string) 'false')}}
												{{if  $xml->getItem("/shop/page/client-data/@edit") == (string)'true'}}
													<p>{{$txt['68193::n56203_konto1_b']}}
													</p>
												{{/if}}
												{{if !( $xml->getItem("/shop/page/client-data/@edit") == (string)'true')}}
													<p>{{$txt['68193::n56203_konto1']}}
													</p>
												{{/if}}
											{{/if}}
											{{if  $xml->getItem("page/client-data/@allow_register")  == (string) 'false'}}
												<div class="client_new_form_info" id="client_new_form_info">{{$txt['68193::n56203_regSoc']}}
												</div>
												<script type="text/javascript">
                                           $(function(){
                                $('#button_alert div').html('{{$txt['68193::n56203_regSoc2']}}');
                                        $('#submit_register').removeAttr('onclick').click(function(){
                                           $('#button_alert').show();
                                       return false;
                                        })
                    $('#submit_register').hover(function(){},function(){$('#button_alert').hide();})
                        });
                                    												</script>

											{{/if}}
											{{if count( $xml->getList("login_options/service")) gt (string)0}}
												<ul>
													{{foreach from=$xml->getList("login_options/service[not(@name='shop_register')]") item=loop314}}
														<li>
															{{if  $loop314->getItem("@login_url")}}
																<a href="{{$loop314->getItemEscape("@login_url")}}">
																	<span class="social_button_txt">
																		<span class="social_login_label">{{$txt['68193::56478_009za']}}</span>{{$loop314->getItemEscape("@name")}}</span>
																	{{if  $loop314->getItem("@gfx_big")}}
																		<img alt="{{$loop314->getItemEscape("@name")}}" src="{{$loop314->getItemEscape("@gfx_big")}}"></img>
																	{{/if}}
																	</a>
															{{else}}
																<strong rel="{{$loop314->getItemEscape("@name")|replace:' ':'_'}}">
																	<span class="social_button_txt">
																		<span class="social_login_label">{{$txt['68193::56478_009za']}}</span>{{$loop314->getItemEscape("@name")}}</span>
																	{{if  $loop314->getItem("@gfx_big")}}
																		<img alt="{{$loop314->getItemEscape("@name")}}" src="{{$loop314->getItemEscape("@gfx_big")}}"></img>
																	{{/if}}
																	</strong>
															{{/if}}
														</li>{{literal}}{{/literal}}
													{{/foreach}}
												</ul>
												{{foreach from=$xml->getList("login_options/service[not(@name='shop_register') and not(@login_url)]") item=loop343}}
													<form action="login.php" method="post" style="display:none;" id="social_networking_{{$loop343->getItemEscape("@name")|replace:' ':'_'}}" {{if $loop343->getItem("@form_action")}} action="{{$loop343->getItemEscape("@form_action")}}" {{/if}}>
														<input type="hidden" name="openid_serviceid" value="{{$loop343->getItemEscape("@id")}}"></input>
														{{if  $loop343->getItem("@name") == (string)'OpenId'}}
															<label>{{$loop343->getItemEscape("@name")}}
																<span>{{$txt['68193::56478_009oiu']}}</span>
															</label>
														{{/if}}
														{{if !( $loop343->getItem("@name") == (string)'OpenId')}}
															<label>{{$loop343->getItemEscape("@name")}}
																<span>{{$txt['68193::56478_009olo']}}</span>
															</label>
														{{/if}}
														<input id="signin_login_url" type="text" name="openid_url" size="160"/>
														<button {{assign "classAttributeTmp6" ""}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}signin_button{{/capture}} type="submit"{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}btn-small signin_button {{$loop343->getItemEscape("@name")}}{{/capture}}  class="{{$classAttributeTmp6}}">{{$txt['68193::56478_log']}}
														</button>
													</form>
												{{/foreach}}
											{{/if}}
										</div>
									</div>
								{{/if}}
							{{/if}}
							{{if  $xml->getItem("/shop/page/communicates/message/@type") == (string)'login_connect'}}
								<div style="display:none;">
									<div id="client_new_social_info">
										<h2>{{$txt['68193::57295_info_1']}}{{$xml->getItemEscape("/shop/page/communicates/message/@value")}}
										</h2>
										<strong>{{$txt['68193::57295_info_2']}}{{$xml->getItemEscape("/shop/page/communicates/message/@value")}}{{$txt['68193::57295_info_3']}}</strong>
										<button {{assign "classAttributeTmp7" ""}}{{capture name="classAttributeTmp7" assign="classAttributeTmp7"}}go_to_register_form{{/capture}} onclick="$('#dialog_close').click();"{{capture name="classAttributeTmp7" assign="classAttributeTmp7"}}btn go_to_register_form{{/capture}}  class="{{$classAttributeTmp7}}">{{$txt['68193::57295_info_4']}}
										</button>
									</div>
									<script type="text/javascript">
                            $(function(){
                            $('#client_new_social_info').dialog({'wrappContent':'true'});
                            })
                        									</script>

								</div>
							{{elseif  $xml->getItem("/shop/page/communicates/message/@type") == (string)'login_connected'}}
								<div style="display:none;">
									<div id="client_new_social_info">
										<h2>{{$txt['68193::57295_info_1a']}}{{$xml->getItemEscape("/shop/page/communicates/message/@value")}}
										</h2>
										<strong>{{$txt['68193::57295_info_2a']}}{{$xml->getItemEscape("/shop/page/communicates/message/@value")}}{{$txt['68193::57295_info_3a']}}</strong>
										<button {{assign "classAttributeTmp8" ""}}{{capture name="classAttributeTmp8" assign="classAttributeTmp8"}}go_to_register_form2{{/capture}} onclick="$('#dialog_close').click();"{{capture name="classAttributeTmp8" assign="classAttributeTmp8"}}btn go_to_register_form2{{/capture}}  class="{{$classAttributeTmp8}}">{{$txt['68193::57295_info_4a']}}
										</button>
									</div>
									<script type="text/javascript">
                            $(function(){
                            $('#client_new_social_info').dialog({'wrappContent':'true'});
                            })
                        									</script>

								</div>
							{{/if}}
						{{/if}}
						<!--Formularz dodawania nowego klienta (client_new_form, 81519.1)-->
						{{capture name="data_edit_blocked" assign="data_edit_blocked"}}
							{{$txt['81519::n67953_data_edit_blocked']}}
						{{/capture}}
						{{capture name="n81519_order2_document_invoice" assign="n81519_order2_document_invoice"}}
							{{$txt['81519::n81519_order2_document_invoice']}}
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
						<script class="ajaxLoad">{{if  $xml->getItem("/shop/page/client-data/profile_data/@min_password_length") and  $xml->getItem("/shop/page/client-data/profile_data/@max_password_length")}}
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
						<form {{assign "classAttributeTmp9" ""}}  method="post"{{capture name="classAttributeTmp9" assign="classAttributeTmp9"}}form-horizontal{{/capture}} id="client_new_form" enctype="multipart/form-data"{{capture name="classAttributeTmp9" assign="classAttributeTmp9"}}form-horizontal {{if ( $xml->getItem("/shop/page/client-data/delivery_data/@use") == (string) 'no')}}deliver_to_billingaddr{{/if}} type-{{$client_new_mode}}{{/capture}}  class="{{$classAttributeTmp9}}">
							<input type="hidden" name="operation" value="{{$xml->getItemEscape("/shop/page/client-data/@action")}}"></input>
							{{if  $xml->getItem("/shop/page/client-data/wholesale_data/@id")}}
								<input type="hidden" name="appId" value="{{$xml->getItemEscape("/shop/page/client-data/wholesale_data/@id")}}"></input>
							{{/if}}
							{{if ( $xml->getItem("page/client-data/@operation")  == (string) 'register-wholesale-add') or ( $xml->getItem("page/client-data/@operation")  == (string) 'edit-wholesale-add') or ( $xml->getItem("page/client-data/@operation")  == (string) 'edit-wholesale-edit')}}
								<div class="row clearfix wholesale_box">
									<div class="col-md-12">
										<h2 class="big_label" id="wholesale_header">{{$txt['81519::box_wholesale_header']}}
										</h2>
									</div>
									<div class="col-md-6 col-xs-12">
										<div class="wholesale_box cn_wrapper">
											<div class="form-group">
												<label {{assign "classAttributeTmp10" ""}}{{capture name="classAttributeTmp10" assign="classAttributeTmp10"}}control-label{{/capture}}{{capture name="classAttributeTmp10" assign="classAttributeTmp10"}}control-label {{$txt['81519::72793clinetnew_03']}}{{/capture}}  class="{{$classAttributeTmp10}}">
													{{if  $xml->getItem("/shop/contact/owner/@vat_registered")  == (string) 'false' and $n81519_order2_document_invoice  neq (string)''}}
														{{$txt['81519::n81519_order2_document_invoice']}}
													{{else}}
														{{$txt['81519::wholesale_025']}}
													{{/if}}
												</label>
												<div class="form-control-static {{$txt['81519::72793clinetnew_04']}}">
													<label class="radio-inline">
														<input id="client_vat_payer_k" name="client_vat_payer" type="radio" value="k" {{if $xml->getItem("/shop/page/client-data/wholesale_data/@vat_payer") == (string)'k'}} checked="checked"{{/if}}></input>{{$txt['81519::wholesale_702']}}
													</label>
													<label class="radio-inline">
														<input id="client_vat_payer_w" name="client_vat_payer" type="radio" value="w" {{if $xml->getItem("/shop/page/client-data/wholesale_data/@vat_payer") == (string)'w'}} checked="checked"{{/if}}></input>{{$txt['81519::wholesale_703']}}
													</label>
													<label class="radio-inline">
														<input id="client_vat_payer_e" name="client_vat_payer" type="radio" value="e" {{if $xml->getItem("/shop/page/client-data/wholesale_data/@vat_payer") == (string)'e'}} checked="checked"{{/if}}></input>{{$txt['81519::wholesale_704']}}
													</label>
												</div>
											</div>
											<div class="form-group">
												<label {{assign "classAttributeTmp11" ""}}  for="client_description"{{capture name="classAttributeTmp11" assign="classAttributeTmp11"}}control-label{{/capture}}{{capture name="classAttributeTmp11" assign="classAttributeTmp11"}}control-label {{$txt['81519::72793clinetnew_03']}}{{/capture}}  class="{{$classAttributeTmp11}}">{{$txt['81519::wholesale_026']}}
												</label>
												<div class="{{$txt['81519::72793clinetnew_04']}}">
													<textarea class="form-control" rows="3" id="client_description" name="client_description">{{$xml->getItemEscape("/shop/page/client-data/wholesale_data/@description")}}</textarea>
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-6 col-xs-12">
										<div class="wholesale_box cn_wrapper">
											<div class="form-group">
												<label {{assign "classAttributeTmp12" ""}}  for="client_attachment1"{{capture name="classAttributeTmp12" assign="classAttributeTmp12"}}control-label{{/capture}}{{capture name="classAttributeTmp12" assign="classAttributeTmp12"}}control-label {{$txt['81519::72793clinetnew_03']}}{{/capture}}  class="{{$classAttributeTmp12}}">{{$txt['81519::wholesale_027']}}
												</label>
												<div class="form-control-static {{$txt['81519::72793clinetnew_04']}}">
													<input id="client_attachment1" type="file" name="client_attachment1" size="14" {{if $xml->getItem("/shop/form_data/upload_file/max_filesize/@bytes")}} data-max_filesize="{{$xml->getItemEscape("/shop/form_data/upload_file/max_filesize/@bytes")}}" {{/if}}></input>
													{{if  $xml->getItem("/shop/page/client-data/wholesale_data/@file1_link")}}
														<p class="help-block">{{$txt['81519::wholesale_700']}}
															<a href="{{$xml->getItemEscape("/shop/page/client-data/wholesale_data/@file1_link")}}">{{$txt['81519::wholesale_026bebe']}}</a>{{$txt['81519::wholesale_701']}}
														</p>
													{{/if}}
												</div>
											</div>
											<div class="form-group">
												<label {{assign "classAttributeTmp13" ""}}  for="client_attachment2"{{capture name="classAttributeTmp13" assign="classAttributeTmp13"}}control-label{{/capture}}{{capture name="classAttributeTmp13" assign="classAttributeTmp13"}}control-label {{$txt['81519::72793clinetnew_03']}}{{/capture}}  class="{{$classAttributeTmp13}}">{{$txt['81519::wholesale_028']}}
												</label>
												<div class="form-control-static {{$txt['81519::72793clinetnew_04']}}">
													<input id="client_attachment2" type="file" name="client_attachment2" size="14" {{if $xml->getItem("/shop/form_data/upload_file/max_filesize/@bytes")}} data-max_filesize="{{$xml->getItemEscape("/shop/form_data/upload_file/max_filesize/@bytes")}}" {{/if}}></input>
													{{if  $xml->getItem("/shop/page/client-data/wholesale_data/@file2_link")}}
														<p class="help-block">{{$txt['81519::wholesale_700']}}
															<a href="{{$xml->getItemEscape("/shop/page/client-data/wholesale_data/@file2_link")}}">{{$txt['81519::wholesale_026bebe']}}</a>{{$txt['81519::wholesale_701']}}
														</p>
													{{/if}}
												</div>
											</div>
											<div class="form-group">
												<label {{assign "classAttributeTmp14" ""}}  for="client_attachment3"{{capture name="classAttributeTmp14" assign="classAttributeTmp14"}}control-label{{/capture}}{{capture name="classAttributeTmp14" assign="classAttributeTmp14"}}control-label {{$txt['81519::72793clinetnew_03']}}{{/capture}}  class="{{$classAttributeTmp14}}">{{$txt['81519::wholesale_029']}}
												</label>
												<div class="form-control-static {{$txt['81519::72793clinetnew_04']}}">
													<input id="client_attachment3" type="file" name="client_attachment3" size="14" {{if $xml->getItem("/shop/form_data/upload_file/max_filesize/@bytes")}} data-max_filesize="{{$xml->getItemEscape("/shop/form_data/upload_file/max_filesize/@bytes")}}" {{/if}}></input>
													{{if  $xml->getItem("/shop/page/client-data/wholesale_data/@file3_link")}}
														<p class="help-block">{{$txt['81519::wholesale_700']}}
															<a href="{{$xml->getItemEscape("/shop/page/client-data/wholesale_data/@file3_link")}}">{{$txt['81519::wholesale_026bebe']}}</a>{{$txt['81519::wholesale_701']}}
														</p>
													{{/if}}
												</div>
											</div>
										</div>
									</div>
								</div>
							{{/if}}
							<div class="row clearfix">
								<div class="col-md-6 col-xs-12" id="client_new_client">
									<h2 class="big_label" id="client_header">
										{{if ( $xml->getItem("/shop/page/client-data/delivery_data/@use")  == (string) 'yes') or $client_new_mode  == (string) 'edit'}}
											{{$txt['81519::55101_js_txt4']}}
										{{else}}
											{{$txt['81519::55101_js_txt3']}}
										{{/if}}
									</h2>
									<div class="client_box cn_wrapper">
										{{if !(( $xml->getItem("page/client-data/@operation")  == (string) 'register-wholesale-add') or ( $xml->getItem("page/client-data/@operation")  == (string) 'edit-wholesale-add') or  ( $xml->getItem("page/client-data/@operation")  == (string) 'edit-wholesale-edit')) or ( $xml->getItem("page/client-data/@disallow_change_company_data")  == (string) 'false')}}
											<div class="form-group firm_switcher">
												<label {{assign "classAttributeTmp10" ""}}{{capture name="classAttributeTmp10" assign="classAttributeTmp10"}}control-label{{/capture}}{{capture name="classAttributeTmp10" assign="classAttributeTmp10"}}control-label {{$txt['81519::72793clinetnew_03']}}{{/capture}}  class="{{$classAttributeTmp10}}">{{$txt['81519::n56203_004_zamjako']}}
												</label>
												<div class="form-control-static {{$txt['81519::72793clinetnew_04']}}">
													<label class="radio-inline">
														<input type="radio" id="client_type2" value="private" name="client_type" {{if $is_firm == (string) 'false'}} checked="checked" {{/if}}></input>{{$txt['81519::n56203_008']}}
													</label>
													<label class="radio-inline">
														<input type="radio" id="client_type1" value="firm" name="client_type" {{if $is_firm == (string) 'true'}} checked="checked" {{/if}}></input>{{$txt['81519::n56203_008b']}}
													</label>
												</div>
											</div>
											<div {{assign "classAttributeTmp16" ""}}{{capture name="classAttributeTmp16" assign="classAttributeTmp16"}}form-group firm-group{{/capture}}{{if $is_firm == (string) 'false'}} style="display:none;"{{/if}}{{if $xml->getItem("page/client-data/@disallow_change_company_data") == (string) 'true'}}{{capture name="classAttributeTmp16" assign="classAttributeTmp16"}}form-group firm-group readonly{{/capture}}{{/if}}  class="{{$classAttributeTmp16}}">
												<label {{assign "classAttributeTmp17" ""}}  for="client_firm"{{capture name="classAttributeTmp17" assign="classAttributeTmp17"}}control-label{{/capture}}{{capture name="classAttributeTmp17" assign="classAttributeTmp17"}}control-label {{$txt['81519::72793clinetnew_03']}}{{/capture}}  class="{{$classAttributeTmp17}}">{{$txt['81519::n56203_004']}}
												</label>
												<div class="has-feedback has-required {{$txt['81519::72793clinetnew_04']}}">
													<input type="text" class="form-control validate" name="client_firm" id="client_firm" required="required" maxlength="{{$xml->getItemEscape("/shop/page/input_option/@additional")}}" value="{{$xml->getItemEscape("/shop/page/client-data/invoice_data/@firm")}}" {{if $is_firm == (string) 'false'}} disabled="disabled"{{/if}} data-copy="delivery_additional" {{if $xml->getItem("page/client-data/@disallow_change_company_data") == (string) 'true'}} readonly="readonly"{{/if}}></input>
													<span class="form-control-feedback"></span>
												</div>
											</div>
											{{if  $xml->getItem("/shop/page/client-data/nip/@active")  neq (string) 'hide'}}
												<div {{assign "classAttributeTmp16" ""}}{{capture name="classAttributeTmp16" assign="classAttributeTmp16"}}form-group firm-group{{/capture}}{{if $is_firm == (string) 'false'}} style="display:none;"{{/if}}{{if $xml->getItem("page/client-data/@disallow_change_company_data") == (string) 'true'}}{{capture name="classAttributeTmp16" assign="classAttributeTmp16"}}form-group firm-group readonly{{/capture}}{{/if}}  class="{{$classAttributeTmp16}}">
													<label {{assign "classAttributeTmp19" ""}}  for="client_nip"{{capture name="classAttributeTmp19" assign="classAttributeTmp19"}}control-label{{/capture}}{{capture name="classAttributeTmp19" assign="classAttributeTmp19"}}control-label {{$txt['81519::72793clinetnew_03']}}{{/capture}}  class="{{$classAttributeTmp19}}">{{$txt['81519::n56203_005']}}
													</label>
													<div class=" {{if $xml->getItem("/shop/page/client-data/nip/@active") == (string) 'required'}}has-feedback has-required {{/if}}{{$txt['81519::72793clinetnew_04']}} ">
														<input type="text" class="form-control validate" name="client_nip" id="client_nip" data-serialize="#client_region" {{if $xml->getItem("/shop/page/client-data/nip/@active") == (string) 'required'}} required="required" {{/if}} maxlength="{{$xml->getItemEscape("/shop/page/input_option/@tax_number")}}" value="{{$xml->getItemEscape("/shop/page/client-data/invoice_data/@nip")}}" {{if $is_firm == (string) 'false'}} disabled="disabled"{{/if}}{{if $xml->getItem("page/client-data/@disallow_change_company_data") == (string) 'true'}} readonly="readonly"{{/if}}></input>
														<span class="form-control-feedback"></span>
													</div>
												</div>
											{{/if}}
										{{/if}}
										{{if $is_firm  == (string) 'false'}}
											<div {{assign "classAttributeTmp20" ""}}{{capture name="classAttributeTmp20" assign="classAttributeTmp20"}}form-group move_is_firm{{/capture}}{{if $xml->getItem("page/client-data/@disallow_change_company_data") == (string) 'true'}}{{capture name="classAttributeTmp20" assign="classAttributeTmp20"}}form-group move_is_firm readonly{{/capture}}{{/if}}  class="{{$classAttributeTmp20}}">
												<label {{assign "classAttributeTmp21" ""}}  for="client_firstname"{{capture name="classAttributeTmp21" assign="classAttributeTmp21"}}control-label{{/capture}}{{capture name="classAttributeTmp21" assign="classAttributeTmp21"}}control-label {{$txt['81519::72793clinetnew_03']}}{{/capture}}  class="{{$classAttributeTmp21}}">{{$txt['81519::n56203_002']}}
												</label>
												<div class="has-feedback has-required {{$txt['81519::72793clinetnew_04']}}">
													<input id="client_firstname" type="text" class="form-control validate" name="client_firstname" maxlength="{{$xml->getItemEscape("/shop/page/input_option/@name")}}" value="{{$xml->getItemEscape("/shop/page/client-data/invoice_data/@firstname")}}" data-copy="delivery_firstname" {{if $xml->getItem("page/client-data/@disallow_change_company_data") == (string) 'true'}} readonly="readonly"{{/if}} required="required"></input>
													<span class="form-control-feedback"></span>
												</div>
											</div>
											<div {{assign "classAttributeTmp20" ""}}{{capture name="classAttributeTmp20" assign="classAttributeTmp20"}}form-group move_is_firm{{/capture}}{{if $xml->getItem("page/client-data/@disallow_change_company_data") == (string) 'true'}}{{capture name="classAttributeTmp20" assign="classAttributeTmp20"}}form-group move_is_firm readonly{{/capture}}{{/if}}  class="{{$classAttributeTmp20}}">
												<label {{assign "classAttributeTmp23" ""}}  for="client_lastname"{{capture name="classAttributeTmp23" assign="classAttributeTmp23"}}control-label{{/capture}}{{capture name="classAttributeTmp23" assign="classAttributeTmp23"}}control-label {{$txt['81519::72793clinetnew_03']}}{{/capture}}  class="{{$classAttributeTmp23}}">{{$txt['81519::n56203_003']}}
												</label>
												<div class="has-feedback {{if $xml->getItem("/shop/page/client-data/profile_data/@mandatory_lastname") == (string) 'true'}}has-required{{/if}} {{$txt['81519::72793clinetnew_04']}}">
													<input id="client_lastname" type="text" class="form-control validate" name="client_lastname" maxlength="{{$xml->getItemEscape("/shop/page/input_option/@lastname")}}" value="{{$xml->getItemEscape("/shop/page/client-data/invoice_data/@lastname")}}" data-copy="delivery_lastname" {{if $xml->getItem("page/client-data/@disallow_change_company_data") == (string) 'true'}} readonly="readonly"{{/if}}{{if $xml->getItem("/shop/page/client-data/profile_data/@mandatory_lastname") == (string) 'true'}} required="required"{{/if}}></input>
													<span class="form-control-feedback"></span>
												</div>
											</div>
										{{/if}}
										{{if ( $xml->getItem("/shop/page/client-data/client_type/@active")  neq (string) 'n') and !( $xml->getItem("/shop/page/client-data/client_type/@type")  == (string) 'firm')}}
											<div {{assign "classAttributeTmp24" ""}}{{capture name="classAttributeTmp24" assign="classAttributeTmp24"}}form-group{{/capture}} id="client_sex" {{if $xml->getItem("page/client-data/@disallow_change_company_data") == (string) 'true'}}{{capture name="classAttributeTmp24" assign="classAttributeTmp24"}}form-group readonly{{/capture}}{{/if}}  class="{{$classAttributeTmp24}}">
												<label {{assign "classAttributeTmp10" ""}}{{capture name="classAttributeTmp10" assign="classAttributeTmp10"}}control-label{{/capture}}{{capture name="classAttributeTmp10" assign="classAttributeTmp10"}}control-label {{$txt['81519::72793clinetnew_03']}}{{/capture}}  class="{{$classAttributeTmp10}}">{{$txt['81519::n56203_008112']}}
												</label>
												<div class="form-control-static has-required {{$txt['81519::72793clinetnew_04']}}">
													<label class="radio-inline">
														<input type="radio" name="client_sex" id="client_sex_male" value="male" {{if ( $xml->getItem("/shop/page/client-data/client_type/@type") == (string) 'male')}} checked="checked"{{/if}}{{if $xml->getItem("page/client-data/@disallow_change_company_data") == (string) 'true'}} readonly="readonly"{{/if}} required="required"></input>{{$txt['81519::n56203_0081']}}
													</label>
													<label class="radio-inline">
														<input type="radio" name="client_sex" id="client_sex_male" value="female" {{if ( $xml->getItem("/shop/page/client-data/client_type/@type") == (string) 'female')}} checked="checked"{{/if}}{{if $xml->getItem("page/client-data/@disallow_change_company_data") == (string) 'true'}} readonly="readonly"{{/if}} required="required"></input>{{$txt['81519::n56203_0082']}}
													</label>
												</div>
											</div>
										{{/if}}
										{{if  $xml->getItem("/shop/page/client-data/birth_date/@active")  neq (string) 'hide'}}
											<div {{assign "classAttributeTmp26" ""}}{{capture name="classAttributeTmp26" assign="classAttributeTmp26"}}form-group{{/capture}}{{if $xml->getItem("page/client-data/@disallow_change_company_data") == (string) 'true'}}{{capture name="classAttributeTmp26" assign="classAttributeTmp26"}}form-group readonly{{/capture}}{{/if}}  class="{{$classAttributeTmp26}}">
												<label {{assign "classAttributeTmp27" ""}}  for="birth_date"{{capture name="classAttributeTmp27" assign="classAttributeTmp27"}}control-label{{/capture}}{{capture name="classAttributeTmp27" assign="classAttributeTmp27"}}control-label {{$txt['81519::72793clinetnew_03']}}{{/capture}}  class="{{$classAttributeTmp27}}">{{$txt['81519::n56203_003dd']}}
												</label>
												<div class="has-feedback {{if $xml->getItem("/shop/page/client-data/birth_date/@active") == (string)'required'}}has-required {{/if}}{{$txt['81519::72793clinetnew_04']}}">
													<input id="birth_date" type="text" class="form-control validate" name="birth_date" maxlength="{{$xml->getItemEscape("/shop/page/input_option/@birthdate")}}" {{if $xml->getItem("/shop/page/client-data/birth_date/@date") neq (string) '0000-00-00'}} value="{{$xml->getItemEscape("/shop/page/client-data/birth_date/@date")}}"{{/if}}{{if $xml->getItem("page/client-data/@disallow_change_company_data") == (string) 'true'}} readonly="readonly"{{/if}}{{if $xml->getItem("/shop/page/client-data/birth_date/@active") == (string)'required'}} required="required"{{/if}}></input>
													<span class="form-control-feedback"></span>
												</div>
											</div>
										{{/if}}
										<div {{assign "classAttributeTmp26" ""}}{{capture name="classAttributeTmp26" assign="classAttributeTmp26"}}form-group{{/capture}}{{if $xml->getItem("page/client-data/@disallow_change_company_data") == (string) 'true'}}{{capture name="classAttributeTmp26" assign="classAttributeTmp26"}}form-group readonly{{/capture}}{{/if}}  class="{{$classAttributeTmp26}}">
											<label {{assign "classAttributeTmp29" ""}}  for="client_street"{{capture name="classAttributeTmp29" assign="classAttributeTmp29"}}control-label{{/capture}}{{capture name="classAttributeTmp29" assign="classAttributeTmp29"}}control-label {{$txt['81519::72793clinetnew_03']}}{{/capture}}  class="{{$classAttributeTmp29}}">{{$txt['81519::n56203_010']}}
											</label>
											<div class="has-feedback has-required {{$txt['81519::72793clinetnew_04']}}">
												<input id="client_street" type="text" class="form-control validate" name="client_street" data-serialize="#client_region" maxlength="{{$xml->getItemEscape("/shop/page/input_option/@addres")}}" value="{{$xml->getItemEscape("/shop/page/client-data/invoice_data/@street")}}" data-copy="delivery_street" {{if $xml->getItem("page/client-data/@disallow_change_company_data") == (string) 'true'}} readonly="readonly"{{/if}} required="required"></input>
												<span class="form-control-feedback"></span>
											</div>
										</div>
										<div {{assign "classAttributeTmp26" ""}}{{capture name="classAttributeTmp26" assign="classAttributeTmp26"}}form-group{{/capture}}{{if $xml->getItem("page/client-data/@disallow_change_company_data") == (string) 'true'}}{{capture name="classAttributeTmp26" assign="classAttributeTmp26"}}form-group readonly{{/capture}}{{/if}}  class="{{$classAttributeTmp26}}">
											<label {{assign "classAttributeTmp31" ""}}  for="client_zipcode"{{capture name="classAttributeTmp31" assign="classAttributeTmp31"}}control-label{{/capture}}{{capture name="classAttributeTmp31" assign="classAttributeTmp31"}}control-label {{$txt['81519::72793clinetnew_03']}}{{/capture}}  class="{{$classAttributeTmp31}}">{{$txt['81519::n56203_011']}}
											</label>
											<div class="{{$txt['81519::72793clinetnew_04']}}">
												<div class="row">
													<div {{assign "classAttributeTmp32" ""}}{{capture name="classAttributeTmp32" assign="classAttributeTmp32"}}zipcode_wrapper{{/capture}}{{capture name="classAttributeTmp32" assign="classAttributeTmp32"}}zipcode_wrapper col-md-5 has-feedback has-required{{/capture}}  class="{{$classAttributeTmp32}}">
														<input id="client_zipcode" type="text" class="form-control validate" name="client_zipcode" data-serialize="#client_region" maxlength="{{$xml->getItemEscape("/shop/page/input_option/@zipcode")}}" value="{{$xml->getItemEscape("/shop/page/client-data/invoice_data/@zipcode")}}" data-copy="delivery_zipcode" {{if $xml->getItem("page/client-data/@disallow_change_company_data") == (string) 'true'}} readonly="readonly"{{/if}} required="required"></input>
														<span class="form-control-feedback"></span>
													</div>
													<div {{assign "classAttributeTmp33" ""}}{{capture name="classAttributeTmp33" assign="classAttributeTmp33"}}city_wrapper{{/capture}}{{capture name="classAttributeTmp33" assign="classAttributeTmp33"}}city_wrapper col-md-7 has-feedback has-required{{/capture}}  class="{{$classAttributeTmp33}}">
														<input id="client_city" type="text" class="form-control validate" name="client_city" maxlength="{{$xml->getItemEscape("/shop/page/input_option/@city")}}" value="{{$xml->getItemEscape("/shop/page/client-data/invoice_data/@city")}}" data-copy="delivery_city" {{if $xml->getItem("page/client-data/@disallow_change_company_data") == (string) 'true'}} readonly="readonly"{{/if}} required="required"></input>
														<span class="form-control-feedback"></span>
													</div>
												</div>
											</div>
										</div>
										{{if count( $xml->getList("/shop/page/options/countries/country"))  == (string) 1 and ( $xml->getItem("/shop/page/options/countries/country/@id")  == (string) 1143020003)}}
											<input id="client_region" type="hidden" name="client_region" value="{{$xml->getItemEscape("/shop/page/options/countries/country/@id")}}" data-vat_company="{{$xml->getItemEscape("/shop/page/options/countries/country/@vat_company")}}" data-vat="{{$xml->getItemEscape("/shop/page/options/countries/country/@vat")}}"></input>
										{{else}}
											<div {{assign "classAttributeTmp26" ""}}{{capture name="classAttributeTmp26" assign="classAttributeTmp26"}}form-group{{/capture}}{{if $xml->getItem("page/client-data/@disallow_change_company_data") == (string) 'true'}}{{capture name="classAttributeTmp26" assign="classAttributeTmp26"}}form-group readonly{{/capture}}{{/if}}  class="{{$classAttributeTmp26}}">
												<label {{assign "classAttributeTmp35" ""}}  for="client_region"{{capture name="classAttributeTmp35" assign="classAttributeTmp35"}}control-label{{/capture}}{{capture name="classAttributeTmp35" assign="classAttributeTmp35"}}control-label {{$txt['81519::72793clinetnew_03']}}{{/capture}}  class="{{$classAttributeTmp35}}">{{$txt['81519::n56203_013']}}
												</label>
												<div class="{{$txt['81519::72793clinetnew_04']}}">
													<select class="form-control delivery_countries" id="client_region" name="client_region" data-revalidate="#client_street,#client_zipcode" {{if $xml->getItem("page/client-data/@disallow_change_company_data") == (string) 'true'}} readonly="readonly"{{/if}} data-copy="delivery_region">
														{{foreach from=$xml->getList("/shop/page/options/countries/country") item=loop826}}
															<option value="{{$loop826->getItemEscape("@id")}}" data-vat_company="{{$loop826->getItemEscape("@vat_company")}}" data-vat="{{$loop826->getItemEscape("@vat")}}" {{if $loop826->getItem("/shop/page/client-data/invoice_data/@region") gt (string) 0}}{{if $loop826->getItem("@id") == (string) $loop826->getItem("/shop/page/client-data/invoice_data/@region")}} selected="selected" {{/if}}{{else}}{{if $loop826->getItem("@selected") == (string) 'true'}} selected="selected" {{/if}}{{/if}}>{{$loop826->getItemEscape("@name")}}
															</option>
														{{/foreach}}
													</select>
												</div>
											</div>
										{{/if}}
										{{foreach from=$xml->getList("/shop/page/options/countries/country") item=loop849}}
											{{if  $loop849->getItem("provinces/province")}}
												<div {{assign "classAttributeTmp36" ""}}{{assign "styleAttributeTmp1" ""}}{{capture name="classAttributeTmp36" assign="classAttributeTmp36"}}form-group client_provinces{{/capture}}{{capture name="styleAttributeTmp1" assign="styleAttributeTmp1"}}display: none;{{/capture}}{{if $loop849->getItem("@selected") == (string) 'true'}}{{capture name="styleAttributeTmp1" assign="styleAttributeTmp1"}}display: block;{{/capture}}{{/if}} id="client_region_{{$loop849->getItemEscape("@id")}}" {{if $loop849->getItem("page/client-data/@disallow_change_company_data") == (string) 'true'}}{{capture name="classAttributeTmp36" assign="classAttributeTmp36"}}form-group client_provinces readonly{{/capture}}{{/if}}  style="{{$styleAttributeTmp1}}"  class="{{$classAttributeTmp36}}">
													<label {{assign "classAttributeTmp37" ""}}  for="client_province"{{capture name="classAttributeTmp37" assign="classAttributeTmp37"}}control-label{{/capture}}{{capture name="classAttributeTmp37" assign="classAttributeTmp37"}}control-label {{$txt['81519::72793clinetnew_03']}}{{/capture}}  class="{{$classAttributeTmp37}}">
														{{foreach from=$loop849->getList("province_types/type") item=loop858}}
															{{if  $loop858->getItem("text()")  == (string) 'state'}}
																{{$txt['81519::n56203_013_state']}}
															{{elseif  $loop858->getItem("text()")  == (string) 'province'}}
																{{$txt['81519::n56203_013_province']}}
															{{elseif  $loop858->getItem("text()")  == (string) 'territory'}}
																{{$txt['81519::n56203_013_territory']}}
															{{else}}
																{{$txt['81519::n56203_013_region']}}
															{{/if}}
															{{if !( $loop858@iteration   == (string)  $loop858@total )}}
																{{$txt['81519::n56203_013_sep']}}
															{{/if}}
														{{/foreach}}
														{{$txt['81519::n56203_013_sep2']}}
													</label>
													<div class="{{$txt['81519::72793clinetnew_04']}}">
														<select class="form-control" name="client_province" {{if $loop849->getItem("page/client-data/@disallow_change_company_data") == (string) 'true'}} readonly="readonly"{{/if}}{{if !( $loop849->getItem("@selected") == (string) 'true')}} disabled="disabled"{{/if}} id="client_province_{{$loop849->getItemEscape("@id")}}" data-copy="delivery_province">
															{{foreach from=$loop849->getList("provinces/province") item=loop871}}
																<option value="{{$loop871->getItemEscape("@id")}}" {{if $loop871->getItem("/shop/page/client-data/invoice_data/@province") gt (string) 0}}{{if $loop871->getItem("@id") == (string) $loop871->getItem("/shop/page/client-data/invoice_data/@province")}} selected="selected" {{/if}}{{else}}{{if $loop871->getItem("@selected") == (string) 'true'}} selected="selected" {{/if}}{{/if}}>{{$loop871->getItemEscape("@name")}}
																</option>
															{{/foreach}}
														</select>
													</div>
												</div>
											{{/if}}
										{{/foreach}}
									</div>
								</div>
								<div class="col-md-6 col-xs-12" id="client_new_additional" {{if $xml->getItem("/shop/page/options/countries/country[@selected='true']")}} data-active-country="{{$xml->getItemEscape("/shop/page/options/countries/country[@selected='true']/@id")}}" {{/if}}>
									{{if  $xml->getItem("basket/@login")}}
										{{foreach from=$xml->getList("page/client-data/addresses-list/address[@default = 'yes']") item=loop901}}
											<h2 class="big_label">{{$txt['81519::clinetnew_adres_dostawy']}}
											</h2>
											<div class="additional_box cn_wrapper">
												{{if count( $loop901->getList("/shop/page/client-data/addresses-list/address"))  gt (string) 1}}
													<div class="form-group addresses_list_wrapper">
														{{foreach from=$loop901->getList("/shop/page/client-data/addresses-list/address[@default = 'yes']") item=loop910}}
															<input type="hidden" name="delivery_id" id="delivery_id" value="{{$loop910->getItemEscape("@id")}}"></input>
															<input type="hidden" name="default_delivery_id" id="default_delivery_id" value="{{$loop910->getItemEscape("@id")}}"></input>
														{{/foreach}}
														<div class="addresses_list {{$txt['81519::72793clinetnew_05']}}">
															<div class="dropdown cn_dropdown">
																<button class="btn-small dropdown-toggle" type="button" id="dropdownAdressMenu" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">{{$txt['81519::n56703_017g']}}
																</button>
																<ul class="dropdown-menu addresses-list" aria-labelledby="dropdownAdressMenu">
																	{{foreach from=$loop901->getList("/shop/page/client-data/addresses-list/address") item=loop923}}
																		<li>
																			<a data-id="{{$loop923->getItemEscape("@id")}}" data-zipcode="{{$loop923->getItemEscape("@zipcode")}}" data-phone="{{$loop923->getItemEscape("@phone")}}" data-region_id="{{$loop923->getItemEscape("@region_id")}}" data-country_name="{{$loop923->getItemEscape("@country_name")}}" data-removable="{{$loop923->getItemEscape("@removable")}}" data-editable="{{$loop923->getItemEscape("@editable")}}" data-used="{{$loop923->getItemEscape("@used")}}" {{if $loop923->getItem("@default") == (string) 'yes'}} class="active"{{/if}} href="#address_{{$loop923->getItemEscape("@id")}}">
																				<span>
																					{{if !( $loop923->getItem("@additional")  == (string) '')}}
																						{{$loop923->getItemEscape("@additional")}}{{literal}}{{/literal}}
																					{{/if}}
																					{{$loop923->getItemEscape("@firstname")}}{{literal}}{{/literal}}{{$loop923->getItemEscape("@lastname")}}</span>
																				<span>{{$loop923->getItemEscape("@street")}}</span>
																				<span>{{$loop923->getItemEscape("@zipcode")}}{{literal}}{{/literal}}{{$loop923->getItemEscape("@city")}}</span>
																				<span style="display:none">
																					<span class="data-additional">{{$loop923->getItemEscape("@additional")}}</span>
																					<span class="data-firstname">{{$loop923->getItemEscape("@firstname")}}</span>
																					<span class="data-lastname">{{$loop923->getItemEscape("@lastname")}}</span>
																					<span class="data-street">{{$loop923->getItemEscape("@street")}}</span>
																					<span class="data-city">{{$loop923->getItemEscape("@city")}}</span></span></a>
																		</li>
																	{{/foreach}}
																</ul>
															</div>
														</div>
													</div>
												{{/if}}
												<div class="form-group">
													<label {{assign "classAttributeTmp38" ""}}  for="additional_firstname"{{capture name="classAttributeTmp38" assign="classAttributeTmp38"}}control-label{{/capture}}{{capture name="classAttributeTmp38" assign="classAttributeTmp38"}}control-label {{$txt['81519::72793clinetnew_03']}}{{/capture}}  class="{{$classAttributeTmp38}}">{{$txt['81519::n56703_017']}}
													</label>
													<div class=" has-feedback has-required {{$txt['81519::72793clinetnew_04']}}">
														<input id="additional_firstname" type="text" class="form-control validate" name="additional_firstname" value="{{$loop901->getItemEscape("@firstname")}}" {{if $loop901->getItem("@editable") == (string) 'no'}} disabled="disabled"{{/if}} required="required"></input>
														<span class="form-control-feedback"></span>
													</div>
												</div>
												<div class="form-group">
													<label {{assign "classAttributeTmp39" ""}}  for="additional_lastname"{{capture name="classAttributeTmp39" assign="classAttributeTmp39"}}control-label{{/capture}}{{capture name="classAttributeTmp39" assign="classAttributeTmp39"}}control-label {{$txt['81519::72793clinetnew_03']}}{{/capture}}  class="{{$classAttributeTmp39}}">{{$txt['81519::n56703_018']}}
													</label>
													<div class="has-feedback {{if $loop901->getItem("/shop/page/client-data/profile_data/@mandatory_lastname") == (string) 'true'}}has-required{{/if}} {{$txt['81519::72793clinetnew_04']}}">
														<input id="additional_lastname" type="text" class="form-control validate" name="additional_lastname" value="{{$loop901->getItemEscape("@lastname")}}" {{if $loop901->getItem("@editable") == (string) 'no'}} disabled="disabled"{{/if}}{{if $loop901->getItem("/shop/page/client-data/profile_data/@mandatory_lastname") == (string) 'true'}} required="required"{{/if}}></input>
														<span class="form-control-feedback"></span>
													</div>
												</div>
												<div class="form-group">
													<label {{assign "classAttributeTmp40" ""}}  for="additional_additional"{{capture name="classAttributeTmp40" assign="classAttributeTmp40"}}control-label{{/capture}}{{capture name="classAttributeTmp40" assign="classAttributeTmp40"}}control-label {{$txt['81519::72793clinetnew_03']}}{{/capture}}  class="{{$classAttributeTmp40}}">{{$txt['81519::n56703_016']}}
													</label>
													<div class="has-feedback {{$txt['81519::72793clinetnew_04']}}">
														<input id="additional_additional" type="text" class="form-control validate" name="additional_additional" value="{{$loop901->getItemEscape("@additional")}}" {{if $loop901->getItem("@editable") == (string) 'no'}} disabled="disabled"{{/if}}></input>
														<span class="form-control-feedback"></span>
													</div>
												</div>
												<div class="form-group">
													<label {{assign "classAttributeTmp41" ""}}  for="additional_street"{{capture name="classAttributeTmp41" assign="classAttributeTmp41"}}control-label{{/capture}}{{capture name="classAttributeTmp41" assign="classAttributeTmp41"}}control-label {{$txt['81519::72793clinetnew_03']}}{{/capture}}  class="{{$classAttributeTmp41}}">{{$txt['81519::n56703_020']}}
													</label>
													<div class="has-feedback has-required {{$txt['81519::72793clinetnew_04']}}">
														<input id="additional_street" type="text" class="form-control validate" name="additional_street" data-serialize="#additional_region" value="{{$loop901->getItemEscape("@street")}}" {{if $loop901->getItem("@editable") == (string) 'no'}} disabled="disabled"{{/if}} required="required"></input>
														<span class="form-control-feedback"></span>
													</div>
												</div>
												<div class="form-group">
													<label {{assign "classAttributeTmp42" ""}}  for="additional_zipcode"{{capture name="classAttributeTmp42" assign="classAttributeTmp42"}}control-label{{/capture}}{{capture name="classAttributeTmp42" assign="classAttributeTmp42"}}control-label {{$txt['81519::72793clinetnew_03']}}{{/capture}}  class="{{$classAttributeTmp42}}">{{$txt['81519::n56203_011']}}
													</label>
													<div class="{{$txt['81519::72793clinetnew_04']}}">
														<div class="row">
															<div {{assign "classAttributeTmp32" ""}}{{capture name="classAttributeTmp32" assign="classAttributeTmp32"}}zipcode_wrapper{{/capture}}{{capture name="classAttributeTmp32" assign="classAttributeTmp32"}}zipcode_wrapper col-md-5 has-feedback has-required{{/capture}}  class="{{$classAttributeTmp32}}">
																<input id="additional_zipcode" type="text" class="form-control validate" name="additional_zipcode" data-serialize="#additional_region" value="{{$loop901->getItemEscape("@zipcode")}}" {{if $loop901->getItem("@editable") == (string) 'no'}} disabled="disabled"{{/if}} required="required"></input>
																<span class="form-control-feedback"></span>
															</div>
															<div {{assign "classAttributeTmp33" ""}}{{capture name="classAttributeTmp33" assign="classAttributeTmp33"}}city_wrapper{{/capture}}{{capture name="classAttributeTmp33" assign="classAttributeTmp33"}}city_wrapper col-md-7 has-feedback has-required{{/capture}}  class="{{$classAttributeTmp33}}">
																<input id="additional_city" type="text" class="form-control validate" name="additional_city" value="{{$loop901->getItemEscape("@city")}}" {{if $loop901->getItem("@editable") == (string) 'no'}} disabled="disabled"{{/if}} required="required"></input>
																<span class="form-control-feedback"></span>
															</div>
														</div>
													</div>
												</div>
												<div class="form-group">
													<label {{assign "classAttributeTmp45" ""}}  for="additional_phone"{{capture name="classAttributeTmp45" assign="classAttributeTmp45"}}control-label{{/capture}}{{capture name="classAttributeTmp45" assign="classAttributeTmp45"}}control-label {{$txt['81519::72793clinetnew_03']}}{{/capture}}  class="{{$classAttributeTmp45}}">{{$txt['81519::n56703_021d']}}
													</label>
													<div class="has-feedback {{if $loop901->getItem("/shop/page/client-data/contact_data/@mandatory_phone") == (string) 'true'}}has-required {{/if}}{{$txt['81519::72793clinetnew_04']}}">
														<input id="additional_phone" type="tel" class="form-control validate" name="additional_phone" data-serialize="#additional_region" value="{{$loop901->getItemEscape("@phone")}}" {{if $loop901->getItem("@editable") == (string) 'no'}} disabled="disabled"{{/if}}{{if $loop901->getItem("/shop/page/client-data/contact_data/@mandatory_phone") == (string) 'true'}} required="required" {{/if}}></input>
														<span class="form-control-feedback"></span>
													</div>
												</div>
												{{if count( $loop901->getList("/shop/page/options/countries/country"))  == (string) 1 and ( $loop901->getItem("/shop/page/options/countries/country/@id")  == (string) 1143020003)}}
													<input id="additional_region" type="hidden" name="additional_region" value="{{$loop901->getItemEscape("/shop/page/options/countries/country/@id")}}" data-vat_company="{{$loop901->getItemEscape("/shop/page/options/countries/country/@vat_company")}}" data-vat="{{$loop901->getItemEscape("/shop/page/options/countries/country/@vat")}}"></input>
												{{else}}
													<div class="form-group">
														<label {{assign "classAttributeTmp46" ""}}  for="additional_region"{{capture name="classAttributeTmp46" assign="classAttributeTmp46"}}control-label{{/capture}}{{capture name="classAttributeTmp46" assign="classAttributeTmp46"}}control-label {{$txt['81519::72793clinetnew_03']}}{{/capture}}  class="{{$classAttributeTmp46}}">{{$txt['81519::n56703_022']}}
														</label>
														<div class="{{$txt['81519::72793clinetnew_04']}}">
															<select class="form-control delivery_countries" id="additional_region" name="additional_region" data-revalidate="#additional_street,#additional_zipcode" {{if $loop901->getItem("@editable") == (string) 'no'}} disabled="disabled"{{/if}}>
																{{foreach from=$loop901->getList("/shop/page/options/countries/country") item=loop1087}}
																	<option value="{{$loop1087->getItemEscape("@id")}}" data-vat_company="{{$loop1087->getItemEscape("@vat_company")}}" data-vat="{{$loop1087->getItemEscape("@vat")}}" {{if $loop1087->getItem("@id") == (string) $loop1087->getItem("/shop/page/options/countries/@delivery_active") }} selected="selected" {{/if}}>{{$loop1087->getItemEscape("@name")}}
																	</option>
																{{/foreach}}
															</select>
														</div>
													</div>
												{{/if}}
												{{capture name="default_province" assign="default_province"}}
													{{$loop901->getItemEscape("@province")}}
												{{/capture}}
												{{capture name="editable_province" assign="editable_province"}}
													{{$loop901->getItemEscape("@editable")}}
												{{/capture}}
												{{foreach from=$loop901->getList("/shop/page/options/countries/country") item=loop1106}}
													{{if  $loop1106->getItem("provinces/province")}}
														<div {{assign "styleAttributeTmp2" ""}}  class="form-group client_provinces"{{capture name="styleAttributeTmp2" assign="styleAttributeTmp2"}}display: none;{{/capture}}{{if $loop1106->getItem("@id") == (string) $loop1106->getItem("/shop/page/options/countries/@delivery_active")}}{{capture name="styleAttributeTmp2" assign="styleAttributeTmp2"}}display: block;{{/capture}}{{/if}} id="additional_region_{{$loop1106->getItemEscape("@id")}}"  style="{{$styleAttributeTmp2}}">
															<label {{assign "classAttributeTmp47" ""}}  for="additional_province"{{capture name="classAttributeTmp47" assign="classAttributeTmp47"}}control-label{{/capture}}{{capture name="classAttributeTmp47" assign="classAttributeTmp47"}}control-label {{$txt['81519::72793clinetnew_03']}}{{/capture}}  class="{{$classAttributeTmp47}}">
																{{foreach from=$loop1106->getList("province_types/type") item=loop1114}}
																	{{if  $loop1114->getItem("text()")  == (string) 'state'}}
																		{{$txt['81519::n56203_013_state']}}
																	{{elseif  $loop1114->getItem("text()")  == (string) 'province'}}
																		{{$txt['81519::n56203_013_province']}}
																	{{elseif  $loop1114->getItem("text()")  == (string) 'territory'}}
																		{{$txt['81519::n56203_013_territory']}}
																	{{else}}
																		{{$txt['81519::n56203_013_region']}}
																	{{/if}}
																	{{if !( $loop1114@iteration   == (string)  $loop1114@total )}}
																		{{$txt['81519::n56203_013_sep']}}
																	{{/if}}
																{{/foreach}}
																{{$txt['81519::n56203_013_sep2']}}
															</label>
															<div class="{{$txt['81519::72793clinetnew_04']}}">
																<select class="form-control" name="additional_province" {{if !( $loop1106->getItem("@id") == (string) $loop1106->getItem("/shop/page/options/countries/@delivery_active"))}} disabled="disabled"{{/if}}{{if $editable_province == (string) 'no'}} disabled="disabled"{{/if}}>
																	{{foreach from=$loop1106->getList("provinces/province") item=loop1125}}
																		<option value="{{$loop1125->getItemEscape("@id")}}" {{if $loop1125->getItem("@id") == (string) $default_province}} selected="selected" {{/if}}>{{$loop1125->getItemEscape("@name")}}
																		</option>
																	{{/foreach}}
																</select>
															</div>
														</div>
													{{/if}}
												{{/foreach}}
												<div class="form-group">
													<div class="{{$txt['81519::72793clinetnew_05']}}">
														<button id="delete_delivery_address" class="btn-small" {{if !( $loop901->getItem("@removable") == (string) 'yes')}} style="display: none;"{{/if}}>{{$txt['81519::delete_address_56203a']}}
														</button>
														<button id="new_delivery_address" class="btn-small">{{$txt['81519::n56203_015add']}}
														</button>
														<button id="save_delivery_address" type="submit" class="btn-small" style="display:none;">{{$txt['81519::n56203_015save']}}
														</button>
													</div>
												</div>
											</div>
										{{/foreach}}
									{{/if}}
									{{if !( $xml->getItem("/shop/page/client-data/@edit")  == (string) 'true') and ( $xml->getItem("/shop/page/client-data/delivery_data/@use")  neq (string) 'hide')}}
										<h2 id="delivery_header" class="big_label">
											{{if ( $xml->getItem("/shop/page/client-data/delivery_data/@use")  == (string) 'yes')}}
												{{$txt['81519::55101_js_txt1']}}
											{{else}}
												{{$txt['81519::55101_js_txt2']}}
											{{/if}}
										</h2>
										<div class="form-group" id="delivery_box_switcher">
											<label {{assign "classAttributeTmp10" ""}}{{capture name="classAttributeTmp10" assign="classAttributeTmp10"}}control-label{{/capture}}{{capture name="classAttributeTmp10" assign="classAttributeTmp10"}}control-label {{$txt['81519::72793clinetnew_03']}}{{/capture}}  class="{{$classAttributeTmp10}}">{{$txt['81519::n56203_014']}}
											</label>
											<div class="form-control-static {{$txt['81519::72793clinetnew_04']}}">
												<label class="radio-inline">
													<input type="radio" name="deliver_to_billingaddr" id="deliver_to_billingaddr1" value="1" {{if ( $xml->getItem("/shop/page/client-data/delivery_data/@use") == (string) 'no')}} checked="checked"{{/if}}></input>{{$txt['81519::n56203_014_nie']}}
												</label>
												<label class="radio-inline">
													<input type="radio" name="deliver_to_billingaddr" id="deliver_to_billingaddr2" value="0" {{if ( $xml->getItem("/shop/page/client-data/delivery_data/@use") == (string) 'yes')}} checked="checked"{{/if}}></input>{{$txt['81519::n56203_014_tak']}}
												</label>
											</div>
										</div>
									{{/if}}
									{{if !( $xml->getItem("/shop/page/client-data/@edit")  == (string) 'true') and ( $xml->getItem("/shop/page/client-data/delivery_data/@use")  neq (string) 'hide')}}
										<div class="delivery_box cn_wrapper">
											{{foreach from=$xml->getList("/shop/page/client-data/delivery_data") item=loop1194}}
												<div class="form-group">
													<label {{assign "classAttributeTmp49" ""}}  for="delivery_firstname"{{capture name="classAttributeTmp49" assign="classAttributeTmp49"}}control-label{{/capture}}{{capture name="classAttributeTmp49" assign="classAttributeTmp49"}}control-label {{$txt['81519::72793clinetnew_03']}}{{/capture}}  class="{{$classAttributeTmp49}}">{{$txt['81519::n56203_017']}}
													</label>
													<div class="has-feedback has-required {{$txt['81519::72793clinetnew_04']}}">
														<input id="delivery_firstname" type="text" class="form-control validate" name="delivery_firstname" value="{{$loop1194->getItemEscape("@firstname")}}" maxlength="{{$loop1194->getItemEscape("/shop/page/input_option/@name")}}" {{if $loop1194->getItem("@use") == (string) 'no'}} disabled="disabled"{{/if}} required="required"></input>
														<span class="form-control-feedback"></span>
													</div>
												</div>
												<div class="form-group">
													<label {{assign "classAttributeTmp50" ""}}  for="delivery_lastname"{{capture name="classAttributeTmp50" assign="classAttributeTmp50"}}control-label{{/capture}}{{capture name="classAttributeTmp50" assign="classAttributeTmp50"}}control-label {{$txt['81519::72793clinetnew_03']}}{{/capture}}  class="{{$classAttributeTmp50}}">{{$txt['81519::n56703_018']}}
													</label>
													<div class="has-feedback {{if $loop1194->getItem("/shop/page/client-data/profile_data/@mandatory_lastname") == (string) 'true'}}has-required{{/if}} {{$txt['81519::72793clinetnew_04']}}">
														<input id="delivery_lastname" type="text" class="form-control validate" name="delivery_lastname" value="{{$loop1194->getItemEscape("@lastname")}}" maxlength="{{$loop1194->getItemEscape("/shop/page/input_option/@name")}}" {{if $loop1194->getItem("@use") == (string) 'no'}} disabled="disabled"{{/if}}{{if $loop1194->getItem("/shop/page/client-data/profile_data/@mandatory_lastname") == (string) 'true'}} required="required"{{/if}}></input>
														<span class="form-control-feedback"></span>
													</div>
												</div>
												<div class="form-group">
													<label {{assign "classAttributeTmp51" ""}}  for="delivery_additional"{{capture name="classAttributeTmp51" assign="classAttributeTmp51"}}control-label{{/capture}}{{capture name="classAttributeTmp51" assign="classAttributeTmp51"}}control-label {{$txt['81519::72793clinetnew_03']}}{{/capture}}  class="{{$classAttributeTmp51}}">{{$txt['81519::n56703_016']}}
													</label>
													<div class="has-feedback {{$txt['81519::72793clinetnew_04']}}">
														<input id="delivery_additional" type="text" class="form-control validate" name="delivery_additional" value="{{$loop1194->getItemEscape("@additional")}}" maxlength="{{$loop1194->getItemEscape("/shop/page/input_option/@additional")}}" {{if $loop1194->getItem("@use") == (string) 'no'}} disabled="disabled"{{/if}}></input>
														<span class="form-control-feedback"></span>
													</div>
												</div>
												<div class="form-group">
													<label {{assign "classAttributeTmp52" ""}}  for="delivery_street"{{capture name="classAttributeTmp52" assign="classAttributeTmp52"}}control-label{{/capture}}{{capture name="classAttributeTmp52" assign="classAttributeTmp52"}}control-label {{$txt['81519::72793clinetnew_03']}}{{/capture}}  class="{{$classAttributeTmp52}}">{{$txt['81519::n56703_020']}}
													</label>
													<div class="has-feedback has-required {{$txt['81519::72793clinetnew_04']}}">
														<input id="delivery_street" type="text" class="form-control validate" name="delivery_street" data-serialize="#delivery_region" value="{{$loop1194->getItemEscape("@street")}}" maxlength="{{$loop1194->getItemEscape("/shop/page/input_option/@addres")}}" {{if $loop1194->getItem("@use") == (string) 'no'}} disabled="disabled"{{/if}} required="required"></input>
														<span class="form-control-feedback"></span>
													</div>
												</div>
												<div class="form-group">
													<label {{assign "classAttributeTmp53" ""}}  for="delivery_zipcode"{{capture name="classAttributeTmp53" assign="classAttributeTmp53"}}control-label{{/capture}}{{capture name="classAttributeTmp53" assign="classAttributeTmp53"}}control-label {{$txt['81519::72793clinetnew_03']}}{{/capture}}  class="{{$classAttributeTmp53}}">{{$txt['81519::n56203_011']}}
													</label>
													<div class="{{$txt['81519::72793clinetnew_04']}}">
														<div class="row">
															<div {{assign "classAttributeTmp32" ""}}{{capture name="classAttributeTmp32" assign="classAttributeTmp32"}}zipcode_wrapper{{/capture}}{{capture name="classAttributeTmp32" assign="classAttributeTmp32"}}zipcode_wrapper col-md-5 has-feedback has-required{{/capture}}  class="{{$classAttributeTmp32}}">
																<input id="delivery_zipcode" type="text" class="form-control validate" name="delivery_zipcode" data-serialize="#delivery_region" value="{{$loop1194->getItemEscape("@zipcode")}}" maxlength="{{$loop1194->getItemEscape("/shop/page/input_option/@zipcode")}}" {{if $loop1194->getItem("@use") == (string) 'no'}} disabled="disabled"{{/if}} required="required"></input>
																<span class="form-control-feedback"></span>
															</div>
															<div {{assign "classAttributeTmp33" ""}}{{capture name="classAttributeTmp33" assign="classAttributeTmp33"}}city_wrapper{{/capture}}{{capture name="classAttributeTmp33" assign="classAttributeTmp33"}}city_wrapper col-md-7 has-feedback has-required{{/capture}}  class="{{$classAttributeTmp33}}">
																<input id="delivery_city" type="text" class="form-control validate" name="delivery_city" value="{{$loop1194->getItemEscape("@city")}}" maxlength="{{$loop1194->getItemEscape("/shop/page/input_option/@city")}}" {{if $loop1194->getItem("@use") == (string) 'no'}} disabled="disabled"{{/if}} required="required"></input>
																<span class="form-control-feedback"></span>
															</div>
														</div>
													</div>
												</div>
												<div class="form-group">
													<label {{assign "classAttributeTmp56" ""}}  for="delivery_phone"{{capture name="classAttributeTmp56" assign="classAttributeTmp56"}}control-label{{/capture}}{{capture name="classAttributeTmp56" assign="classAttributeTmp56"}}control-label {{$txt['81519::72793clinetnew_03']}}{{/capture}}  class="{{$classAttributeTmp56}}">{{$txt['81519::n56703_021d']}}
													</label>
													<div class="has-feedback {{if $loop1194->getItem("/shop/page/client-data/contact_data/@mandatory_phone") == (string) 'true'}}has-required {{/if}}{{$txt['81519::72793clinetnew_04']}}">
														<input id="delivery_phone" type="text" class="form-control validate" name="delivery_phone" data-serialize="#delivery_region" value="{{$loop1194->getItemEscape("@phone")}}" maxlength="{{$loop1194->getItemEscape("/shop/page/input_option/@phone")}}" {{if $loop1194->getItem("@use") == (string) 'no'}} disabled="disabled"{{/if}}{{if $loop1194->getItem("/shop/page/client-data/contact_data/@mandatory_phone") == (string) 'true'}} required="required" {{/if}}></input>
														<span class="form-control-feedback"></span>
													</div>
												</div>
												{{if count( $loop1194->getList("/shop/page/options/countries/country"))  == (string) 1 and ( $loop1194->getItem("/shop/page/options/countries/country/@id")  == (string) 1143020003)}}
													<input id="delivery_region" type="hidden" name="delivery_region" value="{{$loop1194->getItemEscape("/shop/page/options/countries/country/@id")}}" data-vat_company="{{$loop1194->getItemEscape("/shop/page/options/countries/country/@vat_company")}}" data-vat="{{$loop1194->getItemEscape("/shop/page/options/countries/country/@vat")}}" {{if ( $loop1194->getItem("/shop/page/client-data/delivery_data/@use") == (string) 'no')}} disabled="disabled" {{/if}}></input>
												{{else}}
													<div class="form-group">
														<label {{assign "classAttributeTmp57" ""}}  for="delivery_region"{{capture name="classAttributeTmp57" assign="classAttributeTmp57"}}control-label{{/capture}}{{capture name="classAttributeTmp57" assign="classAttributeTmp57"}}control-label {{$txt['81519::72793clinetnew_03']}}{{/capture}}  class="{{$classAttributeTmp57}}">{{$txt['81519::n56703_022']}}
														</label>
														<div class="{{$txt['81519::72793clinetnew_04']}}">
															<select class="form-control delivery_countries" id="delivery_region" name="delivery_region" data-revalidate="#delivery_street,#delivery_zipcode" {{if ( $loop1194->getItem("/shop/page/client-data/delivery_data/@use") == (string) 'no')}} disabled="disabled" {{/if}}>
																{{foreach from=$loop1194->getList("/shop/page/options/countries/country") item=loop1339}}
																	<option value="{{$loop1339->getItemEscape("@id")}}" data-vat_company="{{$loop1339->getItemEscape("@vat_company")}}" data-vat="{{$loop1339->getItemEscape("@vat")}}" {{if ( $loop1339->getItem("@id") == (string) $loop1339->getItem("/shop/page/client-data/delivery_data/@region")) or ( $loop1339->getItem("@selected") == (string) 'true')}} selected="selected" {{/if}}>{{$loop1339->getItemEscape("@name")}}
																	</option>
																{{/foreach}}
															</select>
														</div>
													</div>
												{{/if}}
												{{foreach from=$loop1194->getList("/shop/page/options/countries/country") item=loop1356}}
													{{if  $loop1356->getItem("provinces/province")}}
														<div class="form-group client_provinces" style="display: none;" id="delivery_region_{{$loop1356->getItemEscape("@id")}}">
															<label {{assign "classAttributeTmp58" ""}}  for="delivery_province"{{capture name="classAttributeTmp58" assign="classAttributeTmp58"}}control-label{{/capture}}{{capture name="classAttributeTmp58" assign="classAttributeTmp58"}}control-label {{$txt['81519::72793clinetnew_03']}}{{/capture}}  class="{{$classAttributeTmp58}}">
																{{foreach from=$loop1356->getList("province_types/type") item=loop1363}}
																	{{if  $loop1363->getItem("text()")  == (string) 'state'}}
																		{{$txt['81519::n56203_013_state']}}
																	{{elseif  $loop1363->getItem("text()")  == (string) 'province'}}
																		{{$txt['81519::n56203_013_province']}}
																	{{elseif  $loop1363->getItem("text()")  == (string) 'territory'}}
																		{{$txt['81519::n56203_013_territory']}}
																	{{else}}
																		{{$txt['81519::n56203_013_region']}}
																	{{/if}}
																	{{if !( $loop1363@iteration   == (string)  $loop1363@total )}}
																		{{$txt['81519::n56203_013_sep']}}
																	{{/if}}
																{{/foreach}}
																{{$txt['81519::n56203_013_sep2']}}
															</label>
															<div class="{{$txt['81519::72793clinetnew_04']}}">
																<select class="form-control" name="delivery_province" disabled="disabled">
																	{{foreach from=$loop1356->getList("provinces/province") item=loop1373}}
																		<option value="{{$loop1373->getItemEscape("@id")}}" {{if ( $loop1373->getItem("@id") == (string) $loop1373->getItem("/shop/page/client-data/invoice_data/@province")) or ( $loop1373->getItem("@selected") == (string) 'true')}} selected="selected" {{/if}}>{{$loop1373->getItemEscape("@name")}}
																		</option>
																	{{/foreach}}
																</select>
															</div>
														</div>
													{{/if}}
												{{/foreach}}
											{{/foreach}}
										</div>
									{{/if}}
								</div>
							</div>
							<div class="row clearfix">
								<div class="col-md-6 col-xs-12" id="client_new_contact">
									<h2 class="big_label">{{$txt['81519::clinetnew_kont']}}
									</h2>
									<div class="contact_box cn_wrapper">
										{{if $is_firm  == (string) 'true'}}
											<div {{assign "classAttributeTmp20" ""}}{{capture name="classAttributeTmp20" assign="classAttributeTmp20"}}form-group move_is_firm{{/capture}}{{if $xml->getItem("page/client-data/@disallow_change_company_data") == (string) 'true'}}{{capture name="classAttributeTmp20" assign="classAttributeTmp20"}}form-group move_is_firm readonly{{/capture}}{{/if}}  class="{{$classAttributeTmp20}}">
												<label {{assign "classAttributeTmp21" ""}}  for="client_firstname"{{capture name="classAttributeTmp21" assign="classAttributeTmp21"}}control-label{{/capture}}{{capture name="classAttributeTmp21" assign="classAttributeTmp21"}}control-label {{$txt['81519::72793clinetnew_03']}}{{/capture}}  class="{{$classAttributeTmp21}}">{{$txt['81519::n56203_002']}}
												</label>
												<div class="has-feedback has-required {{$txt['81519::72793clinetnew_04']}}">
													<input id="client_firstname" type="text" class="form-control validate" name="client_firstname" maxlength="{{$xml->getItemEscape("/shop/page/input_option/@name")}}" value="{{$xml->getItemEscape("/shop/page/client-data/invoice_data/@firstname")}}" data-copy="delivery_firstname" {{if $xml->getItem("page/client-data/@disallow_change_company_data") == (string) 'true'}} readonly="readonly"{{/if}} required="required"></input>
													<span class="form-control-feedback"></span>
												</div>
											</div>
											<div {{assign "classAttributeTmp20" ""}}{{capture name="classAttributeTmp20" assign="classAttributeTmp20"}}form-group move_is_firm{{/capture}}{{if $xml->getItem("page/client-data/@disallow_change_company_data") == (string) 'true'}}{{capture name="classAttributeTmp20" assign="classAttributeTmp20"}}form-group move_is_firm readonly{{/capture}}{{/if}}  class="{{$classAttributeTmp20}}">
												<label {{assign "classAttributeTmp23" ""}}  for="client_lastname"{{capture name="classAttributeTmp23" assign="classAttributeTmp23"}}control-label{{/capture}}{{capture name="classAttributeTmp23" assign="classAttributeTmp23"}}control-label {{$txt['81519::72793clinetnew_03']}}{{/capture}}  class="{{$classAttributeTmp23}}">{{$txt['81519::n56203_003']}}
												</label>
												<div class="has-feedback {{if $xml->getItem("/shop/page/client-data/profile_data/@mandatory_lastname") == (string) 'true'}}has-required{{/if}} {{$txt['81519::72793clinetnew_04']}}">
													<input id="client_lastname" type="text" class="form-control validate" name="client_lastname" maxlength="{{$xml->getItemEscape("/shop/page/input_option/@lastname")}}" value="{{$xml->getItemEscape("/shop/page/client-data/invoice_data/@lastname")}}" data-copy="delivery_lastname" {{if $xml->getItem("page/client-data/@disallow_change_company_data") == (string) 'true'}} readonly="readonly"{{/if}}{{if $xml->getItem("/shop/page/client-data/profile_data/@mandatory_lastname") == (string) 'true'}} required="required"{{/if}}></input>
													<span class="form-control-feedback"></span>
												</div>
											</div>
										{{/if}}
										<div class="form-group">
											<label {{assign "classAttributeTmp63" ""}}  for="client_email"{{capture name="classAttributeTmp63" assign="classAttributeTmp63"}}control-label{{/capture}}{{capture name="classAttributeTmp63" assign="classAttributeTmp63"}}control-label {{$txt['81519::72793clinetnew_03']}}{{/capture}}  class="{{$classAttributeTmp63}}">{{$txt['81519::n56203_006a']}}
											</label>
											<div class="has-feedback {{if $xml->getItem("/shop/page/client-data/contact_data/@mandatory_email") == (string) 'true'}}has-required {{/if}}{{$txt['81519::72793clinetnew_04']}}">
												<input id="client_email" type="email" class="form-control validate" name="client_email" value="{{$xml->getItemEscape("/shop/page/client-data/contact_data/@email")}}" {{if $xml->getItem("/shop/page/client-data/contact_data/@mandatory_email") == (string) 'true'}} required="required" {{/if}}></input>
												<span class="form-control-feedback"></span>
											</div>
										</div>
										<div class="form-group">
											<div class="{{$txt['81519::72793clinetnew_05']}} checkbox">
												<label>
													<input id="client_mailing" type="checkbox" name="client_mailing" value="1" {{if $xml->getItem("/shop/page/client-data/contact_data/@mailing") neq (string) '0'}} checked="checked"{{/if}}></input>{{$txt['81519::n56203_027']}}
												</label>
											</div>
										</div>
										<div class="form-group">
											<label {{assign "classAttributeTmp64" ""}}  for="client_phone"{{capture name="classAttributeTmp64" assign="classAttributeTmp64"}}control-label{{/capture}}{{capture name="classAttributeTmp64" assign="classAttributeTmp64"}}control-label {{$txt['81519::72793clinetnew_03']}}{{/capture}}  class="{{$classAttributeTmp64}}">{{$txt['81519::n56203_006b']}}
											</label>
											<div class="has-feedback {{if $xml->getItem("/shop/page/client-data/contact_data/@mandatory_phone") == (string) 'true'}}has-required {{/if}}{{$txt['81519::72793clinetnew_04']}}">
												<input id="client_phone" type="tel" class="form-control validate" name="client_phone" data-serialize="#client_region" value="{{$xml->getItemEscape("/shop/page/client-data/contact_data/@phone")}}" {{if $xml->getItem("/shop/page/client-data/contact_data/@mandatory_phone") == (string) 'true'}} required="required" {{/if}} data-copy="delivery_phone"></input>
												<span class="form-control-feedback"></span>
											</div>
										</div>
										{{if  $xml->getItem("/shop/page/client-data/contact_data/@send_sms")}}
											<div class="form-group">
												<div class="{{$txt['81519::72793clinetnew_05']}} checkbox">
													<label>
														<input id="client_send_sms" type="checkbox" name="client_send_sms" value="y" {{if $xml->getItem("/shop/page/client-data/contact_data/@send_sms") == (string) 'y' or $xml->getItem("/shop/page/client-data/contact_data/@send_sms") == (string) 'd' or $xml->getItem("/shop/page/client-data/contact_data/@send_sms") == (string) '1'}} checked="checked"{{/if}}></input>{{$txt['81519::n56203_027sms']}}
														<input type="hidden" name="client_send_sms_exists" value="1"/>
													</label>
												</div>
											</div>
										{{/if}}
									</div>
								</div>
								{{if $client_new_mode  neq (string) 'onceorder'}}
									<div class="col-md-6 col-xs-12" id="client_new_login">
										<h2 class="big_label">{{$txt['81519::clinetnew_log']}}
										</h2>
										<div class="login_box cn_wrapper">
											<div class="form-group">
												<label {{assign "classAttributeTmp65" ""}}  for="client_login"{{capture name="classAttributeTmp65" assign="classAttributeTmp65"}}control-label{{/capture}}{{capture name="classAttributeTmp65" assign="classAttributeTmp65"}}control-label {{$txt['81519::72793clinetnew_03']}}{{/capture}}  class="{{$classAttributeTmp65}}">{{$txt['81519::n56203_024']}}
												</label>
												<div class="has-feedback {{if !( $xml->getItem("/shop/page/client-data/@edit") == (string) 'true')}}has-required {{/if}}{{$txt['81519::72793clinetnew_04']}}">
													<input id="client_login" type="text" class="form-control validate" name="client_login" {{if $client_new_mode == (string) 'edit'}} disabled="disabled"{{/if}}{{if !( $xml->getItem("/shop/page/client-data/@edit") == (string) 'true')}} required="required"{{/if}} value="{{$xml->getItemEscape("/shop/page/client-data/profile_data/@login")}}"></input>
													<span class="form-control-feedback"></span>
												</div>
											</div>
											{{if $client_new_mode  == (string) 'edit'}}
												<div class="form-group has-feedback">
													<label {{assign "classAttributeTmp10" ""}}{{capture name="classAttributeTmp10" assign="classAttributeTmp10"}}control-label{{/capture}}{{capture name="classAttributeTmp10" assign="classAttributeTmp10"}}control-label {{$txt['81519::72793clinetnew_03']}}{{/capture}}  class="{{$classAttributeTmp10}}">{{$txt['81519::56478_cr007login1']}}
													</label>
													<div class="form-control-static {{$txt['81519::72793clinetnew_04']}}">
														<label class="radio-inline">
															<input type="radio" name="client_generate_password" id="client_generate_password1" value="y" checked="checked" {{if !( $xml->getItem("/shop/page/client-data/@register") == (string)'true')}} name="client_generate_password_n"{{/if}}></input>{{$txt['81519::56478_cr007l11']}}
														</label>
														<label class="radio-inline">
															<input type="radio" name="client_generate_password" id="client_generate_password2" value="no" {{if !( $xml->getItem("/shop/page/client-data/@register") == (string)'true')}} name="client_generate_password_n"{{/if}}></input>{{$txt['81519::cr56478_007l21']}}
														</label>
													</div>
												</div>
											{{/if}}
											<div class="form-group password-group" {{if $client_new_mode == (string) 'edit'}} style="display:none;"{{/if}}>
												<label {{assign "classAttributeTmp67" ""}}  for="client_password"{{capture name="classAttributeTmp67" assign="classAttributeTmp67"}}control-label{{/capture}}{{capture name="classAttributeTmp67" assign="classAttributeTmp67"}}control-label {{$txt['81519::72793clinetnew_03']}}{{/capture}}  class="{{$classAttributeTmp67}}">{{$txt['81519::n56203_025']}}
												</label>
												<div class="has-feedback {{if $xml->getItem("/shop/page/client-data/@register") == (string)'true' and $xml->getItem("/shop/page/client-data/profile_data/@mandatory_password") == (string)'true'}}has-required {{/if}}{{$txt['81519::72793clinetnew_04']}}">
													<input id="client_password" class="form-control validate" type="password" name="client_password" {{if $xml->getItem("/shop/page/client-data/profile_data/@max_password_length") and $xml->getItem("/shop/page/client-data/profile_data/@max_password_length") gt (string) 0}} maxlength="{{$xml->getItemEscape("/shop/page/client-data/profile_data/@max_password_length")}}" {{/if}}{{if $xml->getItem("/shop/page/client-data/@register") == (string)'true' and $xml->getItem("/shop/page/client-data/profile_data/@mandatory_password") == (string)'true'}} required="required" {{/if}}{{if $client_new_mode == (string) 'edit'}} disabled="disabled"{{/if}}></input>
													<span class="form-control-feedback"></span>
												</div>
												{{if  $xml->getItem("/shop/page/client-data/@register") == (string)'true' and  $xml->getItem("/shop/page/client-data/profile_data/@mandatory_password") neq (string)'true'}}
													<input id="cnew-generate_password" type="hidden" value="n" name="client_generate_password"/>
												{{/if}}
											</div>
											<div class="form-group password-group" {{if $client_new_mode == (string) 'edit'}} style="display:none;"{{/if}}>
												<label {{assign "classAttributeTmp68" ""}}  for="repeat_password"{{capture name="classAttributeTmp68" assign="classAttributeTmp68"}}control-label{{/capture}}{{capture name="classAttributeTmp68" assign="classAttributeTmp68"}}control-label {{$txt['81519::72793clinetnew_03']}}{{/capture}}  class="{{$classAttributeTmp68}}">{{$txt['81519::n56203_026']}}
												</label>
												<div class="has-feedback {{if $xml->getItem("/shop/page/client-data/@register") == (string)'true' and $xml->getItem("/shop/page/client-data/profile_data/@mandatory_password") == (string)'true'}}has-required {{/if}}{{$txt['81519::72793clinetnew_04']}}">
													<input id="repeat_password" class="form-control validate" type="password" name="repeat_password" data-serialize="#client_password" {{if $xml->getItem("/shop/page/client-data/profile_data/@max_password_length") and $xml->getItem("/shop/page/client-data/profile_data/@max_password_length") gt (string) 0}} maxlength="{{$xml->getItemEscape("/shop/page/client-data/profile_data/@max_password_length")}}" {{/if}}{{if $xml->getItem("/shop/page/client-data/@register") == (string)'true' and $xml->getItem("/shop/page/client-data/profile_data/@mandatory_password") == (string)'true'}} required="required" {{/if}}{{if $client_new_mode == (string) 'edit'}} disabled="disabled"{{/if}}></input>
													<span class="form-control-feedback"></span>
												</div>
											</div>
										</div>
									</div>
								{{/if}}
							</div>
							<div id="client_new_summary" class="row clearfix">
								<div class="{{$txt['81519::72793clinetnew_052']}}">
									<div class="clientnew_regulations">
										{{if ($client_new_mode  == (string) 'edit') and  $xml->getItem("login_options/service[@connected='true']")}}
											<div class="form-group">
												<div class="{{$txt['81519::72793clinetnew_051']}}">
													<label>{{$txt['81519::n56203_konto1']}}{{$xml->getItemEscape("login_options/service[@connected='true']/@name")}}
													</label>
													<a class="service_item service_{{$xml->getItemEscape("login_options/service[@connected='true']/@name")|replace:' +':'_'}}" href="{{$xml->getItemEscape("login_options/service[@connected='true']/@disconnect_url")}}">{{$txt['81519::n56203_konto2']}}</a>
												</div>
											</div>
										{{/if}}
										<div class="{{$txt['81519::72793clinetnew_051']}}">
											{{if !( $xml->getItem("/shop/contact/owner/@vat_registered")  == (string) 'false')}}
												<div class="checkbox">
													<label>
														<input type="checkbox" name="vat_company" id="vat_company" value="1" {{if ( $xml->getItem("/shop/page/client-data/invoice_data/@vat_company") == (string) 'n') or ( $xml->getItem("/shop/page/client-data/invoice_data/@vat_company") == (string) 'p')}} checked="checked" {{/if}}{{if $xml->getItem("page/client-data/@disallow_change_company_data") == (string) 'true'}} readonly="readonly" {{/if}}></input>{{$txt['81519::n56203_014_vat']}}
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
										</div>
									</div>
									<div class="clientnew_buttons">
										<div class="{{$txt['81519::72793clinetnew_051']}}">
											<button id="submit_clientnew_form" type="submit" class="btn">
												{{if $client_new_mode  == (string) 'edit'}}
													{{$txt['81519::n56203_029a']}}
												{{elseif $client_new_mode  == (string) 'register'}}
													{{$txt['81519::n56203_029']}}
												{{elseif $client_new_mode  == (string) 'onceorder'}}
													{{$txt['81519::n56203_030']}}
												{{/if}}
											</button>
											<div class="button_legend">{{$txt['81519::n56203_031b']}}
											</div>
										</div>
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
						<script class="ajaxLoad">
               client_new.init();
        						</script>

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
