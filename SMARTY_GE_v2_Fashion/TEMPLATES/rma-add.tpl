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
			<script type="text/javascript" src="/gfx/{{$xml->getItemEscape("language/@id")}}/rma_add_form.js.gzip?r=1570606529">			</script>

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
					<aside {{assign "classAttributeTmp5" ""}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}span3{{/capture}}{{if $xml->getItem("page/@type") == (string) 'projector'}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}{{$txt['73991::70925_projector_a_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'search'}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}{{$txt['73991::70925_search_a_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'main'}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}{{$txt['73991::70925_main_a_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'blog-list' or $xml->getItem("page/@type") == (string) 'blog-item'}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}{{$txt['73991::70925_blog_a_class']}}{{/capture}}{{else}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}{{$txt['73991::70925_otherwise_a_class']}}{{/capture}}{{/if}}  class="{{$classAttributeTmp5}}">
						{{include file="component_menu_filter_79091.tpl"}}
						{{include file="component_menu_buttons_77612.tpl"}}
						{{include file="component_menu_additional1_76965.tpl"}}
					</aside>
				{{/if}}
				{{if !( $xml->getItem("action/set_render/item")) or ( $xml->getItem("action/set_render/item/@name")  == (string) 'content')}}
					<div {{assign "classAttributeTmp6" ""}}  id="content"{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}span9{{/capture}}{{if $xml->getItem("page[@type='projector']")}} itemscope="itemscope" itemtype="http://schema.org/Product" {{/if}}{{if $xml->getItem("page/@type") == (string) 'projector'}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}{{$txt['73991::70925_projector_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'search'}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}{{$txt['73991::70925_search_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'main'}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}{{$txt['73991::70925_main_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'navigation'}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}{{$txt['73991::70925_navigation_page_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'blog-list' or $xml->getItem("page/@type") == (string) 'blog-item'}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}{{$txt['73991::70925_blog_c_class']}}{{/capture}}{{else}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}{{$txt['73991::70925_otherwise_c_class']}}{{/capture}}{{/if}}  class="{{$classAttributeTmp6}}">
						{{include file="component_menu_messages_67953.tpl"}}
						<!--Dodawanie reklamacji - CMS (rma_add_cms, 58363.1)-->
						{{if  $xml->getItem("page/text/body")}}
							<div {{assign "classAttributeTmp7" ""}}{{capture name="classAttributeTmp7" assign="classAttributeTmp7"}}rma_add_cms_label{{/capture}}{{capture name="classAttributeTmp7" assign="classAttributeTmp7"}}rma_add_cms_label big_label{{/capture}}  class="{{$classAttributeTmp7}}">
								<span class="rma_add_cms_label">{{$txt['58363::rma_add_cms_label']}}</span>
							</div>
							<div class="rma_add_cms">
								<div {{assign "classAttributeTmp8" ""}}{{capture name="classAttributeTmp8" assign="classAttributeTmp8"}}rma_add_cms_sub{{/capture}}{{capture name="classAttributeTmp8" assign="classAttributeTmp8"}}rma_add_cms_sub cm{{/capture}}  class="{{$classAttributeTmp8}}">{{$xml->getItem("page/text/body")}}
								</div>
							</div>
						{{/if}}
						<!--Dodawanie reklamacji - Formularz (rma_add_form, 67986.1)-->
						{{capture name="required_68516" assign="required_68516"}}
							{{$txt['67986::68516_required']}}
						{{/capture}}
						{{capture name="tel_link" assign="tel_link"}}
							{{$txt['67986::64553_MAPA_0013']}}
						{{/capture}}
						<div class="rma_add_form_outline">
							<form id="rma_add_form" method="post" action="rma-add.php">
								{{if  $xml->getItem("page/rma[@action='add']")}}
									<input name="add" type="hidden" value="1"/>
								{{/if}}
								{{if  $xml->getItem("page/rma[@action='edit']")}}
									<input name="edit" type="hidden" value="{{$xml->getItemEscape("page/rma/@id")}}"></input>
								{{/if}}
								{{if !( $xml->getItem("page/rma/@action")  == (string) 'view')}}
									{{if  $xml->getItem("page/rma/inputs/@serial_number_active")}}
										<input name="serial_number_active" id="serial_number_active" type="hidden" value="{{$xml->getItemEscape("page/rma/inputs/@serial_number_active")}}"></input>
									{{/if}}
									{{if  $xml->getItem("page/rma/payments/@active")}}
										<input name="payments_active" id="payments_active" type="hidden" value="{{$xml->getItemEscape("page/rma/payments/@active")}}"></input>
									{{/if}}
									<input type="hidden" name="rma_stock" id="rma_stock" value="{{$xml->getItemEscape("page/rma/stocks/stock[@selected = 'selected']/@id")}}"></input>
								{{/if}}
								<div class="rma_add_form_label">
									<span class="rma_add_form_label">{{$txt['67986::rma_add_form_label']}}</span>
								</div>
								<div class="rma_add_form_addbutton">
									<a {{assign "classAttributeTmp9" ""}}  href="rma-list.php"{{capture name="classAttributeTmp9" assign="classAttributeTmp9"}}rma_add_form_listbutton{{/capture}}{{capture name="classAttributeTmp9" assign="classAttributeTmp9"}}btn rma_add_form_listbutton{{/capture}} title="{{$txt['67986::rma_add_form_listbuttontitle']}}"  class="{{$classAttributeTmp9}}">
										<span class="img_rma_add"></span>{{$txt['67986::rma_add_button_twojereklamacje']}}</a>
								</div>
								<div class="rma_add_form_label" id="label2_rma">
									<span class="rma_add_form_label">
										{{if  $xml->getItem("page/rma/@action")  == (string) 'view'}}
											{{$txt['67986::rma_add_form_label4']}}{{$xml->getItemEscape("page/rma/@id")}}
										{{elseif  $xml->getItem("page/rma/@action")  == (string) 'edit'}}
											{{$txt['67986::rma_add_form_label3']}}{{$xml->getItemEscape("page/rma/@id")}}
										{{elseif  $xml->getItem("page/rma/@action")  == (string) 'add'}}
											{{$txt['67986::rma_add_form_label2']}}
										{{/if}}
										</span>
								</div>
								<div class="rma_add_form_section" id="rma_add_form_section1">
									<div class="rma_add_form_sectionheader">
										<span class="rma_add_form_sectionheader">{{$txt['67986::rma_add_form_sectionheader1']}}</span>
									</div>
									{{if !( $xml->getItem("page/rma/@action")  == (string) 'view')}}
										<div class="rma_add_form_sectiondesc">
											<span class="rma_add_form_sectiondesc">{{$txt['67986::rma_add_form_sectiondesc1']}}</span>
											<a class="rma_add_form_clientedit" href="{{$xml->getItemEscape("page/rma/client/@edit_link")}}" title="{{$txt['67986::rma_add_form_clientedit1']}}">{{$txt['67986::rma_add_form_clientedit2']}}</a>
										</div>
									{{/if}}
									<div class="rma_add_form_sectionsub" id="rma_add_form_subsection1">
										<div class="rma_add_form_box" id="rma_add_form_box1">
											<span class="rma_add_form_adr1">{{$txt['67986::rma_add_form_adr1']}}</span>
											<div class="rma_add_form_boxsub3">
												{{if  $xml->getItem("page/rma/client/@company_name")}}
													<span class="rma_add_form_infovalue3">{{$xml->getItemEscape("page/rma/client/@company_name")}}</span>
												{{else}}
													<span class="rma_add_form_infovalue3">{{$xml->getItemEscape("page/rma/client/@name")}}{{literal}}{{/literal}}{{$xml->getItemEscape("page/rma/client/@lastname")}}</span>
												{{/if}}
											</div>
											{{if  $xml->getItem("page/rma/client/@address") and !( $xml->getItem("page/rma/client/@address")  == (string) '')}}
												<div class="rma_add_form_boxsub3">
													<span class="rma_add_form_infovalue3">{{$xml->getItemEscape("page/rma/client/@address")}}</span>
												</div>
											{{/if}}
											{{if  $xml->getItem("page/rma/client/@zip") and !( $xml->getItem("page/rma/client/@zip")  == (string) '')}}
												<div class="rma_add_form_boxsub3">
													<span class="rma_add_form_infovalue3">{{$xml->getItemEscape("page/rma/client/@zip")}}{{literal}}{{/literal}}{{$xml->getItemEscape("page/rma/client/@city")}}
														<span class="rma_add_form_infocountry">{{literal}}({{/literal}}
															{{if  $xml->getItem("page/rma/client/@province")}}
																{{$xml->getItemEscape("page/rma/client/@province")}}{{literal}},{{/literal}}
															{{/if}}
															{{$xml->getItemEscape("page/rma/client/@country")}}{{literal}}){{/literal}}</span></span>
												</div>
											{{/if}}
											{{if  $xml->getItem("page/rma/client/@nip") and !( $xml->getItem("page/rma/client/@nip")  == (string) '')}}
												<div class="rma_add_form_boxsub3">
													<span class="rma_add_form_infovalue3">{{$xml->getItemEscape("page/rma/client/@nip")}}</span>
												</div>
											{{/if}}
										</div>
										<div class="rma_add_form_box" id="rma_add_form_box2">
											<span class="rma_add_form_adr2">{{$txt['67986::rma_add_form_adr2']}}</span>
											<div class="rma_add_form_boxsub3">
												{{if  $xml->getItem("page/rma/delivery_adress/@company_name")}}
													<span class="rma_add_form_infovalue3">{{$xml->getItemEscape("page/rma/delivery_adress/@company_name")}}</span>
												{{else}}
													<span class="rma_add_form_infovalue3">{{$xml->getItemEscape("page/rma/delivery_adress/@firstname")}}{{literal}}{{/literal}}{{$xml->getItemEscape("page/rma/delivery_adress/@lastname")}}</span>
												{{/if}}
											</div>
											{{if  $xml->getItem("page/rma/delivery_adress/@street") and !( $xml->getItem("page/rma/delivery_adress/@street")  == (string) '')}}
												<div class="rma_add_form_boxsub3">
													<span class="rma_add_form_infovalue3">{{$xml->getItemEscape("page/rma/delivery_adress/@street")}}</span>
												</div>
											{{/if}}
											{{if  $xml->getItem("page/rma/delivery_adress/@zipcode") and !( $xml->getItem("page/rma/delivery_adress/@zipcode")  == (string) '')}}
												<div class="rma_add_form_boxsub3">
													<span class="rma_add_form_infovalue3">{{$xml->getItemEscape("page/rma/delivery_adress/@zipcode")}}{{literal}}{{/literal}}{{$xml->getItemEscape("page/rma/delivery_adress/@city")}}
														<span class="rma_add_form_infocountry">{{literal}}({{/literal}}
															{{if  $xml->getItem("page/rma/delivery_adress/@province")}}
																{{$xml->getItemEscape("page/rma/delivery_adress/@province")}}{{literal}},{{/literal}}
															{{/if}}
															{{$xml->getItemEscape("page/rma/delivery_adress/@country")}}{{literal}}){{/literal}}</span></span>
												</div>
											{{/if}}
										</div>
										<div class="rma_add_form_box" id="rma_add_form_box2b">
											<span class="rma_add_form_adr1">{{$txt['67986::rma_add_form_adr3']}}</span>
											{{if  $xml->getItem("page/rma/client/@phone") and !( $xml->getItem("page/rma/client/@phone")  == (string) '')}}
												<div class="rma_add_form_boxsub3">
													<span class="rma_add_form_infovalue3">{{$xml->getItemEscape("page/rma/client/@phone")}}</span>
												</div>
											{{/if}}
											{{if  $xml->getItem("page/rma/client/@phone2") and !( $xml->getItem("page/rma/client/@phone2")  == (string) '')}}
												<div class="rma_add_form_boxsub3">
													<span class="rma_add_form_infovalue3">{{$xml->getItemEscape("page/rma/client/@phone2")}}</span>
												</div>
											{{/if}}
											{{if  $xml->getItem("page/rma/client/@email") and !( $xml->getItem("page/rma/client/@email")  == (string) '')}}
												<div class="rma_add_form_boxsub3">
													<span class="rma_add_form_infovalue3">{{$xml->getItemEscape("page/rma/client/@email")}}</span>
												</div>
											{{/if}}
										</div>
									</div>
								</div>
								<div class="rma_add_form_section" id="rma_add_form_section2">
									<div class="rma_add_form_sectionheader">
										<span class="rma_add_form_sectionheader">{{$txt['67986::rma_add_form_sectionheader2']}}</span>
									</div>
									{{if !( $xml->getItem("page/rma/@action")  == (string) 'view')}}
										<div class="rma_add_form_sectiondesc">
											<span class="rma_add_form_sectiondesc">{{$txt['67986::rma_add_form_sectiondesc2']}}</span>
										</div>
									{{/if}}
									<div class="rma_add_form_sectionsub" id="rma_add_form_subsection2">
										<div class="rma_add_form_box" id="rma_add_form_box3">
											<div class="rma_add_form_boxsub">
												<span class="rma_add_form_infotitle">{{$txt['67986::rma_add_form_infotitle7']}}
													{{if !( $xml->getItem("page/rma/@action")  == (string) 'view')}}
														<img class="rma_need" src="/gfx/__IAI_TEMPLATE_LANG_639_1__/need.gif?r=1570606529" alt="{{$txt['67986::n58364_needtxt']}}"></img>
														<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/correct.png?r=1570606529" class="rma_correct_img" id="rma_add_product_on" style="display:none;"/>
														<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/incorrect.png?r=1570606529" class="rma_correct_img" id="rma_add_product_off" style="display:none;"/>
													{{/if}}
													</span>
												{{if  $xml->getItem("page/rma/@action")  == (string) 'view'}}
													<span id="rma_add_form_product" class="rma_add_form_infovalue">{{$xml->getItemEscape("page/rma/inputs/@product")}}</span>
												{{else}}
													<input id="rma_add_form_product" class="rma_add_form_input" name="product" type="text" onkeyup="rma_add.checkInps('product');" {{if $xml->getItem("/shop/page/rma[@action='edit']")}} value="{{$xml->getItemEscape("page/rma/inputs/@product")}}" {{/if}}></input>
												{{/if}}
												{{if !( $xml->getItem("page/rma/@action")  == (string) 'view')}}
													<div class="rma_add_help" id="rma_add_product_help">
														<div class="rma_add_help2">
														</div>
													</div>
												{{/if}}
											</div>
											{{if !( $xml->getItem("page/rma/inputs/@serial_number_active")  == (string) '0')}}
												<div class="rma_add_form_boxsub">
													<span class="rma_add_form_infotitle">{{$txt['67986::rma_add_form_infotitle8']}}
														{{if ( $xml->getItem("page/rma/inputs/@serial_number_active")  == (string) '1') and ( $xml->getItem("page/rma/@action")  neq (string) 'view')}}
															<img class="rma_need" src="/gfx/__IAI_TEMPLATE_LANG_639_1__/need.gif?r=1570606529" alt="{{$txt['67986::n58364_needtxt']}}"></img>
															<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/correct.png?r=1570606529" class="rma_correct_img" id="rma_add_serial_number_on" style="display:none;"/>
															<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/incorrect.png?r=1570606529" class="rma_correct_img" id="rma_add_serial_number_off" style="display:none;"/>
														{{/if}}
														</span>
													{{if  $xml->getItem("page/rma/@action")  == (string) 'view'}}
														<span id="rma_add_form_serial_number" class="rma_add_form_infovalue">{{$xml->getItemEscape("page/rma/inputs/@serial_number")}}</span>
													{{else}}
														<input id="rma_add_form_serial_number" class="rma_add_form_input" name="serial_number" type="text" onkeyup="rma_add.checkInps('serial_number');" {{if $xml->getItem("/shop/page/rma/@id")}} value="{{$xml->getItemEscape("page/rma/inputs/@serial_number")}}" {{/if}}></input>
													{{/if}}
													{{if !( $xml->getItem("page/rma/@action")  == (string) 'view')}}
														<div class="rma_add_help" id="rma_add_serial_number_help">
															<div class="rma_add_help2">
															</div>
														</div>
													{{/if}}
												</div>
											{{/if}}
											<div class="rma_add_form_boxsub">
												<span class="rma_add_form_infotitle">{{$txt['67986::rma_add_form_infotitle9']}}
													{{if !( $xml->getItem("page/rma/@action")  == (string) 'view')}}
														<img class="rma_need" src="/gfx/__IAI_TEMPLATE_LANG_639_1__/need.gif?r=1570606529" alt="{{$txt['67986::n58364_needtxt']}}"></img>
														<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/correct.png?r=1570606529" class="rma_correct_img" id="rma_add_ymd_on" style="display:none;"/>
														<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/incorrect.png?r=1570606529" class="rma_correct_img" id="rma_add_ymd_off" style="display:none;"/>
													{{/if}}
													</span>
												{{if  $xml->getItem("page/rma/@action")  == (string) 'view'}}
													<span id="rma_add_form_begin_ymd" class="rma_add_form_infovalue">{{$xml->getItemEscape("page/rma/inputs/@data")}}</span>
												{{else}}
													<input id="rma_add_form_begin_ymd" class="rma_add_form_input" name="begin_ymd" type="text" onkeyup="rma_add.checkInps('begin_ymd');" value="{{$xml->getItemEscape("page/rma/inputs/@data")}}"></input>
													<input id="rma_add_form_beginy" name="beginy" type="hidden" value="{{$xml->getItemEscape("page/rma/inputs/@calY")}}"></input>
													<input id="rma_add_form_beginm" name="beginm" type="hidden" value="{{$xml->getItemEscape("page/rma/inputs/@calm")}}"></input>
													<input id="rma_add_form_begind" name="begind" type="hidden" value="{{$xml->getItemEscape("page/rma/inputs/@cald")}}"></input>
													<div class="rma_add_help" id="rma_add_ymd_help">
														<div class="rma_add_help2">
														</div>
													</div>
												{{/if}}
											</div>
											<div class="rma_add_form_boxsub">
												<span class="rma_add_form_infotitle">{{$txt['67986::rma_add_form_infotitle10']}}</span>
												<span class="rma_add_form_infovalue">
													{{if  $xml->getItem("page/rma/@action")  == (string) 'view'}}
														{{if  $xml->getItem("page/rma/buy_place/place[@checked = 'true']/@name")  == (string) 'shop'}}
															{{$txt['67986::rma_add_form_buyplace1']}}
														{{/if}}
														{{if  $xml->getItem("page/rma/buy_place/place[@checked = 'true']/@name")  == (string) 'auction'}}
															{{$txt['67986::rma_add_form_buyplace2']}}{{$xml->getItemEscape("page/rma/auctions/auction[@checked = 'true']/@name")}}
														{{/if}}
														{{if  $xml->getItem("page/rma/buy_place/place[@checked = 'true']/@name")  == (string) 'other'}}
															{{$xml->getItemEscape("page/rma/buy_place/place[@name = 'other']/@desc")}}
														{{/if}}
													{{else}}
														{{foreach from=$xml->getList("page/rma/buy_place/place") item=loop520}}
															<span class="rma_add_form_buyplace">
																<input type="radio" name="buy_place" value="{{$loop520->getItemEscape("@value")}}" onclick="rma_add.setPlace('rma_add_form_buyplace_{{$loop520->getItemEscape("@name")}}');" {{if $loop520->getItem("@checked") == (string) 'true'}} checked="checked" {{/if}}></input>
																{{if  $loop520->getItem("@name")  == (string) 'shop'}}
																	{{$txt['67986::rma_add_form_buyplace1']}}
																{{elseif  $loop520->getItem("@name")  == (string) 'auction'}}
																	{{$txt['67986::rma_add_form_buyplace2']}}
																	<span {{assign "styleAttributeTmp1" ""}}  class="rma_add_form_boxsub_hidden" id="rma_add_form_buyplace_auction" {{if $loop520->getItem("@checked") == (string) 'true'}}{{capture name="styleAttributeTmp1" assign="styleAttributeTmp1"}}display:block;{{/capture}}{{else}}{{capture name="styleAttributeTmp1" assign="styleAttributeTmp1"}}display:none;{{/capture}}{{/if}}  style="{{$styleAttributeTmp1}}">
																		<select id="buy_place_action" name="buy_place_action">
																			{{foreach from=$loop520->getList("/shop/page/rma/auctions/auction") item=loop542}}
																				<option value="{{$loop542->getItemEscape("@value")}}" {{if $loop542->getItem("@checked") == (string) 'true'}} selected="selected" {{/if}}>{{$loop542->getItemEscape("@name")}}
																				</option>
																			{{/foreach}}
																		</select></span>
																{{else}}
																	{{$txt['67986::rma_add_form_buyplace3']}}
																{{/if}}
																</span>
														{{/foreach}}
													{{/if}}
													</span>
											</div>
											{{if !( $xml->getItem("page/rma/@action")  == (string) 'view')}}
												{{foreach from=$xml->getList("page/rma/buy_place/place") item=loop565}}
													<div {{assign "idAttributeTmp13" ""}}{{assign "styleAttributeTmp2" ""}}  class="rma_add_form_boxsub_hidden" {{if $loop565->getItem("@checked") == (string) 'true'}}{{capture name="styleAttributeTmp2" assign="styleAttributeTmp2"}}display:block;{{/capture}}{{else}}{{capture name="styleAttributeTmp2" assign="styleAttributeTmp2"}}display:none;{{/capture}}{{/if}}{{if $loop565->getItem("@name") == (string) 'shop'}}{{capture name="idAttributeTmp13" assign="idAttributeTmp13"}}rma_add_form_buyplace_shop{{/capture}}{{elseif $loop565->getItem("@name") == (string) 'other'}}{{capture name="idAttributeTmp13" assign="idAttributeTmp13"}}rma_add_form_buyplace_other{{/capture}}{{/if}}  style="{{$styleAttributeTmp2}}"  id="{{$idAttributeTmp13}}">
														{{if  $loop565->getItem("@name")  == (string) 'other'}}
															<span class="rma_add_form_infotitle">{{$txt['67986::rma_add_form_infotitle12']}}
																{{if !( $loop565->getItem("page/rma/@action")  == (string) 'view')}}
																	<img class="rma_need" src="/gfx/__IAI_TEMPLATE_LANG_639_1__/need.gif?r=1570606529" alt="{{$txt['67986::n58364_needtxt']}}"></img>
																	<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/correct.png?r=1570606529" class="rma_correct_img" id="buy_place_desc_on" style="display:none;"/>
																	<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/incorrect.png?r=1570606529" class="rma_correct_img" id="buy_place_desc_off" style="display:none;"/>
																{{/if}}
																</span>
															<input id="buy_place_desc" class="rma_add_form_input" name="buy_place_desc" type="text" onkeyup="rma_add.checkInps('buy_place_desc');" value="{{$loop565->getItemEscape("@desc")}}"></input>
															<div class="rma_add_help" id="buy_place_desc_help">
																<div class="rma_add_help2">
																</div>
															</div>
														{{/if}}
													</div>
												{{/foreach}}
											{{/if}}
										</div>
										<div class="rma_add_form_box" id="rma_add_form_box4">
											<span class="rma_add_form_desc">
												{{if !( $xml->getItem("page/rma/@action")  == (string) 'view')}}
													<img class="rma_need" src="/gfx/__IAI_TEMPLATE_LANG_639_1__/need.gif?r=1570606529" alt="{{$txt['67986::n58364_needtxt']}}"></img>
													<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/correct.png?r=1570606529" class="rma_correct_img" id="rma_add_desc_on" style="display:none;"/>
													<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/incorrect.png?r=1570606529" class="rma_correct_img" id="rma_add_desc_off" style="display:none;"/>
												{{/if}}
												{{$txt['67986::rma_add_form_desc']}}</span>
											<div class="rma_add_form_descval">
												{{if  $xml->getItem("page/rma/@action")  == (string) 'view'}}
													{{$xml->getItemEscape("page/rma/failure")}}
												{{else}}
													<textarea id="rma_add_form_desc" class="rma_add_form_desc" name="usterka" onkeyup="rma_add.checkInps('usterka');">
														{{if  $xml->getItem("page/rma[@action='edit']")}}
															{{$xml->getItemEscape("page/rma/failure")}}
														{{/if}}
														</textarea>
													<div class="rma_add_help" id="rma_add_desc_help">
														<div class="rma_add_help2">
														</div>
													</div>
												{{/if}}
											</div>
										</div>
									</div>
								</div>
								{{if !( $xml->getItem("page/rma/payments/@active")  == (string) '0')}}
									<div class="rma_add_form_section" id="rma_add_form_section3">
										<div class="rma_add_form_sectionheader">
											<span class="rma_add_form_sectionheader">{{$txt['67986::rma_add_form_sectionheader3']}}</span>
										</div>
										{{if !( $xml->getItem("page/rma/@action")  == (string) 'view')}}
											<div class="rma_add_form_sectiondesc">
												<span class="rma_add_form_sectiondesc">{{$txt['67986::rma_add_form_sectiondesc3']}}</span>
											</div>
										{{/if}}
										<div class="rma_add_form_sectionsub" id="rma_add_form_subsection3">
											<div class="rma_add_form_box" id="rma_add_form_box5">
												<div class="rma_add_form_boxsub2">
													<span class="rma_add_form_infotitle2">{{$txt['67986::rma_add_form_infotitle13']}}</span>
													<span class="rma_add_form_infovalue2">
														{{if  $xml->getItem("page/rma/@action")  == (string) 'view'}}
															{{if  $xml->getItem("page/rma/payments/payment[@checked = 'true']/@type")  == (string) 'b'}}
																{{$txt['67986::rma_add_form_payment1']}}
															{{elseif  $xml->getItem("page/rma/payments/payment[@checked = 'true']/@type")  == (string) 'p'}}
																{{$txt['67986::rma_add_form_payment2']}}
															{{elseif  $xml->getItem("page/rma/payments/payment[@checked = 'true']/@type")  == (string) 'c'}}
																{{$txt['67986::rma_add_form_payment3']}}
															{{elseif  $xml->getItem("page/rma/payments/payment[@checked = 'true']/@type")  == (string) 't'}}
																{{$txt['67986::rma_add_form_payment4']}}
															{{/if}}
														{{else}}
															{{foreach from=$xml->getList("page/rma/payments/payment") item=loop638}}
																<span>
																	<input type="radio" name="payment_source" value="{{$loop638->getItemEscape("@type")}}" onclick="rma_add.setPayment('rma_add_form_pay{{$loop638->getItemEscape("@type")}}');" {{if $loop638->getItem("@checked") == (string) 'true'}} checked="checked" {{/if}}></input>
																	{{if  $loop638->getItem("@type")  == (string) 'b'}}
																		{{$txt['67986::rma_add_form_payment1']}}
																	{{elseif  $loop638->getItem("@type")  == (string) 'p'}}
																		{{$txt['67986::rma_add_form_payment2']}}
																	{{elseif  $loop638->getItem("@type")  == (string) 'c'}}
																		{{$txt['67986::rma_add_form_payment3']}}
																	{{elseif  $loop638->getItem("@type")  == (string) 't'}}
																		{{$txt['67986::rma_add_form_payment4']}}
																	{{/if}}
																	</span>
															{{/foreach}}
														{{/if}}
														</span>
												</div>
												{{if  $xml->getItem("page/rma/@action")  == (string) 'view'}}
													{{if  $xml->getItem("page/rma/payments/payment[@checked = 'true']/@type")  == (string) 'b'}}
														<div class="rma_add_form_boxsub2_hidden" style="display:block;">
															<span class="rma_add_form_infotitle2">{{$txt['67986::rma_add_form_payment1']}}</span>
															<span class="rma_add_form_infovalue2">{{$xml->getItemEscape("page/rma/payments_text")}}</span>
														</div>
													{{elseif  $xml->getItem("page/rma/payments/payment[@checked = 'true']/@type")  == (string) 'p'}}
														<div class="rma_add_form_boxsub2_hidden" style="display:block;">
															<span class="rma_add_form_infotitle2">{{$txt['67986::rma_add_form_payment2']}}</span>
															<span class="rma_add_form_infovalue2">{{$xml->getItemEscape("page/rma/payments_text")}}</span>
														</div>
													{{elseif  $xml->getItem("page/rma/payments/payment[@checked = 'true']/@type")  == (string) 'c'}}
														<div class="rma_add_form_boxsub2_hidden" style="display:block;">
															<span class="rma_add_form_infotitle2">{{$txt['67986::rma_add_form_payment3']}}</span>
															<span class="rma_add_form_infovalue2">{{$xml->getItemEscape("page/rma/payments_text")}}</span>
														</div>
													{{/if}}
												{{else}}
													{{foreach from=$xml->getList("page/rma/payments/payment") item=loop681}}
														<div {{assign "styleAttributeTmp3" ""}}  class="rma_add_form_boxsub2_hidden" id="rma_add_form_pay{{$loop681->getItemEscape("@type")}}" {{if $loop681->getItem("@checked") == (string) 'true'}}{{capture name="styleAttributeTmp3" assign="styleAttributeTmp3"}}display:block;{{/capture}}{{else}}{{capture name="styleAttributeTmp3" assign="styleAttributeTmp3"}}display:none;{{/capture}}{{/if}}  style="{{$styleAttributeTmp3}}">
															{{if  $loop681->getItem("@type")  == (string) 'p'}}
																{{if  $loop681->getItem("@checked")  == (string) 'true'}}
																	<script>rma_add_paymentTrigger = 1;																	</script>

																{{/if}}
																<span class="rma_add_form_infotitle2">{{$txt['67986::rma_add_form_paymenttitle2']}}
																	{{if  $loop681->getItem("/shop/page/rma/payments[@active='1']")}}
																		<img class="rma_need" src="/gfx/__IAI_TEMPLATE_LANG_639_1__/need.gif?r=1570606529" alt="{{$txt['67986::n58364_needtxt']}}"></img>
																		<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/correct.png?r=1570606529" class="rma_correct_img" id="rma_add_przekaz_on" style="display:none;"/>
																		<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/incorrect.png?r=1570606529" class="rma_correct_img" id="rma_add_przekaz_off" style="display:none;"/>
																	{{/if}}
																	</span>
																<textarea id="rma_add_form_przekaz" class="rma_add_form_input" name="payment_addres2" onkeyup="rma_add.checkInps('payment_addres2');">
																	{{if ( $loop681->getItem("@checked")  == (string) 'true') and ( $loop681->getItem("/shop/page/rma/payments_text"))}}
																		{{$loop681->getItemEscape("/shop/page/rma/payments_text")}}
																	{{/if}}
																	</textarea>
																<div class="rma_add_help" id="rma_add_przekaz_help">
																	<div class="rma_add_help2">
																	</div>
																</div>
															{{elseif  $loop681->getItem("@type")  == (string) 'b'}}
																{{if  $loop681->getItem("@checked")  == (string) 'true'}}
																	<script>rma_add_paymentTrigger = 2;																	</script>

																{{/if}}
																<span class="rma_add_form_infotitle2">{{$txt['67986::rma_add_form_paymenttitle1']}}
																	{{if  $loop681->getItem("/shop/page/rma/payments[@active='1']")}}
																		<img class="rma_need" src="/gfx/__IAI_TEMPLATE_LANG_639_1__/need.gif?r=1570606529" alt="{{$txt['67986::n58364_needtxt']}}"></img>
																		<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/correct.png?r=1570606529" class="rma_correct_img" id="rma_add_bankaccount_on" style="display:none;"/>
																		<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/incorrect.png?r=1570606529" class="rma_correct_img" id="rma_add_bankaccount_off" style="display:none;"/>
																	{{/if}}
																	</span>
																<input id="rma_add_form_bankaccount" class="rma_add_form_input" type="text" name="payment_addres1" onkeyup="rma_add.checkInps('payment_addres1');" {{if ( $loop681->getItem("@checked") == (string) 'true') and ( $loop681->getItem("/shop/page/rma/payments_text"))}} value="{{$loop681->getItemEscape("/shop/page/rma/payments_text")}}" {{/if}}></input>
																<div class="rma_add_help" id="rma_add_bankaccount_help">
																	<div class="rma_add_help2">
																	</div>
																</div>
															{{elseif  $loop681->getItem("@type")  == (string) 'c'}}
																{{if  $loop681->getItem("@checked")  == (string) 'true'}}
																	<script>rma_add_paymentTrigger = 3;																	</script>

																{{/if}}
																<span class="rma_add_form_infotitle2">{{$txt['67986::rma_add_form_paymenttitle3']}}
																	{{if  $loop681->getItem("/shop/page/rma/payments[@active='1']")}}
																		<img class="rma_need" src="/gfx/__IAI_TEMPLATE_LANG_639_1__/need.gif?r=1570606529" alt="{{$txt['67986::n58364_needtxt']}}"></img>
																		<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/correct.png?r=1570606529" class="rma_correct_img" id="rma_add_czek_on" style="display:none;"/>
																		<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/incorrect.png?r=1570606529" class="rma_correct_img" id="rma_add_czek_off" style="display:none;"/>
																	{{/if}}
																	</span>
																<textarea id="rma_add_form_czek" class="rma_add_form_input" name="payment_addres3" onkeyup="rma_add.checkInps('payment_addres3');">
																	{{if ( $loop681->getItem("@checked")  == (string) 'true') and ( $loop681->getItem("/shop/page/rma/payments_text"))}}
																		{{$loop681->getItemEscape("/shop/page/rma/payments_text")}}
																	{{/if}}
																	</textarea>
																<div class="rma_add_help" id="rma_add_czek_help">
																	<div class="rma_add_help2">
																	</div>
																</div>
															{{elseif  $loop681->getItem("@type")  == (string) 't'}}
																{{if  $loop681->getItem("@checked")  == (string) 'true'}}
																	<script>rma_add_paymentTrigger = 4;																	</script>

																{{/if}}
															{{/if}}
														</div>
													{{/foreach}}
												{{/if}}
											</div>
										</div>
									</div>
								{{/if}}
								<div class="rma_add_form_section" id="rma_add_form_section4">
									<div class="rma_add_form_sectionheader">
										{{if  $xml->getItem("page/rma/@action")  == (string) 'view' or count( $xml->getList("page/rma/stocks/stock"))  == (string) 1}}
											<span class="rma_add_form_sectionheader">{{$txt['67986::rma_add_form_sectionheader4b']}}</span>
										{{else}}
											<span class="rma_add_form_sectionheader">{{$txt['67986::rma_add_form_sectionheader4']}}</span>
										{{/if}}
									</div>
									{{if !( $xml->getItem("page/rma/@action")  == (string) 'view') and count( $xml->getList("/shop/page/rma/stocks/stock"))  gt (string) 1}}
										<div class="rma_add_form_sectiondesc">
											<span class="rma_add_form_sectiondesc">{{$txt['67986::rma_add_form_sectiondesc4']}}</span>
										</div>
									{{/if}}
									<div class="rma_add_form_sectionsub" id="rma_add_form_subsection4">
										{{foreach from=$xml->getList("page/rma/stocks/stock") item=loop769}}
											<div {{assign "classAttributeTmp10" ""}}{{assign "styleAttributeTmp4" ""}}{{capture name="classAttributeTmp10" assign="classAttributeTmp10"}}rma_add_form_stock{{/capture}}{{if $loop769->getItem("@selected") == (string) 'selected' and count( $loop769->getList("/shop/page/rma/stocks/stock")) gt (string) 1}}{{capture name="classAttributeTmp10" assign="classAttributeTmp10"}}rma_add_form_stock rmaf_selected{{/capture}}{{/if}}{{capture name="styleAttributeTmp4" assign="styleAttributeTmp4"}}cursor: default;{{/capture}} id="rmaf_{{$loop769->getItemEscape("@id")}}" {{if !( $loop769->getItem("/shop/page/rma/@action") == (string) 'view') and count( $loop769->getList("/shop/page/rma/stocks/stock")) gt (string) 1}} title="{{$txt['67986::ras_onclicktext']}}" onclick="rma_add.chooseSite($(this).attr('id'));"{{capture name="styleAttributeTmp4" assign="styleAttributeTmp4"}}{{/capture}}{{/if}}{{if count( $loop769->getList("/shop/page/rma/stocks/stock")) == (string) 1}}{{capture name="styleAttributeTmp4" assign="styleAttributeTmp4"}}cursor: default;{{/capture}}{{/if}}  style="{{$styleAttributeTmp4}}"  class="{{$classAttributeTmp10}}">
												<div class="rmaf_sub">
													<div class="rma_add_form_stockheader">
														<span class="rma_add_form_stockname">{{$loop769->getItemEscape("@name")}}</span>
													</div>
													<div class="rma_add_form_stockaddress">
														{{if  $loop769->getItem("@street")  neq (string) ''}}
															{{$loop769->getItemEscape("@street")}}
															<br/>
														{{/if}}
														{{if  $loop769->getItem("@zipcode")  neq (string) ''}}
															{{$loop769->getItemEscape("@zipcode")}}{{literal}}{{/literal}}
														{{/if}}
														{{$loop769->getItemEscape("@city")}}
														<span class="rma_add_form_infocountry">{{literal}}({{/literal}}
															{{if  $loop769->getItem("@province")}}
																{{$loop769->getItemEscape("@province")}}{{literal}},{{/literal}}
															{{/if}}
															{{$loop769->getItemEscape("@country")}}{{literal}}){{/literal}}</span>
													</div>
													{{if $tel_link}}
														{{if  $loop769->getItem("@phone")  neq (string) ''}}
															<span class="rma_add_form_phone">{{$tel_link}}
																{{if  $loop769->getItem("@phone_link")  neq (string) ''}}
																	<a href="{{$loop769->getItemEscape("@phone_link")}}" title="{{$loop769->getItemEscape("@phone")}}">{{$loop769->getItemEscape("@phone")}}</a>
																{{else}}
																	{{$loop769->getItemEscape("@phone")}}
																{{/if}}
																</span>
														{{/if}}
														{{if  $loop769->getItem("@mail")  neq (string) ''}}
															<a {{assign "hrefAttributeTmp12" ""}}  class="rma_add_form_mail" title="{{$loop769->getItemEscape("@mail")}}" {{if $loop769->getItem("@mail_link") neq (string) ''}}{{capture name="hrefAttributeTmp12" assign="hrefAttributeTmp12"}}{{$loop769->getItemEscape("@mail_link")}}{{/capture}}{{else}}{{capture name="hrefAttributeTmp12" assign="hrefAttributeTmp12"}}mailto:{{$loop769->getItemEscape("@mail")}}{{/capture}}{{/if}}  href="{{$hrefAttributeTmp12}}">{{$loop769->getItemEscape("@mail")}}</a>
														{{/if}}
													{{/if}}
													<div class="rma_add_form_stocklink">
														<a class="rma_add_form_stocklink" target="_blank" href="{{$loop769->getItemEscape("@link")}}" title="{{$txt['67986::rma_add_form_linktitle']}}">{{$txt['67986::rma_add_form_link']}}</a>
													</div>
												</div>
											</div>
										{{/foreach}}
									</div>
								</div>
								{{if !( $xml->getItem("page/rma/@action")  == (string) 'view')}}
									<div class="rma_add_form_submit">
										<a {{assign "classAttributeTmp11" ""}}  id="rma_add_form_submit" onmouseover="rma_add.checkInps();" {{if $xml->getItem("page/rma/@id")}}{{capture name="classAttributeTmp11" assign="classAttributeTmp11"}}btn rma_add_form_button_edit{{/capture}} title="{{$txt['67986::rma_add_form_buttonedit']}}" {{$txt['67986::rma_add_button_zmiany']}} {{else}}{{capture name="classAttributeTmp11" assign="classAttributeTmp11"}}btn rma_add_form_button_add{{/capture}} title="{{$txt['67986::rma_add_form_buttonadd']}}" {{$txt['67986::rma_add_button_zglos']}} {{/if}}  class="{{$classAttributeTmp11}}"></a>
										{{if $required_68516}}
											<div class="order_open_required">{{$txt['67986::68516_003']}}
												<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/need.gif?r=1570606529" alt="{{$txt['67986::n56203_010b']}}" title="{{$txt['67986::n56203_010b']}}"></img>{{$required_68516}}
											</div>
										{{/if}}
										<div id="alert_cover" class="projector_alert_55916" style="display:none" onclick="Alertek.hide_alert();">
											NIEDASIE
										</div>
									</div>
								{{/if}}
							</form>
						</div>
						{{if !( $xml->getItem("page/rma/@action")  == (string) 'view')}}
							<script>
    $(document).ready(function(){init_rma_calendar();});
    							</script>

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
