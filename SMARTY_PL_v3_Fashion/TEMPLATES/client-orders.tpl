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
						<!--Rabaty od wysokości zamówień (orders_rebates, 91879.1)-->
						{{if  $xml->getItem("page/text/body")}}
							<div class="text_body">
								<div class="cm">{{$xml->getItem("page/text/body")}}
								</div>
							</div>
						{{/if}}
						<!--Lista zamówień klienta (client-orders, 110015.1)-->
						{{capture name="setSerialNumber" assign="setSerialNumber"}}
							{{$txt['110015::57649_setSerialNumber']}}
						{{/capture}}
						<div class="client_order">
							{{if  $xml->getItem("page/orders/@mode")  == (string) 'rma'}}
								<div class="progress_bar_wrapper pb_step1 rma_progress_bar">
									<div class="_progress_bar">
									</div>
									<div class="_step _step1">
										<span>
											1</span>
										<p>
											<i></i>{{$txt['110015::step1_txt']}}
										</p>
									</div>
									<div class="_step _step2">
										<span>2</span>
										<p>
											<i></i>{{$txt['110015::step2_txt']}}
										</p>
									</div>
									<div class="_step _step3">
										<span>3</span>
										<p>
											<i></i>{{$txt['110015::step3_txt']}}
										</p>
									</div>
									<div class="_step _step4">
										<span>4</span>
										<p>
											<i></i>{{$txt['110015::step4_txt']}}
										</p>
									</div>
									<div class="_step _step5">
										<span>5</span>
										<p>
											<i></i>{{$txt['110015::step5_txt']}}
										</p>
									</div>
									<div class="_step _step6">
										<span>6</span>
										<p>
											<i></i>{{$txt['110015::step6_txt']}}
										</p>
									</div>
								</div>
								<div class="d-flex justify-content-between align-items-center mb-3 flex-wrap">
									<h1 class="big_label">{{$txt['110015::54068_returnsa']}}
									</h1>
								</div>
							{{elseif  $xml->getItem("page/orders/@mode")  == (string) 'returns'}}
								<div class="progress_bar_wrapper pb_step1">
									<div class="_progress_bar">
									</div>
									<div class="_step _step1">
										<span>
											1</span>
										<p>
											<i></i>{{$txt['110015::step1_txt']}}
										</p>
									</div>
									<div class="_step _step2">
										<span>2</span>
										<p>
											<i></i>{{$txt['110015::step2_txt']}}
										</p>
									</div>
									<div class="_step _step3">
										<span>3</span>
										<p>
											<i></i>{{$txt['110015::step3_txt']}}
										</p>
									</div>
									<div class="_step _step4">
										<span>4</span>
										<p>
											<i></i>{{$txt['110015::step4_txt']}}
										</p>
									</div>
									<div class="_step _step5">
										<span>5</span>
										<p>
											<i></i>{{$txt['110015::step5_txt']}}
										</p>
									</div>
									<div class="_step _step6">
										<span>6</span>
										<p>
											<i></i>{{$txt['110015::step6_txt']}}
										</p>
									</div>
								</div>
								<div class="d-flex justify-content-between align-items-center mb-3 flex-wrap">
									<h1 class="big_label">{{$txt['110015::54068_returns']}}
									</h1>
								</div>
							{{elseif  $xml->getItem("page/orders/@mode")  == (string) 'closed'}}
								<div class="d-flex justify-content-between align-items-center mb-3 flex-wrap">
									<h1 class="big_label">{{$txt['110015::54068_linksclosed']}}
									</h1>
									<a {{assign "hrefAttributeTmp6" ""}}{{capture name="hrefAttributeTmp6" assign="hrefAttributeTmp6"}}client-orders.php?display=opened{{/capture}} class="btn mt-2" {{if $xml->getItem("/shop/action/clientOrders/@url")}}{{capture name="hrefAttributeTmp6" assign="hrefAttributeTmp6"}}{{$xml->getItemEscape("/shop/action/clientOrders/@url")}}?display=opened{{/capture}}{{/if}}  href="{{$hrefAttributeTmp6}}">{{$txt['110015::n54068b']}}</a>
								</div>
							{{else}}
								<div class="d-flex justify-content-between align-items-center mb-3 flex-wrap">
									<h1 class="big_label">{{$txt['110015::54068_linksopened']}}
									</h1>
									<a {{assign "hrefAttributeTmp7" ""}}{{capture name="hrefAttributeTmp7" assign="hrefAttributeTmp7"}}client-orders.php?display=closed{{/capture}} class="btn mt-2" {{if $xml->getItem("/shop/action/clientOrders/@url")}}{{capture name="hrefAttributeTmp7" assign="hrefAttributeTmp7"}}{{$xml->getItemEscape("/shop/action/clientOrders/@url")}}?display=closed{{/capture}}{{/if}}  href="{{$hrefAttributeTmp7}}">{{$txt['110015::n54068']}}</a>
								</div>
							{{/if}}
							{{if  $xml->getItem("/shop/page/orders/item")}}
								{{if  $xml->getItem("page/orders[@mode='closed']")}}
									<div class="client_order_summary">
										<table class="orders" cellspacing="0" cellpadding="0" id="rebates">
											<tr>
												<td colspan="3" class="headerek" id="rabat_header">{{$txt['110015::51900_001_1']}}
												</td>
											</tr>
											<tr>
												<td class="ord3" id="reb_head_left">{{$txt['110015::51900_001_2']}}
												</td>
												<td class="ord3" id="reb_head_center">{{$txt['110015::51900_002_3']}}
												</td>
												<td class="ord3" id="reb_head_right">{{$txt['110015::51900_003_4']}}
												</td>
											</tr>
											<tr>
												<td class="headerek" id="rebate_left">{{$xml->getItemEscape("page/orders/sum/@quater")}}{{$xml->getItemEscape("currency/@name")}}
												</td>
												<td class="headerek" id="rebate_center">{{$xml->getItemEscape("page/orders/sum/@year")}}{{$xml->getItemEscape("currency/@name")}}
												</td>
												<td class="headerek" id="rebate_right">{{$xml->getItemEscape("page/orders/sum/@all")}}{{$xml->getItemEscape("currency/@name")}}
												</td>
											</tr>
										</table>
									</div>
								{{/if}}
								<div {{assign "idAttributeTmp9" ""}}  class="n54068_head_separator" {{if !( $xml->getItem("page/orders/@mode") == (string) 'closed')}}{{capture name="idAttributeTmp9" assign="idAttributeTmp9"}}header_open {{/capture}}{{/if}}{{if $xml->getItem("page/orders[@mode='closed']")}}{{capture name="idAttributeTmp9" assign="idAttributeTmp9"}}header_closed {{/capture}}{{/if}}  id="{{$idAttributeTmp9}}">
								</div>
								<table {{assign "classAttributeTmp3" ""}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}orders{{/capture}} cellspacing="0" cellpadding="0"{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}ui-responsive table-stroke ui-table ui-table-reflow orders {{/capture}}  class="{{$classAttributeTmp3}}">
									<thead>
										<tr>
											<th id="orders_th1">{{$txt['110015::51900_001']}}
											</th>
											<th id="orders_th2">{{$txt['110015::51900_002']}}
											</th>
											{{if !( $xml->getItem("page/orders/@mode")  == (string) 'returns') and !( $xml->getItem("page/orders/@mode")  == (string) 'rma')}}
												<th id="orders_th3">{{$txt['110015::51900_003']}}
												</th>
												<th id="orders_th4">{{$txt['110015::51900_004']}}
												</th>
											{{/if}}
											<th id="orders_th5">{{$txt['110015::51900_005']}}
											</th>
											<th id="orders_th6">{{$txt['110015::51900_006']}}
											</th>
										</tr>
									</thead>
									<tbody>
										{{foreach from=$xml->getList("/shop/page/orders/item") item=loop486}}
											{{capture name="status_order" assign="status_order"}}
												{{if  $loop486->getItem("@status")  neq (string) ''}}
													{{$loop486->getItemEscape("@status")}}
												{{else}}
													{{$loop486->getItemEscape("@finished")}}
												{{/if}}
											{{/capture}}
											<tr>
												<td>
													{{if $setSerialNumber}}
														{{$loop486->getItemEscape("@number")}}
													{{else}}
														{{$loop486->getItemEscape("@id")}}
													{{/if}}
												</td>
												<td>{{$loop486->getItemEscape("@date")}}
												</td>
												{{if !( $loop486->getItem("/shop/page/orders/@mode")  == (string) 'returns')  and !( $loop486->getItem("/shop/page/orders/@mode")  == (string) 'rma')}}
													<td>{{$loop486->getItemEscape("@cost_formatted")}}
													</td>
													<td>
														{{if $status_order  == (string) 'k' or $status_order  == (string) 'i' or $status_order  == (string) 'j' or $status_order  == (string) 's'  or $status_order  == (string) 'l'}}
															{{$txt['110015::n54068_101']}}
														{{elseif  $loop486->getItem("@paymentstatus")  == (string) 'g' and ( $loop486->getItem("@paid") and ( $loop486->getItem("number(@cost)")  gt (string)  $loop486->getItem("number(@paid)")))}}
															{{$txt['110015::51900_1221']}}{{$loop486->getItemEscape("@paid_formatted")}}{{$txt['110015::51900_007br']}}{{$txt['110015::51900_007aa']}}
														{{elseif  $loop486->getItem("@paymentstatus")  == (string) 'g'}}
															{{$txt['110015::51900_007']}}
														{{else}}
															{{if  $loop486->getItem("@paid") and ( $loop486->getItem("number(@cost)")  gt (string)  $loop486->getItem("number(@paid)"))}}
																{{$txt['110015::51900_1221']}}{{$loop486->getItemEscape("@paid_formatted")}}{{$txt['110015::51900_007br']}}
															{{/if}}
															<div {{assign "classAttributeTmp4" ""}}{{if $loop486->getItem("@prepaid") gt (string) 0}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}n54068_prepaid_desc {{/capture}}{{if $status_order == (string) 'k' or $status_order == (string) 'i' or $status_order == (string) 'j' or $status_order == (string) 's' or $status_order == (string) 'l'}} {{$txt['110015::n54068_101']}} {{elseif $loop486->getItem("@prepaidstatus") == (string)'n'}}{{if $loop486->getItem("@paid") and ( $loop486->getItem("number(@cost)") gt (string) $loop486->getItem("number(@paid)"))}} {{$txt['110015::n54068_566']}} {{else}} {{$txt['110015::n54068_000']}} {{/if}}{{elseif $loop486->getItem("@prepaidstatus") == (string)'c'}} {{$txt['110015::n54068_001']}} {{elseif $loop486->getItem("@prepaidstatus") == (string)'b'}} {{$txt['110015::n54068_002']}} {{elseif $loop486->getItem("@prepaidstatus") == (string)'y'}} {{$txt['110015::n54068_003']}} {{elseif $loop486->getItem("@prepaidstatus") == (string)'z'}} {{$txt['110015::n54068_004']}} {{/if}}{{else}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}n54068_prepaid_desc_big {{/capture}}   class="{{$classAttributeTmp4}}">
																{{if $status_order  == (string) 'k' or $status_order  == (string) 'i' or $status_order  == (string) 'j' or $status_order  == (string) 's' or $status_order  == (string) 'l'}}
																	{{$txt['110015::n54068_101']}}
																{{elseif  $loop486->getItem("@prepaidstatus")  == (string)'n'}}
																	{{$txt['110015::n54068_000b']}}
																{{elseif  $loop486->getItem("@prepaidstatus")  == (string)'c'}}
																	{{$txt['110015::n54068_001b']}}
																{{elseif  $loop486->getItem("@prepaidstatus")  == (string)'b'}}
																	{{$txt['110015::n54068_002b']}}
																{{elseif  $loop486->getItem("@prepaidstatus")  == (string)'y'}}
																	{{if $status_order  == (string) 'w'}}
																		{{$txt['110015::n54068_033g']}}
																	{{else}}
																		{{$txt['110015::n54068_003b']}}
																	{{/if}}
																{{elseif  $loop486->getItem("@prepaidstatus")  == (string)'z'}}
																	{{$txt['110015::n54068_004b']}}
																{{/if}}
															{{/if}}
														</div>
													{{/if}}
												</td>
											{{/if}}
											<td>
												<div class="btn-icon prepaid-icon status-{{$status_order}}">
													{{if  $loop486->getItem("@returned_items")  == (string) 'fully'}}
														<span>{{$txt['110015::51900_zw1_icon']}}</span>
														<small>{{$txt['110015::51900_zw1']}}</small>
													{{elseif  $loop486->getItem("@returned_items")  == (string) 'partially'}}
														<span>{{$txt['110015::51900_zw2_icon']}}</span>
														<small>{{$txt['110015::51900_zw2']}}</small>
													{{elseif $status_order  == (string) 'k'}}
														<span>{{$txt['110015::51900_008_icon']}}</span>
														<small>{{$txt['110015::51900_008']}}</small>
													{{elseif $status_order  == (string) 't'}}
														<span>{{$txt['110015::51900_009_icon']}}</span>
														<small>
															{{if  $loop486->getItem("@personal_collection")  == (string) 'yes'}}
																{{$txt['110015::51900_009o']}}
															{{else}}
																{{$txt['110015::51900_009']}}
															{{/if}}
															</small>
													{{elseif $status_order  == (string) 'n'}}
														<span>{{$txt['110015::51900_010_icon']}}</span>
														<small>{{$txt['110015::51900_010']}}</small>
													{{elseif $status_order  == (string) 'o'}}
														<span>{{$txt['110015::51900_011_icon']}}</span>
														<small>{{$txt['110015::51900_011']}}</small>
													{{elseif $status_order  == (string) 'p'}}
														<span>{{$txt['110015::51900_012_icon']}}</span>
														<small>{{$txt['110015::51900_012']}}</small>
													{{elseif $status_order  == (string) 'i'}}
														<span>{{$txt['110015::51900_013_icon']}}</span>
														<small>{{$txt['110015::51900_013']}}</small>
													{{elseif $status_order  == (string) 's'}}
														<span>{{$txt['110015::51900_014_icon']}}</span>
														<small>{{$txt['110015::51900_014']}}</small>
													{{elseif $status_order  == (string) 'z'}}
														<span>{{$txt['110015::51900_015_icon']}}</span>
														<small>{{$txt['110015::51900_015']}}</small>
													{{elseif $status_order  == (string) 'h'}}
														<span>{{$txt['110015::51900_016_icon']}}</span>
														<small>{{$txt['110015::51900_016']}}</small>
													{{elseif $status_order  == (string) 'w'}}
														{{if  $loop486->getItem("number(@paid)")  == (string)  $loop486->getItem("number(@cost)")}}
															<span>{{$txt['110015::51900_01234_icon']}}</span>
															<small>{{$txt['110015::51900_01234']}}</small>
														{{elseif  $loop486->getItem("number(@paid)")  gt (string) 0}}
															<span>{{$txt['110015::51900_016b2_icon']}}</span>
															<small>{{$txt['110015::51900_016b2']}}</small>
														{{else}}
															<span>{{$txt['110015::51900_016b_icon']}}</span>
															<small>{{$txt['110015::51900_016b']}}</small>
														{{/if}}
													{{elseif $status_order  == (string) 'd'}}
														<span>{{$txt['110015::51900_016c_icon']}}</span>
														<small>{{$txt['110015::51900_016c']}}</small>
													{{elseif $status_order  == (string) 'r'}}
														<span>{{$txt['110015::51900_017_icon']}}</span>
														<small>{{$txt['110015::51900_017']}}</small>
													{{elseif $status_order  == (string) 'l'}}
														<span>{{$txt['110015::51900_017l_icon']}}</span>
														<small>{{$txt['110015::51900_017l']}}</small>
													{{elseif $status_order  == (string) 'j'}}
														<span>{{$txt['110015::51900_017j_icon']}}</span>
														<small>{{$txt['110015::51900_017j']}}</small>
													{{elseif $status_order  == (string) 'a'}}
														<span>{{$txt['110015::51900_017a_icon']}}</span>
														<small>{{$txt['110015::51900_017a']}}</small>
													{{elseif $status_order  == (string) 'b'}}
														<span>{{$txt['110015::51900_019_icon']}}</span>
														<small>{{$txt['110015::51900_019']}}</small>
													{{else}}
													{{/if}}
												</div>
											</td>
											<td>
												{{if  $loop486->getItem("@returns_url")}}
													<a class="btn-icon" href="{{$loop486->getItemEscape("@returns_url")}}">
														<span>{{$txt['110015::51900_018aicon']}}</span>
														<small>{{$txt['110015::51900_018a']}}</small></a>
												{{elseif  $loop486->getItem("@rma_url")}}
													<a class="btn-icon" href="{{$loop486->getItemEscape("@rma_url")}}">
														<span>{{$txt['110015::51900_018aaaaicon']}}</span>
														<small>{{$txt['110015::51900_018aaaa']}}</small></a>
												{{else}}
													<a class="btn-icon" href="{{$loop486->getItemEscape("@orderdetails")}}">
														<span>{{$txt['110015::51900_018icon']}}</span>
														<small>{{$txt['110015::51900_018']}}</small></a>
												{{/if}}
											</td>
										</tr>
									{{/foreach}}
								</tbody>
							</table>
						{{else}}
							<div class="client_orders_null">
								{{if  $xml->getItem("page/orders/@mode")  == (string) 'rma'}}
									{{$txt['110015::91282_null_1']}}
								{{elseif  $xml->getItem("page/orders/@mode")  == (string) 'returns'}}
									{{$txt['110015::91282_null_2']}}
								{{elseif  $xml->getItem("page/orders/@mode")  == (string) 'closed'}}
									{{$txt['110015::91282_null_3']}}
								{{else}}
									{{$txt['110015::91282_null_4']}}
								{{/if}}
							</div>
							<div class="n54744_goback">
								<a {{assign "hrefAttributeTmp8" ""}}{{assign "classAttributeTmp5" ""}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}n54744{{/capture}}{{capture name="hrefAttributeTmp8" assign="hrefAttributeTmp8"}}/main.php{{/capture}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}btn-small n54744{{/capture}}{{if $xml->getItem("/shop/action/main/@url")}}{{capture name="hrefAttributeTmp8" assign="hrefAttributeTmp8"}}{{$xml->getItemEscape("/shop/action/main/@url")}}{{/capture}}{{/if}} id="retbut_strona_glowna"  class="{{$classAttributeTmp5}}"  href="{{$hrefAttributeTmp8}}">{{$txt['110015::n51900_strona_glowna_txt']}}</a>
							</div>
						{{/if}}
						<table>
							<tr>
								<td class="ord"/>
							</tr>
						</table>
					</div>
					<!--Stronicowanie wyników (client_orders_paging, 94010.1)-->
					{{if count( $xml->getList("page/orders/navigation/item"))}}
						<ul class="pagination pull-right">
							{{if count( $xml->getList("page/orders/navigation/item"))  gt (string) 1}}
								{{if  $xml->getItem("page/orders/navigation/prev")}}
									<li>
										<a href=" {{$xml->getItem("page/orders/navigation/path/@value")}}{{$xml->getItemEscape("page/orders/navigation/prev/@counter")}}">{{$txt['94010::affiliate_client_orders_002']}}</a>
									</li>
								{{/if}}
								{{if !( $xml->getItem("page/orders/navigation/prev"))}}
									<li class="disabled">
										<span>{{$txt['94010::affiliate_client__orders_002a']}}</span>
									</li>
								{{/if}}
								{{foreach from=$xml->getList("page/orders/navigation/item") item=loop719}}
									{{if  $loop719->getItem("@gap")}}
										<li class="disabled">
											<span>{{$txt['94010::affiliate_client_orders_007']}}</span>
										</li>
									{{/if}}
									{{if !( $loop719->getItem("@type")  == (string) 'current') and !( $loop719->getItem("@gap"))}}
										<li>
											<a href="{{$loop719->getItem("../path/@value")}}{{$loop719->getItemEscape("@counter") - 1}}">{{$loop719->getItemEscape("@counter")}}</a>
										</li>
									{{/if}}
									{{if  $loop719->getItem("@type")  == (string) 'current'}}
										<li class="active">
											<span>{{$loop719->getItemEscape("@counter")}}</span>
										</li>
									{{/if}}
								{{/foreach}}
								{{if  $xml->getItem("page/orders/navigation/next")}}
									<li>
										<a href="{{$xml->getItem("page/orders/navigation/path/@value")}}{{$xml->getItemEscape("page/orders/navigation/next/@counter")}}">{{$txt['94010::affiliate_client_orders_003']}}</a>
									</li>
								{{/if}}
								{{if !( $xml->getItem("page/orders/navigation/next"))}}
									<li class="disabled">
										<span>{{$txt['94010::affiliate_client_orders_003a']}}</span>
									</li>
								{{/if}}
							{{/if}}
						</ul>
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
			<script type="text/javascript" src="/gfx/{{$xml->getItemEscape("language/@id")}}/{{$xml->getItemEscape("/shop/@preview")}}/shop.js">			</script>

		{{else}}
			<script type="text/javascript" src="/gfx/{{$xml->getItemEscape("language/@id")}}/shop.js?r=1570606968">			</script>

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
