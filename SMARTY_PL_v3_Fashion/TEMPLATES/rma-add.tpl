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
				</header>
			{{/if}}
			<div id="layout" class="{{$txt['107419::70925_layout_class']}}">
				{{if !( $xml->getItem("action/set_render/item")) or ( $xml->getItem("action/set_render/item/@name")  == (string) 'aside')}}
					<aside {{assign "classAttributeTmp5" ""}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}span3{{/capture}}{{if $xml->getItem("page/@type") == (string) 'projector'}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}{{$txt['107419::70925_projector_a_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'search'}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}{{$txt['107419::70925_search_a_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'main'}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}{{$txt['107419::70925_main_a_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'blog-item'}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}{{$txt['107419::70925_blog_item_a_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'blog-list'}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}{{$txt['107419::70925_blog_list_a_class']}}{{/capture}}{{else}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}{{$txt['107419::70925_otherwise_a_class']}}{{/capture}}{{/if}}  class="{{$classAttributeTmp5}}">
						{{include file="component_menu_additional1_106528.tpl"}}
					</aside>
				{{/if}}
				{{if !( $xml->getItem("action/set_render/item")) or ( $xml->getItem("action/set_render/item/@name")  == (string) 'content')}}
					<div {{assign "classAttributeTmp6" ""}}  id="content"{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}span9{{/capture}}{{if $xml->getItem("page/@type") == (string) 'projector'}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}{{$txt['107419::70925_projector_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'search'}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}{{$txt['107419::70925_search_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'main'}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}{{$txt['107419::70925_main_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'navigation'}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}{{$txt['107419::70925_navigation_page_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'blog-list'}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}{{$txt['107419::70925_blog_list_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'blog-item'}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}{{$txt['107419::70925_blog_item_c_class']}}{{/capture}}{{else}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}{{$txt['107419::70925_otherwise_c_class']}}{{/capture}}{{/if}}  class="{{$classAttributeTmp6}}">
						{{include file="component_menu_messages_106608.tpl"}}
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
						<!--Dodawanie reklamacji - Formularz (rma_add_form, 107791.1)-->
						{{capture name="tel_link" assign="tel_link"}}
							{{$txt['107791::64553_MAPA_0013']}}
						{{/capture}}
						<script>var rma_add_paymentTrigger;						</script>

						<div class="rma_add_form_outline">
							<form id="rma_add_form" method="post" action="/rma-add.php">
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
									<span class="rma_add_form_label">{{$txt['107791::rma_add_form_label']}}</span>
								</div>
								<div class="rma_add_form_addbutton">
									<a href="rma-list.php" class="btn rma_add_form_listbutton" title="{{$txt['107791::rma_add_form_listbuttontitle']}}">
										<span class="img_rma_add"></span>{{$txt['107791::rma_add_button_twojereklamacje']}}</a>
								</div>
								<div class="rma_add_form_label" id="label2_rma">
									<span class="rma_add_form_label">
										{{if  $xml->getItem("page/rma/@action")  == (string) 'view'}}
											{{$txt['107791::rma_add_form_label4']}}{{$xml->getItemEscape("page/rma/@id")}}
										{{elseif  $xml->getItem("page/rma/@action")  == (string) 'edit'}}
											{{$txt['107791::rma_add_form_label3']}}{{$xml->getItemEscape("page/rma/@id")}}
										{{elseif  $xml->getItem("page/rma/@action")  == (string) 'add'}}
											{{$txt['107791::rma_add_form_label2']}}
										{{/if}}
										</span>
								</div>
								<div class="rma_add_form_section" id="rma_add_form_section1">
									<div class="rma_add_form_sectionheader">
										<span class="rma_add_form_sectionheader">{{$txt['107791::rma_add_form_sectionheader1']}}</span>
									</div>
									{{if !( $xml->getItem("page/rma/@action")  == (string) 'view')}}
										<div class="rma_add_form_sectiondesc">
											<span class="rma_add_form_sectiondesc">{{$txt['107791::rma_add_form_sectiondesc1']}}</span>
											<a class="rma_add_form_clientedit" href="{{$xml->getItemEscape("page/rma/client/@edit_link")}}" title="{{$txt['107791::rma_add_form_clientedit1']}}">{{$txt['107791::rma_add_form_clientedit2']}}</a>
										</div>
									{{/if}}
									<div class="rma_add_form_sectionsub row" id="rma_add_form_subsection1">
										<div class="col-12 col-sm-4">
											<div class="rma_add_form_box" id="rma_add_form_box1">
												<span class="rma_add_form_adr1">{{$txt['107791::rma_add_form_adr1']}}</span>
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
										</div>
										<div class="col-12 col-sm-4">
											<div class="rma_add_form_box" id="rma_add_form_box2">
												<span class="rma_add_form_adr2">{{$txt['107791::rma_add_form_adr2']}}</span>
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
										</div>
										<div class="col-12 col-sm-4">
											<div class="rma_add_form_box" id="rma_add_form_box2b">
												<span class="rma_add_form_adr1">{{$txt['107791::rma_add_form_adr3']}}</span>
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
								</div>
								<div class="rma_add_form_section" id="rma_add_form_section2">
									<div class="rma_add_form_sectionheader">
										<span class="rma_add_form_sectionheader">{{$txt['107791::rma_add_form_sectionheader2']}}</span>
									</div>
									{{if !( $xml->getItem("page/rma/@action")  == (string) 'view')}}
										<div class="rma_add_form_sectiondesc">
											<span class="rma_add_form_sectiondesc">{{$txt['107791::rma_add_form_sectiondesc2']}}</span>
										</div>
									{{/if}}
									<div class="rma_add_form_sectionsub row" id="rma_add_form_subsection2">
										<div class="col-12 col-sm-6">
											<div class="rma_add_form_box" id="rma_add_form_box3">
												<div class="rma_add_form_boxsub">
													{{if  $xml->getItem("page/rma/@action")  == (string) 'view'}}
														<span class="rma_add_form_infotitle">{{$txt['107791::rma_add_form_infotitle7']}}</span>
														<span id="rma_add_form_product" class="rma_add_form_infovalue">{{$xml->getItemEscape("page/rma/inputs/@product")}}</span>
													{{else}}
														<div class="form-group clearfix">
															<div class=" ">
																<label for="rma_add_form_product" class="control-label">{{$txt['107791::rma_add_form_infotitle7']}}
																</label>
															</div>
															<div class="has-feedback has-required ">
																<input id="rma_add_form_product" name="product" type="text" class="form-control validate rma_add_form_input" minlength="3" {{if $xml->getItem("/shop/page/rma[@action='edit']")}} value="{{$xml->getItemEscape("page/rma/inputs/@product")}}" {{/if}}></input>
																<span class="form-control-feedback"></span>
															</div>
														</div>
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
														{{if  $xml->getItem("page/rma/@action")  == (string) 'view'}}
															<span class="rma_add_form_infotitle">{{$txt['107791::rma_add_form_infotitle8']}}</span>
															<span id="rma_add_form_serial_number" class="rma_add_form_infovalue">{{$xml->getItemEscape("page/rma/inputs/@serial_number")}}</span>
														{{else}}
															<div class="form-group clearfix">
																<div class=" ">
																	<label for="rma_add_form_begin_ymd" class="control-label">{{$txt['107791::rma_add_form_infotitle8']}}
																	</label>
																</div>
																<div class=" ">
																	<input id="rma_add_form_serial_number" type="text" name="serial_number" class="form-control rma_add_form_input" {{if $xml->getItem("/shop/page/rma/@id")}} value="{{$xml->getItemEscape("page/rma/inputs/@serial_number")}}" {{/if}}></input>
																</div>
															</div>
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
													{{if  $xml->getItem("page/rma/@action")  == (string) 'view'}}
														<span class="rma_add_form_infotitle">{{$txt['107791::rma_add_form_infotitle9']}}</span>
														<span id="rma_add_form_begin_ymd" class="rma_add_form_infovalue">{{$xml->getItemEscape("page/rma/inputs/@data")}}</span>
													{{else}}
														<div class="form-group clearfix">
															<div class=" ">
																<label for="rma_add_form_begin_ymd" class="control-label">{{$txt['107791::rma_add_form_infotitle9']}}
																</label>
															</div>
															<div class="has-feedback has-required ">
																<input id="rma_add_form_begin_ymd" type="text" name="begin_ymd" class="form-control validate rma_add_form_input" onkeyup="rma_add.checkInps('begin_ymd');" minlength="10" value="{{$xml->getItemEscape("page/rma/inputs/@data")}}"></input>
																<span class="form-control-feedback"></span>
															</div>
														</div>
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
													<span class="rma_add_form_infotitle">{{$txt['107791::rma_add_form_infotitle10']}}</span>
													<span class="rma_add_form_infovalue">
														{{if  $xml->getItem("page/rma/@action")  == (string) 'view'}}
															{{if  $xml->getItem("page/rma/buy_place/place[@checked = 'true']/@name")  == (string) 'shop'}}
																{{$txt['107791::rma_add_form_buyplace1']}}
															{{/if}}
															{{if  $xml->getItem("page/rma/buy_place/place[@checked = 'true']/@name")  == (string) 'auction'}}
																{{$txt['107791::rma_add_form_buyplace2']}}{{$xml->getItemEscape("page/rma/auctions/auction[@checked = 'true']/@name")}}
															{{/if}}
															{{if  $xml->getItem("page/rma/buy_place/place[@checked = 'true']/@name")  == (string) 'other'}}
																{{$xml->getItemEscape("page/rma/buy_place/place[@name = 'other']/@desc")}}
															{{/if}}
														{{else}}
															{{foreach from=$xml->getList("page/rma/buy_place/place") item=loop534}}
																<span class="rma_add_form_buyplace">
																	<input type="radio" name="buy_place" value="{{$loop534->getItemEscape("@value")}}" onclick="rma_add.setPlace('rma_add_form_buyplace_{{$loop534->getItemEscape("@name")}}');" {{if $loop534->getItem("@checked") == (string) 'true'}} checked="checked" {{/if}}></input>
																	{{if  $loop534->getItem("@name")  == (string) 'shop'}}
																		{{$txt['107791::rma_add_form_buyplace1']}}
																	{{elseif  $loop534->getItem("@name")  == (string) 'auction'}}
																		{{$txt['107791::rma_add_form_buyplace2']}}
																		<span {{assign "styleAttributeTmp1" ""}}  class="rma_add_form_boxsub_hidden" id="rma_add_form_buyplace_auction" {{if $loop534->getItem("@checked") == (string) 'true'}}{{capture name="styleAttributeTmp1" assign="styleAttributeTmp1"}}display:block;{{/capture}}{{else}}{{capture name="styleAttributeTmp1" assign="styleAttributeTmp1"}}display:none;{{/capture}}{{/if}}  style="{{$styleAttributeTmp1}}">
																			<select id="buy_place_action" name="buy_place_action">
																				{{foreach from=$loop534->getList("/shop/page/rma/auctions/auction") item=loop556}}
																					<option value="{{$loop556->getItemEscape("@value")}}" {{if $loop556->getItem("@checked") == (string) 'true'}} selected="selected" {{/if}}>{{$loop556->getItemEscape("@name")}}
																					</option>
																				{{/foreach}}
																			</select></span>
																	{{else}}
																		{{$txt['107791::rma_add_form_buyplace3']}}
																	{{/if}}
																	</span>
															{{/foreach}}
														{{/if}}
														</span>
												</div>
												{{if !( $xml->getItem("page/rma/@action")  == (string) 'view')}}
													{{foreach from=$xml->getList("page/rma/buy_place/place") item=loop579}}
														<div {{assign "idAttributeTmp12" ""}}{{assign "styleAttributeTmp2" ""}}  class="rma_add_form_boxsub_hidden" {{if $loop579->getItem("@checked") == (string) 'true'}}{{capture name="styleAttributeTmp2" assign="styleAttributeTmp2"}}display:block;{{/capture}}{{else}}{{capture name="styleAttributeTmp2" assign="styleAttributeTmp2"}}display:none;{{/capture}}{{/if}}{{if $loop579->getItem("@name") == (string) 'shop'}}{{capture name="idAttributeTmp12" assign="idAttributeTmp12"}}rma_add_form_buyplace_shop{{/capture}}{{elseif $loop579->getItem("@name") == (string) 'other'}}{{capture name="idAttributeTmp12" assign="idAttributeTmp12"}}rma_add_form_buyplace_other{{/capture}}{{/if}}  style="{{$styleAttributeTmp2}}"  id="{{$idAttributeTmp12}}">
															{{if  $loop579->getItem("@name")  == (string) 'other'}}
																<div class="form-group clearfix">
																	<div class=" ">
																		<label for="buy_place_desc" class="control-label">{{$txt['107791::rma_add_form_infotitle12']}}
																		</label>
																	</div>
																	<div class="has-feedback has-required ">
																		<input id="buy_place_desc" class="rma_add_form_input form-control validate" name="buy_place_desc" type="text" onkeyup="rma_add.checkInps('buy_place_desc');" value="{{$loop579->getItemEscape("@desc")}}"></input>
																		<span class="form-control-feedback"></span>
																	</div>
																</div>
																<div class="rma_add_help" id="buy_place_desc_help">
																	<div class="rma_add_help2">
																	</div>
																</div>
															{{/if}}
														</div>
													{{/foreach}}
												{{/if}}
											</div>
										</div>
										<div class="col-12 col-sm-6">
											<div class="rma_add_form_box" id="rma_add_form_box4">
												<div class="rma_add_form_descval">
													{{if  $xml->getItem("page/rma/@action")  == (string) 'view'}}
														<span class="rma_add_form_desc">{{$txt['107791::rma_add_form_desc']}}</span>{{$xml->getItemEscape("page/rma/failure")}}
													{{else}}
														<div class="form-group clearfix">
															<div class=" ">
																<label for="rma_add_form_desc" class="control-label">{{$txt['107791::rma_add_form_desc']}}
																</label>
															</div>
															<div class="has-feedback has-required ">
																<textarea id="rma_add_form_desc" name="usterka" class="form-control validate rma_add_form_desc" minlength="3">
																	{{if  $xml->getItem("page/rma[@action='edit']")}}
																		{{$xml->getItemEscape("page/rma/failure")}}
																	{{/if}}
																	</textarea>
																<span class="form-control-feedback"></span>
															</div>
														</div>
														<div class="rma_add_help" id="rma_add_desc_help">
															<div class="rma_add_help2">
															</div>
														</div>
													{{/if}}
												</div>
											</div>
										</div>
									</div>
								</div>
								{{if !( $xml->getItem("page/rma/payments/@active")  == (string) '0')}}
									<div class="rma_add_form_section" id="rma_add_form_section3">
										<div class="rma_add_form_sectionheader">
											<span class="rma_add_form_sectionheader">{{$txt['107791::rma_add_form_sectionheader3']}}</span>
										</div>
										{{if !( $xml->getItem("page/rma/@action")  == (string) 'view')}}
											<div class="rma_add_form_sectiondesc">
												<span class="rma_add_form_sectiondesc">{{$txt['107791::rma_add_form_sectiondesc3']}}</span>
											</div>
										{{/if}}
										<div class="rma_add_form_sectionsub row" id="rma_add_form_subsection3">
											<div class="col-12 col-sm-4">
												<div class="rma_add_form_box" id="rma_add_form_box5">
													<div class="rma_add_form_boxsub2">
														<span class="rma_add_form_infotitle2">{{$txt['107791::rma_add_form_infotitle13']}}</span>
														<span class="rma_add_form_infovalue2">
															{{if  $xml->getItem("page/rma/@action")  == (string) 'view'}}
																{{if  $xml->getItem("page/rma/payments/payment[@checked = 'true']/@type")  == (string) 'b'}}
																	{{$txt['107791::rma_add_form_payment1']}}
																{{elseif  $xml->getItem("page/rma/payments/payment[@checked = 'true']/@type")  == (string) 'p'}}
																	{{$txt['107791::rma_add_form_payment2']}}
																{{elseif  $xml->getItem("page/rma/payments/payment[@checked = 'true']/@type")  == (string) 'c'}}
																	{{$txt['107791::rma_add_form_payment3']}}
																{{elseif  $xml->getItem("page/rma/payments/payment[@checked = 'true']/@type")  == (string) 't'}}
																	{{$txt['107791::rma_add_form_payment4']}}
																{{/if}}
															{{else}}
																{{foreach from=$xml->getList("page/rma/payments/payment") item=loop664}}
																	<span>
																		<input type="radio" name="payment_source" value="{{$loop664->getItemEscape("@type")}}" onclick="rma_add.setPayment('rma_add_form_pay{{$loop664->getItemEscape("@type")}}');" {{if $loop664->getItem("@checked") == (string) 'true'}} checked="checked" {{/if}}></input>
																		{{if  $loop664->getItem("@type")  == (string) 'b'}}
																			{{$txt['107791::rma_add_form_payment1']}}
																		{{elseif  $loop664->getItem("@type")  == (string) 'p'}}
																			{{$txt['107791::rma_add_form_payment2']}}
																		{{elseif  $loop664->getItem("@type")  == (string) 'c'}}
																			{{$txt['107791::rma_add_form_payment3']}}
																		{{elseif  $loop664->getItem("@type")  == (string) 't'}}
																			{{$txt['107791::rma_add_form_payment4']}}
																		{{/if}}
																		</span>
																{{/foreach}}
															{{/if}}
															</span>
													</div>
													{{if  $xml->getItem("page/rma/@action")  == (string) 'view'}}
														{{if  $xml->getItem("page/rma/payments/payment[@checked = 'true']/@type")  == (string) 'b'}}
															<div class="rma_add_form_boxsub2_hidden" style="display:block;">
																<span class="rma_add_form_infotitle2">{{$txt['107791::rma_add_form_payment1']}}</span>
																<span class="rma_add_form_infovalue2">{{$xml->getItemEscape("page/rma/payments_text")}}</span>
															</div>
														{{elseif  $xml->getItem("page/rma/payments/payment[@checked = 'true']/@type")  == (string) 'p'}}
															<div class="rma_add_form_boxsub2_hidden" style="display:block;">
																<span class="rma_add_form_infotitle2">{{$txt['107791::rma_add_form_payment2']}}</span>
																<span class="rma_add_form_infovalue2">{{$xml->getItemEscape("page/rma/payments_text")}}</span>
															</div>
														{{elseif  $xml->getItem("page/rma/payments/payment[@checked = 'true']/@type")  == (string) 'c'}}
															<div class="rma_add_form_boxsub2_hidden" style="display:block;">
																<span class="rma_add_form_infotitle2">{{$txt['107791::rma_add_form_payment3']}}</span>
																<span class="rma_add_form_infovalue2">{{$xml->getItemEscape("page/rma/payments_text")}}</span>
															</div>
														{{/if}}
													{{else}}
														{{foreach from=$xml->getList("page/rma/payments/payment") item=loop707}}
															<div {{assign "styleAttributeTmp3" ""}}  class="rma_add_form_boxsub2_hidden" id="rma_add_form_pay{{$loop707->getItemEscape("@type")}}" {{if $loop707->getItem("@checked") == (string) 'true'}}{{capture name="styleAttributeTmp3" assign="styleAttributeTmp3"}}display:block;{{/capture}}{{else}}{{capture name="styleAttributeTmp3" assign="styleAttributeTmp3"}}display:none;{{/capture}}{{/if}}  style="{{$styleAttributeTmp3}}">
																{{if  $loop707->getItem("@type")  == (string) 'p'}}
																	{{if  $loop707->getItem("@checked")  == (string) 'true'}}
																		<script>rma_add_paymentTrigger = 1;																		</script>

																	{{/if}}
																	<span class="rma_add_form_infotitle2">{{$txt['107791::rma_add_form_paymenttitle2']}}
																		{{if  $loop707->getItem("/shop/page/rma/payments[@active='1']")}}
																			<img class="rma_need" src="/gfx/__IAI_TEMPLATE_LANG_639_1__/need.gif?r=1570606968" alt="{{$txt['107791::n58364_needtxt']}}"></img>
																			<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/correct.png?r=1570606968" class="rma_correct_img" id="rma_add_przekaz_on" style="display:none;"/>
																			<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/incorrect.png?r=1570606968" class="rma_correct_img" id="rma_add_przekaz_off" style="display:none;"/>
																		{{/if}}
																		</span>
																	<textarea id="rma_add_form_przekaz" class="rma_add_form_input" name="payment_addres2" onkeyup="rma_add.checkInps('payment_addres2');">
																		{{if ( $loop707->getItem("@checked")  == (string) 'true') and ( $loop707->getItem("/shop/page/rma/payments_text"))}}
																			{{$loop707->getItemEscape("/shop/page/rma/payments_text")}}
																		{{/if}}
																		</textarea>
																	<div class="rma_add_help" id="rma_add_przekaz_help">
																		<div class="rma_add_help2">
																		</div>
																	</div>
																{{elseif  $loop707->getItem("@type")  == (string) 'b'}}
																	{{if  $loop707->getItem("@checked")  == (string) 'true'}}
																		<script>rma_add_paymentTrigger = 2;																		</script>

																	{{/if}}
																	<span class="rma_add_form_infotitle2">{{$txt['107791::rma_add_form_paymenttitle1']}}
																		{{if  $loop707->getItem("/shop/page/rma/payments[@active='1']")}}
																			<img class="rma_need" src="/gfx/__IAI_TEMPLATE_LANG_639_1__/need.gif?r=1570606968" alt="{{$txt['107791::n58364_needtxt']}}"></img>
																			<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/correct.png?r=1570606968" class="rma_correct_img" id="rma_add_bankaccount_on" style="display:none;"/>
																			<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/incorrect.png?r=1570606968" class="rma_correct_img" id="rma_add_bankaccount_off" style="display:none;"/>
																		{{/if}}
																		</span>
																	<input id="rma_add_form_bankaccount" class="rma_add_form_input" type="text" name="payment_addres1" onkeyup="rma_add.checkInps('payment_addres1');" {{if ( $loop707->getItem("@checked") == (string) 'true') and ( $loop707->getItem("/shop/page/rma/payments_text"))}} value="{{$loop707->getItemEscape("/shop/page/rma/payments_text")}}" {{/if}}></input>
																	<div class="rma_add_help" id="rma_add_bankaccount_help">
																		<div class="rma_add_help2">
																		</div>
																	</div>
																{{elseif  $loop707->getItem("@type")  == (string) 'c'}}
																	{{if  $loop707->getItem("@checked")  == (string) 'true'}}
																		<script>rma_add_paymentTrigger = 3;																		</script>

																	{{/if}}
																	<span class="rma_add_form_infotitle2">{{$txt['107791::rma_add_form_paymenttitle3']}}
																		{{if  $loop707->getItem("/shop/page/rma/payments[@active='1']")}}
																			<img class="rma_need" src="/gfx/__IAI_TEMPLATE_LANG_639_1__/need.gif?r=1570606968" alt="{{$txt['107791::n58364_needtxt']}}"></img>
																			<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/correct.png?r=1570606968" class="rma_correct_img" id="rma_add_czek_on" style="display:none;"/>
																			<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/incorrect.png?r=1570606968" class="rma_correct_img" id="rma_add_czek_off" style="display:none;"/>
																		{{/if}}
																		</span>
																	<textarea id="rma_add_form_czek" class="rma_add_form_input" name="payment_addres3" onkeyup="rma_add.checkInps('payment_addres3');">
																		{{if ( $loop707->getItem("@checked")  == (string) 'true') and ( $loop707->getItem("/shop/page/rma/payments_text"))}}
																			{{$loop707->getItemEscape("/shop/page/rma/payments_text")}}
																		{{/if}}
																		</textarea>
																	<div class="rma_add_help" id="rma_add_czek_help">
																		<div class="rma_add_help2">
																		</div>
																	</div>
																{{elseif  $loop707->getItem("@type")  == (string) 't'}}
																	{{if  $loop707->getItem("@checked")  == (string) 'true'}}
																		<script>rma_add_paymentTrigger = 4;																		</script>

																	{{/if}}
																{{/if}}
															</div>
														{{/foreach}}
													{{/if}}
												</div>
											</div>
										</div>
									</div>
								{{/if}}
								<div class="rma_add_form_section" id="rma_add_form_section4">
									<div class="rma_add_form_sectionheader">
										{{if  $xml->getItem("page/rma/@action")  == (string) 'view' or count( $xml->getList("page/rma/stocks/stock"))  == (string) 1}}
											<span class="rma_add_form_sectionheader">{{$txt['107791::rma_add_form_sectionheader4b']}}</span>
										{{else}}
											<span class="rma_add_form_sectionheader">{{$txt['107791::rma_add_form_sectionheader4']}}</span>
										{{/if}}
									</div>
									{{if !( $xml->getItem("page/rma/@action")  == (string) 'view') and count( $xml->getList("/shop/page/rma/stocks/stock"))  gt (string) 1}}
										<div class="rma_add_form_sectiondesc">
											<span class="rma_add_form_sectiondesc">{{$txt['107791::rma_add_form_sectiondesc4']}}</span>
										</div>
									{{/if}}
									<div class="rma_add_form_sectionsub" id="rma_add_form_subsection4">
										{{foreach from=$xml->getList("page/rma/stocks/stock") item=loop795}}
											<div {{assign "classAttributeTmp9" ""}}{{assign "styleAttributeTmp4" ""}}{{capture name="classAttributeTmp9" assign="classAttributeTmp9"}}rma_add_form_stock{{/capture}}{{if $loop795->getItem("@selected") == (string) 'selected' and count( $loop795->getList("/shop/page/rma/stocks/stock")) gt (string) 1}}{{capture name="classAttributeTmp9" assign="classAttributeTmp9"}}rma_add_form_stock rmaf_selected{{/capture}}{{/if}}{{capture name="styleAttributeTmp4" assign="styleAttributeTmp4"}}cursor: default;{{/capture}} id="rmaf_{{$loop795->getItemEscape("@id")}}" {{if !( $loop795->getItem("/shop/page/rma/@action") == (string) 'view') and count( $loop795->getList("/shop/page/rma/stocks/stock")) gt (string) 1}} title="{{$txt['107791::ras_onclicktext']}}" onclick="rma_add.chooseSite($(this).attr('id'));"{{capture name="styleAttributeTmp4" assign="styleAttributeTmp4"}}{{/capture}}{{/if}}{{if count( $loop795->getList("/shop/page/rma/stocks/stock")) == (string) 1}}{{capture name="styleAttributeTmp4" assign="styleAttributeTmp4"}}cursor: default;{{/capture}}{{/if}}  style="{{$styleAttributeTmp4}}"  class="{{$classAttributeTmp9}}">
												<div class="rmaf_sub">
													<div class="rma_add_form_stockheader">
														<span class="rma_add_form_stockname">{{$loop795->getItemEscape("@name")}}</span>
													</div>
													<div class="rma_add_form_stockaddress">
														{{if  $loop795->getItem("@street")  neq (string) ''}}
															{{$loop795->getItemEscape("@street")}}
															<br/>
														{{/if}}
														{{if  $loop795->getItem("@zipcode")  neq (string) ''}}
															{{$loop795->getItemEscape("@zipcode")}}{{literal}}{{/literal}}
														{{/if}}
														{{$loop795->getItemEscape("@city")}}
														<span class="rma_add_form_infocountry">{{literal}}({{/literal}}
															{{if  $loop795->getItem("@province")}}
																{{$loop795->getItemEscape("@province")}}{{literal}},{{/literal}}
															{{/if}}
															{{$loop795->getItemEscape("@country")}}{{literal}}){{/literal}}</span>
													</div>
													{{if $tel_link}}
														{{if  $loop795->getItem("@phone")  neq (string) ''}}
															<span class="rma_add_form_phone">{{$tel_link}}
																{{if  $loop795->getItem("@phone_link")  neq (string) ''}}
																	<a href="{{$loop795->getItemEscape("@phone_link")}}" title="{{$loop795->getItemEscape("@phone")}}">{{$loop795->getItemEscape("@phone")}}</a>
																{{else}}
																	{{$loop795->getItemEscape("@phone")}}
																{{/if}}
																</span>
														{{/if}}
														{{if  $loop795->getItem("@mail")  neq (string) ''}}
															<a {{assign "hrefAttributeTmp11" ""}}  class="rma_add_form_mail" title="{{$loop795->getItemEscape("@mail")}}" {{if $loop795->getItem("@mail_link") neq (string) ''}}{{capture name="hrefAttributeTmp11" assign="hrefAttributeTmp11"}}{{$loop795->getItemEscape("@mail_link")}}{{/capture}}{{else}}{{capture name="hrefAttributeTmp11" assign="hrefAttributeTmp11"}}mailto:{{$loop795->getItemEscape("@mail")}}{{/capture}}{{/if}}  href="{{$hrefAttributeTmp11}}">{{$loop795->getItemEscape("@mail")}}</a>
														{{/if}}
													{{/if}}
													<div class="rma_add_form_stocklink">
														<a class="rma_add_form_stocklink" target="_blank" href="{{$loop795->getItemEscape("@link")}}" title="{{$txt['107791::rma_add_form_linktitle']}}">{{$txt['107791::rma_add_form_link']}}</a>
													</div>
												</div>
											</div>
										{{/foreach}}
									</div>
								</div>
								{{if !( $xml->getItem("page/rma/@action")  == (string) 'view')}}
									<div class="rma_add_form_submit">
										<a {{assign "classAttributeTmp10" ""}}  id="rma_add_form_submit" onmouseover="rma_add.checkInps();" {{if $xml->getItem("page/rma/@id")}}{{capture name="classAttributeTmp10" assign="classAttributeTmp10"}}btn rma_add_form_button_edit{{/capture}} title="{{$txt['107791::rma_add_form_buttonedit']}}" {{$txt['107791::rma_add_button_zmiany']}} {{else}}{{capture name="classAttributeTmp10" assign="classAttributeTmp10"}}btn rma_add_form_button_add{{/capture}} title="{{$txt['107791::rma_add_form_buttonadd']}}" {{$txt['107791::rma_add_button_zglos']}} {{/if}}  class="{{$classAttributeTmp10}}"></a>
										<div class="button_legend">{{$txt['107791::68516_required']}}
										</div>
										<div id="alert_cover" class="projector_alert_55916" style="display:none" onclick="Alertek.hide_alert();">NIEDASIE
										</div>
									</div>
								{{/if}}
							</form>
						</div>
						<script>
                app_shop.vars.rma_action = false
                {{if !( $xml->getItem("page/rma/@action")  == (string) 'view')}}
                    app_shop.vars.rma_action = true
                {{/if}}						</script>

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
