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
			<script type="text/javascript" src="/gfx/{{$xml->getItemEscape("language/@id")}}/affiliate_generator_php.js.gzip?r=1570606968">			</script>

			<script type="text/javascript" src="/gfx/{{$xml->getItemEscape("language/@id")}}/affiliate_generator_code.js.gzip?r=1570606968">			</script>

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
						{{include file="component_menu_affiliate_108064.tpl"}}
						{{include file="component_menu_messages_106608.tpl"}}
						<!--Affiliate - wybór generatora (affiliate_generator_mode, 108071.1)-->
						{{if  $xml->getItem("page/generator")}}
							<div class="affiliate_generator_label">
								<span class="affiliate_generator_label_span">{{$txt['108071::affiliate_generator_label']}}</span>
							</div>
							<div class="affiliate_generator_type">
								<a {{assign "classAttributeTmp3" ""}}  href="/affiliate-generator.php?generate=promoCodes" {{if $xml->getItem("page/generator/@type") == (string)'promoCodes'}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}promoCodes_selected{{/capture}}{{else}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}promoCodes_unselected{{/capture}}{{/if}}  class="{{$classAttributeTmp3}}">
									<span>{{$txt['108071::affiliate_promocodes_label']}}</span></a>
								<a {{assign "classAttributeTmp4" ""}}  href="/affiliate-generator.php?generate=html" {{if $xml->getItem("page/generator/@type") == (string)'html'}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}html_selected{{/capture}}{{else}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}html_unselected{{/capture}}{{/if}}  class="{{$classAttributeTmp4}}">
									<span>{{$txt['108071::affiliate_HTML_label']}}</span></a>
								<a {{assign "classAttributeTmp5" ""}}  href="/affiliate-generator.php?generate=php" {{if $xml->getItem("page/generator/@type") == (string)'php'}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}php_selected{{/capture}}{{else}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}php_unselected{{/capture}}{{/if}}  class="{{$classAttributeTmp5}}">
									<span>{{$txt['108071::affiliate_PHP_label']}}</span></a>
								<a {{assign "classAttributeTmp6" ""}}  href="/affiliate-generator.php?generate=js" {{if $xml->getItem("page/generator/@type") == (string)'js'}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}js_selected{{/capture}}{{else}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}js_unselected{{/capture}}{{/if}}  class="{{$classAttributeTmp6}}">
									<span>{{$txt['108071::affiliate_JS_label']}}</span></a>
								<div class="clear">
								</div>
							</div>
							<div class="affiliate_generator_type_desc">
								{{if  $xml->getItem("page/generator[@type='html']")}}
									{{$txt['108071::affiliate_generator_html_text']}}
								{{/if}}
								{{if  $xml->getItem("page/generator[@type='js']")}}
									{{$txt['108071::affiliate_generator_js_text']}}
								{{/if}}
								{{if  $xml->getItem("page/generator[@type='php']")}}
									{{$txt['108071::affiliate_generator_php_text']}}
								{{/if}}
							</div>
						{{/if}}
						<!--Affiliate - generator kodu JavaScript (affiliate_generator_javascript, 108072.1)-->
						{{if  $xml->getItem("page/generator")}}
							{{if  $xml->getItem("page/generator[@type='js']")}}
								<div class="affiliate_html_generator">
									<form name="affiliate_form_js" id="affiliate_form_js" method="POST">
										<input id="shop_url" type="hidden" value=" {{$xml->getItemEscape("@baseurl")}} "></input>
										<div {{assign "classAttributeTmp7" ""}}{{capture name="classAttributeTmp7" assign="classAttributeTmp7"}}affiliate_generator_js_step1_label{{/capture}}{{capture name="classAttributeTmp7" assign="classAttributeTmp7"}}big_label affiliate_generator_js_step1_label{{/capture}}  class="{{$classAttributeTmp7}}">
											<span class="affiliate_generator_js_step1_label_span">{{$txt['108072::affiliate_js_step1_label']}}</span>
										</div>
										<div class="step1_js_desc">
											<span>{{$txt['108072::step1_js_desc']}}</span>
										</div>
										<div class="affiliate_products_link">
											<input type="text" name="link" class="affiliate_products_link" value="{{$xml->getItemEscape("/shop/page/generator/default_link")}}"></input>
										</div>
										<div class="affiliate_js_sprawdzenie">
											<a {{assign "classAttributeTmp8" ""}}  href="#" id="sprawdzenie_pr"{{capture name="classAttributeTmp8" assign="classAttributeTmp8"}}affiliate_js_sprawdzenie_a{{/capture}}{{capture name="classAttributeTmp8" assign="classAttributeTmp8"}}btn-small affiliate_js_sprawdzenie_a{{/capture}}  class="{{$classAttributeTmp8}}">{{$txt['108072::affiliate_button_4']}}</a>
											<img style="display:none;" class="affiliate_loader_gif" id="affiliate_loader_gif" src="/gfx/__IAI_TEMPLATE_LANG_639_1__/affiliate_loader.gif?r=1570606968"/>
											<div style="color:green; display:none;" class="affiliate_resources_ok" id="affiliate_resources_ok">{{$txt['108072::affiliate_js_ok']}}
											</div>
											<div style="color:red; display:none;" class="affiliate_resources_none" id="affiliate_resources_none">{{$txt['108072::affiliate_js_none']}}
											</div>
										</div>
										<div {{assign "classAttributeTmp9" ""}}{{capture name="classAttributeTmp9" assign="classAttributeTmp9"}}affiliate_generator_js_step2_label{{/capture}}{{capture name="classAttributeTmp9" assign="classAttributeTmp9"}}big_label affiliate_generator_js_step2_label{{/capture}}  class="{{$classAttributeTmp9}}">
											<span class="affiliate_generator_js_step2_label_span">{{$txt['108072::affiliate_js_step2_label']}}</span>
										</div>
										<div class="affiliate_generator_js_step2_desc">{{$txt['108072::affiliate_js_9_2']}}
										</div>
										<div class="affiliate_wyswietlanie">
											<div style="font-weight:bold; font-size:13px;">{{$txt['108072::affiliate_js_10']}}
											</div>
											<table cellspacing="0" cellpadding="0" class="affiliate_wyswietlanie">
												<tr>
													<td class="affiliate_wyswietlanie_left">{{$txt['108072::affiliate_js_11']}}
													</td>
													<td class="affiliate_wyswietlanie_right">
														{{if count( $xml->getList("/shop/language/option"))  == (string) 1}}
															{{foreach from=$xml->getList("/shop/language/option") item=loop386}}
																{{$loop386->getItemEscape("@name")}}
																<input type="hidden" id="lang" name="language" value="{{$loop386->getItemEscape("@id")}}"></input>
															{{/foreach}}
														{{else}}
															<select class="affiliate_wyglad" id="lang" name="language">
																{{foreach from=$xml->getList("/shop/language/option") item=loop393}}
																	<option value="{{$loop393->getItemEscape("@id")}}">{{$loop393->getItemEscape("@name")}}
																	</option>
																{{/foreach}}
															</select>
														{{/if}}
													</td>
												</tr>
												<tr>
													<td class="affiliate_wyswietlanie_left">{{$txt['108072::affiliate_js_12']}}
													</td>
													<td class="affiliate_wyswietlanie_right">
														{{if count( $xml->getList("/shop/currency/option"))  == (string) 1}}
															{{foreach from=$xml->getList("/shop/currency/option") item=loop406}}
																{{$loop406->getItemEscape("@id")}}({{$loop406->getItemEscape("@symbol")}})
																<input type="hidden" id="curr" name="currency" value="{{$loop406->getItemEscape("@id")}}"></input>
															{{/foreach}}
														{{else}}
															<select class="affiliate_wyglad" id="curr" name="currency">
																{{foreach from=$xml->getList("/shop/currency/option") item=loop413}}
																	<option value="{{$loop413->getItemEscape("@id")}}">{{$loop413->getItemEscape("@id")}}({{$loop413->getItemEscape("@symbol")}})
																	</option>
																{{/foreach}}
															</select>
														{{/if}}
													</td>
												</tr>
												<tr id="affiliate_ilosc_produktow">
													<td class="affiliate_wyswietlanie_left">{{$txt['108072::affiliate_js_112']}}
													</td>
													<td class="affiliate_wyswietlanie_right">
														<select class="affiliate_wyglad" id="products_count" name="products_count">
															<option value="1">1
															</option>
															<option selected="selected" value="2">2
															</option>
															<option value="3">3
															</option>
															<option value="4">4
															</option>
														</select>
													</td>
												</tr>
												<tr id="affiliate_uklad_produktow">
													<td class="affiliate_wyswietlanie_left">{{$txt['108072::affiliate_js_112_2']}}
													</td>
													<td class="affiliate_wyswietlanie_right">
														<select class="affiliate_wyglad" id="products_uklad" name="products_uklad">
															<option value="poziomy">{{$txt['108072::affiliate_js_pionowy']}}
															</option>
															<option value="pionowy">{{$txt['108072::affiliate_js_poziomy']}}
															</option>
														</select>
													</td>
												</tr>
												<tr>
													<td class="affiliate_wyswietlanie_left">{{$txt['108072::affiliate_js_112_55']}}
													</td>
													<td class="affiliate_wyswietlanie_right">
														<input value="225" style="width:40px;" type="text" name="banner_width" id="banner_width"/>px
													</td>
												</tr>
												<tr>
													<td class="affiliate_wyswietlanie_left">{{$txt['108072::affiliate_js_112_66']}}
													</td>
													<td class="affiliate_wyswietlanie_right">
														<input value="300" style="width:40px;" type="text" name="banner_height" id="banner_height"/>px
													</td>
												</tr>
												<tr>
													<td class="affiliate_wyswietlanie_left">{{$txt['108072::affiliate_js_112_77']}}
													</td>
													<td class="affiliate_wyswietlanie_right">
														<input value="225" style="width:40px;" type="text" name="image_width" id="image_width"/>px
													</td>
												</tr>
												<tr>
													<td class="affiliate_wyswietlanie_left">{{$txt['108072::affiliate_js_112_88']}}
													</td>
													<td class="affiliate_wyswietlanie_right">
														<input value="220" style="width:40px;" type="text" name="image_height" id="image_height"/>px
													</td>
												</tr>
											</table>
											<input type="hidden" name="affiliate" value="{{$xml->getItemEscape("basket/@login")}}"></input>
										</div>
										<div class="affiliate_kolorystyka">
											<div style="font-weight:bold; font-size:13px;">{{$txt['108072::affiliate_js_13']}}
											</div>
											<table class="affiliate_kolorystyka">
												<tr>
													<td class="affiliate_kolorystyka_left">
														<span>{{$txt['108072::affiliate_js_14']}}</span>
													</td>
													<td class="affiliate_kolorystyka_right">
														<input name="color3" type="text" style="width: 60px;" maxlength="7" value="#000000" id="color3" class="iColorPicker"/>
														<span style="float:left;">
															<input class="affiliate_js_bold" type="checkbox" name="nazwa_bold"/>{{$txt['108072::affiliate_js_15']}}</span>
														<div class="clear">
														</div>
													</td>
												</tr>
												<tr>
													<td class="affiliate_kolorystyka_left">
														<span>{{$txt['108072::affiliate_js_16']}}</span>
													</td>
													<td class="affiliate_kolorystyka_right">
														<input name="color4" class="iColorPicker" type="text" style="width: 60px;" maxlength="7" value="#d9592b" id="color4"/>
														<span style="float:left;">
															<input class="affiliate_js_bold" type="checkbox" name="cena_bold"/>{{$txt['108072::affiliate_js_16_2']}}</span>
														<div class="clear">
														</div>
													</td>
												</tr>
												<tr>
													<td class="affiliate_kolorystyka_left">
														<span>{{$txt['108072::affiliate_js_16_3']}}</span>
													</td>
													<td class="affiliate_kolorystyka_right">
														<input name="color5" class="iColorPicker" type="text" style="width: 60px;" maxlength="7" value="#8d8d8d" id="color5"/>
														<span style="float:left;">
															<input class="affiliate_js_bold" type="checkbox" name="cena_promo_bold"/>{{$txt['108072::affiliate_js_16_5']}}</span>
														<div class="clear">
														</div>
													</td>
												</tr>
												<tr>
													<td class="affiliate_kolorystyka_left">
														<span>{{$txt['108072::affiliate_js_17']}}</span>
													</td>
													<td class="affiliate_kolorystyka_right">
														<span>
															<input name="border_radio" class="border_color" type="radio" id="border_radio1" value="nie" checked="checked">{{$txt['108072::affiliate_js_18']}}</input></span>
														<span style="margin-left:10px;">
															<input name="border_radio" class="border_color" type="radio" id="border_radio2" value="tak">{{$txt['108072::affiliate_js_19']}}</input></span>
													</td>
												</tr>
												<tr id="border_tr" style="display:none;">
													<td class="affiliate_kolorystyka_left">
														<span>{{$txt['108072::affiliate_js_20']}}</span>
													</td>
													<td class="affiliate_kolorystyka_right">
														<div>
															<input name="color1" class="iColorPicker" type="text" style="width: 60px;" maxlength="7" value="#fff" id="color1"/>
															<span style="float:left;">{{$txt['108072::affiliate_js_18_8']}}
																<input style="width:20px;" name="border_width" type="text" value="1"/>px</span>
															<div class="clear">
															</div>
														</div>
													</td>
												</tr>
												<tr>
													<td class="affiliate_kolorystyka_left">
														<span>{{$txt['108072::affiliate_js_21']}}</span>
													</td>
													<td class="affiliate_kolorystyka_right">
														<span>
															<input name="background_radio" class="background_color" type="radio" id="background_radio1" value="nie" checked="checked">{{$txt['108072::affiliate_js_22']}}</input></span>
														<span style="margin-left:10px;">
															<input name="background_radio" class="background_color" type="radio" id="background_radio2" value="tak">{{$txt['108072::affiliate_js_23']}}</input></span>
													</td>
												</tr>
												<tr id="background_tr" style="display:none;">
													<td class="affiliate_kolorystyka_left">
														<span>{{$txt['108072::affiliate_js_24']}}</span>
													</td>
													<td class="affiliate_kolorystyka_right">
														<div>
															<input name="color2" class="iColorPicker" type="text" style="width: 60px;" maxlength="7" value="#fff" id="color2"/>
															<div class="clear">
															</div>
														</div>
													</td>
												</tr>
											</table>
										</div>
										<div class="clear">
										</div>
										<div class="affiliate_podglad_desc">{{$txt['108072::affiliate_js_24_1']}}
										</div>
										<a {{assign "classAttributeTmp10" ""}}  href="#" id="podglad_button"{{capture name="classAttributeTmp10" assign="classAttributeTmp10"}}affiliate_podglad_button{{/capture}}{{capture name="classAttributeTmp10" assign="classAttributeTmp10"}}btn-small affiliate_podglad_button{{/capture}}  class="{{$classAttributeTmp10}}">{{$txt['108072::affiliate_button_5']}}</a>
										<div class="podglad">
										</div>
										<div {{assign "classAttributeTmp11" ""}}{{capture name="classAttributeTmp11" assign="classAttributeTmp11"}}affiliate_generator_js_step3_label{{/capture}}{{capture name="classAttributeTmp11" assign="classAttributeTmp11"}}big_label affiliate_generator_js_step3_label{{/capture}}  class="{{$classAttributeTmp11}}">
											<span class="affiliate_generator_js_step3_label_span">{{$txt['108072::affiliate_js_step3_label']}}</span>
										</div>
										<div class="affiliate_js_step3_desc">{{$txt['108072::affiliate_js_25']}}
										</div>
										<div class="js_generator_output" id="js_generator_output">
											<textarea class="js_output" readonly="true" cols="65" rows="4" name="output" id="output"></textarea>
										</div>
										<a {{assign "classAttributeTmp12" ""}}  id="affiliate_js_generate"{{capture name="classAttributeTmp12" assign="classAttributeTmp12"}}affiliate_js_generate{{/capture}} href="#"{{capture name="classAttributeTmp12" assign="classAttributeTmp12"}}btn-small affiliate_js_generate{{/capture}}  class="{{$classAttributeTmp12}}">{{$txt['108072::affiliate_button_6']}}</a>
									</form>
								</div>
							{{/if}}
						{{/if}}
						<!--Affiliate - generator kodu PHP (affiliate_generator_php, 90344.1)-->
						{{if  $xml->getItem("page/generator")}}
							{{if  $xml->getItem("page/generator[@type='php']")}}
								<div id="php_code" style="display:none;">
									{{foreach from=$xml->getList("page/generator/code/line") item=loop538}}
										{{$loop538->getItemEscape("text")}}
										<br/>
									{{/foreach}}
								</div>
								<div class="affiliate_html_generator">
									<form name="affiliate_form_js" id="affiliate_form_js" action="/ajax/affiliate-generator.php" method="POST">
										<input id="shop_url" type="hidden" name="affiliate_shop_urtl" value=" {{$xml->getItemEscape("@baseurl")}} "></input>
										<div {{assign "classAttributeTmp7" ""}}{{capture name="classAttributeTmp7" assign="classAttributeTmp7"}}affiliate_generator_js_step1_label{{/capture}}{{capture name="classAttributeTmp7" assign="classAttributeTmp7"}}big_label affiliate_generator_js_step1_label{{/capture}}  class="{{$classAttributeTmp7}}">
											<span class="affiliate_generator_js_step1_label_span">{{$txt['90344::affiliate_js_step1_label']}}</span>
										</div>
										<div class="step1_js_desc">
											<span>{{$txt['90344::step1_js_desc']}}</span>
										</div>
										<div class="affiliate_products_link">
											<input type="text" name="link" class="affiliate_products_link" value="{{$xml->getItemEscape("/shop/page/generator/default_link")}}"></input>
										</div>
										<div class="affiliate_js_sprawdzenie">
											<a {{assign "classAttributeTmp8" ""}}  href="#" id="sprawdzenie_pr"{{capture name="classAttributeTmp8" assign="classAttributeTmp8"}}affiliate_js_sprawdzenie_a{{/capture}}{{capture name="classAttributeTmp8" assign="classAttributeTmp8"}}btn-small affiliate_js_sprawdzenie_a{{/capture}}  class="{{$classAttributeTmp8}}">{{$txt['90344::affiliate_button_8']}}</a>
											<img style="display:none;" class="affiliate_loader_gif" id="affiliate_loader_gif" src="/gfx/__IAI_TEMPLATE_LANG_639_1__/affiliate_loader.gif?r=1570606968"/>
											<div style="color:green; display:none;" class="affiliate_resources_ok" id="affiliate_resources_ok">{{$txt['90344::affiliate_js_ok']}}
											</div>
											<div style="color:red; display:none;" class="affiliate_resources_none" id="affiliate_resources_none">{{$txt['90344::affiliate_js_none']}}
											</div>
										</div>
										<div {{assign "classAttributeTmp9" ""}}{{capture name="classAttributeTmp9" assign="classAttributeTmp9"}}affiliate_generator_js_step2_label{{/capture}}{{capture name="classAttributeTmp9" assign="classAttributeTmp9"}}big_label affiliate_generator_js_step2_label{{/capture}}  class="{{$classAttributeTmp9}}">
											<span class="affiliate_generator_js_step2_label_span">{{$txt['90344::affiliate_js_step2_label']}}</span>
										</div>
										<div class="affiliate_generator_js_step2_desc">{{$txt['90344::affiliate_js_9_2']}}
										</div>
										<div class="affiliate_wyswietlanie">
											<div style="font-weight:bold; font-size:13px;">{{$txt['90344::affiliate_js_10']}}
											</div>
											<table cellspacing="0" cellpadding="0" class="affiliate_wyswietlanie">
												<tr>
													<td class="affiliate_wyswietlanie_left">{{$txt['90344::affiliate_js_11']}}
													</td>
													<td class="affiliate_wyswietlanie_right">
														{{if count( $xml->getList("/shop/language/option"))  == (string) 1}}
															{{foreach from=$xml->getList("/shop/language/option") item=loop592}}
																{{$loop592->getItemEscape("@name")}}
																<input type="hidden" id="lang" name="language" value="{{$loop592->getItemEscape("@id")}}"></input>
															{{/foreach}}
														{{else}}
															<select class="affiliate_wyglad" id="lang" name="language">
																{{foreach from=$xml->getList("/shop/language/option") item=loop599}}
																	<option value="{{$loop599->getItemEscape("@id")}}">{{$loop599->getItemEscape("@name")}}
																	</option>
																{{/foreach}}
															</select>
														{{/if}}
													</td>
												</tr>
												<tr>
													<td class="affiliate_wyswietlanie_left">{{$txt['90344::affiliate_js_12']}}
													</td>
													<td class="affiliate_wyswietlanie_right">
														{{if count( $xml->getList("/shop/currency/option"))  == (string) 1}}
															{{foreach from=$xml->getList("/shop/currency/option") item=loop612}}
																{{$loop612->getItemEscape("@id")}}({{$loop612->getItemEscape("@symbol")}})
																<input type="hidden" id="curr" name="currency" value="{{$loop612->getItemEscape("@id")}}"></input>
															{{/foreach}}
														{{else}}
															<select class="affiliate_wyglad" id="curr" name="currency">
																{{foreach from=$xml->getList("/shop/currency/option") item=loop619}}
																	<option value="{{$loop619->getItemEscape("@id")}}">{{$loop619->getItemEscape("@id")}}({{$loop619->getItemEscape("@symbol")}})
																	</option>
																{{/foreach}}
															</select>
														{{/if}}
													</td>
												</tr>
												<tr id="affiliate_ilosc_produktow">
													<td class="affiliate_wyswietlanie_left">{{$txt['90344::affiliate_js_112']}}
													</td>
													<td class="affiliate_wyswietlanie_right">
														<select class="affiliate_wyglad" id="products_count" name="products_count">
															<option value="1">1
															</option>
															<option selected="selected" value="2">2
															</option>
															<option value="3">3
															</option>
															<option value="4">4
															</option>
														</select>
													</td>
												</tr>
												<tr id="affiliate_uklad_produktow">
													<td class="affiliate_wyswietlanie_left">{{$txt['90344::affiliate_js_112_2']}}
													</td>
													<td class="affiliate_wyswietlanie_right">
														<select class="affiliate_wyglad" id="products_uklad" name="products_uklad">
															<option value="poziomy">{{$txt['90344::affiliate_js_pionowy']}}
															</option>
															<option value="pionowy">{{$txt['90344::affiliate_js_poziomy']}}
															</option>
														</select>
													</td>
												</tr>
												<tr>
													<td class="affiliate_wyswietlanie_left">{{$txt['90344::affiliate_php_112_55']}}
													</td>
													<td class="affiliate_wyswietlanie_right">
														<input value="225" style="width:40px;" type="text" name="banner_width" id="banner_width"/>px
													</td>
												</tr>
												<tr>
													<td class="affiliate_wyswietlanie_left">{{$txt['90344::affiliate_php_112_66']}}
													</td>
													<td class="affiliate_wyswietlanie_right">
														<input value="300" style="width:40px;" type="text" name="banner_height" id="banner_height"/>px
													</td>
												</tr>
												<tr>
													<td class="affiliate_wyswietlanie_left">{{$txt['90344::affiliate_js_112_77']}}
													</td>
													<td class="affiliate_wyswietlanie_right">
														<input value="225" style="width:40px;" type="text" name="image_width" id="image_width"/>px
													</td>
												</tr>
												<tr>
													<td class="affiliate_wyswietlanie_left">{{$txt['90344::affiliate_js_112_88']}}
													</td>
													<td class="affiliate_wyswietlanie_right">
														<input value="220" style="width:40px;" type="text" name="image_height" id="image_height"/>px
													</td>
												</tr>
											</table>
											<input type="hidden" name="affiliate" value="{{$xml->getItemEscape("basket/@login")}}"></input>
										</div>
										<div class="affiliate_kolorystyka">
											<div style="font-weight:bold; font-size:13px;">{{$txt['90344::affiliate_js_13']}}
											</div>
											<table class="affiliate_kolorystyka">
												<tr>
													<td class="affiliate_kolorystyka_left">
														<span>{{$txt['90344::affiliate_js_14']}}</span>
													</td>
													<td class="affiliate_kolorystyka_right">
														<input name="color3" type="text" style="width: 60px;" maxlength="7" value="#000000" id="color3" class="iColorPicker"/>
														<span style="float:left;">
															<input class="affiliate_js_bold" type="checkbox" name="nazwa_bold"/>{{$txt['90344::affiliate_js_15']}}</span>
														<div class="clear">
														</div>
													</td>
												</tr>
												<tr>
													<td class="affiliate_kolorystyka_left">
														<span>{{$txt['90344::affiliate_js_16']}}</span>
													</td>
													<td class="affiliate_kolorystyka_right">
														<input name="color4" class="iColorPicker" type="text" style="width: 60px;" maxlength="7" value="#d9592b" id="color4"/>
														<span style="float:left;">
															<input class="affiliate_js_bold" type="checkbox" name="cena_bold"/>{{$txt['90344::affiliate_js_16_2']}}</span>
														<div class="clear">
														</div>
													</td>
												</tr>
												<tr>
													<td class="affiliate_kolorystyka_left">
														<span>{{$txt['90344::affiliate_js_16_3']}}</span>
													</td>
													<td class="affiliate_kolorystyka_right">
														<input name="color5" class="iColorPicker" type="text" style="width: 60px;" maxlength="7" value="#8d8d8d" id="color5"/>
														<span style="float:left;">
															<input class="affiliate_js_bold" type="checkbox" name="cena_promo_bold"/>{{$txt['90344::affiliate_js_16_5']}}</span>
														<div class="clear">
														</div>
													</td>
												</tr>
												<tr>
													<td class="affiliate_kolorystyka_left">
														<span>{{$txt['90344::affiliate_js_17']}}</span>
													</td>
													<td class="affiliate_kolorystyka_right">
														<span>
															<input name="border_radio" class="border_color" type="radio" id="border_radio1" value="nie" checked="checked"/>{{$txt['90344::affiliate_js_18']}}</span>
														<span style="margin-left:10px;">
															<input name="border_radio" class="border_color" type="radio" id="border_radio2" value="tak"/>{{$txt['90344::affiliate_js_19']}}</span>
													</td>
												</tr>
												<tr id="border_tr" style="display:none;">
													<td class="affiliate_kolorystyka_left">
														<span>{{$txt['90344::affiliate_js_20']}}</span>
													</td>
													<td class="affiliate_kolorystyka_right">
														<div>
															<input name="color1" class="iColorPicker" type="text" style="width: 60px;" maxlength="7" value="#fff" id="color1"/>
															<span style="float:left;">{{$txt['90344::affiliate_js_18_8']}}
																<input style="width:20px;" name="border_width" type="text" value="1"/>px</span>
															<div class="clear">
															</div>
														</div>
													</td>
												</tr>
												<tr>
													<td class="affiliate_kolorystyka_left">
														<span>{{$txt['90344::affiliate_js_21']}}</span>
													</td>
													<td class="affiliate_kolorystyka_right">
														<span>
															<input name="background_radio" class="background_color" type="radio" id="background_radio1" value="nie" checked="checked"/>{{$txt['90344::affiliate_js_22']}}</span>
														<span style="margin-left:10px;">
															<input name="background_radio" class="background_color" type="radio" id="background_radio2" value="tak"/>{{$txt['90344::affiliate_js_23']}}</span>
													</td>
												</tr>
												<tr id="background_tr" style="display:none;">
													<td class="affiliate_kolorystyka_left">
														<span>{{$txt['90344::affiliate_js_24']}}</span>
													</td>
													<td class="affiliate_kolorystyka_right">
														<div>
															<input name="color2" class="iColorPicker" type="text" style="width: 60px;" maxlength="7" value="#fff" id="color2"/>
															<div class="clear">
															</div>
														</div>
													</td>
												</tr>
											</table>
										</div>
										<div class="clear">
										</div>
										<div class="affiliate_podglad_desc">{{$txt['90344::affiliate_js_24_1']}}
										</div>
										<a {{assign "classAttributeTmp10" ""}}  href="#" id="podglad_button"{{capture name="classAttributeTmp10" assign="classAttributeTmp10"}}affiliate_podglad_button{{/capture}}{{capture name="classAttributeTmp10" assign="classAttributeTmp10"}}btn-small affiliate_podglad_button{{/capture}}  class="{{$classAttributeTmp10}}">{{$txt['90344::affiliate_button_9']}}</a>
										<div class="podglad">
										</div>
										<div {{assign "classAttributeTmp11" ""}}{{capture name="classAttributeTmp11" assign="classAttributeTmp11"}}affiliate_generator_js_step3_label{{/capture}}{{capture name="classAttributeTmp11" assign="classAttributeTmp11"}}big_label affiliate_generator_js_step3_label{{/capture}}  class="{{$classAttributeTmp11}}">
											<span class="affiliate_generator_js_step3_label_span">{{$txt['90344::affiliate_js_step3_label']}}</span>
										</div>
										<div class="affiliate_js_step3_desc">
											<p class="affiliate_php_desc">{{$txt['90344::affiliate_php_1']}}
											</p>
											<p class="affiliate_php_desc">{{$txt['90344::affiliate_php_2']}}
											</p>
											<ul class="php_ul">
												<li>{{$txt['90344::affiliate_php_3']}}
												</li>
												<li>{{$txt['90344::affiliate_php_4']}}
												</li>
											</ul>
											<p class="affiliate_php_desc">{{$txt['90344::affiliate_php_5']}}
											</p>
											<ul class="php_ul">
												<li>UTF-8
												</li>
												<li>Windows-1251
												</li>
												<li>Windows-1252
												</li>
												<li>ISO-8859-1
												</li>
												<li>ISO-8859-2
												</li>
												<li>ISO-8859-3...ISO-8859-15
												</li>
											</ul>
											<p class="affiliate_php_desc">{{$txt['90344::affiliate_php_6']}}
												<a href="http://php.net/">http://php.net/</a>
											</p>
										</div>
										<a {{assign "classAttributeTmp18" ""}}  id="affiliate_php_generate"{{capture name="classAttributeTmp18" assign="classAttributeTmp18"}}affiliate_php_generate{{/capture}} href="#"{{capture name="classAttributeTmp18" assign="classAttributeTmp18"}}btn-small affiliate_php_generate{{/capture}}  class="{{$classAttributeTmp18}}">{{$txt['90344::affiliate_button_7']}}</a>
										<div style="display:none;" class="php_generator_output" id="php_output">
										</div>
									</form>
								</div>
							{{/if}}
						{{/if}}
						<!--Affiliate - kody promocyjne (affiliate_generator_code, 107732.1)-->
						{{if  $xml->getItem("page/generator[@type='promoCodes']")}}
							<div id="affiliate_promo_code" class="clearfix">
								<div class="big_label">{{$txt['107732::91015_affiliate_code_label']}}
								</div>
								{{if  $xml->getItem("page/generator/rebate_codes/rebate_code")}}
									<div class="affiliate_code_desc">
										<p class="affiliate_promo_code_desc">{{$txt['107732::91015_affiliate_code_label_desc']}}
										</p>
									</div>
									<div class="info_bar row">
										<div class="info_bar_sub col-12 col-md-4">
											<div class="info_bar_sub" id="info_bar_step1">
												<strong>{{$txt['107732::53349_001_label']}}</strong>
												<div class="info_bar_desc">{{$txt['107732::91497_001']}}
												</div>
											</div>
										</div>
										<div class="info_bar_sub col-12 col-md-4">
											<div class="info_bar_sub" id="info_bar_step2">
												<strong>{{$txt['107732::53349_002_label']}}</strong>
												<div class="info_bar_desc">{{$txt['107732::91497_002']}}
												</div>
											</div>
										</div>
										<div class="info_bar_sub col-12 col-md-4">
											<div class="info_bar_sub" id="info_bar_step3">
												<strong>{{$txt['107732::53349_003_label']}}</strong>
												<div class="info_bar_desc">{{$txt['107732::91497_003']}}
												</div>
											</div>
										</div>
									</div>
									<div class="affiliate_code_desc">
										<p class="affiliate_promo_code_desc">{{$txt['107732::91015_affiliate_code_desc']}}
										</p>
									</div>
									<div class="affiliate_promo_codes clearfix">
										<div class="row">
											{{foreach from=$xml->getList("page/generator/rebate_codes/rebate_code") item=loop814}}
												<div class="col-12 col-sm-4">
													<div class="affiliate_promo_codes_wrapper">
														<div class="affiliate_promo_code">{{$txt['107732::91015_code']}}
															<strong>{{$loop814->getItem("@number")}}</strong>
															<a href="#" class="show_rebate_details">{{$txt['107732::91015_affiliate_code_details']}}</a>
														</div>
														<div class="affiliate_promo_code_rebate">
															<small>{{$txt['107732::4634743_rebatecode_time']}}</small>
															<br/>{{$loop814->getItem("@expires")}}
														</div>
													</div>
													<div style="display:none;" class="promo_code_details">
														<div class="n67313_out">
															<div class="n67313_border">
																<div class="n67313_rebate_l">
																	<span class="code_details_number">{{$txt['107732::91015_code']}}
																		<strong>{{$loop814->getItem("@number")}}</strong></span>
																</div>
																<span class="code_details_shops">
																	<div class="n67313_rebate_l">{{$txt['107732::754743_activeshops']}}
																	</div>
																	{{foreach from=$loop814->getList("active_in_shops/shop_name") item=loop846}}
																		<strong>{{$loop846->getItemEscape("text()")}}</strong>
																	{{/foreach}}
																	</span>
																{{if  $loop814->getItem("products_rebate")}}
																	<div class="n67313_rebate_l">
																	</div>
																	<table class="clients_rebates">
																		<tbody>
																			<tr>
																				{{foreach from=$loop814->getList("products_rebate") item=loop857}}
																					<td style="width:100%;" class="clients_rebates">
																						<div class="clients_rebates_wrapper">
																							<a class="product_name">{{$txt['107732::347347_promocode_products']}}</a>
																							<span class="n67313_other_value">{{$loop857->getItemEscape("@rebate_value_formatted")}}</span>
																						</div>
																					</td>
																				{{/foreach}}
																			</tr>
																		</tbody>
																	</table>
																{{/if}}
																{{if  $loop814->getItem("producer/item")}}
																	<div class="n67313_rebate_l">{{$txt['107732::347347_promocode_producers']}}
																	</div>
																	<table class="clients_rebates">
																		<tbody>
																			<tr>
																				{{foreach from=$loop814->getList("producer/item") item=loop880}}
																					<td style="width:100%;" class="clients_rebates">
																						<div class="clients_rebates_wrapper">
																							<a class="product_name" href="{{$loop880->getItemEscape("@link")}}">{{$loop880->getItemEscape("@name")}}</a>
																							<span class="n67313_other_value">{{$loop880->getItemEscape("@rebate_value")}}
																								{{if  $loop880->getItem("@rebate_type")  == (string) 'percentage'}}
																									{{$txt['107732::347347_percentage']}}
																								{{/if}}
																								</span>
																						</div>
																					</td>
																				{{/foreach}}
																			</tr>
																		</tbody>
																	</table>
																{{/if}}
																{{if  $loop814->getItem("series/item")}}
																	<div class="n67313_rebate_l">{{$txt['107732::347347_promocode_series']}}
																	</div>
																	<table class="clients_rebates">
																		<tbody>
																			<tr>
																				{{foreach from=$loop814->getList("series/item") item=loop905}}
																					<td style="width:100%;" class="clients_rebates">
																						<div class="clients_rebates_wrapper">
																							<a class="product_name" href="{{$loop905->getItemEscape("@link")}}">{{$loop905->getItemEscape("@name")}}</a>
																							<span class="n67313_other_value">{{$loop905->getItemEscape("@rebate_value")}}
																								{{if  $loop905->getItem("@rebate_type")  == (string) 'percentage'}}
																									{{$txt['107732::347347_percentage']}}
																								{{/if}}
																								</span>
																						</div>
																					</td>
																				{{/foreach}}
																			</tr>
																		</tbody>
																	</table>
																{{/if}}
																{{if  $loop814->getItem("main_cat/item")}}
																	<div class="n67313_rebate_l">{{$txt['107732::347347_promocode_cats']}}
																	</div>
																	<table class="clients_rebates">
																		<tbody>
																			<tr>
																				{{foreach from=$loop814->getList("main_cat/item") item=loop930}}
																					<td style="width:100%;" class="clients_rebates">
																						<div class="clients_rebates_wrapper">
																							<a class="product_name" href="{{$loop930->getItemEscape("@link")}}">{{$loop930->getItemEscape("@name")}}</a>
																							<span class="n67313_other_value">{{$loop930->getItemEscape("@rebate_value")}}
																								{{if  $loop930->getItem("@rebate_type")  == (string) 'percentage'}}
																									{{$txt['107732::347347_percentage']}}
																								{{/if}}
																								</span>
																						</div>
																					</td>
																				{{/foreach}}
																			</tr>
																		</tbody>
																	</table>
																{{/if}}
															</div>
														</div>
													</div>
												</div>
											{{/foreach}}
										</div>
									</div>
									<div class="affiliate_code_desc">
										<p class="affiliate_promo_code_desc">{{$txt['107732::91015_affiliate_code_bottom_desc']}}
										</p>
									</div>
									<div class="row justify-content-center">
										<div class="col-12 col-sm-4">
											<a id="show_generator_form" class="btn">{{$txt['107732::91015_affiliate_code_button']}}</a>
										</div>
									</div>
									<canvas id="promo_code_canvas" style="display:none;"/>
									<form name="affiliate_form_promo_codes" id="affiliate_form_promo_codes" method="POST">
										<div class="affiliate_form_step step1">
											<div class="big_label">{{$txt['107732::affiliate_promo_codes_step1_label']}}
											</div>
											<div class="affiliate_code_desc">
												<p class="affiliate_promo_code_desc">{{$txt['107732::step1_promo_codes_desc']}}
												</p>
											</div>
											<div class="form-group row">
												<div class="col-12 col-sm-3">
													<label for="promo_codes_shop" class="control-label grid">{{$txt['107732::affiliate_promo_codes_sklep']}}
													</label>
												</div>
												<div class="has-feedback control-label next_div_grid col-12 col-sm-9">
													<select id="promo_codes_shop" name="promo_codes_shop">
														{{foreach from=$xml->getList("/shop/page/generator/shop") item=loop991}}
															<option value=" {{$loop991->getItemEscape("@name")}} ">{{$loop991->getItemEscape("@name")}}
															</option>
														{{/foreach}}
													</select>
												</div>
											</div>
											<div class="form-group row">
												<div class="col-12 col-sm-3">
													<label for="promo_codes_code" class="control-label grid">{{$txt['107732::affiliate_promo_codes_kod']}}
													</label>
												</div>
												<div class="has-feedback control-label next_div_grid col-12 col-sm-9">
													<select class="affiliate_promo_codes" id="promo_codes_code" name="promo_codes_code">
														{{foreach from=$xml->getList("/shop/page/generator/rebate_codes/rebate_code") item=loop1012}}
															<option value=" {{$loop1012->getItemEscape("@number")}} " data-shop=" {{foreach from=$loop1012->getList("active_in_shops/shop_name") item=loop1019}}{{$loop1019->getItemEscape("text()")}}{{if !( $loop1019@iteration == (string) $loop1019@total )}} , {{/if}}{{/foreach}} ">{{$loop1012->getItemEscape("@number")}}
															</option>
														{{/foreach}}
													</select>
												</div>
											</div>
											<div class="form-group row justify-content-end">
												<div class="has-feedback control-label next_div_grid col-12 col-sm-9 pull-right">
													{{foreach from=$xml->getList("/shop/page/generator/rebate_codes/rebate_code") item=loop1037}}
														<div class="active-code n67313_out" style="display:none;" data-shops=" {{foreach from=$loop1037->getList("active_in_shops/shop_name") item=loop1041}}{{$loop1041->getItemEscape("text()")}}{{if !( $loop1041@iteration == (string) $loop1041@total )}} , {{/if}}{{/foreach}} ">
															<div class="code-name">
																<i class=" {{$txt['107732::667457_icon']}} "></i>
																<span>{{$txt['107732::474574_choosencode']}}
																	<strong>{{$loop1037->getItemEscape("@number")}}</strong></span>
															</div>
															<div class="code-info">
																<ul class="code-details">
																	{{if  $loop1037->getItem("@min_order")  gt (string) 0}}
																		<li>
																			{{capture name="minProdVal" assign="minProdVal"}}
																				{{$loop1037->getItemEscape("@min_order")}}
																			{{/capture}}
																			{{$txt['107732::57379_min_order']}}
																			<strong>{{$loop1037->getItem("format-number($minProdVal, '#')")}}{{literal}}{{/literal}}{{$loop1037->getItemEscape("/shop/currency/@name")}}</strong>
																		</li>
																	{{/if}}
																	{{capture name="max_order_value" assign="max_order_value"}}
																		{{$txt['107732::57379_max_order']}}
																	{{/capture}}
																	{{if  $loop1037->getItem("@max_order")  gt (string) 0 and $max_order_value  neq (string) ''}}
																		<li>{{$max_order_value}}
																			<strong>{{$loop1037->getItemEscape("@max_order_formatted")}}</strong>
																		</li>
																	{{/if}}
																	{{if  $loop1037->getItem("@expires")}}
																		<li>{{$txt['107732::57379_expires']}}
																			<strong>{{$loop1037->getItem("@expires")}}</strong>
																		</li>
																	{{/if}}
																	{{if  $loop1037->getItem("@combined") == (string)'y' or  $loop1037->getItem("@combined") == (string)'m'}}
																		<li>{{$txt['107732::57379_global_info']}}
																		</li>
																	{{else}}
																		<li>{{$txt['107732::57379_global_info2']}}
																		</li>
																	{{/if}}
																	{{if  $loop1037->getItem("inactive_zones/item")}}
																		<li>{{$txt['107732::57379_inactive_zones_info']}}
																			{{foreach from=$loop1037->getList("inactive_zones/item") item=loop1098}}
																				<strong>{{$loop1098->getItem("@description")}}</strong>
																				{{if  $loop1098@iteration   neq (string)  $loop1098@total }}
																					{{$txt['107732::57379_przec']}}
																				{{/if}}
																			{{/foreach}}
																		</li>
																	{{/if}}
																</ul>
															</div>
														</div>
													{{/foreach}}
													<div class="active-code n67313_out error menu_messages_message" style="display:none;">{{$txt['107732::464574_codeerror']}}
													</div>
												</div>
											</div>
										</div>
										<div class="affiliate_form_step step2">
											<div class="big_label">{{$txt['107732::affiliate_promo_codes_step2_label']}}
											</div>
											<div class="affiliate_code_desc">
												<p class="affiliate_promo_code_desc">{{$txt['107732::step2_promo_codes_desc']}}
												</p>
											</div>
											<div class="affiliate_promo_step_2">
												<div class="form-group row">
													<div class="has-feedback control-label next_div_grid affiliate_promo_step_2_input">
														<input name="promo_code_radio" type="radio" value="text" id="promo_code_text_link" checked="checked"/>
													</div>
													<div class="col-6 col-sm-4 col-md-3">
														<label for="promo_code_text_link" id="promo_code_text_link_label" class="control-label grid">{{$txt['107732::affiliate_promo_codes_step2_01']}}
														</label>
													</div>
												</div>
												<div class="form-group row">
													<div class="has-feedback control-label next_div_grid affiliate_promo_step_2_input">
														<input name="promo_code_radio" type="radio" value="text_icon" id="promo_code_text_link_icon"/>
													</div>
													<div class="col-6 col-sm-4 col-md-3">
														<label for="promo_code_text_link_icon" id="promo_code_text_link_icon_label" class="control-label grid">{{$txt['107732::affiliate_promo_codes_step2_02']}}
														</label>
													</div>
												</div>
												<div class="form-group row">
													<div class="has-feedback control-label next_div_grid affiliate_promo_step_2_input">
														<input name="promo_code_radio" type="radio" value="button" id="promo_code_przycisk"/>
													</div>
													<div class="col-6 col-sm-4 col-md-3">
														<label for="promo_code_przycisk" id="promo_code_przycisk_label" class="control-label grid">{{$txt['107732::affiliate_promo_codes_step2_03']}}
														</label>
													</div>
												</div>
												<div class="form-group row">
													<div class="has-feedback control-label next_div_grid affiliate_promo_step_2_input">
														<input name="promo_code_radio" type="radio" value="button_icon" id="promo_code_text_przycisk_ikona"/>
													</div>
													<div class="col-6 col-sm-4 col-md-3">
														<label for="promo_code_text_przycisk_ikona" id="promo_code_text_przycisk_ikona_label" class="control-label grid">{{$txt['107732::affiliate_promo_codes_step2_04']}}
														</label>
													</div>
												</div>
											</div>
										</div>
										<div class="affiliate_form_step step3">
											<div class="big_label">{{$txt['107732::affiliate_promo_codes_step3_label']}}
											</div>
											<div class="affiliate_code_desc">
												<p class="affiliate_promo_code_desc">{{$txt['107732::step3_promo_codes_desc']}}
												</p>
											</div>
											<div class="clearfix row">
												<div class="affiliate_promo_codes_kolorystyka col-12 col-md-6">
													<div class="form-group row">
														<div class="col-12 col-sm-4">
															<label for="promo_codes_code" class="control-label grid">{{$txt['107732::affiliate_promo_codes_01']}}
															</label>
														</div>
														<div class="has-feedback control-label next_div_grid col-12 col-sm-8">
															{{capture name="promo_code_init_text" assign="promo_code_init_text"}}
																{{$txt['107732::647547_codetextsample']}}
															{{/capture}}
															<input name="promo_code_text" type="text" value="" id="promo_code_text" data-initVal="{{$promo_code_init_text}}"></input>
														</div>
													</div>
													<div class="form-group row">
														<div class="col-12 col-sm-4">
															<label for="promo_code_text_size" class="control-label grid">{{$txt['107732::affiliate_promo_codes_02']}}
															</label>
														</div>
														<div class="has-feedback control-label next_div_grid col-12 col-sm-8">
															<input name="promo_code_text_size" type="text" id="promo_code_text_size" value="{{$txt['107732::647547_deftextsize']}}"></input>px
														</div>
													</div>
													<div class="form-group row">
														<div class="col-12 col-sm-4">
															<label for="color3" class="control-label grid">{{$txt['107732::affiliate_promo_codes_03']}}
															</label>
														</div>
														<div class="has-feedback control-label next_div_grid col-12 col-sm-8">
															<input name="color3" type="text" style="width: 60px;" maxlength="7" value="#000000" id="color3" class="iColorPicker"/>
															<input class="affiliate_promo_codes_bold" type="checkbox" name="nazwa_bold"/>
															<label for="nazwa_bold">{{$txt['107732::affiliate_promo_codes_15']}}
															</label>
														</div>
													</div>
													<div class="form-group row">
														<div class="col-12 col-sm-4">
															<label for="color4" class="control-label grid">{{$txt['107732::affiliate_promo_codes_04']}}
															</label>
														</div>
														<div class="has-feedback control-label next_div_grid col-12 col-sm-8">
															<input name="color4" class="iColorPicker" type="text" style="width: 60px;" maxlength="7" value="#000000" id="color4"/>
														</div>
													</div>
													<div class="form-group row">
														<div class="col-12 col-sm-4">
															<label for="color5" class="control-label grid">{{$txt['107732::affiliate_promo_codes_05']}}
															</label>
														</div>
														<div class="has-feedback control-label next_div_grid col-12 col-sm-8">
															<input name="color5" class="iColorPicker" type="text" style="width: 60px;" maxlength="7" value="#0090f6" id="color5"/>
														</div>
													</div>
													<div class="form-group row">
														<div class="col-12 col-sm-4">
															<label for="ikona1" class="control-label grid">{{$txt['107732::affiliate_promo_codes_06']}}
															</label>
														</div>
														<div class="col-12 col-sm-8">
															<div class="has-feedback control-label next_div_grid affiliate_promo_icon selected" id="ikona1">{{$txt['107732::affiliate_promo_codes_ikona1']}}
																<input name="ikona" type="radio" id="ikona1_input" style="visibility: hidden"/>
															</div>
															<div class="has-feedback control-label next_div_grid affiliate_promo_icon" id="ikona2">{{$txt['107732::affiliate_promo_codes_ikona2']}}
																<input name="ikona" type="radio" id="ikona2_input" style="visibility: hidden"/>
															</div>
															<div class="has-feedback control-label next_div_grid affiliate_promo_icon" id="ikona3">{{$txt['107732::affiliate_promo_codes_ikona3']}}
																<input name="ikona" type="radio" id="ikona3_input" style="visibility: hidden"/>
															</div>
															<div class="has-feedback control-label next_div_grid affiliate_promo_icon" id="ikona4">{{$txt['107732::affiliate_promo_codes_ikona4']}}
																<input name="ikona" type="radio" id="ikona4_input" style="visibility: hidden"/>
															</div>
															<div class="has-feedback control-label next_div_grid affiliate_promo_icon" id="ikona5">{{$txt['107732::affiliate_promo_codes_ikona5']}}
																<input name="ikona" type="radio" id="ikona5_input" style="visibility: hidden"/>
															</div>
														</div>
													</div>
												</div>
												<div class="form-group col-12 col-md-6">
													<div class="has-feedback control-label">
														<p id="promo_codes_preview_label">{{$txt['107732::547457_promo_codes_preview_label']}}
														</p>
														<div id="promo_codes_preview" name="promo_codes_preview" readOnly="true">
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="affiliate_form_step step4">
											<div class="big_label">{{$txt['107732::affiliate_promo_codes_step4_label']}}
											</div>
											<div class="affiliate_code_desc">
												<p class="affiliate_promo_code_desc">{{$txt['107732::step4_promo_codes_desc']}}
												</p>
											</div>
											<div class="row">
												<div class="affiliate_promo_codes_buttons col-12 col-sm-3">
													<a class="btn-small generate_promo_codes_button" href="#" id="button_generate_code">{{$txt['107732::affiliate_generate_code_btn1']}}</a>
													<a class="btn-small generate_promo_codes_button" href="#" id="button_generate_link">{{$txt['107732::affiliate_generate_code_btn2']}}</a>
												</div>
												<div class="form-group affiliate_promo_codes_output col-12 col-sm-9">
													<div class="has-feedback control-label">
														<textarea id="promo_codes_output" name="promo_codes_output" readOnly="true"></textarea>
													</div>
												</div>
											</div>
										</div>
									</form>
								{{else}}
									<div class="affiliate_promo_code_desc">
										<span class="affiliate_noresources">{{$txt['107732::91015_no_affiliate_code_desc']}}</span>
									</div>
								{{/if}}
							</div>
						{{/if}}
						<!--Affiliate - generator kodu HTML (affiliate_generator_html, 108073.1)-->
						{{if  $xml->getItem("page/generator")}}
							{{if  $xml->getItem("page/generator[@type='html']")}}
								<div class="affiliate_html_generator">
									<form name="affiliate_form_html" id="affiliate_form_html">
										<input id="shop_url" type="hidden" value=" {{$xml->getItemEscape("@baseurl")}} "></input>
										<div {{assign "classAttributeTmp19" ""}}{{capture name="classAttributeTmp19" assign="classAttributeTmp19"}}affiliate_generator_html_step1_label{{/capture}}{{capture name="classAttributeTmp19" assign="classAttributeTmp19"}}big_label affiliate_generator_html_step1_label{{/capture}}  class="{{$classAttributeTmp19}}">
											<span class="affiliate_generator_html_step1_label_span">{{$txt['108073::affiliate_html_step1_label']}}</span>
										</div>
										<div class="step1_html_desc">
											<span>{{$txt['108073::step1_html_descr']}}</span>
										</div>
										<div>
											<input id="affiliate_link" type="text" value="{{$xml->getItemEscape("/shop/@baseurl")}}"></input>
										</div>
										<div class="step1_html_desc2">
											<span>{{$txt['108073::step1_html_desc2']}}</span>
										</div>
										<div>
											<input id="affiliate_link_name" type="text" value="{{$xml->getItemEscape("/shop/contact/owner/@shopname")}}"></input>
										</div>
										<div {{assign "classAttributeTmp20" ""}}{{capture name="classAttributeTmp20" assign="classAttributeTmp20"}}affiliate_generator_html_step2_label{{/capture}}{{capture name="classAttributeTmp20" assign="classAttributeTmp20"}}big_label affiliate_generator_html_step2_label{{/capture}}  class="{{$classAttributeTmp20}}">
											<span class="affiliate_generator_html_step2_label_span">{{$txt['108073::affiliate_html_step2_label']}}</span>
										</div>
										<div class="affiliate_banners">
											{{if  $xml->getItem("page/generator/banners/banner")}}
												<table cellspacing="0" cellpadding="2">
													{{foreach from=$xml->getList("page/generator/banners/banner") item=loop1357}}
														<tr>
															<td style="vertical-align:middle; padding:5px;">
																<input type="hidden" name="height" value="{{$loop1357->getItemEscape("@height")}}" id="height_{{$loop1357->getItemEscape("@nr")}}"></input>
																<input type="hidden" name="width" value="{{$loop1357->getItemEscape("@width")}}" id="width_{{$loop1357->getItemEscape("@nr")}}"></input>
																<input class="affilate_html_banners" type="radio" name="banner"{{if $loop1357->getItem("@checked") == (string) 'checked'}} checked=""{{/if}} value="{{$loop1357->getItemEscape("@link")}}"></input>
															</td>
															<td style="padding:5px;">
																{{if  $loop1357->getItem("@type")  == (string) 'swf'}}
																	<object {{assign "idAttributeTmp25" ""}}{{capture name="idAttributeTmp25" assign="idAttributeTmp25"}}linkicon{{/capture}} type="application/x-shockwave-flash" data="/{{$loop1357->getItemEscape("@link")}}" width="{{$loop1357->getItemEscape("@width")}}"{{capture name="idAttributeTmp25" assign="idAttributeTmp25"}}width_{{$loop1357->getItemEscape("@nr")}}{{/capture}} height="{{$loop1357->getItemEscape("@height")}}"{{capture name="idAttributeTmp25" assign="idAttributeTmp25"}}height_{{$loop1357->getItemEscape("@nr")}}{{/capture}}  id="{{$idAttributeTmp25}}">
																		<param name="movie" value="/{{$loop1357->getItemEscape("@link")}}"></param>
																		<param name="bgcolor" value="#FFFFFF"/>
																		<param name="WMode" value="Opaque"/>
																	</object>
																{{else}}
																	<img style="margin:0px;padding:0px" src="/{{$loop1357->getItemEscape("@link")}}"></img>
																{{/if}}
															</td>
														</tr>
													{{/foreach}}
													<input type="hidden" name="banner" value=" "/>
												</table>
											{{else}}
												<div class="affiliate_no_banners">{{$txt['108073::affiliate_no_banners']}}
												</div>
											{{/if}}
										</div>
										<div {{assign "classAttributeTmp21" ""}}{{capture name="classAttributeTmp21" assign="classAttributeTmp21"}}affiliate_generator_html_step3_label{{/capture}}{{capture name="classAttributeTmp21" assign="classAttributeTmp21"}}big_label affiliate_generator_html_step3_label{{/capture}}  class="{{$classAttributeTmp21}}">
											<span class="affiliate_generator_html_step3_label_span">{{$txt['108073::affiliate_html_step3_label']}}</span>
										</div>
										<div class="affiliate_html_explain">{{$txt['108073::affiliate_html_expl']}}
										</div>
										<div class="affiliate_html_buttons">
											<a {{assign "classAttributeTmp22" ""}}{{capture name="classAttributeTmp22" assign="classAttributeTmp22"}}generate_html_button{{/capture}} href="##" {{if $xml->getItem("page/generator/banners/banner")}}{{capture name="classAttributeTmp22" assign="classAttributeTmp22"}}btn-small generate_html_button{{/capture}} onClick="generate('{{$xml->getItemEscape("basket/@client_id")}}','html'); return false;" {{$txt['108073::affiliate_generate_html']}} {{else}}{{capture name="classAttributeTmp22" assign="classAttributeTmp22"}}btn-small generate_html_button disabled{{/capture}} {{$txt['108073::affiliate_generate_html']}} {{/if}}  class="{{$classAttributeTmp22}}"></a>
											<a {{assign "classAttributeTmp23" ""}}{{capture name="classAttributeTmp23" assign="classAttributeTmp23"}}generate_url_button{{/capture}} href="##"{{capture name="classAttributeTmp23" assign="classAttributeTmp23"}}btn-small generate_url_button{{/capture}} onClick="generate('{{$xml->getItemEscape("basket/@client_id")}}', 'link_url'); return false;"  class="{{$classAttributeTmp23}}">{{$txt['108073::affiliate_generate_url']}}</a>
											<a {{assign "classAttributeTmp24" ""}}{{capture name="classAttributeTmp24" assign="classAttributeTmp24"}}generate_link_button{{/capture}} href="##"{{capture name="classAttributeTmp24" assign="classAttributeTmp24"}}btn-small generate_link_button{{/capture}} onClick="generate('{{$xml->getItemEscape("basket/@client_id")}}', 'link_html'); return false;"  class="{{$classAttributeTmp24}}">{{$txt['108073::affiliate_generate_link']}}</a>
										</div>
										<div class="affiliate_html_output">
											<textarea id="html_output" name="html_output" rows="4" cols="65" readOnly="true"></textarea>
										</div>
										<div class="clear">
										</div>
									</form>
								</div>
							{{/if}}
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
