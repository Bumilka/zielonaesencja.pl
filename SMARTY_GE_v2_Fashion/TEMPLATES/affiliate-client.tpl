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
						<!--Zamówienia klienta z programu partnerskiego (affiliate_client_orders, 59429.1)-->
						{{if  $xml->getItem("page/client/item")}}
							<div {{assign "classAttributeTmp3" ""}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}affiliate_client_label{{/capture}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}big_label affiliate_client_label{{/capture}}  class="{{$classAttributeTmp3}}">
								<span class="affiliate_client_label">{{$txt['59429::affiliate_client_label']}}{{$xml->getItemEscape("page/client/@id")}}</span>
							</div>
							<div class="affiliate_client">
								<div class="affiliate_client_sub">
									<table {{assign "classAttributeTmp4" ""}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}affiliate_client{{/capture}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}ui-responsive table-stroke ui-table ui-table-reflow affiliate_client{{/capture}}  class="{{$classAttributeTmp4}}">
										<thead>
											<tr>
												<th id="affiliate_client_th1">{{$txt['59429::affiliate_client_th1']}}
												</th>
												<th id="affiliate_client_th2">{{$txt['59429::affiliate_client_th2']}}
												</th>
												<th id="affiliate_client_th3">{{$txt['59429::affiliate_client_th3']}}
												</th>
												<th id="affiliate_client_th4">{{$txt['59429::affiliate_client_th4']}}
												</th>
												<th id="affiliate_client_th5">{{$txt['59429::affiliate_client_th5']}}
												</th>
												<th id="affiliate_client_th6">{{$txt['59429::affiliate_client_th6']}}
												</th>
												<th id="affiliate_client_th7">{{$txt['59429::affiliate_client_th7']}}
												</th>
												<th id="affiliate_client_th8">{{$txt['59429::affiliate_client_th8']}}
												</th>
											</tr>
										</thead>
										<tbody>
											{{foreach from=$xml->getList("page/client/item") item=loop310}}
												<tr {{assign "classAttributeTmp5" ""}}{{if $loop310@iteration % 2}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}affiliate_client_row1{{/capture}}{{else}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}affiliate_client_row2{{/capture}}{{/if}}  class="{{$classAttributeTmp5}}">
													<td class="affiliate_client_first">
														{{if  $loop310->getItem("@orderid")}}
															{{$loop310->getItemEscape("@orderid")}}
														{{else}}
															{{$loop310->getItemEscape("@id")}}
														{{/if}}
													</td>
													<td>{{$loop310->getItemEscape("@date")}}
													</td>
													<td>{{$loop310->getItemEscape("@dispatch")}}
													</td>
													<td>
														<span class="affiliate_client_price">{{$loop310->getItemEscape("@cost_formatted")}}</span>
													</td>
													<td>{{$loop310->getItemEscape("@numprod")}}
													</td>
													<td>
														<span class="affiliate_client_price">{{$loop310->getItemEscape("@prepaid_formatted")}}</span>
													</td>
													<td>{{$loop310->getItemEscape("@status")}}
													</td>
													<td>{{$loop310->getItemEscape("@affiliate")}}
													</td>
												</tr>
											{{/foreach}}
										</tbody>
									</table>
								</div>
							</div>
						{{/if}}
						<!--Zamówienia klienta - stronicowanie (affiliate_client_paging, 59430.1)-->
						{{if count( $xml->getList("page/client/navigation/item"))}}
							{{capture name="lastItem" assign="lastItem"}}
								{{$xml->getItemEscape("page/client/navigation/item[position() = last()]/@counter")}}
							{{/capture}}
							<table class="affiliate_client_paging">
								<tr>
									<td class="affiliate_client_portions">
										{{if count( $xml->getList("page/client/navigation/portions"))  gt (string) 1}}
											<form class="affiliate_client_sort" action="settings.php" id="affiliate_client_sort">
												<span class="affiliate_client_portions">{{$txt['59430::affiliate_client_001']}}</span>
												<select class="affiliate_client_portions" name="affiliate_portions" onchange="submit();">
													{{foreach from=$xml->getList("page/client/navigation/portions") item=loop366}}
														<option value="{{$loop366->getItemEscape("@counter")}}" {{if $loop366->getItem("@selected") == (string) 'true'}} selected="selected" {{/if}}>{{$loop366->getItemEscape("@counter")}}
														</option>
													{{/foreach}}
												</select>
												<span class="affiliate_client_portions">{{$txt['59430::affiliate_client_002']}}</span>
											</form>
										{{/if}}
									</td>
									<td class="affiliate_client_paging">
										<div class="acs_paging_right">
											{{if count( $xml->getList("page/client/navigation/item"))  gt (string) 1}}
												<table class="acs_paging_sub">
													<tr>
														<td class="acs_paging_sub">
															{{if  $xml->getItem("page/client/navigation/prev")}}
																<a class="acs_paging_first" href="{{$xml->getItem("page/client/navigation/path/@value")}}0">{{$txt['59430::affiliate_client_003']|escape:'iai'}}</a>
															{{/if}}
															{{if !( $xml->getItem("page/client/navigation/prev"))}}
																<span class="acs_paging_first">{{$txt['59430::affiliate_client_004']|escape:'iai'}}</span>
															{{/if}}
															{{if  $xml->getItem("page/client/navigation/prev")}}
																<a class="acs_paging_left" href="{{$xml->getItem("page/client/navigation/path/@value")}}{{$xml->getItemEscape("page/client/navigation/prev/@counter")}}">{{$txt['59430::affiliate_client_005']|escape:'iai'}}</a>
															{{/if}}
															{{if !( $xml->getItem("page/client/navigation/prev"))}}
																<span class="acs_paging_left">{{$txt['59430::affiliate_client_006']|escape:'iai'}}</span>
															{{/if}}
															{{foreach from=$xml->getList("page/client/navigation/item") item=loop420}}
																{{if  $loop420->getItem("@gap")}}
																	<span class="acs_paging_gap">{{$txt['59430::affiliate_client_007']}}</span>
																{{/if}}
																{{if !( $loop420->getItem("@type")  == (string) 'current') and !( $loop420->getItem("@gap"))}}
																	<a class="acs_paging" href="{{$loop420->getItem("../path/@value")}}{{$loop420->getItemEscape("@counter") - 1}}" {{if $loop420@iteration == (string) $loop420@total }} id="last_of_page"{{/if}}>{{$loop420->getItemEscape("@counter")}}</a>
																{{/if}}
																{{if  $loop420->getItem("@type")  == (string) 'current'}}
																	<span class="acs_paging_current">{{$loop420->getItemEscape("@counter")}}</span>
																{{/if}}
																{{if  $loop420@iteration   neq (string)  $loop420@total }}
																	{{$txt['59430::affiliate_client_008']}}
																{{/if}}
															{{/foreach}}
															{{if  $xml->getItem("page/client/navigation/prev") and  $xml->getItem("page/client/navigation/next")}}
																{{$txt['59430::affiliate_client_008']}}
															{{/if}}
															{{if  $xml->getItem("page/client/navigation/next")}}
																<a class="acs_paging_right" href="{{$xml->getItem("page/client/navigation/path/@value")}}{{$xml->getItemEscape("page/client/navigation/next/@counter")}}">{{$txt['59430::affiliate_client_009']}}</a>
															{{/if}}
															{{if !( $xml->getItem("page/client/navigation/next"))}}
																<span class="acs_paging_right">{{$txt['59430::affiliate_client_010']}}</span>
															{{/if}}
															{{if  $xml->getItem("page/client/navigation/next")}}
																<a class="acs_paging_last" href="{{$xml->getItem("page/client/navigation/path/@value")}}{{$xml->getItemEscape("$lastItem - 1")}}">{{$txt['59430::affiliate_client_011']|escape:'iai'}}</a>
															{{/if}}
															{{if !( $xml->getItem("page/client/navigation/next"))}}
																<span class="acs_paging_last">{{$txt['59430::affiliate_client_012']|escape:'iai'}}</span>
															{{/if}}
														</td>
													</tr>
												</table>
											{{/if}}
										</div>
									</td>
								</tr>
							</table>
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
