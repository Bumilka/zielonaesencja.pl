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
					<aside {{assign "classAttributeTmp2" ""}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}span3{{/capture}}{{if $xml->getItem("page/@type") == (string) 'projector'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['107419::70925_projector_a_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'search'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['107419::70925_search_a_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'main'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['107419::70925_main_a_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'blog-item'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['107419::70925_blog_item_a_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'blog-list'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['107419::70925_blog_list_a_class']}}{{/capture}}{{else}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['107419::70925_otherwise_a_class']}}{{/capture}}{{/if}}  class="{{$classAttributeTmp2}}">
						{{include file="component_menu_additional1_106528.tpl"}}
					</aside>
				{{/if}}
				{{if !( $xml->getItem("action/set_render/item")) or ( $xml->getItem("action/set_render/item/@name")  == (string) 'content')}}
					<div {{assign "classAttributeTmp3" ""}}  id="content"{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}span9{{/capture}}{{if $xml->getItem("page/@type") == (string) 'projector'}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}{{$txt['107419::70925_projector_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'search'}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}{{$txt['107419::70925_search_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'main'}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}{{$txt['107419::70925_main_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'navigation'}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}{{$txt['107419::70925_navigation_page_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'blog-list'}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}{{$txt['107419::70925_blog_list_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'blog-item'}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}{{$txt['107419::70925_blog_item_c_class']}}{{/capture}}{{else}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}{{$txt['107419::70925_otherwise_c_class']}}{{/capture}}{{/if}}  class="{{$classAttributeTmp3}}">
						{{include file="component_menu_messages_106608.tpl"}}
						<!--CMS - Informacja o reklamacjach (rma_list_cms, 58201.1)-->
						{{if  $xml->getItem("page/text/body")}}
							<div {{assign "classAttributeTmp4" ""}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}rma_list_cms_label{{/capture}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}rma_list_cms_label big_label{{/capture}}  class="{{$classAttributeTmp4}}">
								<span class="rma_list_cms_label">{{$txt['58201::rma_list_cms_label']}}</span>
							</div>
							<div class="rma_list_cms">
								<div {{assign "classAttributeTmp5" ""}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}rma_list_cms_sub{{/capture}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}rma_list_cms_sub cm{{/capture}}  class="{{$classAttributeTmp5}}">{{$xml->getItem("page/text/body")}}
								</div>
							</div>
						{{/if}}
						<!--Informacje o reklamacjach (rma_list_data, 107803.1)-->
						{{capture name="rma_list_paymenthead" assign="rma_list_paymenthead"}}
							{{$txt['107803::60826_rma_list_paymenthead']}}
						{{/capture}}
						{{capture name="setSerialNumber" assign="setSerialNumber"}}
							{{$txt['107803::57649_setSerialNumber']}}
						{{/capture}}
						{{if  $xml->getItem("/shop/page/rma/item")}}
							<div class="client_order">
								<h1 class="big_label">
									<span>{{$txt['107803::54068_linksclosed']}}</span>
								</h1>
								<table {{assign "classAttributeTmp6" ""}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}orders{{/capture}} cellspacing="0" cellpadding="0"{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}ui-responsive table-stroke ui-table ui-table-reflow orders {{/capture}}  class="{{$classAttributeTmp6}}">
									<thead>
										<tr id="orders_header">
											<td class="ord3" id="orders_head_1">{{$txt['107803::51900_001']}}
											</td>
											<td class="ord3" id="orders_head_2">{{$txt['107803::51900_002']}}
											</td>
											<td class="ord3" id="orders_head_5">{{$txt['107803::51900_005']}}
											</td>
											<td class="ord3" id="orders_head_6">{{$txt['107803::51900_006']}}
											</td>
										</tr>
									</thead>
									<tbody>
										{{foreach from=$xml->getList("/shop/page/rma/item") item=loop306}}
											<tr>
												<td class="ord">
													{{if $setSerialNumber}}
														{{$loop306->getItemEscape("@number")}}
													{{else}}
														{{$loop306->getItemEscape("@id")}}
													{{/if}}
												</td>
												<td>{{$loop306->getItemEscape("@date")}}
												</td>
												<td>
													<div class="btn-icon prepaid-icon status-{{$loop306->getItemEscape("@status")}}">
														{{if  $loop306->getItem("@status_name")  neq (string) ''}}
															{{if  $loop306->getItem("@status_name_lang")  neq (string) ''}}
																{{$loop306->getItem("@status_name_lang")}}
															{{else}}
																{{$loop306->getItem("@status_name")}}
															{{/if}}
														{{elseif  $loop306->getItem("@status") == (string)1}}
															<span>{{$txt['107803::status_1_icon']}}</span>
															<small>{{$txt['107803::status_1']}}</small>
														{{elseif  $loop306->getItem("@status") == (string)2}}
															<span>{{$txt['107803::status_2_icon']}}</span>
															<small>{{$txt['107803::status_2']}}</small>
														{{elseif  $loop306->getItem("@status") == (string)3}}
															<span>{{$txt['107803::status_3_icon']}}</span>
															<small>{{$txt['107803::status_3']}}</small>
														{{elseif  $loop306->getItem("@status") == (string)4}}
															<span>{{$txt['107803::status_4_icon']}}</span>
															<small>{{$txt['107803::status_4']}}</small>
														{{elseif  $loop306->getItem("@status") == (string)5}}
															<span>{{$txt['107803::status_5_icon']}}</span>
															<small>{{$txt['107803::status_5']}}</small>
														{{elseif  $loop306->getItem("@status") == (string)6}}
															<span>{{$txt['107803::status_6_icon']}}</span>
															<small>{{$txt['107803::status_6']}}</small>
														{{elseif  $loop306->getItem("@status") == (string)7}}
															<span>{{$txt['107803::status_7_icon']}}</span>
															<small>{{$txt['107803::status_7']}}</small>
														{{elseif  $loop306->getItem("@status") == (string)8}}
															<span>{{$txt['107803::status_8_icon']}}</span>
															<small>{{$txt['107803::status_8']}}</small>
														{{elseif  $loop306->getItem("@status") == (string)9}}
															<span>{{$txt['107803::status_9_icon']}}</span>
															<small>{{$txt['107803::status_9']}}</small>
														{{elseif  $loop306->getItem("@status") == (string)10}}
															<span>{{$txt['107803::status_10_icon']}}</span>
															<small>{{$txt['107803::status_10']}}</small>
														{{elseif  $loop306->getItem("@status") == (string)11}}
															<span>{{$txt['107803::status_11_icon']}}</span>
															<small>{{$txt['107803::status_11']}}</small>
														{{elseif  $loop306->getItem("@status") == (string)12}}
															<span>{{$txt['107803::status_12_icon']}}</span>
															<small>{{$txt['107803::status_12']}}</small>
														{{elseif  $loop306->getItem("@status") == (string)13}}
															<span>{{$txt['107803::status_13_icon']}}</span>
															<small>{{$txt['107803::status_13']}}</small>
														{{elseif  $loop306->getItem("@status") == (string)14}}
															<span>{{$txt['107803::status_14_icon']}}</span>
															<small>{{$txt['107803::status_14']}}</small>
														{{elseif  $loop306->getItem("@status") == (string)15}}
															<span>{{$txt['107803::status_15_icon']}}</span>
															<small>{{$txt['107803::status_15']}}</small>
														{{elseif  $loop306->getItem("@status") == (string)16}}
															<span>{{$txt['107803::status_16_icon']}}</span>
															<small>{{$txt['107803::status_16']}}</small>
														{{elseif  $loop306->getItem("@status") == (string)17}}
															<span>{{$txt['107803::status_17_icon']}}</span>
															<small>{{$txt['107803::status_17']}}</small>
														{{elseif  $loop306->getItem("@status") == (string)18}}
															<span>{{$txt['107803::status_18_icon']}}</span>
															<small>{{$txt['107803::status_18']}}</small>
														{{elseif  $loop306->getItem("@status") == (string)19}}
															<span>{{$txt['107803::status_19_icon']}}</span>
															<small>{{$txt['107803::status_19']}}</small>
														{{elseif  $loop306->getItem("@status") == (string)20}}
															<span>{{$txt['107803::status_20_icon']}}</span>
															<small>{{$txt['107803::status_20']}}</small>
														{{elseif  $loop306->getItem("@status") == (string)21}}
															<span>{{$txt['107803::status_21_icon']}}</span>
															<small>{{$txt['107803::status_21']}}</small>
														{{elseif  $loop306->getItem("@status") == (string)22}}
															<span>{{$txt['107803::status_22_icon']}}</span>
															<small>{{$txt['107803::status_22']}}</small>
														{{elseif  $loop306->getItem("@status") == (string)23}}
															<span>{{$txt['107803::status_23_icon']}}</span>
															<small>{{$txt['107803::status_23']}}</small>
														{{elseif  $loop306->getItem("@status") == (string)24}}
															<span>{{$txt['107803::status_24_icon']}}</span>
															<small>{{$txt['107803::status_24']}}</small>
														{{elseif  $loop306->getItem("@status") == (string)25}}
															<span>{{$txt['107803::status_25_icon']}}</span>
															<small>{{$txt['107803::status_25']}}</small>
														{{elseif  $loop306->getItem("@status") == (string)26}}
															<span>{{$txt['107803::status_26_icon']}}</span>
															<small>{{$txt['107803::status_26']}}</small>
														{{elseif  $loop306->getItem("@status") == (string)27}}
															<span>{{$txt['107803::status_27_icon']}}</span>
															<small>{{$txt['107803::status_27']}}</small>
														{{elseif  $loop306->getItem("@status") == (string)28}}
															<span>{{$txt['107803::status_28_icon']}}</span>
															<small>{{$txt['107803::status_28']}}</small>
														{{elseif  $loop306->getItem("@status") == (string)29}}
															<span>{{$txt['107803::status_29_icon']}}</span>
															<small>{{$txt['107803::status_29']}}</small>
														{{elseif  $loop306->getItem("@status") == (string)30}}
															<span>{{$txt['107803::status_30_icon']}}</span>
															<small>{{$txt['107803::status_30']}}</small>
														{{else}}
															<span>{{$txt['107803::status_2_icon']}}</span>
															<small>
																{{if  $loop306->getItem("@status_name_lang")  neq (string) ''}}
																	{{$loop306->getItem("@status_name_lang")}}
																{{else}}
																	{{$loop306->getItem("@status_name")}}
																{{/if}}
																</small>
														{{/if}}
													</div>
												</td>
												<td class="ord">
													<a class="btn-icon" href="{{$loop306->getItemEscape("@url")}}">
														<span>{{$txt['107803::51900_018']}}</span>
														<small>{{$txt['107803::51900_018b']}}</small></a>
												</td>
											</tr>
										{{/foreach}}
									</tbody>
								</table>
							</div>
						{{else}}
							<div class="rma_list_data_outline">
								<div class="rma_list_data_label">
									<span class="rma_list_data_label">{{$txt['107803::rma_list_data_label']}}</span>
								</div>
								<div class="rma_list_data_addbutton">
									<a href="rma-add.php" class="btn-large rma_list_data_addbutton" title="{{$txt['107803::rma_list_data_addttitle']}}">
										<span class="img_button_edytujaddbutton"></span>
										<div class="addbutton_maintxt">{{$txt['107803::rma_list_data_addttitle']}}
										</div>
										<div class="addbutton_sidetxt">{{$txt['107803::rma_list_data_addttitle_side']}}
										</div></a>
								</div>
								{{if ( $xml->getItem("page/list/active/@count")  gt (string) 0) or ( $xml->getItem("page/list/close/@count")  gt (string) 0)}}
									<div class="rma_list_data_sub">
										<div class="rma_list_data_toggler">
											<div {{assign "classAttributeTmp7" ""}}  id="rma_tab_close"{{capture name="classAttributeTmp7" assign="classAttributeTmp7"}}rma_list_tab{{/capture}} onclick="rma_list.choosePanel('rma_tab_close','rma_panel_close');" {{if $xml->getItem("page/list/active/@count") == (string) 0}}{{capture name="classAttributeTmp7" assign="classAttributeTmp7"}}rma_list_tab rma_on{{/capture}}{{/if}}  class="{{$classAttributeTmp7}}">
												<span>{{$txt['107803::rma_list_tab_close']}}</span>
											</div>
											<div {{assign "classAttributeTmp8" ""}}  id="rma_tab_active"{{capture name="classAttributeTmp8" assign="classAttributeTmp8"}}rma_list_tab rma_on{{/capture}} onclick="rma_list.choosePanel('rma_tab_active','rma_panel_active');" {{if $xml->getItem("page/list/active/@count") == (string) 0}}{{capture name="classAttributeTmp8" assign="classAttributeTmp8"}}rma_list_tab{{/capture}}{{/if}}  class="{{$classAttributeTmp8}}">
												<span>{{$txt['107803::rma_list_tab_active']}}</span>
											</div>
										</div>
										<div class="rma_list_data_content">
											<div {{assign "styleAttributeTmp1" ""}}  id="rma_panel_close" class="rma_list_data_panel"{{capture name="styleAttributeTmp1" assign="styleAttributeTmp1"}}display:none;{{/capture}}{{if $xml->getItem("page/list/active/@count") == (string) 0}}{{capture name="styleAttributeTmp1" assign="styleAttributeTmp1"}}display:block{{/capture}}{{/if}}  style="{{$styleAttributeTmp1}}">
												{{if  $xml->getItem("page/list/close/@count")  == (string) 0}}
													<span class="rma_list_noitem">{{$txt['107803::rma_list_noclosed']}}</span>
												{{else}}
													<div class="rma_list_data_labels">
														<span class="rma_list_label_nmbr">{{$txt['107803::rma_list_label_rnmbr']}}</span>
														<span class="rma_list_label_product">{{$txt['107803::rma_list_label_product']}}</span>
														<span class="rma_list_label_status">{{$txt['107803::rma_list_label_status']}}</span>
														<span class="rma_list_label_operation">{{$txt['107803::rma_list_label_operation']}}</span>
													</div>
													{{foreach from=$xml->getList("page/list/close/item") item=loop497}}
														<div id="rmal_{{$loop497->getItemEscape("@id")}}" class="{{if $loop497@iteration % 2 == (string) 0}}rma_list_item2{{/if}}{{if $loop497@iteration % 2 == (string) 1}}rma_list_item1{{/if}}" onclick="rma_list.chooseRma('{{$loop497->getItemEscape("@id")}}');">
															<span class="rma_list_item_nmbr">{{$loop497->getItemEscape("@id")}}</span>
															<span class="rma_list_item_product">{{$loop497->getItemEscape("@product")}}</span>
															<span class="rma_list_item_status">{{$loop497->getItemEscape("@status")}}</span>
															<span class="rma_list_item_operation">{{$txt['107803::rma_list_item_operation']}}</span>
															<span class="rma_list_item_operation ophidden">{{$txt['107803::rma_list_item_operation2']}}</span>
														</div>
														<div class="rma_list_item">
															<div class="rma_list_item_sub">
																<div class="rma_list_itmesub1">
																	<div class="rma_list_itemdata">
																		<div class="rma_list_itemhead">
																			<span>{{$txt['107803::rma_list_itemdata']}}</span>
																		</div>
																		<table class="rma_list_itemdata">
																			<tbody>
																				<tr>
																					<td class="rma_list_itemdata1">{{$txt['107803::rma_list_itemdata1']}}
																					</td>
																					<td class="rma_list_itemdata2">{{$loop497->getItemEscape("@serial_number")}}
																					</td>
																				</tr>
																				<tr>
																					<td class="rma_list_itemdata1">{{$txt['107803::rma_list_itemdata2']}}
																					</td>
																					<td class="rma_list_itemdata2">
																						{{if  $loop497->getItem("@source")  == (string) 'a'}}
																							{{$txt['107803::rma_list_buyauction']}}
																							{{if  $loop497->getItem("@shop")  == (string) '2'}}
																								{{$txt['107803::rma_list_buyallegro']}}
																							{{/if}}
																							{{if  $loop497->getItem("@shop")  == (string) '3'}}
																								{{$txt['107803::rma_list_buyebay']}}
																							{{/if}}
																						{{elseif  $loop497->getItem("@source")  == (string) 'i'}}
																							{{$loop497->getItemEscape("@shop")}}
																						{{else}}
																							{{$loop497->getItemEscape("@shop")}}
																						{{/if}}
																					</td>
																				</tr>
																				<tr>
																					<td class="rma_list_itemdata1">{{$txt['107803::rma_list_itemdata3']}}
																					</td>
																					<td class="rma_list_itemdata2">{{$loop497->getItemEscape("@date_buy")}}
																					</td>
																				</tr>
																				<tr>
																					<td class="rma_list_itemdata1">{{$txt['107803::rma_list_itemdata4']}}
																					</td>
																					<td class="rma_list_itemdata2">{{$loop497->getItemEscape("@date_issue")}}
																					</td>
																				</tr>
																				<tr>
																					<td class="rma_list_itemdata1">{{$txt['107803::rma_list_itemdata5']}}
																					</td>
																					<td class="rma_list_itemdata2">{{$loop497->getItemEscape("@date_end")}}
																					</td>
																				</tr>
																				<tr>
																					<td class="rma_list_itemdata1">{{$txt['107803::rma_list_itemdata6']}}
																					</td>
																					<td class="rma_list_itemdata2">{{$loop497->getItemEscape("@date_change")}}
																					</td>
																				</tr>
																			</tbody>
																		</table>
																	</div>
																	<div class="rma_list_itemdesc">
																		<div class="rma_list_itemhead">
																			<span>{{$txt['107803::rma_list_itemdesc']}}</span>
																		</div>
																		<div class="rma_list_itemdesc_sub">{{$loop497->getItemEscape("desc")}}
																		</div>
																	</div>
																	<div class="rma_list_itemstatus">
																		<div class="rma_list_itemhead">
																			<span>{{$txt['107803::rma_list_itemstatus']}}</span>
																		</div>
																		<div class="rma_list_itemstatus_sub">
																			<span class="rma_list_itemstatushead">{{$loop497->getItemEscape("@status")}}</span>
																			<span class="rma_list_itemstatusbody">{{$loop497->getItemEscape("stat_desc")}}</span>
																		</div>
																	</div>
																</div>
																<div class="rma_list_itmesub2">
																	<div class="rma_list_itemplace">
																		<div class="rma_list_itemhead">
																			<span>{{$txt['107803::rma_list_itemplace']}}</span>
																		</div>
																		<div class="rma_list_itemplace_sub">
																			<span class="rma_list_itemstock_name">{{$loop497->getItemEscape("stock/@name")}}</span>
																			<span class="rma_list_itemstock_addresss">
																				{{if  $loop497->getItem("stock/@street")  neq (string) ''}}
																					{{$loop497->getItemEscape("stock/@street")}}
																					<br/>
																				{{/if}}
																				{{if  $loop497->getItem("stock/@zipcode")  neq (string) ''}}
																					{{$loop497->getItemEscape("stock/@zipcode")}}{{literal}}{{/literal}}
																				{{/if}}
																				{{$loop497->getItemEscape("stock/@city")}}</span>
																			{{if ( $loop497->getItem("stock/@phone")  neq (string) '') or ( $loop497->getItem("stock/@fax")  neq (string) '') or ( $loop497->getItem("stock/@mail")  neq (string) '') or ( $loop497->getItem("stock/@gg")  neq (string) '') or ( $loop497->getItem("stock/@skype")  neq (string) '')}}
																				<table class="rma_list_itemstock">
																					<tbody>
																						{{if  $loop497->getItem("stock/@phone")  neq (string) ''}}
																							<tr>
																								<td class="rma_list_itemplace1">{{$txt['107803::rma_list_itemplace1']}}
																								</td>
																								<td class="rma_list_itemplace2">
																									{{if  $loop497->getItem("stock/@phone_link")  neq (string) ''}}
																										<a href="{{$loop497->getItemEscape("stock/@phone_link")}}" title="{{$loop497->getItemEscape("stock/@phone")}}">{{$loop497->getItemEscape("stock/@phone")}}</a>
																									{{else}}
																										{{$loop497->getItemEscape("stock/@phone")}}
																									{{/if}}
																								</td>
																							</tr>
																						{{/if}}
																						{{if  $loop497->getItem("stock/@fax")  neq (string) ''}}
																							<tr>
																								<td class="rma_list_itemplace1">{{$txt['107803::rma_list_itemplace2']}}
																								</td>
																								<td class="rma_list_itemplace2">{{$loop497->getItemEscape("stock/@fax")}}
																								</td>
																							</tr>
																						{{/if}}
																						{{if  $loop497->getItem("stock/@mail")  neq (string) ''}}
																							<tr>
																								<td class="rma_list_itemplace1">{{$txt['107803::rma_list_itemplace3']}}
																								</td>
																								<td class="rma_list_itemplace2">
																									<a {{assign "hrefAttributeTmp17" ""}}  class="rma_list_itemplace_cont" title="{{$loop497->getItemEscape("stock/@mail")}}" {{if $loop497->getItem("stock/@mail_link") neq (string) ''}}{{capture name="hrefAttributeTmp17" assign="hrefAttributeTmp17"}}{{$loop497->getItemEscape("stock/@mail_link")}}{{/capture}}{{else}}{{capture name="hrefAttributeTmp17" assign="hrefAttributeTmp17"}}mailto:{{$loop497->getItemEscape("stock/@mail")}}{{/capture}}{{/if}}  href="{{$hrefAttributeTmp17}}">{{$loop497->getItemEscape("stock/@mail")}}</a>
																								</td>
																							</tr>
																						{{/if}}
																						{{if  $loop497->getItem("stock/@gg")  neq (string) ''}}
																							<tr>
																								<td class="rma_list_itemplace1">{{$txt['107803::rma_list_itemplace4']}}
																								</td>
																								<td class="rma_list_itemplace2">
																									<a class="rma_list_itemplace_cont" href="gg:{{$loop497->getItemEscape("stock/@gg")}}">{{$loop497->getItemEscape("stock/@gg")}}</a>
																								</td>
																							</tr>
																						{{/if}}
																						{{if  $loop497->getItem("stock/@skype")  neq (string) ''}}
																							<tr>
																								<td class="rma_list_itemplace1">{{$txt['107803::rma_list_itemplace5']}}
																								</td>
																								<td class="rma_list_itemplace2">
																									<a class="rma_list_itemplace_cont" href="callto://{{$loop497->getItemEscape("stock/@skype")}}">{{$loop497->getItemEscape("stock/@skype")}}</a>
																								</td>
																							</tr>
																						{{/if}}
																					</tbody>
																				</table>
																			{{/if}}
																			{{if  $loop497->getItem("stock/@link")  neq (string)''}}
																				<div class="rma_list_itemstock_link">
																					<a class="rma_list_itemstock_link" href="{{$loop497->getItemEscape("stock/@link")}}">{{$txt['107803::rma_list_itemstock_link']}}</a>
																				</div>
																			{{/if}}
																		</div>
																	</div>
																	<div class="rma_list_itemreturnmoney">
																		{{if !( $loop497->getItem("payment/@type")  == (string) '')}}
																			<div class="rma_list_itemhead">
																				<span>
																					{{if $rma_list_paymenthead}}
																						{{$rma_list_paymenthead}}
																					{{else}}
																						{{if  $loop497->getItem("payment/@type")  == (string) 'b' }}
																							{{$txt['107803::rma_list_itemreturnmoney1']}}
																						{{elseif  $loop497->getItem("payment/@type")  == (string) 'p' }}
																							{{$txt['107803::rma_list_itemreturnmoney2']}}
																						{{elseif  $loop497->getItem("payment/@type")  == (string) 'c' }}
																							{{$txt['107803::rma_list_itemreturnmoney3']}}
																						{{elseif  $loop497->getItem("payment/@type")  == (string) 't' }}
																							{{$txt['107803::rma_list_itemreturnmoney4']}}
																						{{/if}}
																					{{/if}}
																					</span>
																			</div>
																			<div class="rma_list_itemreturnmoney_sub">
																				{{if $rma_list_paymenthead}}
																					<div>
																						{{if  $loop497->getItem("payment/@type")  == (string) 'b' }}
																							{{$txt['107803::rma_list_itemreturnmoney1']}}
																						{{elseif  $loop497->getItem("payment/@type")  == (string) 'p' }}
																							{{$txt['107803::rma_list_itemreturnmoney2']}}
																						{{elseif  $loop497->getItem("payment/@type")  == (string) 'c' }}
																							{{$txt['107803::rma_list_itemreturnmoney3']}}
																						{{elseif  $loop497->getItem("payment/@type")  == (string) 't' }}
																							{{$txt['107803::rma_list_itemreturnmoney4']}}
																						{{/if}}
																					</div>
																				{{/if}}
																				{{if  $loop497->getItem("payment_details/text()") and !( $loop497->getItem("payment_details/text()")  == (string) '')}}
																					{{$loop497->getItem("payment_details/text()")}}
																				{{else}}
																					{{$loop497->getItemEscape("payment")}}
																				{{/if}}
																			</div>
																		{{/if}}
																	</div>
																	<div class="rma_list_itembuttons">
																		{{if  $loop497->getItem("documents/postdocument") }}
																			<a {{assign "classAttributeTmp9" ""}}{{capture name="classAttributeTmp9" assign="classAttributeTmp9"}}rma_list_button_etykieta{{/capture}} target="_blank"{{capture name="classAttributeTmp9" assign="classAttributeTmp9"}}btn-large rma_list_button_etykieta{{/capture}} href="{{$loop497->getItemEscape("documents/postdocument/@url")}}" title="{{$txt['107803::rma_list_itembutton1_title']}}"  class="{{$classAttributeTmp9}}">
																				<span class="img_button_etykieta"></span>{{$txt['107803::rma_list_itembutton1']}}</a>
																		{{/if}}
																		{{if  $loop497->getItem("documents/letterofcomplaint")}}
																			<a {{assign "classAttributeTmp10" ""}}{{capture name="classAttributeTmp10" assign="classAttributeTmp10"}}rma_list_button_wydrukuj{{/capture}} target="_blank"{{capture name="classAttributeTmp10" assign="classAttributeTmp10"}}btn-large rma_list_button_wydrukuj{{/capture}} href="{{$loop497->getItemEscape("documents/letterofcomplaint/@url")}}" title="{{$txt['107803::rma_list_itembutton2_title']}}"  class="{{$classAttributeTmp10}}">
																				<span class="img_button_zgloszenie"></span>{{$txt['107803::rma_list_itembutton2']}}</a>
																		{{/if}}
																		{{if  $loop497->getItem("@edit_link") and ( $loop497->getItem("@edit_link")  neq (string) '')}}
																			<a {{assign "classAttributeTmp11" ""}}{{capture name="classAttributeTmp11" assign="classAttributeTmp11"}}rma_list_button_edit{{/capture}}{{capture name="classAttributeTmp11" assign="classAttributeTmp11"}}btn-large rma_list_button_edit{{/capture}} href="{{$loop497->getItemEscape("@edit_link")}}" title="{{$txt['107803::rma_list_itembutton3_title']}}"  class="{{$classAttributeTmp11}}">
																				<span class="img_button_edytuj"></span>{{$txt['107803::rma_list_itembutton3']}}</a>
																		{{/if}}
																		{{if  $loop497->getItem("@cancel_link") and ( $loop497->getItem("@cancel_link")  neq (string) '')}}
																			<a {{assign "classAttributeTmp12" ""}}{{capture name="classAttributeTmp12" assign="classAttributeTmp12"}}rma_list_button_cancel{{/capture}}{{capture name="classAttributeTmp12" assign="classAttributeTmp12"}}btn-large rma_list_button_cancel{{/capture}} onclick="rma_list.cancelRma('{{$loop497->getItemEscape("/shop/@baseurl")}}{{$loop497->getItemEscape("@cancel_link")}}');" title="{{$txt['107803::rma_list_itembutton4_title']}}"  class="{{$classAttributeTmp12}}">
																				<span class="img_button_anuluj"></span>{{$txt['107803::rma_list_itembutton4']}}</a>
																		{{/if}}
																	</div>
																</div>
																{{if count( $loop497->getList("staff_note/note"))  gt (string) 0}}
																	<div class="rma_list_itmesub3">
																		{{if count( $loop497->getList("staff_note/note"))  == (string) 1}}
																			<div class="rma_list_noteslabel">{{$txt['107803::rma_list_noteslabel_sing']}}
																			</div>
																		{{/if}}
																		{{if count( $loop497->getList("staff_note/note"))  gt (string) 1}}
																			<div class="rma_list_noteslabel">{{$txt['107803::rma_list_noteslabel_mult']}}
																			</div>
																		{{/if}}
																		<table class="rma_list_staffnotes">
																			<tbody>
																				{{foreach from=$loop497->getList("staff_note/note") item=loop798}}
																					{{if  $loop798@iteration   == (string)  $loop798@total }}
																						<tr class="{{if $loop798@iteration % 2 == (string) 0}}rma_list_note2{{/if}}{{if $loop798@iteration % 2 == (string) 1}}rma_list_note1{{/if}}">
																							<td class="rma_list_notedate">{{$loop798->getItemEscape("@date")}}
																							</td>
																							<td class="rma_list_notetext">{{$loop798->getItemEscape("@note")}}
																							</td>
																						</tr>
																					{{/if}}
																				{{/foreach}}
																			</tbody>
																		</table>
																	</div>
																{{/if}}
															</div>
														</div>
													{{/foreach}}
												{{/if}}
											</div>
											<div id="rma_panel_active" class="rma_list_data_panel" {{if $xml->getItem("page/list/active/@count") == (string) 0}} style="display:none" {{/if}}>
												{{if  $xml->getItem("page/list/active/@count")  == (string) 0}}
													<span class="rma_list_noitem">{{$txt['107803::rma_list_noactive']}}</span>
												{{else}}
													<div class="rma_list_data_labels">
														<span class="rma_list_label_nmbr">{{$txt['107803::rma_list_label_rnmbr']}}</span>
														<span class="rma_list_label_product">{{$txt['107803::rma_list_label_product']}}</span>
														<span class="rma_list_label_status">{{$txt['107803::rma_list_label_status']}}</span>
														<span class="rma_list_label_operation">{{$txt['107803::rma_list_label_operation']}}</span>
													</div>
													{{foreach from=$xml->getList("page/list/active/item") item=loop847}}
														<div id="rmal_{{$loop847->getItemEscape("@id")}}" class="{{if $loop847@iteration % 2 == (string) 0}}rma_list_item2{{/if}}{{if $loop847@iteration % 2 == (string) 1}}rma_list_item1{{/if}}" onclick="rma_list.chooseRma('{{$loop847->getItemEscape("@id")}}');">
															<span class="rma_list_item_nmbr">{{$loop847->getItemEscape("@id")}}</span>
															<span class="rma_list_item_product">{{$loop847->getItemEscape("@product")}}</span>
															<span class="rma_list_item_status">{{$loop847->getItemEscape("@status")}}</span>
															<span class="rma_list_item_operation">{{$txt['107803::rma_list_item_operation']}}</span>
															<span class="rma_list_item_operation ophidden">{{$txt['107803::rma_list_item_operation2']}}</span>
														</div>
														<div class="rma_list_item">
															<div class="rma_list_item_sub">
																<div class="rma_list_itmesub1">
																	<div class="rma_list_itemdata">
																		<div class="rma_list_itemhead">
																			<span>{{$txt['107803::rma_list_itemdata']}}</span>
																		</div>
																		<table class="rma_list_itemdata">
																			<tbody>
																				<tr>
																					<td class="rma_list_itemdata1">{{$txt['107803::rma_list_itemdata1']}}
																					</td>
																					<td class="rma_list_itemdata2">{{$loop847->getItemEscape("@serial_number")}}
																					</td>
																				</tr>
																				<tr>
																					<td class="rma_list_itemdata1">{{$txt['107803::rma_list_itemdata2']}}
																					</td>
																					<td class="rma_list_itemdata2">
																						{{if  $loop847->getItem("@source")  == (string) 'a'}}
																							{{$txt['107803::rma_list_buyauction']}}
																							{{if  $loop847->getItem("@shop")  == (string) '2'}}
																								{{$txt['107803::rma_list_buyallegro']}}
																							{{/if}}
																							{{if  $loop847->getItem("@shop")  == (string) '3'}}
																								{{$txt['107803::rma_list_buyebay']}}
																							{{/if}}
																						{{elseif  $loop847->getItem("@source")  == (string) 'i'}}
																							{{$loop847->getItemEscape("@shop")}}
																						{{else}}
																							{{$loop847->getItemEscape("@shop")}}
																						{{/if}}
																					</td>
																				</tr>
																				<tr>
																					<td class="rma_list_itemdata1">{{$txt['107803::rma_list_itemdata3']}}
																					</td>
																					<td class="rma_list_itemdata2">{{$loop847->getItemEscape("@date_buy")}}
																					</td>
																				</tr>
																				<tr>
																					<td class="rma_list_itemdata1">{{$txt['107803::rma_list_itemdata4']}}
																					</td>
																					<td class="rma_list_itemdata2">{{$loop847->getItemEscape("@date_issue")}}
																					</td>
																				</tr>
																				<tr>
																					<td class="rma_list_itemdata1">{{$txt['107803::rma_list_itemdata6']}}
																					</td>
																					<td class="rma_list_itemdata2">{{$loop847->getItemEscape("@date_change")}}
																					</td>
																				</tr>
																			</tbody>
																		</table>
																	</div>
																	<div class="rma_list_itemdesc">
																		<div class="rma_list_itemhead">
																			<span>{{$txt['107803::rma_list_itemdesc']}}</span>
																		</div>
																		<div class="rma_list_itemdesc_sub">{{$loop847->getItemEscape("desc")}}
																		</div>
																	</div>
																	<div class="rma_list_itemstatus">
																		<div class="rma_list_itemhead">
																			<span>{{$txt['107803::rma_list_itemstatus']}}</span>
																		</div>
																		<div class="rma_list_itemstatus_sub">
																			<span class="rma_list_itemstatushead">{{$loop847->getItemEscape("@status")}}</span>
																			<span class="rma_list_itemstatusbody">{{$loop847->getItemEscape("stat_desc")}}</span>
																		</div>
																	</div>
																</div>
																<div class="rma_list_itmesub2">
																	<div class="rma_list_itemplace">
																		<div class="rma_list_itemhead">
																			<span>{{$txt['107803::rma_list_itemplace']}}</span>
																		</div>
																		<div class="rma_list_itemplace_sub">
																			<span class="rma_list_itemstock_name">{{$loop847->getItemEscape("stock/@name")}}</span>
																			<span class="rma_list_itemstock_addresss">
																				{{if  $loop847->getItem("stock/@street")  neq (string) ''}}
																					{{$loop847->getItemEscape("stock/@street")}}
																					<br/>
																				{{/if}}
																				{{if  $loop847->getItem("stock/@zipcode")  neq (string) ''}}
																					{{$loop847->getItemEscape("stock/@zipcode")}}{{literal}}{{/literal}}
																				{{/if}}
																				{{$loop847->getItemEscape("stock/@city")}}</span>
																			{{if ( $loop847->getItem("stock/@phone")  neq (string) '') or ( $loop847->getItem("stock/@fax")  neq (string) '') or ( $loop847->getItem("stock/@mail")  neq (string) '') or ( $loop847->getItem("stock/@gg")  neq (string) '') or ( $loop847->getItem("stock/@skype")  neq (string) '')}}
																				<table class="rma_list_itemstock">
																					<tbody>
																						{{if  $loop847->getItem("stock/@phone")  neq (string) ''}}
																							<tr>
																								<td class="rma_list_itemplace1">{{$txt['107803::rma_list_itemplace1']}}
																								</td>
																								<td class="rma_list_itemplace2">
																									{{if  $loop847->getItem("stock/@phone_link")  neq (string) ''}}
																										<a href="{{$loop847->getItemEscape("stock/@phone_link")}}" title="{{$loop847->getItemEscape("stock/@phone")}}">{{$loop847->getItemEscape("stock/@phone")}}</a>
																									{{else}}
																										{{$loop847->getItemEscape("stock/@phone")}}
																									{{/if}}
																								</td>
																							</tr>
																						{{/if}}
																						{{if  $loop847->getItem("stock/@fax")  neq (string) ''}}
																							<tr>
																								<td class="rma_list_itemplace1">{{$txt['107803::rma_list_itemplace2']}}
																								</td>
																								<td class="rma_list_itemplace2">{{$loop847->getItemEscape("stock/@fax")}}
																								</td>
																							</tr>
																						{{/if}}
																						{{if  $loop847->getItem("stock/@mail")  neq (string) ''}}
																							<tr>
																								<td class="rma_list_itemplace1">{{$txt['107803::rma_list_itemplace3']}}
																								</td>
																								<td class="rma_list_itemplace2">
																									<a {{assign "hrefAttributeTmp18" ""}}  class="rma_list_itemplace_cont" title="{{$loop847->getItemEscape("stock/@mail")}}" {{if $loop847->getItem("stock/@mail_link") neq (string) ''}}{{capture name="hrefAttributeTmp18" assign="hrefAttributeTmp18"}}{{$loop847->getItemEscape("stock/@mail_link")}}{{/capture}}{{else}}{{capture name="hrefAttributeTmp18" assign="hrefAttributeTmp18"}}mailto:{{$loop847->getItemEscape("stock/@mail")}}{{/capture}}{{/if}}  href="{{$hrefAttributeTmp18}}">{{$loop847->getItemEscape("stock/@mail")}}</a>
																								</td>
																							</tr>
																						{{/if}}
																						{{if  $loop847->getItem("stock/@gg")  neq (string) ''}}
																							<tr>
																								<td class="rma_list_itemplace1">{{$txt['107803::rma_list_itemplace4']}}
																								</td>
																								<td class="rma_list_itemplace2">
																									<a class="rma_list_itemplace_cont" href="gg:{{$loop847->getItemEscape("stock/@gg")}}">{{$loop847->getItemEscape("stock/@gg")}}</a>
																								</td>
																							</tr>
																						{{/if}}
																						{{if  $loop847->getItem("stock/@skype")  neq (string) ''}}
																							<tr>
																								<td class="rma_list_itemplace1">{{$txt['107803::rma_list_itemplace5']}}
																								</td>
																								<td class="rma_list_itemplace2">
																									<a class="rma_list_itemplace_cont" href="callto://{{$loop847->getItemEscape("stock/@skype")}}">{{$loop847->getItemEscape("stock/@skype")}}</a>
																								</td>
																							</tr>
																						{{/if}}
																					</tbody>
																				</table>
																			{{/if}}
																			{{if  $loop847->getItem("stock/@link")  neq (string)''}}
																				<div class="rma_list_itemstock_link">
																					<a class="rma_list_itemstock_link" href="{{$loop847->getItemEscape("stock/@link")}}">{{$txt['107803::rma_list_itemstock_link']}}</a>
																				</div>
																			{{/if}}
																		</div>
																	</div>
																	<div class="rma_list_itemreturnmoney">
																		{{if !( $loop847->getItem("payment/@type")  == (string) '')}}
																			<div class="rma_list_itemhead">
																				<span>
																					{{if $rma_list_paymenthead}}
																						{{$rma_list_paymenthead}}
																					{{else}}
																						{{if  $loop847->getItem("payment/@type")  == (string) 'b' }}
																							{{$txt['107803::rma_list_itemreturnmoney1']}}
																						{{elseif  $loop847->getItem("payment/@type")  == (string) 'p' }}
																							{{$txt['107803::rma_list_itemreturnmoney2']}}
																						{{elseif  $loop847->getItem("payment/@type")  == (string) 'c' }}
																							{{$txt['107803::rma_list_itemreturnmoney3']}}
																						{{elseif  $loop847->getItem("payment/@type")  == (string) 't' }}
																							{{$txt['107803::rma_list_itemreturnmoney4']}}
																						{{/if}}
																					{{/if}}
																					</span>
																			</div>
																			<div class="rma_list_itemreturnmoney_sub">
																				{{if $rma_list_paymenthead}}
																					<div>
																						{{if  $loop847->getItem("payment/@type")  == (string) 'b' }}
																							{{$txt['107803::rma_list_itemreturnmoney1']}}
																						{{elseif  $loop847->getItem("payment/@type")  == (string) 'p' }}
																							{{$txt['107803::rma_list_itemreturnmoney2']}}
																						{{elseif  $loop847->getItem("payment/@type")  == (string) 'c' }}
																							{{$txt['107803::rma_list_itemreturnmoney3']}}
																						{{elseif  $loop847->getItem("payment/@type")  == (string) 't' }}
																							{{$txt['107803::rma_list_itemreturnmoney4']}}
																						{{/if}}
																					</div>
																				{{/if}}
																				{{if  $loop847->getItem("payment_details/text()") and !( $loop847->getItem("payment_details/text()")  == (string) '')}}
																					{{$loop847->getItem("payment_details/text()")}}
																				{{else}}
																					{{$loop847->getItemEscape("payment")}}
																				{{/if}}
																			</div>
																		{{/if}}
																	</div>
																	<div class="rma_list_itembuttons">
																		{{if  $loop847->getItem("documents/postdocument") }}
																			<a {{assign "classAttributeTmp13" ""}}{{capture name="classAttributeTmp13" assign="classAttributeTmp13"}}rma_list_button_etykieta{{/capture}} target="_blank"{{capture name="classAttributeTmp13" assign="classAttributeTmp13"}}btn-large rma_list_button_etykieta{{/capture}} href="{{$loop847->getItemEscape("documents/postdocument/@url")}}" title="{{$txt['107803::rma_list_itembutton1_title']}}"  class="{{$classAttributeTmp13}}">
																				<span class="img_button_etykieta"></span>{{$txt['107803::rma_list_itembutton1']}}</a>
																		{{/if}}
																		{{if  $loop847->getItem("documents/letterofcomplaint")}}
																			<a {{assign "classAttributeTmp14" ""}}{{capture name="classAttributeTmp14" assign="classAttributeTmp14"}}rma_list_button_wydrukuj{{/capture}} target="_blank"{{capture name="classAttributeTmp14" assign="classAttributeTmp14"}}btn-large rma_list_button_wydrukuj{{/capture}} href="{{$loop847->getItemEscape("documents/letterofcomplaint/@url")}}" title="{{$txt['107803::rma_list_itembutton2_title']}}"  class="{{$classAttributeTmp14}}">
																				<span class="img_button_zgloszenie"></span>{{$txt['107803::rma_list_itembutton2']}}</a>
																		{{/if}}
																		{{if  $loop847->getItem("@edit_link") and ( $loop847->getItem("@edit_link")  neq (string) '')}}
																			<a {{assign "classAttributeTmp15" ""}}{{capture name="classAttributeTmp15" assign="classAttributeTmp15"}}rma_list_button_edit{{/capture}}{{capture name="classAttributeTmp15" assign="classAttributeTmp15"}}btn-large rma_list_button_edit{{/capture}} href="{{$loop847->getItemEscape("@edit_link")}}" title="{{$txt['107803::rma_list_itembutton3_title']}}"  class="{{$classAttributeTmp15}}">
																				<span class="img_button_edytuj"></span>{{$txt['107803::rma_list_itembutton3']}}</a>
																		{{/if}}
																		{{if  $loop847->getItem("@cancel_link") and ( $loop847->getItem("@cancel_link")  neq (string) '')}}
																			<a {{assign "classAttributeTmp16" ""}}{{capture name="classAttributeTmp16" assign="classAttributeTmp16"}}rma_list_button_cancel{{/capture}}{{capture name="classAttributeTmp16" assign="classAttributeTmp16"}}btn-large rma_list_button_cancel{{/capture}} onclick="rma_list.cancelRma('{{$loop847->getItemEscape("/shop/@baseurl")}}{{$loop847->getItemEscape("@cancel_link")}}');" title="{{$txt['107803::rma_list_itembutton4_title']}}"  class="{{$classAttributeTmp16}}">
																				<span class="img_button_anuluj"></span>{{$txt['107803::rma_list_itembutton4']}}</a>
																		{{/if}}
																	</div>
																</div>
																{{if count( $loop847->getList("staff_note/note"))  gt (string) 0}}
																	<div class="rma_list_itmesub3">
																		{{if count( $loop847->getList("staff_note/note"))  == (string) 1}}
																			<div class="rma_list_noteslabel">{{$txt['107803::rma_list_noteslabel_sing']}}
																			</div>
																		{{/if}}
																		{{if count( $loop847->getList("staff_note/note"))  gt (string) 1}}
																			<div class="rma_list_noteslabel">{{$txt['107803::rma_list_noteslabel_mult']}}
																			</div>
																		{{/if}}
																		<table class="rma_list_staffnotes">
																			<tbody>
																				{{foreach from=$loop847->getList("staff_note/note") item=loop1140}}
																					{{if  $loop1140@iteration   == (string)  $loop1140@total }}
																						<tr class="{{if $loop1140@iteration % 2 == (string) 0}}rma_list_note2{{/if}}{{if $loop1140@iteration % 2 == (string) 1}}rma_list_note1{{/if}}">
																							<td class="rma_list_notedate">{{$loop1140->getItemEscape("@date")}}
																							</td>
																							<td class="rma_list_notetext">{{$loop1140->getItemEscape("@note")}}
																							</td>
																						</tr>
																					{{/if}}
																				{{/foreach}}
																			</tbody>
																		</table>
																	</div>
																{{/if}}
															</div>
														</div>
													{{/foreach}}
												{{/if}}
											</div>
										</div>
									</div>
								{{/if}}
								{{if ( $xml->getItem("page/list/active/@count")  == (string) 0) and ( $xml->getItem("page/list/close/@count")  == (string) 0)}}
									<span class="rma_list_noitem" id="rma_list_noitem">{{$txt['107803::rma_list_norma']}}</span>
								{{/if}}
								{{if  $xml->getItem("page/list/@open")}}
									<script>app_shop.vars.chooseRma = '{{$xml->getItemEscape("page/list/@open")}}';									</script>

								{{/if}}
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
