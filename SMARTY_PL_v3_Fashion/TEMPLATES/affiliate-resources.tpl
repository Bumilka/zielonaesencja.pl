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
					<aside {{assign "classAttributeTmp1" ""}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}span3{{/capture}}{{if $xml->getItem("page/@type") == (string) 'projector'}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}{{$txt['107419::70925_projector_a_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'search'}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}{{$txt['107419::70925_search_a_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'main'}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}{{$txt['107419::70925_main_a_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'blog-item'}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}{{$txt['107419::70925_blog_item_a_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'blog-list'}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}{{$txt['107419::70925_blog_list_a_class']}}{{/capture}}{{else}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}{{$txt['107419::70925_otherwise_a_class']}}{{/capture}}{{/if}}  class="{{$classAttributeTmp1}}">
						{{include file="component_menu_additional1_106528.tpl"}}
					</aside>
				{{/if}}
				{{if !( $xml->getItem("action/set_render/item")) or ( $xml->getItem("action/set_render/item/@name")  == (string) 'content')}}
					<div {{assign "classAttributeTmp2" ""}}  id="content"{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}span9{{/capture}}{{if $xml->getItem("page/@type") == (string) 'projector'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['107419::70925_projector_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'search'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['107419::70925_search_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'main'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['107419::70925_main_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'navigation'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['107419::70925_navigation_page_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'blog-list'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['107419::70925_blog_list_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'blog-item'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['107419::70925_blog_item_c_class']}}{{/capture}}{{else}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['107419::70925_otherwise_c_class']}}{{/capture}}{{/if}}  class="{{$classAttributeTmp2}}">
						{{include file="component_menu_affiliate_108064.tpl"}}
						{{include file="component_menu_messages_106608.tpl"}}
						<!--Środki do wykorzystania - wypłata środków (affiliate_resources_form, 91831.1)-->
						{{if  $xml->getItem("page/resources")}}
							<div {{assign "classAttributeTmp3" ""}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}affiliate_resources_label{{/capture}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}big_label affiliate_resources_label{{/capture}}  class="{{$classAttributeTmp3}}">
								<span class="affiliate_resources_label">{{$txt['91831::affiliate_resources_label']}}</span>
							</div>
							<input type="hidden" id="payment_min"/>
							{{if (0  gt (string)  $xml->getItem("page/payments/@total")) or ( $xml->getItem("page/payments/@total")  == (string) '0.00')}}
								<span class="affiliate_noresources">{{$txt['91831::affiliate_label_text4_new']}}</span>
							{{else}}
								<div class="affiliate_resources_wyplata">{{$txt['91831::affiliate_label_text']}}
									<ol>
										<li>{{$txt['91831::affiliate_label_text_1']}}
											<strong class="resources_total">{{$xml->getItemEscape("page/payments/@total_formatted")}}</strong>
										</li>
										<li>{{$txt['91831::affiliate_label_text_2']}}
											<strong class="resources_returned">{{$xml->getItemEscape("page/payments/@returns_formatted")}}</strong>
										</li>
									</ol>
									{{if  $xml->getItem("page/client[@loyalty_points='true']")}}
										{{$txt['91831::affiliate_point_text']}}
									{{/if}}
									{{$txt['91831::affiliate_resources_text2_new']}}
									<span class="resources_minpayment">{{$xml->getItemEscape("page/shop/@minpayment")}}{{$xml->getItemEscape("/shop/currency/@name")}}</span>
									<span>{{$txt['91831::affiliate_resources_text3']}}</span>
									<form method="POST">
										<input type="hidden" name="max" id="affiliate_max" value=" {{$xml->getItemEscape("page/payments/@total")}} "></input>
										<input type="hidden" name="min" id="affiliate_min" value=" {{$xml->getItemEscape("page/shop/@minpayment")}} "></input>
										<div class="affiliate_resources_payment">
											<div class="affiliate_resources_payment_sub">
												<span class="affiliate_resources_kwota_label">{{$txt['91831::affiliate_resources_kwota_label']}}</span>
												<input class="affiliate_resources_kwota1" type="text" name="amount" maxlength="10" value="0" id="affiliate_resources_kwota1"/>
												<span class="affiliate_przecinek">{{$txt['91831::affiliate_resources_przecinek']}}</span>
												<input class="affiliate_resources_kwota2" type="text" name="cent" value="00" maxlength="2"/>
												<span class="affiliate_resources_waluta">{{$xml->getItemEscape("/shop/currency/@name")}}</span>
												<div id="affiliate_warning1" style="display:none;">
													<div id="affiliate_warning1_sub">{{$txt['91831::affiliate_resources_text22_new']}}
													</div>
												</div>
												<div id="affiliate_warning2" style="display:none;">
													<div id="affiliate_warning2_sub">{{$txt['91831::affiliate_resources_text33_new']}}
													</div>
												</div>
												<div class="clear">
												</div>
											</div>
										</div>
										<div class="affiliate_resources_payment_type">
											{{if  $xml->getItem("page/client/@paymenttype")  == (string) 'cash'}}
												<input type="radio" value="voucher" name="method" checked="checked"/>{{$txt['91831::affiliate_resources_text4']}}
												<input type="radio" value="cash" name="method"/>{{$txt['91831::affiliate_resources_text5']}}
											{{else}}
												{{$txt['91831::affiliate_resources_text6']}}
											{{/if}}
										</div>
										<input {{assign "classAttributeTmp4" ""}}  type="submit"{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}affiliate_resources_submit{{/capture}} id="affiliate_resources_submit"{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}btn affiliate_resources_submit{{/capture}} value="{{$txt['91831::button_wyplac']}}"  class="{{$classAttributeTmp4}}"></input>
									</form>
								</div>
							{{/if}}
						{{/if}}
						<!--Środki do wykorzystania - lista wypłat (affiliate_resources_list, 91838.1)-->
						{{if  $xml->getItem("page/resources/resource")}}
							<table {{assign "classAttributeTmp5" ""}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}affiliate_resources{{/capture}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}ui-responsive table-stroke ui-table ui-table-reflow affiliate_resources{{/capture}}  class="{{$classAttributeTmp5}}">
								<thead>
									<tr>
										<th>{{$txt['91838::affiliate_resources_th1']}}
										</th>
										<th>{{$txt['91838::affiliate_resources_th2']}}
										</th>
										<th>{{$txt['91838::affiliate_resources_th3']}}
										</th>
										<th>{{$txt['91838::affiliate_resources_th4']}}
										</th>
										<th>{{$txt['91838::affiliate_resources_th5']}}
										</th>
										<th>{{$txt['91838::affiliate_resources_th6']}}
										</th>
										<th>{{$txt['91838::affiliate_resources_th7']}}
										</th>
									</tr>
								</thead>
								{{foreach from=$xml->getList("page/resources/resource") item=loop381}}
									<tr>
										<td>{{$loop381->getItemEscape("@date")}}
										</td>
										<td>
											{{if  $loop381->getItem("@type")  == (string) 'cash'}}
												{{$txt['91838::affiliate_resources_text_1']}}
											{{else}}
												{{$txt['91838::affiliate_resources_text_22']}}
											{{/if}}
										</td>
										<td>
											<span>{{$loop381->getItemEscape("@idkey")}}</span>
										</td>
										<td>
											{{if  $loop381->getItem("@expire_date")  == (string) '0000-00-00'}}
												{{$txt['91838::affiliate_resources_text_2']}}
											{{elseif  $loop381->getItem("@expire_date")  == (string) ''}}
												-
											{{else}}
												{{$loop381->getItemEscape("@expire_date")}}
											{{/if}}
										</td>
										<td>{{$loop381->getItemEscape("@amount_formatted")}}
										</td>
										<td>{{$loop381->getItemEscape("@used_formatted")}}
										</td>
										<td>
											<div class="affiliate_resources_status">
												{{if  $loop381->getItem("@status")  == (string) 'n'}}
													<div class="affiliate-icon-status badge-important">{{$txt['91838::91838_010_icon']}}
													</div>
													<span>{{$txt['91838::affiliate_resources_text_3']}}</span>
												{{elseif  $loop381->getItem("@status")  == (string) 'y'}}
													<div class="affiliate-icon-status badge-success">{{$txt['91838::91838_011_icon']}}
													</div>
													<span>{{$txt['91838::affiliate_resources_text_4']}}</span>
												{{elseif  $loop381->getItem("@status")  == (string) 'b'}}
													<div class="affiliate-icon-status badge-warning">{{$txt['91838::91838_01_icon']}}
													</div>
													<span>{{$txt['91838::affiliate_resources_text_5']}}</span>
												{{elseif  $loop381->getItem("@status")  == (string) '0000-00-00'}}
													<div class="affiliate-icon-status badge-warning">{{$txt['91838::91838_01234_icon']}}
													</div>
													<span>{{$txt['91838::affiliate_resources_text_66']}}</span>
												{{elseif  $loop381->getItem("@status")  == (string) 'Odrzucono'}}
													<div class="affiliate-icon-status badge-important">{{$txt['91838::91838_013_icon']}}
													</div>
													<span>{{$loop381->getItemEscape("@status")}}</span>
												{{else}}
													<div class="affiliate-icon-status badge-success">{{$txt['91838::91838_014_icon']}}
													</div>
													<span>{{$txt['91838::affiliate_resources_text_7']}}
														<small>({{$loop381->getItemEscape("@status")}})</small></span>
												{{/if}}
											</div>
										</td>
									</tr>
								{{/foreach}}
							</table>
						{{/if}}
						<!--Środki do wykorzystania - stronicowanie listy wypł (affiliate_resources_paging, 91988.1)-->
						{{if count( $xml->getList("page/navigation/item"))}}
							<ul class="pagination pull-right">
								{{if count( $xml->getList("page/navigation/item"))  gt (string) 1}}
									{{if  $xml->getItem("page/navigation/prev")}}
										<li>
											<a href=" {{$xml->getItem("page/navigation/path/@value")}}{{$xml->getItemEscape("page/navigation/prev/@counter")}}">{{$txt['91988::affiliate_resources_002']}}</a>
										</li>
									{{/if}}
									{{if !( $xml->getItem("page/navigation/prev"))}}
										<li class="disabled">
											<span>{{$txt['91988::affiliate_resources_002a']}}</span>
										</li>
									{{/if}}
									{{foreach from=$xml->getList("page/navigation/item") item=loop491}}
										{{if  $loop491->getItem("@gap")}}
											<li class="disabled">
												<span>{{$txt['91988::affiliate_resources_007']}}</span>
											</li>
										{{/if}}
										{{if !( $loop491->getItem("@type")  == (string) 'current') and !( $loop491->getItem("@gap"))}}
											<li>
												<a href="{{$loop491->getItem("../path/@value")}}{{$loop491->getItemEscape("@counter") - 1}}">{{$loop491->getItemEscape("@counter")}}</a>
											</li>
										{{/if}}
										{{if  $loop491->getItem("@type")  == (string) 'current'}}
											<li class="active">
												<span>{{$loop491->getItemEscape("@counter")}}</span>
											</li>
										{{/if}}
									{{/foreach}}
									{{if  $xml->getItem("page/navigation/next")}}
										<li>
											<a href="{{$xml->getItem("page/navigation/path/@value")}}{{$xml->getItemEscape("page/navigation/next/@counter")}}">{{$txt['91988::affiliate_resources_003']}}</a>
										</li>
									{{/if}}
									{{if !( $xml->getItem("page/navigation/next"))}}
										<li class="disabled">
											<span>{{$txt['91988::affiliate_resources_003a']}}</span>
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
