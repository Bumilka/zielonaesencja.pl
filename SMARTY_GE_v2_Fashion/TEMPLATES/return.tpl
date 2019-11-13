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
						<!--Komunikaty (return, 67941.2)-->
						{{capture name="error_undefined_ret" assign="error_undefined_ret"}}
							{{$txt['67941::40018_071']}}
						{{/capture}}
						{{capture name="file_upload_invalid_type" assign="file_upload_invalid_type"}}
							{{$txt['67941::w000f01a']}}
						{{/capture}}
						{{capture name="file_upload_invalid_extension" assign="file_upload_invalid_extension"}}
							{{$txt['67941::w000f02a']}}
						{{/capture}}
						{{capture name="file_upload_size_exceeded" assign="file_upload_size_exceeded"}}
							{{$txt['67941::w000f03a']}}
						{{/capture}}
						{{capture name="file_uploaded_remove_fail" assign="file_uploaded_remove_fail"}}
							{{$txt['67941::w000f04a']}}
						{{/capture}}
						{{capture name="auction_shop_bundle_not_exist" assign="auction_shop_bundle_not_exist"}}
							{{$txt['67941::n67953_auction_shop_bundle_not_exist']}}
						{{/capture}}
						{{capture name="token_expired" assign="token_expired"}}
							{{$txt['67941::n67953_token_expired']}}
						{{/capture}}
						{{capture name="too_much_product" assign="too_much_product"}}
							{{$txt['67941::n67953_too_much_product']}}
						{{/capture}}
						{{capture name="not_enough_product" assign="not_enough_product"}}
							{{$txt['67941::n67953_not_enough_product']}}
						{{/capture}}
						{{capture name="too_much_product_size" assign="too_much_product_size"}}
							{{$txt['67941::n67953_too_much_product_size']}}
						{{/capture}}
						{{capture name="not_enough_product_size" assign="not_enough_product_size"}}
							{{$txt['67941::n67953_not_enough_product_size']}}
						{{/capture}}
						{{capture name="return_rebates_code_used" assign="return_rebates_code_used"}}
							{{$txt['67941::n67953_rebates_code_used']}}
						{{/capture}}
						{{capture name="rebates_code_notbegun" assign="rebates_code_notbegun"}}
							{{$txt['67941::w000b']}}
						{{/capture}}
						{{capture name="rebates_code_expired" assign="rebates_code_expired"}}
							{{$txt['67941::w000a']}}
						{{/capture}}
						<div {{assign "idAttributeTmp6" ""}}  class="n54531_outline" {{if $xml->getItem("page/return/@messageType") == (string) 'error'}}{{capture name="idAttributeTmp6" assign="idAttributeTmp6"}}return_error{{/capture}}{{elseif $xml->getItem("page/return/@messageType") == (string) 'message'}}{{capture name="idAttributeTmp6" assign="idAttributeTmp6"}}return_message{{/capture}}{{elseif $xml->getItem("page/return/@messageType") == (string) 'success'}}{{capture name="idAttributeTmp6" assign="idAttributeTmp6"}}return_success{{/capture}}{{elseif $xml->getItem("page/return/@messageType") == (string) 'warning'}}{{capture name="idAttributeTmp6" assign="idAttributeTmp6"}}return_warning{{/capture}}{{/if}}  id="{{$idAttributeTmp6}}">
							<div {{assign "classAttributeTmp3" ""}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}n54531_outline_sub{{/capture}}{{if $xml->getItem("page/return/@messageType") == (string) 'error'}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}n54531_outline_sub menu_messages_error{{/capture}}{{elseif $xml->getItem("page/return/@messageType") == (string) 'message'}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}n54531_outline_sub menu_messages_message{{/capture}}{{elseif $xml->getItem("page/return/@messageType") == (string) 'success'}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}n54531_outline_sub menu_messages_success{{/capture}}{{elseif $xml->getItem("page/return/@messageType") == (string) 'warning'}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}n54531_outline_sub menu_messages_warning{{/capture}}{{/if}} id="return_sub_{{$xml->getItemEscape("page/return/@type")}}"  class="{{$classAttributeTmp3}}">
								{{if  $xml->getItem("page/return/@type") == (string)'rebates_code_notbegun' and $rebates_code_notbegun}}
									<h3 class="return_label">{{$rebates_code_notbegun}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type") == (string)'rebates_code_expired' and $rebates_code_expired}}
									<h3 class="return_label">{{$rebates_code_expired}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type") == (string)'file_upload_invalid_type' and $file_upload_invalid_type}}
									<h3 class="return_label">{{$file_upload_invalid_type}}
										<span class="invalidFileName">{{$xml->getItemEscape("@value")}}</span>{{$txt['67941::w000f01b']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type") == (string)'file_upload_invalid_extension' and $file_upload_invalid_extension}}
									<h3 class="return_label">{{$file_upload_invalid_extension}}
										<span class="invalidFileName">{{$xml->getItemEscape("@value")}}</span>{{$txt['67941::w000f02b']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type") == (string)'file_upload_size_exceeded' and $file_upload_size_exceeded}}
									<h3 class="return_label">{{$file_upload_size_exceeded}}
										<span class="invalidFileName">{{$xml->getItemEscape("@value")}}</span>{{$txt['67941::w000f03b']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type") == (string)'file_uploaded_remove_fail' and $file_uploaded_remove_fail}}
									<h3 class="return_label">{{$file_uploaded_remove_fail}}
										<span class="invalidFileName">{{$xml->getItemEscape("@value")}}</span>
									</h3>
								{{elseif  $xml->getItem("page/return/@type")  == (string) 'opinion_addphotoerror'}}
									<h3 class="return_label">{{$txt['67941::opinion_addphotoerror_1']}}
										{{if  $xml->getItem("page/return/param[@name = 'max_height']") and  $xml->getItem("page/return/param[@name = 'max_width']")}}
											{{$txt['67941::opinion_addphotoerror_2']}}{{$xml->getItem("page/return/param[@name='max_width']/@value")}}{{$txt['67941::opinion_addphotoerror_3']}}{{$xml->getItem("page/return/param[@name='max_height']/@value")}}{{$txt['67941::opinion_addphotoerror_4']}}
										{{/if}}
										{{if  $xml->getItem("page/return/param[@name = 'photo_format']")}}
											{{$txt['67941::opinion_addphotoerror_5']}}{{$xml->getItem("page/return/param[@name='photo_format']/@value")}}{{$txt['67941::opinion_addphotoerror_6']}}
										{{/if}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type") == (string)'token_expired' and $token_expired}}
									<h3 class="return_label">{{$txt['67941::n67953_token_expired']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type") == (string)'too_much_product' and $too_much_product}}
									<h3 class="return_label">{{$too_much_product}}{{$xml->getItemEscape("/shop/page/return/param/@value")}}{{$txt['67941::n67953_too_much_product_a']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type") == (string)'not_enough_product' and $not_enough_product}}
									<h3 class="return_label">{{$not_enough_product}}{{$xml->getItemEscape("/shop/page/return/param/@value")}}{{$txt['67941::n67953_not_enough_product_a']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type") == (string)'too_much_product_size' and $too_much_product_size}}
									<h3 class="return_label">{{$too_much_product_size}}{{$xml->getItemEscape("/shop/page/return/param/@value")}}{{$txt['67941::n67953_too_much_product_size_a']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type") == (string)'not_enough_product_size' and $not_enough_product_size}}
									<h3 class="return_label">{{$not_enough_product_size}}{{$xml->getItemEscape("/shop/page/return/param/@value")}}{{$txt['67941::n67953_not_enough_product_size_a']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type") == (string)'auction_shop_bundle_not_exist' and $auction_shop_bundle_not_exist}}
									<h3 class="return_label">{{$auction_shop_bundle_not_exist}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type")  == (string) 'rma_require_one_order'}}
									<h3 class="return_label">{{$txt['67941::40018_rroo1']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type")  == (string) 'orderedit_dataerror'}}
									<h3 class="return_label">{{$txt['67941::40018_003aa']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type")  == (string) 'order_product_worth'}}
									<h3 class="return_label">{{$txt['67941::40018_001opw']}}{{$xml->getItemEscape("currency/@name")}}{{$txt['67941::40018_002opw']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type") == (string)'order_invalidpoints'}}
									<h3 class="return_label">{{$txt['67941::40018_950orderin']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type") == (string)'openid_login_canceled'}}
									<h3 class="return_label">{{$txt['67941::40018_950openid']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type") == (string)'openid_invalid_authorization'}}
									<h3 class="return_label">{{$txt['67941::w0000']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type")  == (string) 'suggestbody_illegal_urls'}}
									<h3 class="return_label">{{$txt['67941::40018_001urls_000']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type")  == (string) 'account_login_disabled'}}
									<h3 class="return_label">{{$txt['67941::40018_00log_dis_000']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type")  == (string) 'order_notenoughpoints'}}
									<h3 class="return_label">{{$txt['67941::40018_001pts_000']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type")  == (string) 'compare_error_minimum'}}
									<h3 class="return_label">{{$txt['67941::40018_001bb1_001']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type")  == (string) 'questionnaire_error'}}
									<h3 class="return_label">{{$txt['67941::40018_001bb1']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type")  == (string) 'questionnaire_sent'}}
									<h3 class="return_label">{{$txt['67941::40018_001bc2']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type")  == (string) 'polcard_authorized'}}
									<h3 class="return_label">{{$txt['67941::40018_001']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type")  == (string) 'polcard_unauthorized'}}
									<h3 class="return_label">{{$txt['67941::40018_003']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type")  == (string) 'payment_credit_zagiel_error'}}
									<h3 class="return_label">{{$txt['67941::40018_0761']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type")  == (string) 'payment_credit_zagiel_success'}}
									<h3 class="return_label">{{$txt['67941::40018_0741']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type")  == (string) 'polcard_error'}}
									<h3 class="return_label">{{$txt['67941::40018_005']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type")  == (string) 'contactus_sent'}}
									<h3 class="return_label">{{$txt['67941::40018_007']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type")  == (string) 'contactus_error'}}
									<h3 class="return_label">{{$txt['67941::40018_009']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type")  == (string) 'ordercancel_ok'}}
									<h3 class="return_label">{{$txt['67941::40018_011']}}
										{{if  $xml->getItem("page/return/@extra")}}
											{{$xml->getItemEscape("page/return/@extra")}}
										{{/if}}
										{{$txt['67941::40018_012']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type")  == (string) 'returncancel_ok'}}
									<h3 class="return_label">{{$txt['67941::40018_011_zw']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type")  == (string) 'returncancel_error'}}
									<h3 class="return_label">{{$txt['67941::40018_012_zw']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type")  == (string) 'ordercancel_dberror'}}
									<h3 class="return_label">{{$txt['67941::40018_014']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type")  == (string) 'ordercancel_dataerror'}}
									<h3 class="return_label">{{$txt['67941::40018_016']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type")  == (string) 'orderconfirm_ok'}}
									<h3 class="return_label">{{$txt['67941::40018_018']}}
										{{if  $xml->getItem("page/return/@extra")}}
											{{$xml->getItemEscape("page/return/@extra")}}
										{{/if}}
										{{$txt['67941::40018_019']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type")  == (string) 'orderconfirm_noneed'}}
									<h3 class="return_label">{{$txt['67941::40018_021']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type")  == (string) 'orderconfirm_confirmed'}}
									<h3 class="return_label">{{$txt['67941::40018_023']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type")  == (string) 'orderconfirm_dataerror'}}
									<h3 class="return_label">{{$txt['67941::40018_025']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type")  == (string) 'prepaid_error'}}
									<h3 class="return_label">{{$txt['67941::40018_027']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type")  == (string) 'prepaid_payback'}}
									<h3 class="return_label">{{$txt['67941::40018_029']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type")  == (string) 'account_badlogin'}}
									<h3 class="return_label">{{$txt['67941::40018_031']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type")  == (string) 'account_nouser'}}
									<h3 class="return_label">{{$txt['67941::40018_033']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type")  == (string) 'account_disabled'}}
									<h3 class="return_label">{{$txt['67941::40018_035']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type")  == (string) 'account_wholesale_disabled'}}
									<h3 class="return_label">{{$txt['67941::40018_036']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type")  == (string) 'account_passremind'}}
									<h3 class="return_label">{{$txt['67941::40018_037']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type")  == (string) 'basket_empty'}}
									<h3 class="return_label">{{$txt['67941::40018_039']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type")  == (string) 'basket_size'}}
									<h3 class="return_label">{{$txt['67941::40018_039a']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type")  == (string) 'wisheslist_empty'}}
									<h3 class="return_label">{{$txt['67941::40018_041']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type")  == (string) 'order_minimum'}}
									<h3 class="return_label">{{$txt['67941::40018_043']}}
										{{if  $xml->getItem("page/return/@extra")}}
											<br/>{{$txt['67941::40018_044']}}{{$xml->getItemEscape("page/return/@extra")}}{{$xml->getItemEscape("currency/@name")}}
										{{/if}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type")  == (string) 'order_minimal_wholesale'}}
									<h3 class="return_label">{{$txt['67941::40018_043_wholesale']}}
										{{if  $xml->getItem("page/return/@extra")}}
											<br/>{{$txt['67941::40018_044_wholesale']}}{{$xml->getItemEscape("page/return/@extra")}}{{$xml->getItemEscape("currency/@name")}}
										{{/if}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type")  == (string) 'order_notenough'}}
									<h3 class="return_label">{{$txt['67941::40018_046']}}{{$txt['67941::40018_048']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type")  == (string) 'order_tomuch'}}
									<h3 class="return_label">{{$txt['67941::40018_050']}}
										{{if  $xml->getItem("page/return/@extra")}}
											{{$txt['67941::40018_953']}}{{$xml->getItemEscape("page/return/@extra")}}{{$xml->getItemEscape("currency/@name")}}{{$txt['67941::40018_953po']}}
										{{/if}}
										<br/>{{$txt['67941::40018_051']}}
										<a href="/login.php">{{$txt['67941::40018_052']}}</a>
									</h3>
								{{elseif  $xml->getItem("page/return/@type")  == (string) 'shipping_error'}}
									<h3 class="return_label">{{$txt['67941::40018_059']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type")  == (string) 'mailing_nosuchemail'}}
									<h3 class="return_label">{{$txt['67941::40018_061']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type")  == (string) 'mailing_removesuccess'}}
									<h3 class="return_label">{{$txt['67941::40018_063']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type")  == (string) 'mailing_addsuccess'}}
									<h3 class="return_label">{{$txt['67941::40018_065']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type")  == (string) 'mailing_emailexist'}}
									<h3 class="return_label">{{$txt['67941::40018_065_1']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type")  == (string) 'mailing_maileregerror'}}
									<h3 class="return_label">{{$txt['67941::40018_067']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type")  == (string) 'mailing_sendingconfirm'}}
									<h3 class="return_label">{{$txt['67941::40018_069']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type")  == (string) 'payment_success'}}
									<h3 class="return_label">{{$txt['67941::40018_073']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type")  == (string) 'payment_error'}}
									<h3 class="return_label">{{$txt['67941::40018_075']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type")  == (string) 'payment_pending'}}
									<h3 class="return_label">{{$txt['67941::40018_075a']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type")  == (string) 'payment_credit_success'}}
									<h3 class="return_label">{{$txt['67941::40018_074']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type")  == (string) 'payment_credit_error'}}
									<h3 class="return_label">{{$txt['67941::40018_076']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type")  == (string) 'opinion_addsuccess'}}
									<h3 class="return_label">{{$txt['67941::40018_077']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type")  == (string) 'opinion_adderror'}}
									<h3 class="return_label">{{$txt['67941::40018_079']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type")  == (string) '403'}}
									<h3 class="return_label">{{$txt['67941::40018_090']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type")  == (string) '404'}}
									<h3 class="return_label">{{$txt['67941::40018_091']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type")  == (string) '500'}}
									<h3 class="return_label">{{$txt['67941::40018_092']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type")  == (string) 'askforproduct_sent'}}
									<h3 class="return_label">{{$txt['67941::40018_291']}}{{literal}}{{/literal}}{{$xml->getItemEscape("page/return/@extra")}}{{literal}}{{/literal}}{{$txt['67941::40018_295']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type")  == (string) 'askforproduct_error'}}
									<h3 class="return_label">{{$txt['67941::40018_292']}}{{literal}}{{/literal}}{{$xml->getItemEscape("page/return/@extra")}}{{literal}}{{/literal}}{{$txt['67941::40018_296']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type")  == (string) 'incorrect_email'}}
									<h3 class="return_label">{{$txt['67941::40018_293']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type")  == (string) 'suggestreceiver_toolong'}}
									<h3 class="return_label">{{$txt['67941::40018_301']}}{{literal}}{{/literal}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type")  == (string) 'suggestreceiver_bademail'}}
									<h3 class="return_label">{{$txt['67941::40018_302']}}{{literal}}{{/literal}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type")  == (string) 'suggestsignature_tooshort'}}
									<h3 class="return_label">{{$txt['67941::40018_303']}}{{literal}}{{/literal}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type")  == (string) 'suggestbody_tooshort'}}
									<h3 class="return_label">{{$txt['67941::40018_304']}}{{literal}}{{/literal}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type")  == (string) 'suggestproduct_sent'}}
									<h3 class="return_label">{{$txt['67941::40018_305']}}{{literal}}{{/literal}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type") == (string)'rebates_code_begins'}}
									<h3 class="return_label">{{$txt['67941::53434_rebate01']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type") == (string)'rebates_code_expires'}}
									<h3 class="return_label">{{$txt['67941::53434_rebate02']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type") == (string)'rebates_code_undefined'}}
									<h3 class="return_label">{{$txt['67941::53434_rebate03']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type") == (string)'rebates_code_used' and $return_rebates_code_used}}
									<h3 class="return_label">{{$return_rebates_code_used}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type") == (string)'account_logoff'}}
									<h3 class="return_label">{{$txt['67941::40018_306']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type") == (string)'get_attachment_error'}}
									<h3 class="return_label">{{$txt['67941::53434_attachment']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type") == (string)'stock_not_found'}}
									<h3 class="return_label">{{$txt['67941::53434_stocknotfound']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type") == (string)'stock_transfer'}}
									<h3 class="return_label">{{$txt['67941::53434_stock_transfer']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type") == (string)'insurance_error'}}
									<h3 class="return_label">{{$txt['67941::53434_insurance_error']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type") == (string)'products_not_available'}}
									<h3 class="return_label">{{$txt['67941::53434_products_not_available']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type") == (string)'no_partners'}}
									<h3 class="return_label">{{$txt['67941::53434_no_partners']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type") == (string)'page_only_register'}}
									<h3 class="return_label">{{$txt['67941::53434_only_register']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type") == (string)'page_only_unregister'}}
									<h3 class="return_label">{{$txt['67941::53434_only_unregister']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type") == (string)'product_question_confirmed'}}
									<h3 class="return_label">{{$txt['67941::54744_question_confirmed']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type") == (string)'product_question_confirm_error'}}
									<h3 class="return_label">{{$txt['67941::54744_question_confirm_error']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type") == (string)'product_question_wrong_email'}}
									<h3 class="return_label">{{$txt['67941::54744_question_wrong_email']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type") == (string)'product_question_sent'}}
									<h3 class="return_label">{{$txt['67941::54744_question_sent']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type")  == (string) 'to_many_products_compared'}}
									<h3 class="return_label">{{$txt['67941::40018_to_many_products']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type")  == (string) 'products_not_found'}}
									<h3 class="return_label">{{$txt['67941::40018_products_not_found']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type")  == (string) 'virtual_products_not_found'}}
									<h3 class="return_label">{{$txt['67941::40018_virtual_products_not_found']}}
									</h3>
								{{elseif  $xml->getItem("page/return/@type")  == (string) 'virtual_products_to_download_not_found'}}
									<h3 class="return_label">{{$txt['67941::40018_virtual_products_to_download_not_found']}}
									</h3>
								{{else}}
									<h3 class="return_label">{{$xml->getItem("page/return/description")}}
									</h3>
								{{/if}}
							</div>
						</div>
						<div class="n54744_goback">
							<a {{assign "idAttributeTmp7" ""}}{{assign "hrefAttributeTmp5" ""}}{{assign "classAttributeTmp4" ""}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}n54744{{/capture}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}btn-small n54744{{/capture}}{{if $xml->getItem("page/return/@type") == (string) 'account_badlogin'}}{{capture name="idAttributeTmp7" assign="idAttributeTmp7"}}badlogin{{/capture}}{{elseif $xml->getItem("page/return/@type") == (string) 'order_notenoughpoints'}}{{capture name="idAttributeTmp7" assign="idAttributeTmp7"}}retbut_wroc_do_koszyka{{/capture}}{{elseif $xml->getItem("page/return/@type") == (string) 'ordercancel_ok'}}{{capture name="idAttributeTmp7" assign="idAttributeTmp7"}}retbut_strona_glowna{{/capture}}{{elseif $xml->getItem("page/return/@type") == (string) 'orderconfirm_dataerror'}}{{capture name="idAttributeTmp7" assign="idAttributeTmp7"}}retbut_strona_glowna{{/capture}}{{elseif $xml->getItem("page/return/@type") == (string)'token_expired' and $token_expired}}{{capture name="idAttributeTmp7" assign="idAttributeTmp7"}}retbut_do_signin{{/capture}}{{elseif $xml->getItem("page/return/@type") == (string) 'prepaid_error'}}{{capture name="idAttributeTmp7" assign="idAttributeTmp7"}}retbut_do_signin{{/capture}}{{elseif $xml->getItem("page/return/@type") == (string) 'account_nouser'}}{{capture name="idAttributeTmp7" assign="idAttributeTmp7"}}retbut_do_signin{{/capture}}{{elseif $xml->getItem("page/return/@type") == (string) 'account_disabled'}}{{capture name="idAttributeTmp7" assign="idAttributeTmp7"}}retbut_strona_glowna{{/capture}}{{elseif $xml->getItem("page/return/@type") == (string) 'account_passremind'}}{{capture name="idAttributeTmp7" assign="idAttributeTmp7"}}retbut_do_signin{{/capture}}{{elseif $xml->getItem("page/return/@type") == (string) 'order_minimum'}}{{capture name="idAttributeTmp7" assign="idAttributeTmp7"}}retbut_wroc_do_koszyka{{/capture}}{{elseif $xml->getItem("page/return/@type") == (string) 'order_notenough'}}{{capture name="idAttributeTmp7" assign="idAttributeTmp7"}}retbut_wroc_do_koszyka{{/capture}}{{elseif $xml->getItem("page/return/@type") == (string) 'order_tomuch'}}{{capture name="idAttributeTmp7" assign="idAttributeTmp7"}}retbut_wroc_do_koszyka{{/capture}}{{elseif $xml->getItem("page/return/@type") == (string) 'rebates_code_begins'}}{{capture name="idAttributeTmp7" assign="idAttributeTmp7"}}retbut_sprawdz_swoj_kod{{/capture}}{{elseif $xml->getItem("page/return/@type") == (string) 'rebates_code_expires'}}{{capture name="idAttributeTmp7" assign="idAttributeTmp7"}}retbut_sprawdz_swoj_kod{{/capture}}{{elseif $xml->getItem("page/return/@type") == (string) 'rebates_code_undefined'}}{{capture name="idAttributeTmp7" assign="idAttributeTmp7"}}retbut_sprawdz_swoj_kod{{/capture}}{{elseif $xml->getItem("page/return/@type") == (string) 'account_logoff'}}{{capture name="idAttributeTmp7" assign="idAttributeTmp7"}}retbut_do_signin{{/capture}}{{elseif $xml->getItem("page/return/@type") == (string) 'compare_error_minimum'}}{{capture name="idAttributeTmp7" assign="idAttributeTmp7"}}retbut_strona_glowna{{/capture}}{{elseif ( $xml->getItem("page/return/@type") == (string) 'page_only_register') or ( $xml->getItem("page/return/@type") == (string) 'page_only_unregister')}}{{capture name="idAttributeTmp7" assign="idAttributeTmp7"}}retbut_strona_glowna{{/capture}}{{/if}}{{if ( $xml->getItem("page/return/@type") == (string) 'page_only_register') or ( $xml->getItem("page/return/@type") == (string) 'page_only_unregister')}}{{capture name="hrefAttributeTmp5" assign="hrefAttributeTmp5"}}/main.php{{/capture}}{{capture name="idAttributeTmp7" assign="idAttributeTmp7"}}retbut_strona_glowna{{/capture}}{{else}}{{if ( $xml->getItem("page/return/@referer")) and ( $xml->getItem("page/return/@referer") neq (string) '')}}{{capture name="hrefAttributeTmp5" assign="hrefAttributeTmp5"}}{{$xml->getItemEscape("page/return/@referer")}}{{/capture}}{{capture name="idAttributeTmp7" assign="idAttributeTmp7"}}retbut_{{$xml->getItemEscape("page/return/@type")}}{{/capture}}{{else}}{{capture name="hrefAttributeTmp5" assign="hrefAttributeTmp5"}}/main.php{{/capture}}{{capture name="idAttributeTmp7" assign="idAttributeTmp7"}}retbut_strona_glowna{{/capture}}{{/if}}{{/if}}   class="{{$classAttributeTmp4}}"  href="{{$hrefAttributeTmp5}}"  id="{{$idAttributeTmp7}}">
								{{if  $xml->getItem("page/return/@type")  == (string) 'account_badlogin'}}
									{{$txt['67941::n54744_badlogin_txt']}}
								{{elseif  $xml->getItem("page/return/@type")  == (string) 'order_notenoughpoints'}}
									{{$txt['67941::n54744_wroc_do_koszyka_txt']}}
								{{elseif  $xml->getItem("page/return/@type")  == (string) 'ordercancel_ok'}}
									{{$txt['67941::n54744_strona_glowna_txt']}}
								{{elseif  $xml->getItem("page/return/@type")  == (string) 'orderconfirm_dataerror'}}
									{{$txt['67941::n54744_strona_glowna_txt']}}
								{{elseif  $xml->getItem("page/return/@type") == (string)'token_expired' and $token_expired}}
									{{$txt['67941::n54744_do_signin_txt']}}
								{{elseif  $xml->getItem("page/return/@type")  == (string) 'prepaid_error'}}
									{{$txt['67941::n54744_do_signin_txt']}}
								{{elseif  $xml->getItem("page/return/@type")  == (string) 'account_nouser'}}
									{{$txt['67941::n54744_do_signin_txt']}}
								{{elseif  $xml->getItem("page/return/@type")  == (string) 'account_disabled'}}
									{{$txt['67941::n54744_strona_glowna_txt']}}
								{{elseif  $xml->getItem("page/return/@type")  == (string) 'account_passremind'}}
									{{$txt['67941::n54744_do_signin_txt']}}
								{{elseif  $xml->getItem("page/return/@type")  == (string) 'order_minimum'}}
									{{$txt['67941::n54744_retbut_wroc_do_koszyka_txt']}}
								{{elseif  $xml->getItem("page/return/@type")  == (string) 'order_notenough'}}
									{{$txt['67941::n54744_retbut_wroc_do_koszyka_txt']}}
								{{elseif  $xml->getItem("page/return/@type")  == (string) 'order_tomuch'}}
									{{$txt['67941::n54744_retbut_wroc_do_koszyka_txt']}}
								{{elseif  $xml->getItem("page/return/@type")  == (string) 'rebates_code_begins'}}
									{{$txt['67941::n54744_retbut_sprawdz_swoj_kod_txt']}}
								{{elseif  $xml->getItem("page/return/@type")  == (string) 'rebates_code_expires'}}
									{{$txt['67941::n54744_retbut_sprawdz_swoj_kod_txt']}}
								{{elseif  $xml->getItem("page/return/@type")  == (string) 'rebates_code_undefined'}}
									{{$txt['67941::n54744_retbut_sprawdz_swoj_kod_txt']}}
								{{elseif  $xml->getItem("page/return/@type")  == (string) 'account_logoff'}}
									{{$txt['67941::n54744_do_signin_txt']}}
								{{elseif  $xml->getItem("page/return/@type")  == (string) 'compare_error_minimum'}}
									{{$txt['67941::n54744_strona_glowna_txt']}}
								{{elseif ( $xml->getItem("page/return/@type")  == (string) 'page_only_register') or ( $xml->getItem("page/return/@type")  == (string) 'page_only_unregister')}}
									{{$txt['67941::n54744_strona_glowna_txt']}}
								{{elseif ( $xml->getItem("page/return/@type")  == (string) 'page_only_register') or ( $xml->getItem("page/return/@type")  == (string) 'page_only_unregister')}}
									{{$txt['67941::n54744_strona_glowna_txt']}}
								{{else}}
									{{$txt['67941::n54744_goback_txt']}}
								{{/if}}
								</a>
						</div>
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
