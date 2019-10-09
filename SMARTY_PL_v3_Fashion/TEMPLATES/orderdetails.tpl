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
			<script type="text/javascript" src="/gfx/{{$xml->getItemEscape("language/@id")}}/orderdetails_payments.js.gzip?r=1570606968">			</script>

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
						{{include file="component_menu_order_progress_106607.tpl"}}
						{{include file="component_menu_messages_106608.tpl"}}
						<!--CMS na stronę przedpłat (orderdetails_cms, 58341.1)-->
						{{if  $xml->getItem("page/prepaid/text/body")  neq (string) ''}}
							<div {{assign "classAttributeTmp3" ""}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}orderdetails_cms{{/capture}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}orderdetails_cms cm{{/capture}}  class="{{$classAttributeTmp3}}">
								<div class="orderdetails_cms_sub">{{$xml->getItem("page/prepaid/text/body")}}
								</div>
							</div>
						{{/if}}
						<!--Informacje o zamówieniu (orderdetails_info, 110014.1)-->
						{{capture name="txt_60826_advance_a" assign="txt_60826_advance_a"}}
							{{$txt['110014::60826_advance_a']}}
						{{/capture}}
						{{capture name="setSerialNumber" assign="setSerialNumber"}}
							{{$txt['110014::57649_setSerialNumber']}}
						{{/capture}}
						{{capture name="prepaidProForma" assign="prepaidProForma"}}
							{{$txt['110014::57649_prepaidProForma']}}
						{{/capture}}
						<div id="orderdetails_info">
							<h2 class="big_label">
								<span>{{$txt['110014::prepaid0011']}}</span>
								{{if !( $xml->getItem("page/prepaid/status_explanation")  == (string) '')}}
									<a href="#show_status_explanation" class="show_status_explanation">{{$txt['110014::prepaid021']}}</a>
									<div style="display:none;">{{$xml->getItem("page/prepaid/status_explanation")}}
									</div>
								{{/if}}
								<span class="order-date">{{$txt['110014::prepaid007']}}{{$xml->getItemEscape("page/prepaid/details/@datetime")}}</span>
							</h2>
							<div id="orderdetails_info_status">
								<div {{assign "classAttributeTmp4" ""}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}prepaid-icon{{/capture}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}prepaid-icon status-{{$xml->getItemEscape("/shop/page/prepaid/details/@wykonane")}}{{/capture}}  class="{{$classAttributeTmp4}}">
									<i class=" {{if ( $xml->getItem("page/prepaid/details/@wykonane") == (string) 'n')}}{{$txt['110014::prepaidicon161']}}{{elseif ( $xml->getItem("page/prepaid/details/@wykonane") == (string) 't')}}{{if ( $xml->getItem("page/prepaid/details/@personal_collection") == (string) 'yes')}}{{$txt['110014::prepaidicon162o']}} received{{else}}{{$txt['110014::prepaidicon162']}}{{/if}}{{elseif ( $xml->getItem("page/prepaid/details/@wykonane") == (string) 'i')}}{{$txt['110014::prepaidicon163']}}{{elseif ( $xml->getItem("page/prepaid/details/@wykonane") == (string) 's')}}{{$txt['110014::prepaidicon164']}}{{elseif ( $xml->getItem("page/prepaid/details/@wykonane") == (string) 'o')}}{{$txt['110014::prepaidicon165']}}{{elseif ( $xml->getItem("page/prepaid/details/@wykonane") == (string) 'p')}}{{$txt['110014::prepaidicon166']}}{{elseif ( $xml->getItem("page/prepaid/details/@wykonane") == (string) 'h')}}{{$txt['110014::prepaidicon166N']}}{{elseif ( $xml->getItem("page/prepaid/details/@wykonane") == (string) 'w')}}{{$txt['110014::prepaidicon166w']}}{{elseif ( $xml->getItem("page/prepaid/details/@wykonane") == (string) 'd')}}{{$txt['110014::prepaidicon166d']}}{{elseif ( $xml->getItem("page/prepaid/details/@wykonane") == (string) 'z')}}{{$txt['110014::prepaidicon167']}}{{elseif ( $xml->getItem("page/prepaid/details/@wykonane") == (string) 'k')}}{{$txt['110014::prepaidicon168']}}{{elseif ( $xml->getItem("page/prepaid/details/@wykonane") == (string) 'r')}}{{$txt['110014::prepaidicon169']}}{{elseif ( $xml->getItem("page/prepaid/details/@wykonane") == (string) 'j')}}{{$txt['110014::prepaidicon169d']}}{{elseif ( $xml->getItem("page/prepaid/details/@wykonane") == (string) 'l')}}{{$txt['110014::prepaidicon169l']}}{{elseif ( $xml->getItem("page/prepaid/details/@wykonane") == (string) 'a')}}{{$txt['110014::prepaidicon169l0']}}{{elseif ( $xml->getItem("page/prepaid/details/@wykonane") == (string) 'b')}}{{$txt['110014::prepaidicon169l0p']}}{{/if}} "></i>
								</div>
								<div class="prepaid-status">
									<strong>
										{{if ( $xml->getItem("page/prepaid/details/@wykonane")  == (string) 'n')}}
											{{$txt['110014::prepaid161']}}
										{{elseif ( $xml->getItem("page/prepaid/details/@wykonane")  == (string) 't')}}
											{{if ( $xml->getItem("page/prepaid/details/@personal_collection")  == (string) 'yes')}}
												{{$txt['110014::prepaid162o']}}
											{{else}}
												{{$txt['110014::prepaid162']}}
											{{/if}}
										{{elseif ( $xml->getItem("page/prepaid/details/@wykonane")  == (string) 'i')}}
											{{$txt['110014::prepaid163']}}
										{{elseif ( $xml->getItem("page/prepaid/details/@wykonane")  == (string) 's')}}
											{{$txt['110014::prepaid164']}}
										{{elseif ( $xml->getItem("page/prepaid/details/@wykonane")  == (string) 'o')}}
											{{$txt['110014::prepaid165']}}
										{{elseif ( $xml->getItem("page/prepaid/details/@wykonane")  == (string) 'p')}}
											{{$txt['110014::prepaid166']}}
										{{elseif ( $xml->getItem("page/prepaid/details/@wykonane")  == (string) 'h')}}
											{{$txt['110014::prepaid166N']}}
										{{elseif ( $xml->getItem("page/prepaid/details/@wykonane")  == (string) 'w')}}
											{{$txt['110014::prepaid166w']}}
										{{elseif ( $xml->getItem("page/prepaid/details/@wykonane")  == (string) 'd')}}
											{{$txt['110014::prepaid166d']}}
										{{elseif ( $xml->getItem("page/prepaid/details/@wykonane")  == (string) 'z')}}
											{{$txt['110014::prepaid167']}}
										{{elseif ( $xml->getItem("page/prepaid/details/@wykonane")  == (string) 'k')}}
											{{$txt['110014::prepaid168']}}
										{{elseif ( $xml->getItem("page/prepaid/details/@wykonane")  == (string) 'r')}}
											{{$txt['110014::prepaid169']}}
										{{elseif ( $xml->getItem("page/prepaid/details/@wykonane")  == (string) 'j')}}
											{{$txt['110014::prepaid169d']}}
										{{elseif ( $xml->getItem("page/prepaid/details/@wykonane")  == (string) 'l')}}
											{{$txt['110014::prepaid169l']}}
										{{elseif ( $xml->getItem("page/prepaid/details/@wykonane")  == (string) 'a')}}
											{{$txt['110014::prepaid169l0']}}
										{{elseif ( $xml->getItem("page/prepaid/details/@wykonane")  == (string) 'b')}}
											{{$txt['110014::prepaid169l0p']}}
										{{/if}}
										</strong>
									<small>{{$txt['110014::prepaid006']}}{{$xml->getItemEscape("page/prepaid/details/@orderid")}}</small>
									{{if  $xml->getItem("page/prepaid/details/@msg")  == (string) 'order' and  $xml->getItem("page/prepaid/details/@prepaidstatus")   == (string) 'c'}}
										<div class="prepaid-msg">{{$txt['110014::prepaid002c']}}
										</div>
									{{/if}}
									{{if  $xml->getItem("page/prepaid/details[@msg='confirm']")}}
										<div class="prepaid-msg">{{$txt['110014::prepaid005']}}
										</div>
									{{/if}}
								</div>
								<div class="prepaid-buttons">
									{{if  $xml->getItem("/shop/page/prepaid/documents/document/@type") == (string)'invoice_proforma' and $prepaidProForma}}
										<a class="btn-icon prepaid-proforma" title="{{$txt['110014::57649_prepaidProForma']}}" href="{{$xml->getItemEscape("/shop/page/prepaid/documents/document[@type='invoice_proforma']/@link")}}">{{$txt['110014::57649_prepaidProForma']}}</a>
									{{/if}}
									{{if  $xml->getItem("page/prepaid/editlink[@active='y']")}}
										<a class="btn-icon prepaid-edit" title="{{$txt['110014::prepaid172edit']}}" href="{{$xml->getItemEscape("page/prepaid/editlink/@link")}}">{{$txt['110014::prepaid064edit']}}</a>
									{{/if}}
									{{if  $xml->getItem("/shop/page/prepaid/opinions_forms/trusted_shops/raiting_action")}}
										<a class="btn-icon prepaid-opinions" target="_blank" title="{{$txt['110014::prepaid064_tr']}}" href="{{$xml->getItemEscape("/shop/page/prepaid/opinions_forms/trusted_shops/raiting_action")}}">{{$txt['110014::prepaid064_tr2']}}</a>
									{{/if}}
									{{if  $xml->getItem("page/prepaid/confirmlink/@link")}}
										<a class="btn-icon prepaid-resend" title="{{$txt['110014::prepaid172']}}" href="{{$xml->getItemEscape("page/prepaid/confirmlink/@link")}}">{{$txt['110014::prepaid064']}}</a>
									{{/if}}
									{{if ( $xml->getItem("page/prepaid/cancellink/@active") == (string)'y') and !( $xml->getItem("page/prepaid/order/@payment_paid"))}}
										<a class="btn-icon prepaid-cancel orderdetails_info_cancel" onclick="return confirm('{{$txt['110014::prepaid170']}}')" title="{{$txt['110014::prepaid171']}}" href="{{$xml->getItemEscape("page/prepaid/cancellink/@link")}}">{{$txt['110014::prepaid063']}}</a>
									{{/if}}
								</div>
							</div>
						</div>
						<!--Płatności do zamówienia (orderdetails_payments, 107633.1)-->
						{{capture name="payments_in_row" assign="payments_in_row"}}
							{{$txt['107633::63643_payments_in_row']}}
						{{/capture}}
						<iaiajaxstart iai-ajax-id="orderdetails_payments" iai-ajax-generated="true"/>
						<div id="orderdetails_payments" data-cancel_link=" {{if $xml->getItem("page/prepaid/prepaid_history/item[position() = last()]/@cancel_link")}}{{$xml->getItemEscape("page/prepaid/prepaid_history/item[position() = last()]/@cancel_link")}}{{else}}false{{/if}} ">
							{{if  $xml->getItem("page/prepaid/prepaid_history/item")}}
								{{if  $xml->getItem("page/prepaid/details/@paymentstatus")  neq (string) 'g' and  $xml->getItem("/shop/page/prepaid_methods/item") and ( $xml->getItem("page/prepaid/prepaid_history/item[position() = last()]/@status")  == (string) 'n' or  $xml->getItem("page/prepaid/prepaid_history/@show_payment_button")  == (string) 'true')}}
									<div class="show_history_container">
										<a href="#orderdetails_payments_content">{{$txt['107633::prepaid068_history']}}</a>
									</div>
								{{/if}}
								<div id="orderdetails_payments_content" class="orderdetails_payments_content" {{if $xml->getItem("page/prepaid/details/@paymentstatus") neq (string) 'g' and $xml->getItem("/shop/page/prepaid_methods/item") and ( $xml->getItem("page/prepaid/prepaid_history/item[position() = last()]/@status") == (string) 'n' or $xml->getItem("page/prepaid/prepaid_history/@show_payment_button") == (string) 'true')}} style="display: none;" {{/if}}>
									<h2 class="big_label">
										<span>{{$txt['107633::prepaid068']}}</span>
										{{if  $xml->getItem("page/prepaid/order[@payment_info='true']")}}
											<a href="#payment_status_explanation" class="show_status_explanation">{{$txt['107633::prepaid021']}}</a>
											<div style="display:none;">{{$xml->getItem("page/prepaid/payment_status_explanation")}}
											</div>
										{{/if}}
									</h2>
									<table>
										{{foreach from=$xml->getList("page/prepaid/prepaid_history/item") item=loop363}}
											{{if !(count( $loop363->getList("/shop/page/prepaid/prepaid_history/item")) -  $loop363@iteration   gt (string) 10)}}
												<tr>
													<td class="icon">
														{{if  $loop363->getItem("@icon")}}
															<img src="{{$loop363->getItemEscape("@icon")}}" alt="{{$loop363->getItemEscape("@payment_name")}}"></img>
														{{/if}}
													</td>
													<td class="date add_td">
														{{if  $loop363->getItem("dates/date_cancelled/@date")}}
															{{$loop363->getItemEscape("dates/date_cancelled/@date")}}
														{{elseif  $loop363->getItem("dates/date_confirm/@date")}}
															{{$loop363->getItemEscape("dates/date_confirm/@date")}}
														{{elseif  $loop363->getItem("dates/date_add/@date")}}
															{{$loop363->getItemEscape("dates/date_add/@date")}}
														{{/if}}
													</td>
													<td class="status add_td">
														{{if  $loop363->getItem("dates/date_canceled/@date")}}
															{{if  $loop363->getItem("amount/@mark") == (string)'negativ'}}
																{{$txt['107633::prepaid0012a123new']}}
															{{else}}
																{{$txt['107633::prepaid0012sf3534new']}}
															{{/if}}
														{{else}}
															{{if  $loop363->getItem("amount/@mark") == (string)'negativ'}}
																{{$txt['107633::prepaid0011a']}}
															{{else}}
																{{$txt['107633::prepaid0011']}}
															{{/if}}
														{{/if}}
														{{if  $loop363->getItem("@payment_id") == (string)'27'}}
															{{$txt['107633::prepaid0011_saldo']}}
														{{elseif  $loop363->getItem("@payment_id") == (string)'38'}}
															{{$txt['107633::prepaid0011_kredyt']}}
														{{else}}
															{{$loop363->getItemEscape("@payment_name")}}
														{{/if}}
														{{if  $loop363->getItem("dates/date_canceled/@date")}}
															{{if  $loop363->getItem("amount/@mark") == (string)'negativ'}}
																{{$txt['107633::prepaid00132424new']}}
															{{else}}
																{{$txt['107633::prepaid00132424new']}}
															{{/if}}
														{{/if}}
														{{if !( $loop363->getItem("dates/date_canceled/@date"))}}
															{{if  $loop363->getItem("amount/@mark") == (string)'negativ'}}
																{{$txt['107633::prepaid0012a']}}{{$txt['107633::prepaid0013a']}}
															{{else}}
																{{$txt['107633::prepaid0012']}}{{$txt['107633::prepaid0013']}}
															{{/if}}
														{{/if}}
														{{$loop363->getItemEscape("amount/client_currency/@value_formatted")}}{{$txt['107633::prepaid0014']}}
														{{if  $loop363->getItem("@status")  == (string) 'n'}}
															{{if  $loop363->getItem("@automatic_booking")  == (string) '1'}}
																{{$txt['107633::prepaid0016']}}
															{{/if}}
															{{if !( $loop363->getItem("amount/@mark") == (string)'negativ')}}
																{{if  $loop363->getItem("additional_info/data")}}
																	{{if  $loop363->getItem("@other_payments") == (string) 'true'}}
																		{{$txt['107633::prepaid0019']}}
																	{{else}}
																		{{$txt['107633::prepaid0021']}}
																	{{/if}}
																	<table class="orderdetails_transfer">
																		<tr>
																			<td>
																				<span>{{$txt['107633::prepaid126']}}</span>
																			</td>
																			<td>
																				<strong>{{$loop363->getItemEscape("additional_info/data/@receiver")}}</strong>
																			</td>
																		</tr>
																		<tr>
																			<td>
																				<span>{{$txt['107633::prepaid127']}}</span>
																			</td>
																			<td>
																				<strong>{{$loop363->getItemEscape("additional_info/data/@account")}}</strong>
																			</td>
																		</tr>
																		{{if  $loop363->getItem("additional_info/data/@bankname")  neq (string) ''}}
																			<tr>
																				<td>
																					<span>{{$txt['107633::prepaid127b']}}</span>
																				</td>
																				<td>
																					<strong>{{$loop363->getItemEscape("additional_info/data/@bankname")}}</strong>
																				</td>
																			</tr>
																		{{/if}}
																		{{if  $loop363->getItem("additional_info/data/@swift_bic")  neq (string) ''}}
																			<tr>
																				<td>
																					<span>{{$txt['107633::prepaid127swift']}}</span>
																				</td>
																				<td>
																					<strong>{{$loop363->getItemEscape("additional_info/data/@swift_bic")}}</strong>
																				</td>
																			</tr>
																		{{/if}}
																		<tr>
																			<td>
																				<span>{{$txt['107633::prepaid128']}}</span>
																			</td>
																			<td>
																				<strong>{{$loop363->getItemEscape("additional_info/data/@title")}}</strong>
																			</td>
																		</tr>
																		<tr>
																			<td>
																				<span>{{$txt['107633::prepaid130']}}</span>
																			</td>
																			<td>
																				<strong>{{$loop363->getItemEscape("amount/client_currency/@value_formatted")}}</strong>
																			</td>
																		</tr>
																	</table>
																{{/if}}
															{{/if}}
														{{/if}}
													</td>
												</tr>
											{{/if}}
										{{/foreach}}
									</table>
								</div>
							{{/if}}
						</div>
						<iaiajaxend/>
						{{if  $xml->getItem("page/prepaid/details/@paymentstatus")  neq (string) 'g' and  $xml->getItem("/shop/page/prepaid_methods/item") and ( $xml->getItem("page/prepaid/prepaid_history/item[position() = last()]/@status")  == (string) 'n' or  $xml->getItem("page/prepaid/prepaid_history/@show_payment_button")  == (string) 'true')}}
							<div class="orderdetails_payment_methods_container bg_alter row mx-0">
								<div id="orderdetails_prepaid_methods" class="orderdetails_prepaid_methods col-sm-8 col-12" data-action="/order-newpayment.php" data-method="post" data-action="/order-newpayment.php?order={{$xml->getItemEscape("/shop/page/prepaid/details/@id")}}" {{if $xml->getItem("/shop/page/prepaid/details/@paymentlink")}} data-action="{{$xml->getItemEscape("/shop/page/prepaid/details/@paymentlink")}}" {{/if}}>
									<div class="prepaid_payitems_wrapper">
										{{if  $xml->getItem("/shop/page/groupList/item")}}
											{{foreach from=$xml->getList("/shop/page/groupList/item") item=loop494}}
												{{capture name="groupID" assign="groupID"}}
													{{$loop494->getItemEscape("@id")}}
												{{/capture}}
												{{if  $loop494->getItem("/shop/page/prepaid_methods/item[@group = $groupID]")}}
													<div {{assign "classAttributeTmp5" ""}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}payments_group{{/capture}}{{if $loop494->getItem("/shop/page/prepaid/prepaid_history/item[position()=last()]/@first_pay") == (string) 'true' and $loop494->getItem("/shop/page/prepaid/prepaid_history/item[position()=last()]/@pay_link") and $loop494->getItem("/shop/page/prepaid_methods/item[@group = $groupID]/@icon") == (string) $loop494->getItem("/shop/page/prepaid/prepaid_history/item[position() = last()]/@icon")}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}payments_group group_open{{/capture}}{{/if}} id="{{$loop494->getItemEscape("@id")}}_payment"  class="{{$classAttributeTmp5}}">
														{{if  $loop494->getItem("@id")  == (string) 'simple_transfer'}}
															<input value="110" type="radio" name="payform_id" class="hidden_input" {{if $loop494->getItem("/shop/page/prepaid/prepaid_history/item[position()=last()]/@first_pay") == (string) 'true' and $loop494->getItem("/shoppage/prepaid/prepaid_history/item[position()=last()]/@pay_link") and $loop494->getItem("/shop/page/prepaid_methods/item[@group = $groupID]/@icon") == (string) $loop494->getItem("/shop/page/prepaid/prepaid_history/item[position() = last()]/@icon")}} checked="checked" {{/if}}></input>
														{{/if}}
														{{if  $loop494->getItem("@id")  == (string) 'blik'}}
															<input value="177" type="radio" name="payform_id" class="hidden_input" {{if $loop494->getItem("/shop/page/prepaid/prepaid_history/item[position()=last()]/@first_pay") == (string) 'true' and $loop494->getItem("/shop/page/prepaid/prepaid_history/item[position()=last()]/@pay_link") and $loop494->getItem("/shop/page/prepaid_methods/item[@group = $groupID]/@icon") == (string) $loop494->getItem("/shop/page/prepaid/prepaid_history/item[position() = last()]/@icon")}} checked="checked" {{/if}}></input>
														{{/if}}
														<input type="radio" name="selected_group" class="selected_group" id="{{$loop494->getItemEscape("@id")}}_input" {{if $loop494->getItem("/shop/page/prepaid/prepaid_history/item[position()=last()]/@first_pay") == (string) 'true' and $loop494->getItem("/shop/page/prepaid/prepaid_history/item[position()=last()]/@pay_link") and $loop494->getItem("/shop/page/prepaid_methods/item[@group = $groupID]/@icon") == (string) $loop494->getItem("/shop/page/prepaid/prepaid_history/item[position() = last()]/@icon")}} checked="checked" {{/if}}></input>
														<label class="payments_group_sub_content">
															<span class="prepaid_payment_group_name">{{$loop494->getItemEscape("@name")}}</span>
															<span class="payments_sub_container">
																{{if  $loop494->getItem("@id")  == (string) 'blik'}}
																	<span style="display: none;" class="blik_placeholder">{{$txt['107633::prepaid0020blik']}}
																		<input id="blik_placeholder_input" type="text"/></span>
																{{/if}}
																<span class="payments_icon_container">
																	{{if  $loop494->getItem("@id")  == (string) 'transfer'}}
																		<img class="payment_icon" src="/gfx/__IAI_TEMPLATE_LANG_639_1__/transfer_payment.png?r=1570606968" alt="{{$loop494->getItemEscape("@name")}}"></img>
																	{{elseif  $loop494->getItem("@id")  == (string) 'blik'}}
																		<img class="payment_icon" src="/gfx/__IAI_TEMPLATE_LANG_639_1__/blik_payment.png?r=1570606968" alt="{{$loop494->getItemEscape("@name")}}"></img>
																	{{elseif  $loop494->getItem("@id")  == (string) 'installment'}}
																		<img class="payment_icon" src="/gfx/__IAI_TEMPLATE_LANG_639_1__/installment_payment.png?r=1570606968" alt="{{$loop494->getItemEscape("@name")}}"></img>
																	{{elseif  $loop494->getItem("@id")  == (string) 'card'}}
																		<img class="payment_icon" src="/gfx/__IAI_TEMPLATE_LANG_639_1__/card_payment.png?r=1570606968" alt="{{$loop494->getItemEscape("@name")}}"></img>
																	{{elseif  $loop494->getItem("@id")  == (string) 'simple_transfer'}}
																		<img class="payment_icon" src="/gfx/__IAI_TEMPLATE_LANG_639_1__/simple-transfer_payment.png?r=1570606968" alt="{{$loop494->getItemEscape("@name")}}"></img>
																	{{/if}}
																	</span>
																{{if !( $loop494->getItem("@id")  == (string) 'blik')}}
																	<span class="expand_button">{{$txt['107633::532423_expandicon']}}</span>
																{{/if}}
																</span>
														</label>
														{{if  $loop494->getItem("/shop/page/prepaid_methods/item[@group = $groupID]") and !( $loop494->getItem("@id")  == (string) 'blik')  and !( $loop494->getItem("@id")  == (string) 'simple_transfer')}}
															<div class="payment_content visible-desktop">
																<a class="close_popup_payment" href="#close">
																	x</a>
																{{foreach from=$loop494->getList("/shop/page/prepaid_methods/item[@group = {{$groupID}}]") item=loop564}}
																	<div class="prepaid_payment" id="payment_{{$loop564->getItemEscape("@id")}}" title="{{$txt['107633::prepaid_payment_onclicktext']}}">
																		<input name="payform_id" type="radio" class="orderdetails_radio" value="{{$loop564->getItemEscape("@id")}}" id="payform_{{$loop564->getItemEscape("@id")}}" {{if $loop564->getItem("@checked") == (string)'true'}} checked="checked" {{/if}}{{if $loop564->getItem("/shop/page/prepaid/prepaid_history/item[position()=last()]/@pay_link") and $loop564->getItem("/shop/page/prepaid/prepaid_history/item[position()=last()]/@first_pay") == (string) 'true' and $loop564->getItem("@icon") == (string) $loop564->getItem("/shop/page/prepaid/prepaid_history/item[position() = last()]/@icon")}} checked="checked" {{/if}}></input>
																		<label class="prepaid_payment_sub" for="payform_{{$loop564->getItemEscape("@id")}}">
																			<span class="prepaid_payment_header">{{$loop564->getItem("@name")}}</span>
																			{{if  $loop564->getItem("@icon")  neq (string) ''}}
																				<img class="prepaid_payment_icon" src="{{$loop564->getItemEscape("@icon")}}" alt="{{$loop564->getItemEscape("@name")}}"></img>
																			{{/if}}
																		</label>
																		{{if  $loop564->getItem("@description") and !( $loop564->getItem("@description")  == (string) ' ')}}
																			<div class="prepaid_payment_description" id="description_{{$loop564->getItemEscape("@id")}}">
																				{{if  $loop564->getItem("@description") and !( $loop564->getItem("@description")  == (string) ' ')}}
																					{{$loop564->getItem("@description")}}
																					{{if ( $loop564->getItem("@id")  == (string) '28') and ( $loop564->getItem("@allProducts")  == (string) '0')}}
																						<span class="prepaid_payment_lukaswarning">{{$txt['107633::installmentDialog_alertlukas']}}</span>
																					{{/if}}
																				{{/if}}
																			</div>
																		{{/if}}
																	</div>
																{{/foreach}}
																{{if  $loop494->getItem("@id")  == (string) 'card'}}
																	<div id="card_payment_container">
																	</div>
																{{/if}}
															</div>
														{{/if}}
														{{if  $loop494->getItem("@id")  == (string) 'simple_transfer'}}
															<div class="payment_content">
																<div id="simple_transfer_payment_container">
																</div>
															</div>
														{{/if}}
														<div class="mobile_payment_content">
															{{if  $loop494->getItem("@id")  neq (string) 'simple_transfer'}}
																<a class="change_payment_method" href="#changed_payment">{{$txt['107633::532423_change_payment']}}</a>
															{{/if}}
														</div>
													</div>
												{{/if}}
											{{/foreach}}
										{{/if}}
									</div>
								</div>
								<div class="orderdetails_summary col-sm-4 col-12">
									<div class="orderdetails_summary_info">
										{{if  $xml->getItem("/shop/page/prepaid/points/@display")}}
											<div class="orderdetails_summary_debit">{{$txt['107633::basketedit_points_info1']}}
												<b>{{$xml->getItemEscape("/shop/page/prepaid/points/@client_points")}}
													<span>{{$txt['107633::basketedit_points_pts']}}</span></b>{{$txt['107633::basketedit_dot']}}
											</div>
										{{/if}}
										{{if  $xml->getItem("/shop/page/prepaid/insurance_forms/trusted_shops") or  $xml->getItem("/shop/page/prepaid/opinions_forms/trusted_shops/raiting_action")}}
											{{if  $xml->getItem("/shop/page/prepaid/insurance_forms/trusted_shops")}}
												<div id="trusted_shops">
													<div id="trusted_shops_img">
														<form method="post" target="_blank" action="{{$xml->getItemEscape("/shop/page/prepaid/insurance_forms/trusted_shops/icon_form/@action")}}">{{$xml->getItem("/shop/page/prepaid/insurance_forms/trusted_shops/icon_form/hidden_params")}}
															<input type="image" src="{{$xml->getItemEscape("/shop/page/prepaid/insurance_forms/trusted_shops/icon_form/@icon_src")}}" title="{{$xml->getItemEscape("/shop/page/prepaid/insurance_forms/trusted_shops/icon_form/@title")}}"></input>
														</form>
													</div>
													<div id="trusted_shops_info">
														<form method="post" target="_blank" action="{{$xml->getItemEscape("/shop/page/prepaid/insurance_forms/trusted_shops/registration_form/@action")}}">{{$xml->getItem("/shop/page/prepaid/insurance_forms/trusted_shops/registration_form/hidden_params")}}
															<p>{{$xml->getItem("/shop/page/prepaid/insurance_forms/trusted_shops/registration_form/@descryption")}}
															</p>
															<button type="submit">{{$xml->getItem("/shop/page/prepaid/insurance_forms/trusted_shops/registration_form/@button")}}
															</button>
														</form>
													</div>
												</div>
											{{/if}}
										{{/if}}
									</div>
									<iaiajaxstart iai-ajax-id="orderdetails_summary_price" iai-ajax-generated="true"/>
									<div class="orderdetails_summary_price">
										<div class="orderdetails_calculations">
											<div class="orderdetails_product_summary">
												<label>{{$txt['107633::prepaid008w']}}
												</label>
												<strong>{{$xml->getItemEscape("page/prepaid/details/@currencycost_formatted")}}</strong>
											</div>
											{{if  $xml->getItem("page/prepaid/details/@deliveryid")  neq (string) '47'}}
												<div class="orderdetails_product_summary">
													<label>{{$txt['107633::prepaid011do']}}
													</label>
													<strong id="additional_cost_prepaid">{{$xml->getItemEscape("page/prepaid/details/@currency_additional_cost_formatted")}}</strong>
												</div>
											{{/if}}
											<div style="clear:both">
											</div>
										</div>
										{{if  $xml->getItem("page/prepaid/details/@deliveryid")  neq (string) '47'}}
											<div class="orderdetails_total_summary">
												<label>{{$txt['107633::prepaid011']}}
												</label>
												<strong id="currencytotal_prepaid">{{$xml->getItemEscape("page/prepaid/details/@currencytotal_formatted")}}</strong>
												{{if  $xml->getItem("/shop/page/prepaid/points/@display")}}
													<span>{{$txt['107633::prepaid913plus']}}{{$xml->getItemEscape("/shop/page/prepaid/points/@order_cost")}}{{$txt['107633::50000_004pkt']}}</span>
												{{/if}}
											</div>
										{{/if}}
										{{if ( $xml->getItem("/shop/page/prepaid/details/@advance")  gt (string) 0)}}
											<div class="orderdetails_product_summary advance">
												<label class="txt_wrap">{{$txt['107633::60826_advance_a']}}
												</label>
												<strong>{{$xml->getItemEscape("/shop/page/prepaid/details/@advance_formatted")}}</strong>
											</div>
										{{/if}}
										{{if  $xml->getItem("page/prepaid/prepaid_history/@currencysum") and  $xml->getItem("page/prepaid/prepaid_history/@currencysum")  neq (string) '0.00' and  $xml->getItem("page/prepaid/prepaid_history/@currencysum")  neq (string) '-0.00'}}
											<div class="orderdetails_product_summary left_to_pay">
												<label>{{$txt['107633::prepaiddoopl_1']}}
												</label>
												<strong>{{$xml->getItemEscape("page/prepaid/prepaid_history/@currencysum_formatted")}}</strong>
											</div>
										{{/if}}
										{{if  $xml->getItem("page/prepaid/prepaid_history/item[position()=last()]/@first_pay")  == (string) 'false' and ( $xml->getItem("page/prepaid/prepaid_history/item[position() = last()]/@status")  == (string) 'n' or  $xml->getItem("page/prepaid/prepaid_history/@show_payment_button")  == (string) 'true')}}
											{{foreach from=$xml->getList("page/prepaid/prepaid_history/item[position()=last()]") item=loop709}}
												<div class="selected_payment_history">
													{{if  $loop709->getItem("@icon")}}
														<div class="selected_payment_history_icon">
															<img src="{{$loop709->getItemEscape("@icon")}}" alt="{{$loop709->getItemEscape("@payment_name")}}"></img>
														</div>
													{{/if}}
													<div class="selected_payment_history_description">
														{{if  $loop709->getItem("dates/date_canceled/@date")}}
															{{if  $loop709->getItem("amount/@mark") == (string)'negativ'}}
																{{$txt['107633::prepaid0012a123new']}}
															{{else}}
																{{$txt['107633::prepaid0012sf3534new']}}
															{{/if}}
														{{else}}
															{{if  $loop709->getItem("amount/@mark") == (string)'negativ'}}
																{{$txt['107633::prepaid0011a']}}
															{{else}}
																{{$txt['107633::prepaid0011']}}
															{{/if}}
														{{/if}}
														<strong>{{$loop709->getItemEscape("@payment_name")}}</strong>
														{{if  $loop709->getItem("amount/@mark") == (string)'negativ'}}
															{{$txt['107633::prepaid0012a']}}
														{{else}}
															{{$txt['107633::prepaid0012']}}
														{{/if}}
														<br/>
														{{if !( $loop709->getItem("dates/date_canceled/@date"))}}
															{{if  $loop709->getItem("amount/@mark") == (string)'negativ'}}
																{{$txt['107633::prepaid0013a']}}
															{{else}}
																{{$txt['107633::prepaid0013']}}
															{{/if}}
															<strong>{{$loop709->getItemEscape("amount/client_currency/@value_formatted")}}{{$txt['107633::prepaid0014']}}</strong>
														{{/if}}
														<br/>{{$txt['107633::prepaid0017_01']}}
														{{if  $loop709->getItem("/shop/page/prepaid_methods/item")}}
															{{$txt['107633::prepaid0020_01']}}
														{{/if}}
													</div>
												</div>
											{{/foreach}}
										{{/if}}
									</div>
									<iaiajaxend/>
									<div class="prepaid-buttons d-sm-none">
										{{if  $xml->getItem("/shop/page/prepaid/documents/document/@type") == (string)'invoice_proforma' and $prepaidProForma}}
											<a class="btn-icon prepaid-proforma" title="{{$txt['107633::57649_prepaidProForma']}}" href="{{$xml->getItemEscape("/shop/page/prepaid/documents/document[@type='invoice_proforma']/@link")}}">{{$txt['107633::57649_prepaidProForma']}}</a>
										{{/if}}
										{{if  $xml->getItem("page/prepaid/editlink[@active='y']")}}
											<a class="btn-icon prepaid-edit" title="{{$txt['107633::prepaid172edit']}}" href="{{$xml->getItemEscape("page/prepaid/editlink/@link")}}">{{$txt['107633::prepaid064edit']}}</a>
										{{/if}}
										{{if  $xml->getItem("/shop/page/prepaid/opinions_forms/trusted_shops/raiting_action")}}
											<a class="btn-icon prepaid-opinions" target="_blank" title="{{$txt['107633::prepaid064_tr']}}" href="{{$xml->getItemEscape("/shop/page/prepaid/opinions_forms/trusted_shops/raiting_action")}}">{{$txt['107633::prepaid064_tr2']}}</a>
										{{/if}}
										{{if  $xml->getItem("page/prepaid/confirmlink/@link")}}
											<a class="btn-icon prepaid-resend" title="{{$txt['107633::prepaid172']}}" href="{{$xml->getItemEscape("page/prepaid/confirmlink/@link")}}">{{$txt['107633::prepaid064']}}</a>
										{{/if}}
										{{if ( $xml->getItem("page/prepaid/cancellink/@active") == (string)'y') and !( $xml->getItem("page/prepaid/order/@payment_paid"))}}
											<a class="btn-icon prepaid-cancel orderdetails_info_cancel" onclick="return confirm('{{$txt['107633::prepaid170']}}')" title="{{$txt['107633::prepaid171']}}" href="{{$xml->getItemEscape("page/prepaid/cancellink/@link")}}">{{$txt['107633::prepaid063']}}</a>
										{{/if}}
									</div>
								</div>
								{{capture name="prepaid_advance_text" assign="prepaid_advance_text"}}
									{{$txt['107633::6436345_prepaidadvance']}}
								{{/capture}}
								{{capture name="prepaid_advance_button_text" assign="prepaid_advance_button_text"}}
									{{$txt['107633::6346343_prepaid_advance_button']}}
								{{/capture}}
							</div>
						{{/if}}
						<script>
            var orderID = '{{$xml->getItem("/shop/page/prepaid/details/@id")}}';
            var orderKey = '{{$xml->getItem("/shop/page/prepaid/payback/@key")}}';
            var orderFirstPay = '';
            {{if  $xml->getItem("page/prepaid/prepaid_history/item[position()=last()]/@first_pay")  == (string) 'true'}}{{if  $xml->getItem("page/prepaid/prepaid_history/item[position()=last()]/@pay_link")}}
                    orderFirstPay = '{{$xml->getItem("page/prepaid/prepaid_history/item[position()=last()]/@pay_link")}}{{literal}}&#160;ajax=true{{/literal}}';
                {{/if}}{{/if}}						</script>

						<div style="display:none">
							{{foreach from=$xml->getList("/shop/page/payments_static/*") item=loop815}}
								<div data-altid="orderdetails_payments_payment_card" class="embeded_card_form_{{$loop815->getItemEscape("@id")}}">
									<div class="payment_card_sub">
										<div class="payment_card_info_new" data-altid="payment_card_info_new">{{$txt['107633::payment_card_info_new']}}
										</div>
										{{if  $loop815->getItem("payform/headermessage") or  $loop815->getItem("payform/headerlogo")}}
											<div class="payment_head_info" style="display: none;">
												{{if  $loop815->getItem("payform/headermessage")}}
													<div class="payment_headermessage">{{$loop815->getItem("payform/headermessage")}}
													</div>
												{{/if}}
												{{if  $loop815->getItem("payform/headerlogo")}}
													<div class="payment_headerlogo">
														<img src="{{$loop815->getItemEscape("payform/headerlogo")}}"></img>
													</div>
												{{/if}}
											</div>
										{{/if}}
										<form class="payment_card clearfix" action="{{$loop815->getItemEscape("payform/@action")}}" method="{{$loop815->getItemEscape("payform/@method")}}">
											{{foreach from=$loop815->getList("payform/item") item=loop842}}
												{{if  $loop842->getItem("@name")  == (string) 'creditCard[system]'}}
													<div class="payment_card_formel cc_wrapper">
														<label for="credit_card_system" class="card_type_label">{{$txt['107633::payment_card_formlab1']}}
														</label>
														<div class="clear_data" data-altid="credit_card_system">
															{{foreach from=$loop842->getList("option") item=loop848}}
																<label class="card-icon" id="card_icon_{{$loop848->getItemEscape("@value")}}">
																	<input type="radio" class="validate required" data-serialize="#dialog_wrapper #credit_card_system input" value="{{$loop848->getItemEscape("@value")}}" name="{{$loop848->getItemEscape("../@name")}}" {{if $loop848->getItem("@name") neq (string) ''}} data-name="{{$loop848->getItemEscape("@name")}}" {{/if}}{{if $loop848->getItem("@altName") neq (string) ''}} data-altName="{{$loop848->getItemEscape("@altName")}}" {{/if}}></input>
																	<div>
																		<img src="{{$loop848->getItemEscape("@data-img")}}" alt="{{$loop848->getItemEscape("@label")}}"></img>
																		<span>{{$loop848->getItemEscape("@label")}}</span>
																	</div>
																</label>
															{{/foreach}}
														</div>
													</div>
												{{elseif  $loop842->getItem("@name")  == (string) 'creditCard[number]'}}
													<div class="form-group row clearfix">
														<div class="col-12">
															<label for="credit_card_number" class="control-label">{{$txt['107633::payment_card_formlab2']}}
															</label>
														</div>
														<div class="has-feedback col-12 has-required">
															<input type="text" data-altid="credit_card_number" class="form-control validate" data-serialize="#dialog_wrapper #credit_card_number" name="{{$loop842->getItemEscape("@name")}}" {{if $loop842->getItem("@value") neq (string) ''}} value="{{$loop842->getItemEscape("@value")}}" {{/if}}{{if $loop842->getItem("@name") neq (string) ''}} data-name="{{$loop842->getItemEscape("@name")}}" {{/if}}{{if $loop842->getItem("@altName") neq (string) ''}} data-altName="{{$loop842->getItemEscape("@altName")}}" {{/if}}></input>
															<span class="form-control-feedback"></span>
														</div>
													</div>
												{{elseif  $loop842->getItem("@name")  == (string) 'creditCard[endDateMonth]'}}
													{{literal}}
													<div class="row" >{{/literal}}
														<div class="form-group date_select col-7 col-sm-8">
															<div class="row clearfix">
																<div class="col-12">
																	<label for="credit_card_month" class="control-label">{{$txt['107633::payment_card_formlab3']}}
																	</label>
																</div>
																<div class="col-12">
																	<input type="text" data-altid="credit_card_month" class="form-control" data-serialize="#dialog_wrapper #credit_card_month, #dialog_wrapper #credit_card_year" name="{{$loop842->getItemEscape("@name")}}" {{if $loop842->getItem("@value") neq (string) ''}} value="{{$loop842->getItemEscape("@value")}}" {{/if}}{{if $loop842->getItem("@name") neq (string) ''}} data-name="{{$loop842->getItemEscape("@name")}}" {{/if}}{{if $loop842->getItem("@altName") neq (string) ''}} data-altName="{{$loop842->getItemEscape("@altName")}}" {{/if}}></input>
																	{{if  $loop842->getItem("../item[@name = 'creditCard[endDateYear]']/@name")}}
																		<span class="payment_card_expire">{{$txt['107633::payment_card_expireslash']}}</span>
																		<input type="text" data-altid="credit_card_year" class="form-control" data-serialize="#dialog_wrapper #credit_card_month, #dialog_wrapper #credit_card_year" name="{{$loop842->getItemEscape("../item[@name = 'creditCard[endDateYear]']/@name")}}" value="{{$loop842->getItemEscape("../item[@name = 'creditCard[endDateYear]']/@value")}}" {{if $loop842->getItem("@name") neq (string) ''}} data-name="{{$loop842->getItemEscape("../item[@name = 'creditCard[endDateYear]']/@name")}}" {{/if}}{{if $loop842->getItem("../item[@name = 'creditCard[endDateYear]']/@altName") neq (string) ''}} data-altName="{{$loop842->getItemEscape("../item[@name = 'creditCard[endDateYear]']/@altName")}}" {{/if}}></input>
																	{{/if}}
																</div>
															</div>
														</div>
													{{elseif  $loop842->getItem("@name")  == (string) 'creditCard[securityCode]'}}
														<div class="form-group security_code col-5 col-sm-4">
															<div class="row clearfix">
																<div class="col-12">
																	<label for="credit_card_code" class="control-label">{{$txt['107633::payment_card_formlab4']}}
																	</label>
																</div>
																<div class="has-feedback col-12 has-required">
																	<input type="text" data-altid="credit_card_code" class="form-control validate" data-serialize="#dialog_wrapper #credit_card_code" name="{{$loop842->getItemEscape("@name")}}" {{if $loop842->getItem("@value") neq (string) ''}} value="{{$loop842->getItemEscape("@value")}}" {{/if}}{{if $loop842->getItem("@name") neq (string) ''}} data-name="{{$loop842->getItemEscape("@name")}}" {{/if}}{{if $loop842->getItem("@altName") neq (string) ''}} data-altName="{{$loop842->getItemEscape("@altName")}}" {{/if}}></input>
																	<span class="form-control-feedback"></span>
																</div>
															</div>
														</div>{{literal}}
													</div>{{/literal}}
												{{elseif  $loop842->getItem("@name")  == (string) 'creditCard[name]'}}
													<div class="form-group row clearfix">
														<div class="col-12">
															<label for="credit_card_name" class="control-label">{{$txt['107633::payment_card_formlab5']}}
															</label>
														</div>
														<div class="has-feedback col-12 has-required">
															<input type="text" data-altid="credit_card_name" class="form-control validate" data-serialize="#dialog_wrapper #credit_card_name" name="{{$loop842->getItemEscape("@name")}}" {{if $loop842->getItem("@value") neq (string) ''}} value="{{$loop842->getItemEscape("@value")}}" {{/if}}{{if $loop842->getItem("@name") neq (string) ''}} data-name="{{$loop842->getItemEscape("@name")}}" {{/if}}{{if $loop842->getItem("@altName") neq (string) ''}} data-altName="{{$loop842->getItemEscape("@altName")}}" {{/if}}></input>
															<span class="form-control-feedback"></span>
														</div>
													</div>
												{{elseif  $loop842->getItem("@name")  == (string) 'payment'}}
													<input data-altid="credit_card_payment" type="hidden" name="{{$loop842->getItemEscape("@name")}}" {{if $loop842->getItem("@value") neq (string) ''}} value="{{$loop842->getItemEscape("@value")}}" {{/if}}{{if $loop842->getItem("@name") neq (string) ''}} data-name="{{$loop842->getItemEscape("@name")}}" {{/if}}{{if $loop842->getItem("@altName") neq (string) ''}} data-altName="{{$loop842->getItemEscape("@altName")}}" {{/if}}></input>
												{{elseif  $loop842->getItem("@name")  == (string) 'payformid'}}
													<input data-altid="credit_card_payformid" type="hidden" name="{{$loop842->getItemEscape("@name")}}" {{if $loop842->getItem("@value") neq (string) ''}} value="{{$loop842->getItemEscape("@value")}}" {{/if}}{{if $loop842->getItem("@name") neq (string) ''}} data-name="{{$loop842->getItemEscape("@name")}}" {{/if}}{{if $loop842->getItem("@altName") neq (string) ''}} data-altName="{{$loop842->getItemEscape("@altName")}}" {{/if}}></input>
												{{elseif  $loop842->getItem("@type")  == (string) 'hidden'}}
													<input type="hidden" name="{{$loop842->getItemEscape("@name")}}" {{if $loop842->getItem("@value") neq (string) ''}} value="{{$loop842->getItemEscape("@value")}}" {{/if}}></input>
												{{/if}}
											{{/foreach}}
											<div class="clear_data cc_wrapper" data-altid="credit_card_agree">
											</div>
											<div class="credit_card_submit" data-altid="credit_card_submit">
												<button class="credit_card_submit_no_store btn-outline" type="submit" title="{{$txt['107633::credit_card_submittitle_no_store']}}">{{$txt['107633::credit_card_submit_no_store_txt']}}
												</button>
												<button class="credit_card_submit_store btn-large" type="submit" title="{{$txt['107633::credit_card_submittitle_store']}}">{{$txt['107633::credit_card_submit_store_txt']}}
												</button>
											</div>
											<div class="clear_data cc_wrapper" data-altid="credit_card_buttons">
											</div>
											<div class="row">
												<div class="credit_card_pci_dss col-12">
													<span class="pci_dss_label">{{$txt['107633::pci_dss_label']}}</span>
													<span class="pci_dss_icon_container">
														<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/pci_css_logo.png?r=1570606968" alt="PCI DSS Compilant"/></span>
												</div>
											</div>
										</form>
									</div>
								</div>
							{{/foreach}}
						</div>
						{{if  $xml->getItem("/shop/page/prepaid_methods/item[@id = '190']")}}
							<div id="giftcard_data" class="giftcard_form_wrapp" style="display: none;">
								<form class="giftcard_form" id="giftcard_form" data-action="/order-newpayment.php?order={{$xml->getItemEscape("/shop/page/prepaid/details/@id")}}" {{if $xml->getItem("/shop/page/prepaid/details/@paymentlink")}} data-action="{{$xml->getItemEscape("/shop/page/prepaid/details/@paymentlink")}}" {{/if}} action="/order-newpayment.php?order={{$xml->getItemEscape("/shop/page/prepaid/details/@id")}}" {{if $xml->getItem("/shop/page/prepaid/details/@paymentlink")}} action="{{$xml->getItemEscape("/shop/page/prepaid/details/@paymentlink")}}" {{/if}}>
									<input name="payform_id" type="checkbox" checked="checked" class="orderdetails_radio" value="190" id="payform_190"/>
									<p>{{$txt['107633::53687_018_gc2']}}
									</p>
									<div class="giftcard_inputs">
										<div class="form-group row">
											<div class="col-12">
												<label class="control-label">{{$txt['107633::53687_018_gc3']}}
												</label>
											</div>
											<div class="has-feedback col-12 has-required">
												<input class="form-control" value="" name="voucher_id" type="text" placeholder="{{$txt['107633::53687_018_gc3a']}}"></input>
												<span class="form-control-feedback"></span>
											</div>
										</div>
										<div class="form-group row">
											<div class="col-12">
												<label class="control-label">{{$txt['107633::53687_018_gc4']}}
												</label>
											</div>
											<div class="has-feedback col-12 has-required">
												<input class="form-control" value="" name="pin_value" type="password" placeholder="{{$txt['107633::53687_018_gc4a']}}"></input>
												<span class="form-control-feedback"></span>
											</div>
										</div>
									</div>
									<button class="btn-large">{{$txt['107633::53687_018_gc5']}}
									</button>
								</form>
							</div>
						{{/if}}
						{{if  $xml->getItem("/shop/page/prepaid_methods/item[@id = '2']")}}
							<div id="voucher_data" class="voucher_form_wrapp" style="display: none;">
								<form class="giftcard_form" id="voucher_form" data-action="/order-newpayment.php?order={{$xml->getItemEscape("/shop/page/prepaid/details/@id")}}" {{if $xml->getItem("/shop/page/prepaid/details/@paymentlink")}} data-action="{{$xml->getItemEscape("/shop/page/prepaid/details/@paymentlink")}}" {{/if}} action="/order-newpayment.php?order={{$xml->getItemEscape("/shop/page/prepaid/details/@id")}}" {{if $xml->getItem("/shop/page/prepaid/details/@paymentlink")}} action="{{$xml->getItemEscape("/shop/page/prepaid/details/@paymentlink")}}" {{/if}}>
									<input name="payform_id" type="checkbox" checked="checked" class="orderdetails_radio" value="2" id="payform_2"/>
									<p>{{$txt['107633::53687_018_vouc2']}}
									</p>
									<div class="giftcard_inputs">
										<div class="form-group row">
											<div class="col-12">
												<label for="prepaid_voucher" class="control-label">{{$txt['107633::474574_prepaid_voucher']}}
												</label>
											</div>
											<div class="has-feedback col-12 has-required">
												<input class="form-control" name="voucher_id" type="text" minlength="10"/>
												<span class="form-control-feedback"></span>
											</div>
										</div>
									</div>
									<button class="btn-large">{{$txt['107633::53687_018_gc5_voucher']}}
									</button>
									<small>{{$txt['107633::654645_voucher_info2']}}</small>
								</form>
							</div>
						{{/if}}
						<div id="alert_cover" class="projector_alert_55916" style="display:none" onclick="Alertek.hide_alert();">
						</div>
						{{if  $xml->getItem("/shop/page/prepaid_methods/@extended_js")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/prepaid_methods/@internal_blik")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/prepaid/onside_terms[@active='y']")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/prepaid/editlink[@active='y']")}}
						{{/if}}
						{{if  $xml->getItem("page/prepaid/details/@paymentstatus")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/payments_static/embeded_card_form")}}
						{{/if}}
						<!--Prepaid - płtności i dostawa (lista) (prepaid_payment_and_delivery_list, 107679.1)-->
						<div id="prepaid_delivery_list">
							<h2 class="big_label">
								{{if  $xml->getItem("/shop/page/insurance_product")}}
									{{$txt['107679::deliv51066abis']}}
								{{else}}
									{{$txt['107679::53790_001b']}}
								{{/if}}
							</h2>
							<table>
								<tr>
									<th/>
									<th/>
									<th>{{$txt['107679::prepaid018op']}}
									</th>
								</tr>
								<tr>
									<td class="ordered-icon">
										<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/shipping_icon.png?r=1570606968" {{if $xml->getItem("page/shipping/delivery[@checked='true']/@icon")}} src="{{$xml->getItemEscape("page/shipping/delivery[@checked='true']/@icon")}}"{{/if}} alt="{{$xml->getItemEscape("page/shipping/delivery[@checked='true']/@name")}}"></img>
									</td>
									<td class="ordered-name">{{$txt['107679::53790_001dos']}}
										<strong>{{$xml->getItemEscape("page/shipping/delivery[@checked='true']/@name")}}</strong>
										<ul>
											{{if  $xml->getItem("page/prepaid/details/@select_date_additional")  neq (string) ''}}
												<li>
													<strong>{{$txt['107679::prepaid_date_comment']}}</strong>{{$xml->getItemEscape("page/prepaid/details/@select_date_additional")}}
												</li>
											{{/if}}
											{{if  $xml->getItem("page/prepaid/details[@delivery='true']")}}
												<li>
													<strong>{{$txt['107679::prepaid016']}}</strong>
													{{if !( $xml->getItem("page/prepaid/details/@cancelationpath")) and !( $xml->getItem("page/prepaid/details/@cancelable")  == (string) 'yes')}}
														{{$xml->getItemEscape("page/prepaid/details/@dispatchid")}}
													{{else}}
														-
													{{/if}}
												</li>
												{{if  $xml->getItem("page/prepaid/details/@link_tracking")  neq (string) ''}}
													<li>
														<strong>{{$txt['107679::prepaid017']}}</strong>
														<a target="_blank" href="{{$xml->getItemEscape("page/prepaid/details/@link_tracking")}}">{{$txt['107679::prepaid018']}}</a>
													</li>
												{{/if}}
											{{/if}}
											{{if  $xml->getItem("page/prepaid/dispatch/@date_sent")  neq (string) ''}}
												{{if  $xml->getItem("page/prepaid/details/@deliveryid")  == (string) '0'}}
													<li>
														<strong>{{$txt['107679::prepaid023M']}}</strong>{{$xml->getItemEscape("page/prepaid/dispatch/@date_sent")}}
													</li>
												{{else}}
													<li>
														<strong>{{$txt['107679::prepaid022M']}}</strong>{{$xml->getItemEscape("page/prepaid/dispatch/@date_sent")}}
													</li>
													{{if  $xml->getItem("page/prepaid/dispatch/@date_delivery")}}
														<li>
															<strong>{{$txt['107679::prepaid022']}}</strong>{{$xml->getItemEscape("page/prepaid/dispatch/@date_delivery")}}
															{{if  $xml->getItem("page/prepaid/dispatch/@delivery_range")  neq (string) ''}}
																{{$txt['107679::prepaid022N']}}{{$xml->getItemEscape("page/prepaid/dispatch/@delivery_range")}}
															{{/if}}
														</li>
													{{/if}}
												{{/if}}
											{{/if}}
											{{if  $xml->getItem("page/prepaid/details/@select_date")  neq (string) ''}}
												<li>
													<strong>
														{{if  $xml->getItem("page/stock")}}
															{{$txt['107679::prepaid_date_stock']}}
														{{else}}
															{{$txt['107679::prepaid_date_notstock']}}
														{{/if}}
														</strong>{{$xml->getItemEscape("page/prepaid/details/@select_date")}}
												</li>
											{{/if}}
										</ul>
									</td>
									<td class="ordered-price">
										{{if  $xml->getItem("page/shipping/@hide_cost") == (string)'true'}}
										{{elseif  $xml->getItem("page/shipping/delivery[@checked='true']/@points_cost")  gt (string) 0}}
											<span>{{$xml->getItemEscape("page/shipping/delivery[@checked='true']/@points_cost")}}{{$txt['107679::53790_001pkt']}}</span>
										{{elseif  $xml->getItem("page/shipping/delivery[@checked='true']/@cost")  gt (string) 0}}
											<span>{{$xml->getItemEscape("page/shipping/delivery[@checked='true']/@currencycost_formatted")}}</span>
										{{elseif  $xml->getItem("page/shipping/delivery[@checked='true']/@cost")  == (string) 0}}
											{{$txt['107679::prepaid018del']}}
										{{/if}}
									</td>
								</tr>
								{{if  $xml->getItem("/shop/page/prepaid/prepaid_history/item/@status")  == (string) 'n'}}
									{{foreach from=$xml->getList("/shop/page/prepaid/prepaid_history/item[@status = 'n']") item=loop1233}}
										<tr class="payment_form_item">
											<td class="ordered-icon">
												<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/prepaid_method_icon.png?r=1570606968" {{if $loop1233->getItem("@icon")}} src="{{$loop1233->getItemEscape("@icon")}}" {{/if}} alt="{{$loop1233->getItemEscape("@payment_name")}}"></img>
											</td>
											<td class="ordered-name">{{$txt['107679::53790_001frm']}}
												<strong>{{$loop1233->getItemEscape("@payment_name")}}</strong>
											</td>
											<td>
												{{if  $loop1233->getItem("amount/order_currency/@payform_cost")  gt (string) 0}}
													<span>{{$loop1233->getItemEscape("amount/order_currency/@payform_cost_formatted")}}
														{{if !( $loop1233->getItem("amount/client_currency/@currencysign")  == (string)  $loop1233->getItem("amount/order_currency/@currencysign"))}}
															<small>{{$txt['107679::prepaid_1002']}}{{$loop1233->getItemEscape("amount/client_currency/@payform_cost_formatted")}}{{$txt['107679::prepaid_10003']}}</small>
														{{/if}}
														</span>
												{{/if}}
											</td>
										</tr>
									{{/foreach}}
								{{elseif !(!( $xml->getItem("page/prepaid_methods/item[@checked='true']")) and !( $xml->getItem("page/prepaid/details/@paymentstatus")  == (string) 'g') and !( $xml->getItem("page/prepaid/details/@paymentstatus")  == (string) 'tc'))}}
									<tr>
										<td class="ordered-icon">
											<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/prepaid_method_icon.png?r=1570606968" {{if $xml->getItem("/shop/page/prepaid/prepaid_history/item[position() = last()]/@icon") and !( $xml->getItem("page/prepaid/details/@paymentstatus") == (string) 'g')}} src="{{$xml->getItemEscape("/shop/page/prepaid/prepaid_history/item[position() = last()]/@icon")}}" {{/if}} alt="{{$xml->getItemEscape("page/prepaid_methods/item[@checked='true']/@name")}}"></img>
										</td>
										<td class="ordered-name">{{$txt['107679::53790_001frm']}}
											<strong>
												{{if  $xml->getItem("page/prepaid/details/@paymentstatus")  == (string) 'g'}}
													{{$txt['107679::prepaid018N']}}
												{{elseif  $xml->getItem("page/prepaid/details/@paymentstatus")  == (string) 'tc'}}
													{{$txt['107679::prepaid018kredyt']}}
												{{else}}
													{{$xml->getItemEscape("page/prepaid_methods/item[@checked='true']/@name")}}
												{{/if}}
												</strong>
											{{capture name="delivery_id" assign="delivery_id"}}
												{{$xml->getItemEscape("/shop/page/shipping/delivery/@id")}}
											{{/capture}}
											{{if ($delivery_id == (string)'0-1'                                                         or $delivery_id  == (string) '77-1'                                                         or $delivery_id  == (string) '89-1'                                                         or $delivery_id  == (string) '90-1'                                                         or $delivery_id  == (string) '100023-1'                                                         or $delivery_id  == (string) '100075-1'                                                         or $delivery_id  == (string) '100149-1'                                                         or $delivery_id  == (string) '100148-1'                                                         or $delivery_id  == (string) '100150-1'                                                         or $delivery_id  == (string) '100153-1'                                                         or $delivery_id  == (string) '100061-1'                                                         or $delivery_id  == (string) '100063-1'                                                         or $delivery_id  == (string) '100041-1'                                                         or $delivery_id  == (string) '76-1'                                                         or $delivery_id  == (string) '38-1'                                                         or ( $xml->getItem("substring-before($delivery_id, '-')")  gt (string) 100100 and  $xml->getItem("substring-after($delivery_id, '-')")  == (string) '1') ) and  $xml->getItem("page/stock/@stock_id")}}
												<ul>
													<li>{{$txt['107679::order2_info_deliverymethod_dvpz2']}}
													</li>
												</ul>
											{{elseif  $xml->getItem("page/prepaid/details/@paymentstatus")  == (string) 'g'}}
												<ul>
													<li>{{$txt['107679::prepaid018a']}}
													</li>
												</ul>
											{{elseif  $xml->getItem("page/prepaid/details/@paymentstatus")  == (string) 'tc'}}
											{{/if}}
										</td>
										<td class="ordered-price">
											{{if  $xml->getItem("/shop/page/shipping/delivery/@id") == (string)'0-1' and  $xml->getItem("page/stock/@stock_id")}}
											{{elseif  $xml->getItem("page/prepaid/details/@paymentstatus")  == (string) 'g'}}
											{{elseif  $xml->getItem("page/prepaid/details/@paymentstatus")  == (string) 'tc'}}
											{{else}}
												{{if  $xml->getItem("page/prepaid/details/@currencycost")  gt (string) 0}}
													<span>{{$xml->getItemEscape("page/prepaid/details/@currency_payform_cost_formatted")}}</span>
												{{/if}}
											{{/if}}
										</td>
									</tr>
								{{/if}}
								{{if  $xml->getItem("/shop/page/insurance_product")}}
									<tr>
										<td class="ordered-icon">
											<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/insurance_icon.png?r=1570606968" alt="insurance_icon"/>
										</td>
										<td class="ordered-name">{{$txt['107679::53790_001ts']}}
											<strong>{{$xml->getItemEscape("/shop/page/insurance_product/@service")}}</strong>
											<ul>
												<li>
													{{if  $xml->getItem("/shop/page/insurance_product/@status")  == (string) 'unconfirmed'}}
														{{$txt['107679::53790_001stat']}}
													{{elseif  $xml->getItem("/shop/page/insurance_product/@status")  == (string) 'confirmed'}}
														{{$txt['107679::53790_001stat1']}}
													{{/if}}
												</li>
											</ul>
										</td>
										<td class="ordered-price">
											{{if  $xml->getItem("/shop/page/insurance_product/@price_gross")  gt (string) 0}}
												<span>
													{{if $signbeforeprice  == (string) 'true'}}
														{{$xml->getItemEscape("/shop/page/insurance_product/@currency")}}{{$signbetweenpricecurrency}}
													{{/if}}
													{{$xml->getItemEscape("/shop/page/insurance_product/@price_gross")}}
													{{if $signbeforeprice  == (string) 'false'}}
														{{$signbetweenpricecurrency}}{{$xml->getItemEscape("/shop/page/insurance_product/@currency")}}
													{{/if}}
													</span>
											{{/if}}
										</td>
									</tr>
								{{/if}}
								<tr style="display:none" id="prepaid_item_copy">
									<td class="ordered-icon">
										<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/prepaid_method_icon.png?r=1570606968" alt="."></img>
									</td>
									<td class="ordered-name">{{$txt['107679::53790_001frm']}}
										<strong/>
									</td>
									<td class="ordered-price">
										{{if  $xml->getItem("amount/order_currency/@payform_cost")  gt (string) 0}}
											<span></span>
										{{/if}}
									</td>
								</tr>
							</table>
						</div>
						<!--Lista zamówionych produktów (prepaid_order_products, 107682.1)-->
						{{if  $xml->getItem("page/ordered_products/product")}}
							{{capture name="setIconLarge" assign="setIconLarge"}}
								{{$txt['107682::57664_setIconLarge']}}
							{{/capture}}
							<div id="prepaid_order_products">
								<h2 class="big_label">{{$txt['107682::53790_001b']}}
								</h2>
								<table class="ui-responsive table-stroke ui-table ui-table-reflow">
									<thead>
										<tr>
											<th/>
											<th/>
											{{if !( $xml->getItem("page/ordered_products/product/@size_id")  == (string) 'uniw')}}
												<th>{{$txt['107682::50001_004']}}
												</th>
											{{/if}}
											{{if  $xml->getItem("/shop/page/ordered_products/product[not(@code = '')]")}}
												<th>{{$txt['107682::50001_99']}}
												</th>
											{{/if}}
											<th>{{$txt['107682::n56465_099b']}}
											</th>
											<th>{{$txt['107682::n56465_099_pkt']}}
											</th>
										</tr>
									</thead>
									<tbody>
										{{foreach from=$xml->getList("page/ordered_products/product") item=loop1395}}
											<tr>
												<td class="ordered-icon">
													{{if  $loop1395->getItem("@link")}}
														<a href="{{$loop1395->getItemEscape("@link")}}">
															{{if $setIconLarge}}
																<img src="{{$loop1395->getItemEscape("icon")}}" alt="{{$loop1395->getItemEscape("@name")}}"></img>
															{{else}}
																<img src="{{$loop1395->getItemEscape("iconsmall")}}" alt="{{$loop1395->getItemEscape("@name")}}"></img>
															{{/if}}
															</a>
													{{else}}
														{{if $setIconLarge}}
															<img src="{{$loop1395->getItemEscape("icon")}}" alt="{{$loop1395->getItemEscape("@name")}}"></img>
														{{else}}
															<img src="{{$loop1395->getItemEscape("iconsmall")}}" alt="{{$loop1395->getItemEscape("@name")}}"></img>
														{{/if}}
													{{/if}}
												</td>
												<td class="ordered-name">
													{{if  $loop1395->getItem("@link")}}
														<a href="{{$loop1395->getItemEscape("@link")}}" title="{{$loop1395->getItemEscape("@name")}}">{{$loop1395->getItemEscape("@name")}}</a>
													{{else}}
														<span>{{$loop1395->getItemEscape("@name")}}</span>
													{{/if}}
													{{if  $loop1395->getItem("priceformula/parameters")}}
														<ul>
															{{foreach from=$loop1395->getList("priceformula/parameters/parameter") item=loop1442}}
																<li class="orderdetails_priceformula">
																	<b>{{$loop1442->getItemEscape("name")}}:</b>{{$loop1442->getItemEscape("values/value")}}
																</li>
															{{/foreach}}
														</ul>
													{{/if}}
													{{if  $loop1395->getItem("version") or  $loop1395->getItem("serial_number")}}
														<ul>
															{{if  $loop1395->getItem("version")}}
																<li>
																	<b>{{$loop1395->getItemEscape("version/@name")}}:</b>{{$loop1395->getItemEscape("version/@product_name")}}
																</li>
															{{/if}}
															{{if  $loop1395->getItem("serial_number")}}
																<li>
																	{{if count( $loop1395->getList("serial_number/number"))  == (string) 1}}
																		<b>{{$txt['107682::50001_99num']}}</b>
																	{{else}}
																		<b>{{$txt['107682::50001_99num2']}}</b>
																	{{/if}}
																	{{foreach from=$loop1395->getList("serial_number/number") item=loop1466}}
																		{{$loop1466->getItemEscape("@value")}}
																		{{if !( $loop1466@iteration  == (string) $loop1466@total )}}
																			{{$txt['107682::50001_99prz']}}
																		{{/if}}
																	{{/foreach}}
																</li>
															{{/if}}
														</ul>
													{{/if}}
													{{if  $loop1395->getItem("@product_type")  == (string) 'product_bundle'}}
														<div class="ordered-product_bundle">
															<label>{{$txt['107682::50001_z001']}}
															</label>
															<ul>
																{{foreach from=$loop1395->getList("bundled/product") item=loop1482}}
																	<li>
																		{{if  $loop1482->getItem("@quantity")  gt (string) 1}}
																			{{$loop1482->getItemEscape("@quantity")}}x
																		{{/if}}
																		{{$loop1482->getItemEscape("@name")}}
																		{{if !( $loop1482->getItem("@size_id")  == (string) 'uniw') or (( $loop1482->getItem("version")) and (!( $loop1482->getItem("version/@product_name") == (string)'')))}}
																			{{$txt['107682::50001_z002']}}
																			{{if !( $loop1482->getItem("@size_id")  == (string) 'uniw')}}
																				{{$txt['107682::50001_004']}}:
																				<b>{{$loop1482->getItemEscape("@size_desc")}}</b>
																			{{/if}}
																			{{if !( $loop1482->getItem("@size_id")  == (string) 'uniw') and (( $loop1482->getItem("version")) and (!( $loop1482->getItem("version/@product_name") == (string)'')))}}
																				{{$txt['107682::50001_z003']}}
																			{{/if}}
																			{{if ( $loop1482->getItem("version")) and (!( $loop1482->getItem("version/@product_name") == (string)''))}}
																				{{$loop1482->getItemEscape("version/@name")}}:
																				<b>{{$loop1482->getItemEscape("version/@product_name")}}</b>
																			{{/if}}
																			{{$txt['107682::50001_z004']}}
																		{{/if}}
																	</li>
																{{/foreach}}
															</ul>
														</div>
													{{/if}}
													{{if  $loop1395->getItem("order_files/file")}}
														<div class="ordered-files">
															<label>{{$txt['107682::51000_f_01']}}
															</label>
															<ul>
																{{foreach from=$loop1395->getList("order_files/file") item=loop1513}}
																	<li>
																		<span>{{$loop1513->getItemEscape("@file")}}</span>
																		{{if  $loop1513->getItem("@path")}}
																			{{$txt['107682::order2_change_delivery_left']}}
																			<a href="{{$loop1513->getItemEscape("@path")}}" {{if $loop1513->getItem("@preview") == (string) 'true'}} data-imagelightbox="f" {{else}} target="_blank" {{/if}}>{{$txt['107682::51000_f_02']}}</a>{{$txt['107682::order2_change_delivery_right']}}
																		{{/if}}
																	</li>
																{{/foreach}}
															</ul>
														</div>
													{{/if}}
													{{if  $loop1395->getItem("@product_type")  == (string) 'product_virtual'}}
														<div class="ordered-info">{{$txt['107682::67199_onlyvirtual_1']}}
															<a href="{{$loop1395->getItemEscape("/shop/action/clientFiles/@url")}}">{{$txt['107682::67199_onlyvirtual_link2']}}</a>{{$txt['107682::67199_onlyvirtual_2']}}
														</div>
													{{/if}}
													{{if !( $loop1395->getItem("/shop/page/ordered_products/product/@size_id")  == (string) 'uniw')}}
														<div class="ordered-size d-sm-none">{{$loop1395->getItemEscape("@size_desc")}}
														</div>
													{{/if}}
													{{if  $loop1395->getItem("/shop/page/ordered_products/product[not(@code = '')]")}}
														<div class="ordered-code d-sm-none">{{$loop1395->getItemEscape("@code")}}
														</div>
													{{/if}}
													<div class="ordered-quantity d-sm-none">{{$loop1395->getItemEscape("@quantity")}}{{literal}}{{/literal}}
														{{if  $loop1395->getItem("@quantity")  gt (string) '1'}}
															{{$loop1395->getItemEscape("@unit")}}
														{{else}}
															{{$loop1395->getItemEscape("@unit_s")}}
														{{/if}}
													</div>
													{{if  $loop1395->getItem("comment")}}
														<div class="ordered-comment">{{$loop1395->getItemEscape("comment")}}
														</div>
													{{/if}}
													<div class="ordered-price d-sm-none">{{$txt['107682::525234_orderedproductsmobile']}}
														<strong>
															{{if  $loop1395->getItem("@quantity")  neq (string) '1'}}
																{{if  $loop1395->getItem("@forpoints") == (string)'true'}}
																	{{$loop1395->getItemEscape("@points_sum")}}{{$txt['107682::53790_901']}}
																{{else}}
																	{{$loop1395->getItemEscape("@bruttoworth_formatted")}}
																{{/if}}
															{{else}}
																{{if  $loop1395->getItem("@gratis") == (string)'y'}}
																	{{$txt['107682::53790_901g']}}
																{{elseif  $loop1395->getItem("@forpoints") == (string)'true'}}
																	{{$loop1395->getItemEscape("@points")}}{{$txt['107682::53790_901']}}
																{{else}}
																	{{$loop1395->getItemEscape("@detalprice_formatted")}}
																{{/if}}
															{{/if}}
															</strong>
													</div>
												</td>
												{{if !( $loop1395->getItem("/shop/page/ordered_products/product/@size_id")  == (string) 'uniw')}}
													<td class="ordered-size d-none d-sm-table-cell">{{$loop1395->getItemEscape("@size_desc")}}
													</td>
												{{/if}}
												{{if  $loop1395->getItem("/shop/page/ordered_products/product[not(@code = '')]")}}
													<td class="ordered-code d-none d-sm-table-cell">{{$loop1395->getItemEscape("@code")}}
													</td>
												{{/if}}
												<td class="ordered-quantity d-none d-sm-table-cell">{{$loop1395->getItemEscape("@quantity")}}{{literal}}{{/literal}}
													{{if  $loop1395->getItem("@quantity")  gt (string) '1'}}
														{{$loop1395->getItemEscape("@unit")}}
													{{else}}
														{{$loop1395->getItemEscape("@unit_s")}}
													{{/if}}
												</td>
												<td class="ordered-price d-none d-sm-table-cell">
													{{if  $loop1395->getItem("@quantity")  neq (string) '1'}}
														{{if  $loop1395->getItem("@forpoints") == (string)'true'}}
															{{$loop1395->getItemEscape("@points_sum")}}{{$txt['107682::53790_901']}}
														{{else}}
															{{$loop1395->getItemEscape("@bruttoworth_formatted")}}
														{{/if}}
													{{else}}
														{{if  $loop1395->getItem("@gratis") == (string)'y'}}
															{{$txt['107682::53790_901g']}}
														{{elseif  $loop1395->getItem("@forpoints") == (string)'true'}}
															{{$loop1395->getItemEscape("@points")}}{{$txt['107682::53790_901']}}
														{{else}}
															{{$loop1395->getItemEscape("@detalprice_formatted")}}
														{{/if}}
													{{/if}}
												</td>
											</tr>
										{{/foreach}}
									</tbody>
								</table>
							</div>
						{{/if}}
						<!--Prepaid summary  (prepaid_summary, 107685.1)-->
						{{if !( $xml->getItem("page/prepaid/details/@paymentstatus")  neq (string) 'g' and  $xml->getItem("/shop/page/prepaid_methods/item") and ( $xml->getItem("page/prepaid/prepaid_history/item[position() = last()]/@status")  == (string) 'n' or  $xml->getItem("page/prepaid/prepaid_history/@show_payment_button")  == (string) 'true'))}}
							<div id="prepaid_summary">
								<div class="basketedit_summary">
									<div class="basketedit_summary_sub">
										<div class="basketedit_summary_left">
											{{if  $xml->getItem("/shop/page/prepaid/points/@display")}}
												<div class="basketedit_summary_debit">{{$txt['107685::basketedit_points_info1']}}
													<b>{{$xml->getItemEscape("/shop/page/prepaid/points/@client_points")}}
														<span>{{$txt['107685::basketedit_points_pts']}}</span></b>{{$txt['107685::basketedit_dot']}}
												</div>
											{{/if}}
											{{if  $xml->getItem("/shop/page/prepaid/insurance_forms/trusted_shops") or  $xml->getItem("/shop/page/prepaid/opinions_forms/trusted_shops/raiting_action")}}
												{{if  $xml->getItem("/shop/page/prepaid/insurance_forms/trusted_shops")}}
													<div id="trusted_shops">
														<div id="trusted_shops_img">
															<form method="post" target="_blank" action="{{$xml->getItemEscape("/shop/page/prepaid/insurance_forms/trusted_shops/icon_form/@action")}}">{{$xml->getItem("/shop/page/prepaid/insurance_forms/trusted_shops/icon_form/hidden_params")}}
																<input type="image" src="{{$xml->getItemEscape("/shop/page/prepaid/insurance_forms/trusted_shops/icon_form/@icon_src")}}" title="{{$xml->getItemEscape("/shop/page/prepaid/insurance_forms/trusted_shops/icon_form/@title")}}"></input>
															</form>
														</div>
														<div id="trusted_shops_info">
															<form method="post" target="_blank" action="{{$xml->getItemEscape("/shop/page/prepaid/insurance_forms/trusted_shops/registration_form/@action")}}">{{$xml->getItem("/shop/page/prepaid/insurance_forms/trusted_shops/registration_form/hidden_params")}}
																<p>{{$xml->getItem("/shop/page/prepaid/insurance_forms/trusted_shops/registration_form/@descryption")}}
																</p>
																<button type="submit">{{$xml->getItem("/shop/page/prepaid/insurance_forms/trusted_shops/registration_form/@button")}}
																</button>
															</form>
														</div>
													</div>
												{{/if}}
											{{/if}}
										</div>
										<div class="basketedit_summary_right">
											<div class="basketedit_calculations">
												<div class="basketedit_product_summary">
													<label>{{$txt['107685::prepaid008w']}}
													</label>
													<strong>{{$xml->getItemEscape("page/prepaid/details/@currencycost_formatted")}}</strong>
												</div>
												{{if  $xml->getItem("page/prepaid/details/@deliveryid")  neq (string) '47'}}
													<div class="basketedit_product_summary">
														<label>{{$txt['107685::prepaid011do']}}
														</label>
														<strong id="additional_cost_prepaid">{{$xml->getItemEscape("page/prepaid/details/@currency_additional_cost_formatted")}}</strong>
													</div>
												{{/if}}
												<div style="clear:both">
												</div>
											</div>
											{{if  $xml->getItem("page/prepaid/details/@deliveryid")  neq (string) '47'}}
												<div class="basketedit_total_summary">
													<label>{{$txt['107685::prepaid011']}}
													</label>
													<strong id="currencytotal_prepaid">{{$xml->getItemEscape("page/prepaid/details/@currencytotal_formatted")}}</strong>
													{{if  $xml->getItem("/shop/page/prepaid/points/@display")}}
														<span>{{$txt['107685::prepaid913plus']}}{{$xml->getItemEscape("/shop/page/prepaid/points/@order_cost")}}{{$txt['107685::50000_004pkt']}}</span>
													{{/if}}
												</div>
											{{/if}}
											{{if ( $xml->getItem("/shop/page/prepaid/details/@advance")  gt (string) 0)}}
												<div class="basketedit_product_summary advance">
													<label class="txt_wrap">{{$txt['107685::60826_advance_a']}}
													</label>
													<strong>{{$xml->getItemEscape("/shop/page/prepaid/details/@advance_formatted")}}</strong>
												</div>
											{{/if}}
										</div>
									</div>
								</div>
							</div>
						{{/if}}
						<!--Szczegóły zamówienia - adres (prepaid_address, 107688.1)-->
						<div id="prepaid_address">
							<div class="n57857_label big_label">
								<span class="n57857_label">{{$txt['107688::n53907_000']}}</span>
							</div>
							<div class="order2_info">
								<div class="order2_info_sub">
									<div class="n57857_item">
										<div class="order2_info_label_sub">
											<h3 class="order2_info1">{{$txt['107688::n53907_001bi']}}
											</h3>
										</div>
										<div class="order2_info1">
											{{if  $xml->getItem("page/client/billing_address/@firm")  neq (string) ''}}
												{{$xml->getItemEscape("page/client/billing_address/@firm")}}
												<br/>
											{{/if}}
											{{if !( $xml->getItem("page/client/billing_address/@firm"))}}
												{{$xml->getItemEscape("page/client/billing_address/@firstname")}}{{literal}}{{/literal}}{{$xml->getItemEscape("page/client/billing_address/@lastname")}}
												<br/>
											{{/if}}
											{{$xml->getItemEscape("page/client/billing_address/@street")}}
											<br/>{{$xml->getItemEscape("page/client/billing_address/@zipcode")}}{{literal}}{{/literal}}{{$xml->getItemEscape("page/client/billing_address/@city")}}{{literal}}{{/literal}}(
											{{if  $xml->getItem("page/client/billing_address/@province")}}
												{{$xml->getItemEscape("page/client/billing_address/@province")}}{{literal}},{{/literal}}
											{{/if}}
											{{$xml->getItemEscape("page/client/billing_address/@country_long")}})
											<br/>
											{{if  $xml->getItem("page/client/billing_address/@nip")  neq (string) ''}}
												{{$txt['107688::n53907_xx00b']}}{{$xml->getItemEscape("page/client/billing_address/@nip")}}
												<br/>
											{{/if}}
											{{if ( $xml->getItem("page/client/@phone1")) and !( $xml->getItem("page/client/@phone1")  == (string) '')}}
												{{$txt['107688::53907_650']}}{{$xml->getItemEscape("page/client/@phone1")}}
												<br/>
											{{/if}}
											{{if ( $xml->getItem("page/client/@email")) and !( $xml->getItem("page/client/@email")  == (string) '')}}
												{{$txt['107688::53907_651']}}{{$xml->getItemEscape("page/client/@email")}}
												<br/>
											{{/if}}
										</div>
									</div>
								</div>
								<div class="order2_info_sub">
									<div class="n57857_item">
										{{if  $xml->getItem("page/stock")}}
											<div class="order2_info_label_sub">
												<h3 class="order2_info1">{{$txt['107688::n53907_001ap']}}
												</h3>
											</div>
											<div class="order2_info1">
												<span class="prepaid_stock_name">{{$xml->getItemEscape("page/stock/@name")}}</span>
												<br/>{{$xml->getItemEscape("page/stock/@street")}}
												<br/>{{$xml->getItemEscape("page/stock/@zipcode")}}{{literal}}{{/literal}}{{$xml->getItemEscape("page/stock/@city")}}{{literal}}{{/literal}}({{$xml->getItemEscape("page/stock/@country")}})
												<br/>
												{{if  $xml->getItem("page/stock/@mail")  neq (string) ''}}
													<span class="prepaid_stock_contact_item">{{$txt['107688::prepaid_stock_contact_mail']}}
														<a href="mailto:{{$xml->getItemEscape("page/stock/@mail")}}">{{$xml->getItemEscape("page/stock/@mail")}}</a></span>
													<br/>
												{{/if}}
												{{if  $xml->getItem("page/stock/@phone")  neq (string) ''}}
													<span class="prepaid_stock_contact_item">{{$txt['107688::prepaid_stock_contact_phone']}}
														<span>{{$xml->getItemEscape("page/stock/@phone")}}</span></span>
													<br/>
												{{/if}}
												{{if  $xml->getItem("page/stock/@fax")  neq (string) ''}}
													<span class="prepaid_stock_contact_item">{{$txt['107688::prepaid_stock_contact_fax']}}
														<span>{{$xml->getItemEscape("page/stock/@fax")}}</span></span>
													<br/>
												{{/if}}
												{{if  $xml->getItem("page/stock/@gg")  neq (string) ''}}
													<span class="prepaid_stock_contact_item">{{$txt['107688::prepaid_stock_contact_gg']}}
														<a href="gg:{{$xml->getItemEscape("page/stock/@gg")}}">{{$xml->getItemEscape("page/stock/@gg")}}</a></span>
													<br/>
												{{/if}}
												{{if  $xml->getItem("page/stock/@skype")  neq (string) ''}}
													<span class="prepaid_stock_contact_item">{{$txt['107688::prepaid_stock_contact_skype']}}
														<a target="_blank" href="callto://{{$xml->getItemEscape("page/stock/@skype")}}">{{$xml->getItemEscape("page/stock/@skype")}}</a></span>
													<br/>
												{{/if}}
												<div class="prepaid_stock_link">
													<a class="prepaid_stock_link" target="_blank" href="{{$xml->getItemEscape("page/stock/@link")}}">{{$txt['107688::prepaid_stock_link_txt']}}</a>
												</div>
											</div>
										{{else}}
											<div class="order2_info_label_sub">
												<h3 class="order2_info1">{{$txt['107688::n53907_001do']}}
												</h3>
											</div>
											<div class="order2_info1">
												{{if  $xml->getItem("page/client/shipping_address/@additional")  neq (string) ''}}
													{{$xml->getItemEscape("page/client/shipping_address/@additional")}}
													<br/>
												{{/if}}
												{{$xml->getItemEscape("page/client/shipping_address/@firstname")}}{{literal}}{{/literal}}{{$xml->getItemEscape("page/client/shipping_address/@lastname")}}
												<br/>{{$xml->getItemEscape("page/client/shipping_address/@street")}}
												<br/>{{$xml->getItemEscape("page/client/shipping_address/@zipcode")}}{{literal}}{{/literal}}{{$xml->getItemEscape("page/client/shipping_address/@city")}}{{literal}}{{/literal}}(
												{{if  $xml->getItem("page/client/shipping_address/@province")}}
													{{$xml->getItemEscape("page/client/shipping_address/@province")}}{{literal}},{{/literal}}
												{{/if}}
												{{$xml->getItemEscape("page/client/shipping_address/@country_long")}})
												<br/>
												{{if ( $xml->getItem("page/client/shipping_address/@phone")) and !( $xml->getItem("page/client/shipping_address/@phone")  == (string) '')}}
													{{$txt['107688::53907_650']}}{{$xml->getItemEscape("page/client/shipping_address/@phone")}}
													<br/>
												{{/if}}
											</div>
										{{/if}}
									</div>
								</div>
								<div class="order2_info_sub">
									<div class="n57857_item">
										<div class="order2_info_label_sub">
											<h3 class="order2_info1">{{$txt['107688::n53907_001kont']}}
											</h3>
										</div>
										<div class="order2_info1">{{$xml->getItemEscape("page/client/shipping_address/@firstname")}}{{literal}}{{/literal}}{{$xml->getItemEscape("page/client/shipping_address/@lastname")}}
											<br/>{{$xml->getItemEscape("page/client/shipping_address/@street")}}
											<br/>{{$xml->getItemEscape("page/client/shipping_address/@zipcode")}}{{literal}}{{/literal}}{{$xml->getItemEscape("page/client/shipping_address/@city")}}(
											{{if  $xml->getItem("page/client/shipping_address/@province")}}
												{{$xml->getItemEscape("page/client/shipping_address/@province")}}{{literal}},{{/literal}}
											{{/if}}
											{{$xml->getItemEscape("page/client/shipping_address/@country_long")}})
											<br/>
											{{if  $xml->getItem("page/client/shipping_address/@phone") and  $xml->getItem("page/client/shipping_address/@phone")  neq (string) ''}}
												{{$txt['107688::53907_650']}}{{$xml->getItemEscape("page/client/shipping_address/@phone")}}
												<br/>
											{{/if}}
										</div>
									</div>
								</div>
							</div>
							{{if  $xml->getItem("page/prepaid/details/@remarks") or  $xml->getItem("page/prepaid/details/@deliverer_note")}}
								<div class="order2_info comments_container">
									<a href="#toggleComments" id="toggle_comments_button">{{$txt['107688::5435324_comments']}}</a>
									<div class="ordered_comments">
										{{if  $xml->getItem("page/prepaid/details/@remarks")}}
											<div class="order2_info_sub">
												<div class="n57857_item">
													<div class="order2_info_label_sub">
														<h3 class="order2_info1">{{$txt['107688::n53907_002']}}
														</h3>
													</div>
													<div class="order2_info1">{{$xml->getItemEscape("page/prepaid/details/@remarks")}}
													</div>
												</div>
											</div>
										{{/if}}
										{{if  $xml->getItem("page/prepaid/details/@deliverer_note")}}
											<div class="order2_info_sub">
												<div class="n57857_item">
													<div class="order2_info_label_sub">
														<h3 class="order2_info1">{{$txt['107688::n53907_002a']}}
														</h3>
													</div>
													<div class="order2_info1">{{$xml->getItemEscape("page/prepaid/details/@deliverer_note")}}
													</div>
												</div>
											</div>
										{{/if}}
									</div>
								</div>
							{{/if}}
						</div>
						<!--Dokumenty do zamówienia (prepaid_documents, 107686.1)-->
						{{if count( $xml->getList("page/prepaid/documents/document"))  gt (string) 0}}
							<div id="ordered_documents" class="order2_info comments_container d-block">
								<a href="#toggleDocuments" id="toggle_documents_button" class="d-sm-none">{{$txt['107686::5435324_documents']}}</a>
								<div class="big_label d-none d-sm-block">{{$txt['107686::5435324_documents']}}
								</div>
								<div class="order2_info_sub ordered_documents" id="order2_info_sub1">
									{{foreach from=$xml->getList("page/prepaid/documents/document") item=loop1878}}
										<div class="n57857_item">
											<div class="order2_info1">
												<li class="n54116_item">
													<a class="n54116_item" target="_blank" title="{{$txt['107686::54116_2']}}" href="{{$loop1878->getItemEscape("@link")}}">{{$loop1878->getItemEscape("@id")}}</a>
												</li>
											</div>
										</div>
									{{/foreach}}
								</div>
							</div>
						{{/if}}
						<!--Formularz płatności (orderdetails_payform, 107692.1)-->
						{{capture name="prepaidzt_txt" assign="prepaidzt_txt"}}
							{{$txt['107692::prepaidrt']}}
						{{/capture}}
						{{capture name="prepaidrt_txt" assign="prepaidrt_txt"}}
							{{$txt['107692::prepaidzt']}}
						{{/capture}}
						{{if ($prepaidrt_txt and  $xml->getItem("/shop/page/prepaid/actions/return/@url")) or ($prepaidzt_txt and  $xml->getItem("/shop/page/prepaid/actions/rma/@url"))}}
							<div class="actions_return_rma row">
								{{if $prepaidrt_txt and  $xml->getItem("/shop/page/prepaid/actions/return/@url")}}
									<div class="actions_return col-12 col-sm-6">
										<div class="actions_return_sub col-12 mb-4">
											<h3>{{$txt['107692::prepalin_001']}}
											</h3>
											<div>
												<img alt="returns" src="/gfx/__IAI_TEMPLATE_LANG_639_1__/returns_action.png?r=1570606968"/>
												<span>{{$txt['107692::prepalin_002']}}</span>
											</div>
											<a class="btn-small" title="{{$txt['107692::prepairtds']}}" href="{{$xml->getItemEscape("/shop/page/prepaid/actions/return/@url")}}">{{$prepaidrt_txt}}</a>
										</div>
									</div>
								{{/if}}
								{{if $prepaidzt_txt and  $xml->getItem("/shop/page/prepaid/actions/rma/@url")}}
									<div class="actions_rma col-12 col-sm-6">
										<div class="actions_rma_sub col-12">
											<h3>{{$txt['107692::prepalin_003']}}
											</h3>
											<div>
												<img alt="rma" src="/gfx/__IAI_TEMPLATE_LANG_639_1__/rma_action.png?r=1570606968"/>
												<span>{{$txt['107692::prepalin_004']}}</span>
											</div>
											<a class="btn-small" title="{{$txt['107692::prepaidztds']}}" href="{{$xml->getItemEscape("/shop/page/prepaid/actions/rma/@url")}}">{{$prepaidzt_txt}}</a>
										</div>
									</div>
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
