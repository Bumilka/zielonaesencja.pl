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
			<script type="text/javascript" src="/gfx/{{$xml->getItemEscape("language/@id")}}/affiliate_generator_javascript.js.gzip?r=1570606529">			</script>

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
						{{include file="component_menu_affiliate_69832.tpl"}}
						<!--Affiliate - wybór generatora (affiliate_generator_mode, 59947.1)-->
						{{if  $xml->getItem("page/generator")}}
							<div class="affiliate_generator_label">
								<span class="affiliate_generator_label_span">{{$txt['59947::affiliate_generator_label']}}</span>
							</div>
							<div class="affiliate_generator_type">
								<a {{assign "classAttributeTmp3" ""}}  href="/affiliate-generator.php?generate=html" {{if $xml->getItem("page/generator/@type") == (string)'html'}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}html_selected{{/capture}}{{else}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}html_unselected{{/capture}}{{/if}}  class="{{$classAttributeTmp3}}">
									<span>HTML</span></a>
								<a {{assign "classAttributeTmp4" ""}}  href="/affiliate-generator.php?generate=php" {{if $xml->getItem("page/generator/@type") == (string)'php'}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}php_selected{{/capture}}{{else}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}php_unselected{{/capture}}{{/if}}  class="{{$classAttributeTmp4}}">
									<span>PHP</span></a>
								<a {{assign "classAttributeTmp5" ""}}  href="/affiliate-generator.php?generate=js" {{if $xml->getItem("page/generator/@type") == (string)'js'}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}js_selected{{/capture}}{{else}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}js_unselected{{/capture}}{{/if}}  class="{{$classAttributeTmp5}}">
									<span>JAVASCRIPT</span></a>
								<div class="clear">
								</div>
							</div>
							<div class="affiliate_generator_type_desc">
								{{if  $xml->getItem("page/generator[@type='html']")}}
									{{$txt['59947::affiliate_generator_html_text']}}
								{{/if}}
								{{if  $xml->getItem("page/generator[@type='js']")}}
									{{$txt['59947::affiliate_generator_js_text']}}
								{{/if}}
								{{if  $xml->getItem("page/generator[@type='php']")}}
									{{$txt['59947::affiliate_generator_php_text']}}
								{{/if}}
							</div>
						{{/if}}
						<!--Affiliate - generator kodu HTML (affiliate_generator_html, 59940.1)-->
						{{if  $xml->getItem("page/generator")}}
							{{if  $xml->getItem("page/generator[@type='html']")}}
								<div class="affiliate_html_generator">
									<form name="affiliate_form_html" id="affiliate_form_html">
										<input id="shop_url" type="hidden" value=" {{$xml->getItemEscape("@baseurl")}} "></input>
										<div {{assign "classAttributeTmp6" ""}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}affiliate_generator_html_step1_label{{/capture}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}big_label affiliate_generator_html_step1_label{{/capture}}  class="{{$classAttributeTmp6}}">
											<span class="affiliate_generator_html_step1_label_span">{{$txt['59940::affiliate_html_step1_label']}}</span>
										</div>
										<div class="step1_html_desc">
											<span>{{$txt['59940::step1_html_descr']}}</span>
										</div>
										<div>
											<input id="affiliate_link" type="text" value="{{$xml->getItemEscape("/shop/@baseurl")}}"></input>
										</div>
										<div class="step1_html_desc2">
											<span>{{$txt['59940::step1_html_desc2']}}</span>
										</div>
										<div>
											<input id="affiliate_link_name" type="text" value="{{$xml->getItemEscape("/shop/contact/owner/@shopname")}}"></input>
										</div>
										<div {{assign "classAttributeTmp7" ""}}{{capture name="classAttributeTmp7" assign="classAttributeTmp7"}}affiliate_generator_html_step2_label{{/capture}}{{capture name="classAttributeTmp7" assign="classAttributeTmp7"}}big_label affiliate_generator_html_step2_label{{/capture}}  class="{{$classAttributeTmp7}}">
											<span class="affiliate_generator_html_step2_label_span">{{$txt['59940::affiliate_html_step2_label']}}</span>
										</div>
										<div class="affiliate_banners">
											{{if  $xml->getItem("page/generator/banners/banner")}}
												<table cellspacing="0" cellpadding="2">
													{{foreach from=$xml->getList("page/generator/banners/banner") item=loop374}}
														<tr>
															<td style="vertical-align:middle; padding:5px;">
																<input type="hidden" name="height" value="{{$loop374->getItemEscape("@height")}}" id="height_{{$loop374->getItemEscape("@nr")}}"></input>
																<input type="hidden" name="width" value="{{$loop374->getItemEscape("@width")}}" id="width_{{$loop374->getItemEscape("@nr")}}"></input>
																<input class="affilate_html_banners" type="radio" name="banner"{{if $loop374->getItem("@checked") == (string) 'checked'}} checked=""{{/if}} value="{{$loop374->getItemEscape("@link")}}"></input>
															</td>
															<td style="padding:5px;">
																{{if  $loop374->getItem("@type")  == (string) 'swf'}}
																	<object {{assign "idAttributeTmp24" ""}}{{capture name="idAttributeTmp24" assign="idAttributeTmp24"}}linkicon{{/capture}} type="application/x-shockwave-flash" data="/{{$loop374->getItemEscape("@link")}}" width="{{$loop374->getItemEscape("@width")}}"{{capture name="idAttributeTmp24" assign="idAttributeTmp24"}}width_{{$loop374->getItemEscape("@nr")}}{{/capture}} height="{{$loop374->getItemEscape("@height")}}"{{capture name="idAttributeTmp24" assign="idAttributeTmp24"}}height_{{$loop374->getItemEscape("@nr")}}{{/capture}}  id="{{$idAttributeTmp24}}">
																		<param name="movie" value="/{{$loop374->getItemEscape("@link")}}"></param>
																		<param name="bgcolor" value="#FFFFFF"/>
																		<param name="WMode" value="Opaque"/>
																	</object>
																{{else}}
																	<img style="margin:0px;padding:0px" src="/{{$loop374->getItemEscape("@link")}}"></img>
																{{/if}}
															</td>
														</tr>
													{{/foreach}}
													<input type="hidden" name="banner" value=" "/>
												</table>
											{{else}}
												<div class="affiliate_no_banners">{{$txt['59940::affiliate_no_banners']}}
												</div>
											{{/if}}
										</div>
										<div {{assign "classAttributeTmp8" ""}}{{capture name="classAttributeTmp8" assign="classAttributeTmp8"}}affiliate_generator_html_step3_label{{/capture}}{{capture name="classAttributeTmp8" assign="classAttributeTmp8"}}big_label affiliate_generator_html_step3_label{{/capture}}  class="{{$classAttributeTmp8}}">
											<span class="affiliate_generator_html_step3_label_span">{{$txt['59940::affiliate_html_step3_label']}}</span>
										</div>
										<div class="affiliate_html_explain">{{$txt['59940::affiliate_html_expl']}}
										</div>
										<div class="affiliate_html_buttons">
											<a {{assign "classAttributeTmp9" ""}}{{capture name="classAttributeTmp9" assign="classAttributeTmp9"}}generate_html_button{{/capture}} href="##" {{if $xml->getItem("page/generator/banners/banner")}}{{capture name="classAttributeTmp9" assign="classAttributeTmp9"}}btn-small generate_html_button{{/capture}} onClick="generate('{{$xml->getItemEscape("basket/@login")}}','html'); return false;" {{$txt['59940::affiliate_generate_html']}} {{else}}{{capture name="classAttributeTmp9" assign="classAttributeTmp9"}}btn-small generate_html_button disabled{{/capture}} {{$txt['59940::affiliate_generate_html']}} {{/if}}  class="{{$classAttributeTmp9}}"></a>
											<a {{assign "classAttributeTmp10" ""}}{{capture name="classAttributeTmp10" assign="classAttributeTmp10"}}generate_url_button{{/capture}} href="##"{{capture name="classAttributeTmp10" assign="classAttributeTmp10"}}btn-small generate_url_button{{/capture}} onClick="generate('{{$xml->getItemEscape("basket/@login")}}', 'link_url'); return false;"  class="{{$classAttributeTmp10}}">{{$txt['59940::affiliate_generate_url']}}</a>
											<a {{assign "classAttributeTmp11" ""}}{{capture name="classAttributeTmp11" assign="classAttributeTmp11"}}generate_link_button{{/capture}} href="##"{{capture name="classAttributeTmp11" assign="classAttributeTmp11"}}btn-small generate_link_button{{/capture}} onClick="generate('{{$xml->getItemEscape("basket/@login")}}', 'link_html'); return false;"  class="{{$classAttributeTmp11}}">{{$txt['59940::affiliate_generate_link']}}</a>
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
						<!--Affiliate - generator kodu JavaScript (affiliate_generator_javascript, 65642.1)-->
						{{if  $xml->getItem("page/generator")}}
							{{if  $xml->getItem("page/generator[@type='js']")}}
								<div class="affiliate_html_generator">
									<form name="affiliate_form_js" id="affiliate_form_js" method="POST">
										<input id="shop_url" type="hidden" value=" {{$xml->getItemEscape("@baseurl")}} "></input>
										<div {{assign "classAttributeTmp12" ""}}{{capture name="classAttributeTmp12" assign="classAttributeTmp12"}}affiliate_generator_js_step1_label{{/capture}}{{capture name="classAttributeTmp12" assign="classAttributeTmp12"}}big_label affiliate_generator_js_step1_label{{/capture}}  class="{{$classAttributeTmp12}}">
											<span class="affiliate_generator_js_step1_label_span">{{$txt['65642::affiliate_js_step1_label']}}</span>
										</div>
										<div class="step1_js_desc">
											<span>{{$txt['65642::step1_js_desc']}}</span>
										</div>
										<div class="affiliate_products_link">
											<input type="text" name="link" class="affiliate_products_link" value="{{$xml->getItemEscape("/shop/page/generator/default_link")}}"></input>
										</div>
										<div class="affiliate_js_sprawdzenie">
											<a {{assign "classAttributeTmp13" ""}}  href="#" id="sprawdzenie_pr"{{capture name="classAttributeTmp13" assign="classAttributeTmp13"}}affiliate_js_sprawdzenie_a{{/capture}}{{capture name="classAttributeTmp13" assign="classAttributeTmp13"}}btn-small affiliate_js_sprawdzenie_a{{/capture}}  class="{{$classAttributeTmp13}}">{{$txt['65642::affiliate_button_4']}}</a>
											<img style="display:none;" class="affiliate_loader_gif" id="affiliate_loader_gif" src="/gfx/__IAI_TEMPLATE_LANG_639_1__/affiliate_loader.gif?r=1570606529"/>
											<div style="color:green; display:none;" class="affiliate_resources_ok" id="affiliate_resources_ok">{{$txt['65642::affiliate_js_ok']}}
											</div>
											<div style="color:red; display:none;" class="affiliate_resources_none" id="affiliate_resources_none">{{$txt['65642::affiliate_js_none']}}
											</div>
										</div>
										<div {{assign "classAttributeTmp14" ""}}{{capture name="classAttributeTmp14" assign="classAttributeTmp14"}}affiliate_generator_js_step2_label{{/capture}}{{capture name="classAttributeTmp14" assign="classAttributeTmp14"}}big_label affiliate_generator_js_step2_label{{/capture}}  class="{{$classAttributeTmp14}}">
											<span class="affiliate_generator_js_step2_label_span">{{$txt['65642::affiliate_js_step2_label']}}</span>
										</div>
										<div class="affiliate_generator_js_step2_desc">{{$txt['65642::affiliate_js_9_2']}}
										</div>
										<div class="affiliate_wyswietlanie">
											<div style="font-weight:bold; font-size:13px;">{{$txt['65642::affiliate_js_10']}}
											</div>
											<table cellspacing="0" cellpadding="0" class="affiliate_wyswietlanie">
												<tr>
													<td class="affiliate_wyswietlanie_left">{{$txt['65642::affiliate_js_11']}}
													</td>
													<td class="affiliate_wyswietlanie_right">
														{{if count( $xml->getList("/shop/language/option"))  == (string) 1}}
															{{foreach from=$xml->getList("/shop/language/option") item=loop489}}
																{{$loop489->getItemEscape("@name")}}
																<input type="hidden" id="lang" name="language" value="{{$loop489->getItemEscape("@id")}}"></input>
															{{/foreach}}
														{{else}}
															<select class="affiliate_wyglad" id="lang" name="language">
																{{foreach from=$xml->getList("/shop/language/option") item=loop496}}
																	<option value="{{$loop496->getItemEscape("@id")}}">{{$loop496->getItemEscape("@name")}}
																	</option>
																{{/foreach}}
															</select>
														{{/if}}
													</td>
												</tr>
												<tr>
													<td class="affiliate_wyswietlanie_left">{{$txt['65642::affiliate_js_12']}}
													</td>
													<td class="affiliate_wyswietlanie_right">
														{{if count( $xml->getList("/shop/currency/option"))  == (string) 1}}
															{{foreach from=$xml->getList("/shop/currency/option") item=loop509}}
																{{$loop509->getItemEscape("@id")}}({{$loop509->getItemEscape("@symbol")}})
																<input type="hidden" id="curr" name="currency" value="{{$loop509->getItemEscape("@id")}}"></input>
															{{/foreach}}
														{{else}}
															<select class="affiliate_wyglad" id="curr" name="currency">
																{{foreach from=$xml->getList("/shop/currency/option") item=loop516}}
																	<option value="{{$loop516->getItemEscape("@id")}}">{{$loop516->getItemEscape("@id")}}({{$loop516->getItemEscape("@symbol")}})
																	</option>
																{{/foreach}}
															</select>
														{{/if}}
													</td>
												</tr>
												<tr id="affiliate_ilosc_produktow">
													<td class="affiliate_wyswietlanie_left">{{$txt['65642::affiliate_js_112']}}
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
													<td class="affiliate_wyswietlanie_left">{{$txt['65642::affiliate_js_112_2']}}
													</td>
													<td class="affiliate_wyswietlanie_right">
														<select class="affiliate_wyglad" id="products_uklad" name="products_uklad">
															<option value="poziomy">{{$txt['65642::affiliate_js_pionowy']}}
															</option>
															<option value="pionowy">{{$txt['65642::affiliate_js_poziomy']}}
															</option>
														</select>
													</td>
												</tr>
												<tr>
													<td class="affiliate_wyswietlanie_left">{{$txt['65642::affiliate_js_112_55']}}
													</td>
													<td class="affiliate_wyswietlanie_right">
														<input value="225" style="width:40px;" type="text" name="banner_width" id="banner_width"/>px
													</td>
												</tr>
												<tr>
													<td class="affiliate_wyswietlanie_left">{{$txt['65642::affiliate_js_112_66']}}
													</td>
													<td class="affiliate_wyswietlanie_right">
														<input value="300" style="width:40px;" type="text" name="banner_height" id="banner_height"/>px
													</td>
												</tr>
												<tr>
													<td class="affiliate_wyswietlanie_left">{{$txt['65642::affiliate_js_112_77']}}
													</td>
													<td class="affiliate_wyswietlanie_right">
														<input value="225" style="width:40px;" type="text" name="image_width" id="image_width"/>px
													</td>
												</tr>
												<tr>
													<td class="affiliate_wyswietlanie_left">{{$txt['65642::affiliate_js_112_88']}}
													</td>
													<td class="affiliate_wyswietlanie_right">
														<input value="220" style="width:40px;" type="text" name="image_height" id="image_height"/>px
													</td>
												</tr>
											</table>
											<input type="hidden" name="affiliate" value="{{$xml->getItemEscape("basket/@login")}}"></input>
										</div>
										<div class="affiliate_kolorystyka">
											<div style="font-weight:bold; font-size:13px;">{{$txt['65642::affiliate_js_13']}}
											</div>
											<table class="affiliate_kolorystyka">
												<tr>
													<td class="affiliate_kolorystyka_left">
														<span>{{$txt['65642::affiliate_js_14']}}</span>
													</td>
													<td class="affiliate_kolorystyka_right">
														<input name="color3" type="text" style="width: 60px;" maxlength="7" value="#000000" id="color3" class="iColorPicker"/>
														<span style="float:left;">
															<input class="affiliate_js_bold" type="checkbox" name="nazwa_bold"/>{{$txt['65642::affiliate_js_15']}}</span>
														<div class="clear">
														</div>
													</td>
												</tr>
												<tr>
													<td class="affiliate_kolorystyka_left">
														<span>{{$txt['65642::affiliate_js_16']}}</span>
													</td>
													<td class="affiliate_kolorystyka_right">
														<input name="color4" class="iColorPicker" type="text" style="width: 60px;" maxlength="7" value="#d9592b" id="color4"/>
														<span style="float:left;">
															<input class="affiliate_js_bold" type="checkbox" name="cena_bold"/>{{$txt['65642::affiliate_js_16_2']}}</span>
														<div class="clear">
														</div>
													</td>
												</tr>
												<tr>
													<td class="affiliate_kolorystyka_left">
														<span>{{$txt['65642::affiliate_js_16_3']}}</span>
													</td>
													<td class="affiliate_kolorystyka_right">
														<input name="color5" class="iColorPicker" type="text" style="width: 60px;" maxlength="7" value="#8d8d8d" id="color5"/>
														<span style="float:left;">
															<input class="affiliate_js_bold" type="checkbox" name="cena_promo_bold"/>{{$txt['65642::affiliate_js_16_5']}}</span>
														<div class="clear">
														</div>
													</td>
												</tr>
												<tr>
													<td class="affiliate_kolorystyka_left">
														<span>{{$txt['65642::affiliate_js_17']}}</span>
													</td>
													<td class="affiliate_kolorystyka_right">
														<span>
															<input name="border_radio" class="border_color" type="radio" id="border_radio1" value="nie" checked="checked">{{$txt['65642::affiliate_js_18']}}</input></span>
														<span style="margin-left:10px;">
															<input name="border_radio" class="border_color" type="radio" id="border_radio2" value="tak">{{$txt['65642::affiliate_js_19']}}</input></span>
													</td>
												</tr>
												<tr id="border_tr" style="display:none;">
													<td class="affiliate_kolorystyka_left">
														<span>{{$txt['65642::affiliate_js_20']}}</span>
													</td>
													<td class="affiliate_kolorystyka_right">
														<div>
															<input name="color1" class="iColorPicker" type="text" style="width: 60px;" maxlength="7" value="#fff" id="color1"/>
															<span style="float:left;">{{$txt['65642::affiliate_js_18_8']}}
																<input style="width:20px;" name="border_width" type="text" value="1"/>px</span>
															<div class="clear">
															</div>
														</div>
													</td>
												</tr>
												<tr>
													<td class="affiliate_kolorystyka_left">
														<span>{{$txt['65642::affiliate_js_21']}}</span>
													</td>
													<td class="affiliate_kolorystyka_right">
														<span>
															<input name="background_radio" class="background_color" type="radio" id="background_radio1" value="nie" checked="checked">{{$txt['65642::affiliate_js_22']}}</input></span>
														<span style="margin-left:10px;">
															<input name="background_radio" class="background_color" type="radio" id="background_radio2" value="tak">{{$txt['65642::affiliate_js_23']}}</input></span>
													</td>
												</tr>
												<tr id="background_tr" style="display:none;">
													<td class="affiliate_kolorystyka_left">
														<span>{{$txt['65642::affiliate_js_24']}}</span>
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
										<div class="affiliate_podglad_desc">{{$txt['65642::affiliate_js_24_1']}}
										</div>
										<a {{assign "classAttributeTmp15" ""}}  href="#" id="podglad_button"{{capture name="classAttributeTmp15" assign="classAttributeTmp15"}}affiliate_podglad_button{{/capture}}{{capture name="classAttributeTmp15" assign="classAttributeTmp15"}}btn-small affiliate_podglad_button{{/capture}}  class="{{$classAttributeTmp15}}">{{$txt['65642::affiliate_button_5']}}</a>
										<div class="podglad">
										</div>
										<div {{assign "classAttributeTmp16" ""}}{{capture name="classAttributeTmp16" assign="classAttributeTmp16"}}affiliate_generator_js_step3_label{{/capture}}{{capture name="classAttributeTmp16" assign="classAttributeTmp16"}}big_label affiliate_generator_js_step3_label{{/capture}}  class="{{$classAttributeTmp16}}">
											<span class="affiliate_generator_js_step3_label_span">{{$txt['65642::affiliate_js_step3_label']}}</span>
										</div>
										<div class="affiliate_js_step3_desc">{{$txt['65642::affiliate_js_25']}}
										</div>
										<div class="js_generator_output" id="js_generator_output">
											<textarea class="js_output" readonly="true" cols="65" rows="4" name="output" id="output"></textarea>
										</div>
										<a {{assign "classAttributeTmp17" ""}}  id="affiliate_js_generate"{{capture name="classAttributeTmp17" assign="classAttributeTmp17"}}affiliate_js_generate{{/capture}} href="#"{{capture name="classAttributeTmp17" assign="classAttributeTmp17"}}btn-small affiliate_js_generate{{/capture}}  class="{{$classAttributeTmp17}}">{{$txt['65642::affiliate_button_6']}}</a>
									</form>
								</div>
							{{/if}}
						{{/if}}
						<!--Affiliate - generator kodu PHP (affiliate_generator_php, 65643.1)-->
						{{if  $xml->getItem("page/generator")}}
							{{if  $xml->getItem("page/generator[@type='php']")}}
								<div id="php_code" style="display:none;">
									{{foreach from=$xml->getList("page/generator/code/line") item=loop641}}
										{{$loop641->getItemEscape("text")}}
										<br/>
									{{/foreach}}
								</div>
								<div class="affiliate_html_generator">
									<form name="affiliate_form_js" id="affiliate_form_js" action="/ajax/affiliate-generator.php" method="POST">
										<input id="shop_url" type="hidden" name="affiliate_shop_urtl" value=" {{$xml->getItemEscape("@baseurl")}} "></input>
										<div {{assign "classAttributeTmp12" ""}}{{capture name="classAttributeTmp12" assign="classAttributeTmp12"}}affiliate_generator_js_step1_label{{/capture}}{{capture name="classAttributeTmp12" assign="classAttributeTmp12"}}big_label affiliate_generator_js_step1_label{{/capture}}  class="{{$classAttributeTmp12}}">
											<span class="affiliate_generator_js_step1_label_span">{{$txt['65643::affiliate_js_step1_label']}}</span>
										</div>
										<div class="step1_js_desc">
											<span>{{$txt['65643::step1_js_desc']}}</span>
										</div>
										<div class="affiliate_products_link">
											<input type="text" name="link" class="affiliate_products_link" value="{{$xml->getItemEscape("/shop/page/generator/default_link")}}"></input>
										</div>
										<div class="affiliate_js_sprawdzenie">
											<a {{assign "classAttributeTmp13" ""}}  href="#" id="sprawdzenie_pr"{{capture name="classAttributeTmp13" assign="classAttributeTmp13"}}affiliate_js_sprawdzenie_a{{/capture}}{{capture name="classAttributeTmp13" assign="classAttributeTmp13"}}btn-small affiliate_js_sprawdzenie_a{{/capture}}  class="{{$classAttributeTmp13}}">{{$txt['65643::affiliate_button_8']}}</a>
											<img style="display:none;" class="affiliate_loader_gif" id="affiliate_loader_gif" src="/gfx/__IAI_TEMPLATE_LANG_639_1__/affiliate_loader.gif?r=1570606529"/>
											<div style="color:green; display:none;" class="affiliate_resources_ok" id="affiliate_resources_ok">{{$txt['65643::affiliate_js_ok']}}
											</div>
											<div style="color:red; display:none;" class="affiliate_resources_none" id="affiliate_resources_none">{{$txt['65643::affiliate_js_none']}}
											</div>
										</div>
										<div {{assign "classAttributeTmp14" ""}}{{capture name="classAttributeTmp14" assign="classAttributeTmp14"}}affiliate_generator_js_step2_label{{/capture}}{{capture name="classAttributeTmp14" assign="classAttributeTmp14"}}big_label affiliate_generator_js_step2_label{{/capture}}  class="{{$classAttributeTmp14}}">
											<span class="affiliate_generator_js_step2_label_span">{{$txt['65643::affiliate_js_step2_label']}}</span>
										</div>
										<div class="affiliate_generator_js_step2_desc">{{$txt['65643::affiliate_js_9_2']}}
										</div>
										<div class="affiliate_wyswietlanie">
											<div style="font-weight:bold; font-size:13px;">{{$txt['65643::affiliate_js_10']}}
											</div>
											<table cellspacing="0" cellpadding="0" class="affiliate_wyswietlanie">
												<tr>
													<td class="affiliate_wyswietlanie_left">{{$txt['65643::affiliate_js_11']}}
													</td>
													<td class="affiliate_wyswietlanie_right">
														{{if count( $xml->getList("/shop/language/option"))  == (string) 1}}
															{{foreach from=$xml->getList("/shop/language/option") item=loop695}}
																{{$loop695->getItemEscape("@name")}}
																<input type="hidden" id="lang" name="language" value="{{$loop695->getItemEscape("@id")}}"></input>
															{{/foreach}}
														{{else}}
															<select class="affiliate_wyglad" id="lang" name="language">
																{{foreach from=$xml->getList("/shop/language/option") item=loop702}}
																	<option value="{{$loop702->getItemEscape("@id")}}">{{$loop702->getItemEscape("@name")}}
																	</option>
																{{/foreach}}
															</select>
														{{/if}}
													</td>
												</tr>
												<tr>
													<td class="affiliate_wyswietlanie_left">{{$txt['65643::affiliate_js_12']}}
													</td>
													<td class="affiliate_wyswietlanie_right">
														{{if count( $xml->getList("/shop/currency/option"))  == (string) 1}}
															{{foreach from=$xml->getList("/shop/currency/option") item=loop715}}
																{{$loop715->getItemEscape("@id")}}({{$loop715->getItemEscape("@symbol")}})
																<input type="hidden" id="curr" name="currency" value="{{$loop715->getItemEscape("@id")}}"></input>
															{{/foreach}}
														{{else}}
															<select class="affiliate_wyglad" id="curr" name="currency">
																{{foreach from=$xml->getList("/shop/currency/option") item=loop722}}
																	<option value="{{$loop722->getItemEscape("@id")}}">{{$loop722->getItemEscape("@id")}}({{$loop722->getItemEscape("@symbol")}})
																	</option>
																{{/foreach}}
															</select>
														{{/if}}
													</td>
												</tr>
												<tr id="affiliate_ilosc_produktow">
													<td class="affiliate_wyswietlanie_left">{{$txt['65643::affiliate_js_112']}}
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
													<td class="affiliate_wyswietlanie_left">{{$txt['65643::affiliate_js_112_2']}}
													</td>
													<td class="affiliate_wyswietlanie_right">
														<select class="affiliate_wyglad" id="products_uklad" name="products_uklad">
															<option value="poziomy">{{$txt['65643::affiliate_js_pionowy']}}
															</option>
															<option value="pionowy">{{$txt['65643::affiliate_js_poziomy']}}
															</option>
														</select>
													</td>
												</tr>
												<tr>
													<td class="affiliate_wyswietlanie_left">{{$txt['65643::affiliate_php_112_55']}}
													</td>
													<td class="affiliate_wyswietlanie_right">
														<input value="225" style="width:40px;" type="text" name="banner_width" id="banner_width"/>px
													</td>
												</tr>
												<tr>
													<td class="affiliate_wyswietlanie_left">{{$txt['65643::affiliate_php_112_66']}}
													</td>
													<td class="affiliate_wyswietlanie_right">
														<input value="100" style="width:40px;" type="text" name="banner_height" id="banner_height"/>px
													</td>
												</tr>
											</table>
											<input type="hidden" name="affiliate" value="{{$xml->getItemEscape("basket/@login")}}"></input>
										</div>
										<div class="affiliate_kolorystyka">
											<div style="font-weight:bold; font-size:13px;">{{$txt['65643::affiliate_js_13']}}
											</div>
											<table class="affiliate_kolorystyka">
												<tr>
													<td class="affiliate_kolorystyka_left">
														<span>{{$txt['65643::affiliate_js_14']}}</span>
													</td>
													<td class="affiliate_kolorystyka_right">
														<input name="color3" type="text" style="width: 60px;" maxlength="7" value="#000000" id="color3" class="iColorPicker"/>
														<span style="float:left;">
															<input class="affiliate_js_bold" type="checkbox" name="nazwa_bold"/>{{$txt['65643::affiliate_js_15']}}</span>
														<div class="clear">
														</div>
													</td>
												</tr>
												<tr>
													<td class="affiliate_kolorystyka_left">
														<span>{{$txt['65643::affiliate_js_16']}}</span>
													</td>
													<td class="affiliate_kolorystyka_right">
														<input name="color4" class="iColorPicker" type="text" style="width: 60px;" maxlength="7" value="#d9592b" id="color4"/>
														<span style="float:left;">
															<input class="affiliate_js_bold" type="checkbox" name="cena_bold"/>{{$txt['65643::affiliate_js_16_2']}}</span>
														<div class="clear">
														</div>
													</td>
												</tr>
												<tr>
													<td class="affiliate_kolorystyka_left">
														<span>{{$txt['65643::affiliate_js_16_3']}}</span>
													</td>
													<td class="affiliate_kolorystyka_right">
														<input name="color5" class="iColorPicker" type="text" style="width: 60px;" maxlength="7" value="#8d8d8d" id="color5"/>
														<span style="float:left;">
															<input class="affiliate_js_bold" type="checkbox" name="cena_promo_bold"/>{{$txt['65643::affiliate_js_16_5']}}</span>
														<div class="clear">
														</div>
													</td>
												</tr>
												<tr>
													<td class="affiliate_kolorystyka_left">
														<span>{{$txt['65643::affiliate_js_17']}}</span>
													</td>
													<td class="affiliate_kolorystyka_right">
														<span>
															<input name="border_radio" class="border_color" type="radio" id="border_radio1" value="nie" checked="checked">{{$txt['65643::affiliate_js_18']}}</input></span>
														<span style="margin-left:10px;">
															<input name="border_radio" class="border_color" type="radio" id="border_radio2" value="tak">{{$txt['65643::affiliate_js_19']}}</input></span>
													</td>
												</tr>
												<tr id="border_tr" style="display:none;">
													<td class="affiliate_kolorystyka_left">
														<span>{{$txt['65643::affiliate_js_20']}}</span>
													</td>
													<td class="affiliate_kolorystyka_right">
														<div>
															<input name="color1" class="iColorPicker" type="text" style="width: 60px;" maxlength="7" value="#fff" id="color1"/>
															<span style="float:left;">{{$txt['65643::affiliate_js_18_8']}}
																<input style="width:20px;" name="border_width" type="text" value="1"/>px</span>
															<div class="clear">
															</div>
														</div>
													</td>
												</tr>
												<tr>
													<td class="affiliate_kolorystyka_left">
														<span>{{$txt['65643::affiliate_js_21']}}</span>
													</td>
													<td class="affiliate_kolorystyka_right">
														<span>
															<input name="background_radio" class="background_color" type="radio" id="background_radio1" value="nie" checked="checked">{{$txt['65643::affiliate_js_22']}}</input></span>
														<span style="margin-left:10px;">
															<input name="background_radio" class="background_color" type="radio" id="background_radio2" value="tak">{{$txt['65643::affiliate_js_23']}}</input></span>
													</td>
												</tr>
												<tr id="background_tr" style="display:none;">
													<td class="affiliate_kolorystyka_left">
														<span>{{$txt['65643::affiliate_js_24']}}</span>
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
										<div class="affiliate_podglad_desc">{{$txt['65643::affiliate_js_24_1']}}
										</div>
										<a {{assign "classAttributeTmp15" ""}}  href="#" id="podglad_button"{{capture name="classAttributeTmp15" assign="classAttributeTmp15"}}affiliate_podglad_button{{/capture}}{{capture name="classAttributeTmp15" assign="classAttributeTmp15"}}btn-small affiliate_podglad_button{{/capture}}  class="{{$classAttributeTmp15}}">{{$txt['65643::affiliate_button_9']}}</a>
										<div class="podglad">
										</div>
										<div {{assign "classAttributeTmp16" ""}}{{capture name="classAttributeTmp16" assign="classAttributeTmp16"}}affiliate_generator_js_step3_label{{/capture}}{{capture name="classAttributeTmp16" assign="classAttributeTmp16"}}big_label affiliate_generator_js_step3_label{{/capture}}  class="{{$classAttributeTmp16}}">
											<span class="affiliate_generator_js_step3_label_span">{{$txt['65643::affiliate_js_step3_label']}}</span>
										</div>
										<div class="affiliate_js_step3_desc">
											<p class="affiliate_php_desc">{{$txt['65643::affiliate_php_1']}}
											</p>
											<p class="affiliate_php_desc">{{$txt['65643::affiliate_php_2']}}
											</p>
											<ul class="php_ul">
												<li>{{$txt['65643::affiliate_php_3']}}
												</li>
												<li>{{$txt['65643::affiliate_php_4']}}
												</li>
											</ul>
											<p class="affiliate_php_desc">{{$txt['65643::affiliate_php_5']}}
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
											<p class="affiliate_php_desc">{{$txt['65643::affiliate_php_6']}}
												<a href="http://php.net/">http://php.net/</a>
											</p>
										</div>
										<a {{assign "classAttributeTmp23" ""}}  id="affiliate_php_generate"{{capture name="classAttributeTmp23" assign="classAttributeTmp23"}}affiliate_php_generate{{/capture}} href="#"{{capture name="classAttributeTmp23" assign="classAttributeTmp23"}}btn-small affiliate_php_generate{{/capture}}  class="{{$classAttributeTmp23}}">{{$txt['65643::affiliate_button_7']}}</a>
										<div style="display:none;" class="php_generator_output" id="php_output">
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
