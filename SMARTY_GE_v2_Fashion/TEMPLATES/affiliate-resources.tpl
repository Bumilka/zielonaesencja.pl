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
						<!--Środki do wykorzystania - wypłata środków (affiliate_resources_form, 59900.1)-->
						{{if  $xml->getItem("page/resources")}}
							<div {{assign "classAttributeTmp3" ""}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}affiliate_resources_label{{/capture}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}big_label affiliate_resources_label{{/capture}}  class="{{$classAttributeTmp3}}">
								<span class="affiliate_resources_label">{{$txt['59900::affiliate_resources_label']}}</span>
							</div>
							<input type="hidden" id="payment_min"/>
							<div class="affiliate_resources_wyplata">{{$txt['59900::affiliate_label_text']}}
								<span class="resources_total">{{$xml->getItemEscape("page/payments/@total_formatted")}}</span>
								{{if (0  gt (string)  $xml->getItem("page/payments/@total")) or ( $xml->getItem("page/payments/@total")  == (string) '0.00')}}
									{{$txt['59900::affiliate_label_text4_new']}}
								{{else}}
									{{$txt['59900::affiliate_resources_text2_new']}}
									<span class="resources_minpayment">{{$xml->getItemEscape("page/shop/@minpayment")}}{{$xml->getItemEscape("/shop/currency/@name")}}</span>
									<span>{{$txt['59900::affiliate_resources_text3']}}</span>
									<form method="POST">
										<input type="hidden" name="max" id="affiliate_max" value=" {{$xml->getItemEscape("page/payments/@total")}} "></input>
										<input type="hidden" name="min" id="affiliate_min" value=" {{$xml->getItemEscape("page/shop/@minpayment")}} "></input>
										<div class="affiliate_resources_payment">
											<div class="affiliate_resources_payment_sub">
												<input class="affiliate_resources_kwota1" type="text" name="amount" maxlength="10" value="0" id="affiliate_resources_kwota1"/>
												<span class="affiliate_przecinek">{{$txt['59900::affiliate_resources_przecinek']}}</span>
												<input class="affiliate_resources_kwota2" type="text" name="cent" value="00" maxlength="2"/>
												<span class="affiliate_resources_waluta">{{$xml->getItemEscape("/shop/currency/@name")}}</span>
												<input {{assign "classAttributeTmp4" ""}}  type="submit"{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}affiliate_resources_submit{{/capture}} id="affiliate_resources_submit"{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}btn-small affiliate_resources_submit{{/capture}} value="{{$txt['59900::button_wyplac']}}"  class="{{$classAttributeTmp4}}"></input>
												<div id="affiliate_warning1" style="display:none;">
													<div id="affiliate_warning1_sub">{{$txt['59900::affiliate_resources_text22_new']}}
													</div>
												</div>
												<div id="affiliate_warning2" style="display:none;">
													<div id="affiliate_warning2_sub">{{$txt['59900::affiliate_resources_text33_new']}}
													</div>
												</div>
												<div class="clear">
												</div>
											</div>
										</div>
										<div class="affiliate_resources_payment_type">
											{{if  $xml->getItem("page/client/@paymenttype")  == (string) 'cash'}}
												<input type="radio" value="voucher" name="method" checked="checked"/>{{$txt['59900::affiliate_resources_text4']}}
												<input type="radio" value="cash" name="method"/>{{$txt['59900::affiliate_resources_text5']}}
											{{else}}
												{{$txt['59900::affiliate_resources_text6']}}
											{{/if}}
										</div>
									</form>
								{{/if}}
							</div>
						{{/if}}
						<!--Środki do wykorzystania - lista wypłat (affiliate_resources_list, 59929.2)-->
						{{if  $xml->getItem("page/resources")}}
							{{if count( $xml->getList("page/resources/resource"))}}
								<table {{assign "classAttributeTmp5" ""}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}affiliate_resources{{/capture}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}ui-responsive table-stroke ui-table ui-table-reflow affiliate_resources{{/capture}}  class="{{$classAttributeTmp5}}">
									<thead>
										<tr>
											<th id="affiliate_resources_th1">{{$txt['59929::affiliate_resources_th1']}}
											</th>
											<th id="affiliate_resources_th2">{{$txt['59929::affiliate_resources_th2']}}
											</th>
											<th id="affiliate_resources_th3">{{$txt['59929::affiliate_resources_th3']}}
											</th>
											<th id="affiliate_resources_th4">{{$txt['59929::affiliate_resources_th4']}}
											</th>
											<th id="affiliate_resources_th5">{{$txt['59929::affiliate_resources_th5']}}
											</th>
											<th id="affiliate_resources_th6">{{$txt['59929::affiliate_resources_th6']}}
											</th>
											<th id="affiliate_resources_th7">{{$txt['59929::affiliate_resources_th7']}}
											</th>
										</tr>
									</thead>
									{{foreach from=$xml->getList("page/resources/resource") item=loop372}}
										<tr {{assign "classAttributeTmp6" ""}}{{if $loop372@iteration % 2}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}affiliate_resources_row1{{/capture}}{{else}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}affiliate_resources_row2{{/capture}}{{/if}}  class="{{$classAttributeTmp6}}">
											<td class="text1">{{$loop372->getItemEscape("@date")}}
											</td>
											<td class="text">
												{{if  $loop372->getItem("@type")  == (string) 'cash'}}
													{{$txt['59929::affiliate_resources_text_1']}}
												{{else}}
													{{$txt['59929::affiliate_resources_text_22']}}
												{{/if}}
											</td>
											<td class="text">
												<span>{{$loop372->getItemEscape("@idkey")}}</span>
											</td>
											<td class="text">
												{{if  $loop372->getItem("@expire_date")  == (string) '0000-00-00'}}
													{{$txt['59929::affiliate_resources_text_2']}}
												{{elseif  $loop372->getItem("@expire_date")  == (string) ''}}
													-
												{{else}}
													{{$loop372->getItemEscape("@expire_date")}}
												{{/if}}
											</td>
											<td class="text">{{$loop372->getItemEscape("@amount_formatted")}}
											</td>
											<td class="text">{{$loop372->getItemEscape("@used_formatted")}}
											</td>
											<td class="text">
												{{if  $loop372->getItem("@status")  == (string) 'n'}}
													<span class="bl">{{$txt['59929::affiliate_resources_text_3']}}</span>
												{{elseif  $loop372->getItem("@status")  == (string) 'y'}}
													<span class="g">{{$txt['59929::affiliate_resources_text_4']}}</span>
												{{elseif  $loop372->getItem("@status")  == (string) 'b'}}
													<span class="r">{{$txt['59929::affiliate_resources_text_5']}}</span>
												{{elseif  $loop372->getItem("@status")  == (string) '0000-00-00'}}
													<span class="bl">{{$txt['59929::affiliate_resources_text_66']}}</span>
												{{elseif  $loop372->getItem("@status")  == (string) 'Odrzucono'}}
													<span class="r">{{$loop372->getItemEscape("@status")}}</span>
												{{else}}
													<span class="g">{{$txt['59929::affiliate_resources_text_7']}}</span>({{$loop372->getItemEscape("@status")}})
												{{/if}}
											</td>
										</tr>
									{{/foreach}}
								</table>
							{{else}}
								<span class="affiliate_noresources">{{$txt['59929::affiliate_resources_text_6']}}</span>
							{{/if}}
						{{/if}}
						<!--Środki do wykorzystania - stronicowanie listy wypł (affiliate_resources_paging, 59932.1)-->
						{{if count( $xml->getList("page/navigation/item"))}}
							{{capture name="lastItem" assign="lastItem"}}
								{{$xml->getItemEscape("page/navigation/item[position() = last()]/@counter")}}
							{{/capture}}
							<table class="affiliate_resources_paging">
								<tr>
									<td class="affiliate_resources_portions">
										{{if count( $xml->getList("page/navigation/portions"))  gt (string) 1}}
											<form class="affiliate_resources_sort" action="settings.php" id="affiliate_resources_sort">
												<span class="affiliate_resources_portions">{{$txt['59932::affiliate_resources_001']}}</span>
												<select class="affiliate_resources_portions" name="affiliate_portions" onchange="submit();">
													{{foreach from=$xml->getList("page/navigation/portions") item=loop441}}
														<option value="{{$loop441->getItemEscape("@counter")}}" {{if $loop441->getItem("@selected") == (string) 'true'}} selected="selected" {{/if}}>{{$loop441->getItemEscape("@counter")}}
														</option>
													{{/foreach}}
												</select>
												<span class="affiliate_resources_portions">{{$txt['59932::affiliate_resources_002']}}</span>
											</form>
										{{/if}}
									</td>
									<td class="affiliate_resources_paging">
										<div class="aclc_paging_right">
											{{if count( $xml->getList("page/navigation/item"))  gt (string) 1}}
												<table class="aclc_paging_sub">
													<tr>
														<td class="aclc_paging_sub">
															{{if  $xml->getItem("page/navigation/prev")}}
																<a class="aclc_paging_first" href="{{$xml->getItem("page/navigation/path/@value")}}0">{{$txt['59932::affiliate_resources_003']|escape:'iai'}}</a>
															{{/if}}
															{{if !( $xml->getItem("page/navigation/prev"))}}
																<span class="aclc_paging_first">{{$txt['59932::affiliate_resources_004']|escape:'iai'}}</span>
															{{/if}}
															{{if  $xml->getItem("page/navigation/prev")}}
																<a class="aclc_paging_left" href="{{$xml->getItem("page/navigation/path/@value")}}{{$xml->getItemEscape("page/navigation/prev/@counter")}}">{{$txt['59932::affiliate_resources_005']|escape:'iai'}}</a>
															{{/if}}
															{{if !( $xml->getItem("page/navigation/prev"))}}
																<span class="aclc_paging_left">{{$txt['59932::affiliate_resources_006']|escape:'iai'}}</span>
															{{/if}}
															{{foreach from=$xml->getList("page/navigation/item") item=loop495}}
																{{if  $loop495->getItem("@gap")}}
																	<span class="aclc_paging_gap">{{$txt['59932::affiliate_resources_007']}}</span>
																{{/if}}
																{{if !( $loop495->getItem("@type")  == (string) 'current') and !( $loop495->getItem("@gap"))}}
																	<a class="aclc_paging" href="{{$loop495->getItem("../path/@value")}}{{$loop495->getItemEscape("@counter") - 1}}" {{if $loop495@iteration == (string) $loop495@total }} id="last_of_page"{{/if}}>{{$loop495->getItemEscape("@counter")}}</a>
																{{/if}}
																{{if  $loop495->getItem("@type")  == (string) 'current'}}
																	<span class="aclc_paging_current">{{$loop495->getItemEscape("@counter")}}</span>
																{{/if}}
																{{if  $loop495@iteration   neq (string)  $loop495@total }}
																	{{$txt['59932::affiliate_resources_008']}}
																{{/if}}
															{{/foreach}}
															{{if  $xml->getItem("page/navigation/prev") and  $xml->getItem("page/navigation/next")}}
																{{$txt['59932::affiliate_resources_008']}}
															{{/if}}
															{{if  $xml->getItem("page/navigation/next")}}
																<a class="aclc_paging_right" href="{{$xml->getItem("page/navigation/path/@value")}}{{$xml->getItemEscape("page/navigation/next/@counter")}}">{{$txt['59932::affiliate_resources_009']}}</a>
															{{/if}}
															{{if !( $xml->getItem("page/navigation/next"))}}
																<span class="aclc_paging_right">{{$txt['59932::affiliate_resources_010']}}</span>
															{{/if}}
															{{if  $xml->getItem("page/navigation/next")}}
																<a class="aclc_paging_last" href="{{$xml->getItem("page/navigation/path/@value")}}{{$xml->getItemEscape("$lastItem - 1")}}">{{$txt['59932::affiliate_resources_011']|escape:'iai'}}</a>
															{{/if}}
															{{if !( $xml->getItem("page/navigation/next"))}}
																<span class="aclc_paging_last">{{$txt['59932::affiliate_resources_012']|escape:'iai'}}</span>
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
