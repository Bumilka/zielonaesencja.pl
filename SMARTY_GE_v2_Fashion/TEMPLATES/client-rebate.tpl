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
						<!--Rabaty klienta - CMS (client_rebates_cms, 58424.1)-->
						{{if  $xml->getItem("page/text/body")}}
							<div class="n58424_label">
								<span class="n58424_label">{{$txt['58424::cms_label']}}</span>
							</div>
							<div class="n58424_cms">
								<div class="n58424_sub">{{$xml->getItem("page/text/body")}}
								</div>
							</div>
						{{/if}}
						<!--Rabaty klienta - informacje (client_rebates_info, 77449.1)-->
						{{capture name="setNameOrder_client_rebates" assign="setNameOrder_client_rebates"}}
							{{$txt['77449::58230_setNameOrder']}}
						{{/capture}}
						{{capture name="setIconLarge_client_rebates" assign="setIconLarge_client_rebates"}}
							{{$txt['77449::58230_setIconLarge']}}
						{{/capture}}
						<div class="n58425">
							{{if  $xml->getItem("page/basket_rebate") or  $xml->getItem("page/global_rebate") or  $xml->getItem("page/rebates/range_rebate/range")}}
								<div {{assign "classAttributeTmp3" ""}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}n67313_label{{/capture}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}big_label n67313_label{{/capture}}  class="{{$classAttributeTmp3}}">
									<span class="n67313_label">{{$txt['77449::57379_lab']}}</span>
								</div>
							{{/if}}
							{{if  $xml->getItem("page/rebates/range_rebate/range") and !( $xml->getItem("/shop/page/basket_rebate/range"))}}
								<div class="n67313_out">
									<div class="n67313_label_b">
										<span class="n67313_label_l">{{$txt['77449::57379_progi']}}</span>
										<div class="n67313_label_r">{{$txt['77449::57379_progi_info']}}
											{{if  $xml->getItem("page/basket_rebate/@combined") == (string)'y'}}
												{{$txt['77449::57379_global_info']}}
											{{else}}
												{{$txt['77449::57379_global_info2']}}
											{{/if}}
										</div>
									</div>
									<div class="n67313_border">
										<div class="n67313_rebate_l">{{$txt['77449::57379_kwot']}}
											<span class="n67313_label_r">{{$txt['77449::57379_label_r']}}</span>
											{{if  $xml->getItem("page/basket_rebate/range/@points")  neq (string) '0.00'}}
												<span class="n67313_label_r">{{$txt['77449::57379_label_bonus']}}</span>
											{{/if}}
										</div>
										<table class="n58425" id="n58425_range_rebate" cellspacing="0" cellpadding="0">
											{{foreach from=$xml->getList("page/rebates/range_rebate/range") item=loop327}}
												<tr {{if $loop327->getItem("@used") == (string)'y'}} class="range_rebate_activ"{{/if}}>
													<td {{assign "classAttributeTmp4" ""}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}n67313_name{{/capture}}{{if $loop327@iteration % 2 == (string) 0}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}n67313_name_a{{/capture}}{{/if}}  class="{{$classAttributeTmp4}}">
														<span class="n67313_name">{{$loop327->getItem("@threshold")}}{{literal}}{{/literal}}{{$loop327->getItemEscape("/shop/currency/@name")}}</span>
													</td>
													<td {{assign "classAttributeTmp5" ""}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}n67313_value{{/capture}}{{if $loop327@iteration % 2 == (string) 0}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}n67313_value_a{{/capture}}{{/if}}  class="{{$classAttributeTmp5}}">
														<span class="n67313_value">{{$loop327->getItem("@value")}}{{literal}}{{/literal}}{{$txt['77449::57379_proc']}}</span>
														{{if  $loop327->getItem("@points")  neq (string) '0.00'}}
															<span class="n67313_points">{{$txt['77449::57379_plus']}}{{$loop327->getItemEscape("@points")}}{{$txt['77449::57379_punkty']}}</span>
														{{/if}}
													</td>
												</tr>
											{{/foreach}}
										</table>
									</div>
								</div>
							{{/if}}
							{{if  $xml->getItem("page/basket_rebate")}}
								<div class="n67313_out">
									<div class="n67313_label_b">
										<span class="n67313_label_l">{{$txt['77449::57379_progi']}}</span>
										<div class="n67313_label_r">{{$txt['77449::57379_progi_info']}}
											{{if  $xml->getItem("page/basket_rebate/@combined") == (string)'y'}}
												{{$txt['77449::57379_global_info']}}
											{{else}}
												{{$txt['77449::57379_global_info2']}}
											{{/if}}
										</div>
									</div>
									<div class="n67313_border">
										<div class="n67313_rebate_l">{{$txt['77449::57379_kwot']}}
											<span class="n67313_label_r">{{$txt['77449::57379_label_r']}}</span>
											{{if  $xml->getItem("page/basket_rebate/range/@points")  neq (string) '0.00'}}
												<span class="n67313_label_r">{{$txt['77449::57379_label_bonus']}}</span>
											{{/if}}
										</div>
										<table class="n58425" id="n58425_range_rebate" cellspacing="0" cellpadding="0">
											{{foreach from=$xml->getList("page/basket_rebate/range") item=loop378}}
												<tr {{if $loop378->getItem("@used") == (string)'y'}} class="range_rebate_activ"{{/if}}>
													<td {{assign "classAttributeTmp6" ""}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}n67313_name{{/capture}}{{if $loop378@iteration % 2 == (string) 0}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}n67313_name_a{{/capture}}{{/if}}  class="{{$classAttributeTmp6}}">
														<span class="n67313_name">{{$loop378->getItem("@threshold")}}{{literal}}{{/literal}}{{$loop378->getItemEscape("/shop/currency/@name")}}</span>
													</td>
													<td {{assign "classAttributeTmp7" ""}}{{capture name="classAttributeTmp7" assign="classAttributeTmp7"}}n67313_value{{/capture}}{{if $loop378@iteration % 2 == (string) 0}}{{capture name="classAttributeTmp7" assign="classAttributeTmp7"}}n67313_value_a{{/capture}}{{/if}}  class="{{$classAttributeTmp7}}">
														<span class="n67313_value">{{$loop378->getItem("@value")}}{{literal}}{{/literal}}{{$txt['77449::57379_proc']}}</span>
														{{if  $loop378->getItem("@points")  neq (string) '0.00'}}
															<span class="n67313_points">{{$txt['77449::57379_plus']}}{{$loop378->getItemEscape("@points")}}{{$txt['77449::57379_punkty']}}</span>
														{{/if}}
													</td>
												</tr>
											{{/foreach}}
										</table>
									</div>
								</div>
							{{/if}}
							{{if  $xml->getItem("page/global_rebate")}}
								<div class="n67313_out">
									<div class="n67313_label_b">
										<span class="n67313_label_l">{{$txt['77449::57379_global_rebate']}}</span>
										<div class="n67313_label_r">
											{{if  $xml->getItem("page/global_rebate/@order_days")}}
												{{$txt['77449::57379_global_info_order_days']}}{{$xml->getItem("page/global_rebate/@order_days")}}{{$txt['77449::57379_global_info_order_days2']}}
											{{else}}
												{{$txt['77449::57379_global_rebate_info']}}
											{{/if}}
											{{if  $xml->getItem("page/global_rebate/@combined") == (string)'y'}}
												{{$txt['77449::57379_global_info']}}
											{{else}}
												{{$txt['77449::57379_global_info2']}}
											{{/if}}
										</div>
									</div>
									<div class="n67313_border">
										<div class="n67313_rebate_l">{{$txt['77449::57379_kwot']}}
											<span class="n67313_label_r">{{$txt['77449::57379_label_r']}}</span>
											{{if  $xml->getItem("page/global_rebate/range/@points")  neq (string) '0.00'}}
												<span class="n67313_label_r">{{$txt['77449::57379_label_bonus']}}</span>
											{{/if}}
										</div>
										<table class="n58425" id="n58425_range_rebate" cellspacing="0" cellpadding="0">
											{{foreach from=$xml->getList("page/global_rebate/range") item=loop433}}
												<tr {{if $loop433->getItem("@used") == (string)'y'}} class="range_rebate_activ"{{/if}}>
													<td {{assign "classAttributeTmp8" ""}}{{capture name="classAttributeTmp8" assign="classAttributeTmp8"}}n67313_name{{/capture}}{{if $loop433@iteration % 2 == (string) 0}}{{capture name="classAttributeTmp8" assign="classAttributeTmp8"}}n67313_name_a{{/capture}}{{/if}}  class="{{$classAttributeTmp8}}">
														<span class="n67313_name">{{$loop433->getItem("@threshold")}}{{literal}}{{/literal}}{{$loop433->getItemEscape("/shop/currency/@name")}}</span>
													</td>
													<td {{assign "classAttributeTmp9" ""}}{{capture name="classAttributeTmp9" assign="classAttributeTmp9"}}n67313_value{{/capture}}{{if $loop433@iteration % 2 == (string) 0}}{{capture name="classAttributeTmp9" assign="classAttributeTmp9"}}n67313_value_a{{/capture}}{{/if}}  class="{{$classAttributeTmp9}}">
														<span class="n67313_value">{{$loop433->getItem("@value")}}{{literal}}{{/literal}}{{$txt['77449::57379_proc']}}</span>
														{{if  $loop433->getItem("@points")  neq (string) '0.00'}}
															<span class="n67313_points">{{$txt['77449::57379_plus']}}{{$loop433->getItemEscape("@points")}}{{$txt['77449::57379_punkty']}}</span>
														{{/if}}
													</td>
												</tr>
											{{/foreach}}
										</table>
									</div>
								</div>
							{{/if}}
							{{if  $xml->getItem("page/rebates/@type")  == (string) 'r'}}
								{{if !( $xml->getItem("page/rebates/other/@value")  == (string) '0.00')}}
									<div class="n67313_out">
										<div class="n67313_label_b">{{$txt['77449::57379_label_1']}}
										</div>
										<div class="n67313_border">
											{{if !( $xml->getItem("page/rebates/other/@value")  == (string) '0.00')}}
												<div class="n67313_rebate_l">{{$txt['77449::57379_otherp']}}
												</div>
												<div class="n67313_rebate_info">
													<span class="n67313_other_value">{{$xml->getItem("page/rebates/other/@value")}}{{$txt['77449::57379_proc']}}</span>
													{{if  $xml->getItem("page/rebates/other/@combined") == (string)'y'}}
														<div class="n67313_other_info">{{$txt['77449::57379_global_info']}}
														</div>
													{{else}}
														<div class="n67313_other_info">{{$txt['77449::57379_global_info2']}}
														</div>
													{{/if}}
												</div>
											{{/if}}
										</div>
									</div>
								{{/if}}
							{{elseif ( $xml->getItem("page/rebates/@type")  == (string) 'z') and (( $xml->getItem("page/rebates/category")) or ( $xml->getItem("page/rebates/producer")) or ( $xml->getItem("page/rebates/series")))}}
								<div class="n67313_out">
									{{if ( $xml->getItem("page/rebates/category")) or ( $xml->getItem("page/rebates/producer")) or ( $xml->getItem("page/rebates/series"))}}
										<div class="n67313_label_b">{{$txt['77449::57379_label_g']}}
											<div class="n67313_label_r">{{$txt['77449::n57379_info22_']}}
											</div>
										</div>
									{{/if}}
									<div class="n67313_border">
										{{if  $xml->getItem("page/rebates/category")}}
											<div class="n67313_rebate_l">{{$txt['77449::57379_cat']}}
											</div>
											<table class="clients_rebates">
												{{foreach from=$xml->getList("page/rebates/category/item") item=loop505}}
													{{if ( $loop505@iteration -1) % 4  == (string) 0}}
														{{literal}}
														<tr>{{/literal}}
														{{/if}}
														<td style="width:25%;" class="clients_rebates">
															<div class="clients_rebates_wrapper">
																<h3>
																	<a class="product_name" href="{{$loop505->getItem("@link")}}" title="{{$loop505->getItem("@name")}}">{{$loop505->getItem("@name")}}</a>
																</h3>
																<span class="n67313_other_value">{{$loop505->getItem("@value")}}{{$txt['77449::57379_proc']}}</span>
															</div>
														</td>
														{{if ( $loop505@iteration -1) % 4  == (string) (4 - 1) or  $loop505@iteration  == (string) $loop505@total }}
															{{literal}}
														</tr>{{/literal}}
													{{/if}}
												{{/foreach}}
											</table>
										{{/if}}
										{{if  $xml->getItem("page/rebates/producer")}}
											<div class="n67313_rebate_l">{{$txt['77449::57379_prod']}}
											</div>
											<table class="clients_rebates">
												{{foreach from=$xml->getList("page/rebates/producer/item") item=loop527}}
													{{if ( $loop527@iteration -1) % 4  == (string) 0}}
														{{literal}}
														<tr>{{/literal}}
														{{/if}}
														<td style="width:25%;" class="clients_rebates">
															<div class="clients_rebates_wrapper">
																<h3>
																	<a class="product_name" href="{{$loop527->getItem("@link")}}" title="{{$loop527->getItem("@name")}}">{{$loop527->getItem("@name")}}</a>
																</h3>
																<span class="n67313_other_value">{{$loop527->getItem("@value")}}{{$txt['77449::57379_proc']}}</span>
															</div>
														</td>
														{{if ( $loop527@iteration -1) % 4  == (string) (4 - 1) or  $loop527@iteration  == (string) $loop527@total }}
															{{literal}}
														</tr>{{/literal}}
													{{/if}}
												{{/foreach}}
											</table>
										{{/if}}
										{{if  $xml->getItem("page/rebates/series")}}
											<div class="n67313_rebate_l">{{$txt['77449::57379_serie']}}
											</div>
											<table class="clients_rebates">
												{{foreach from=$xml->getList("page/rebates/series/item") item=loop549}}
													{{if ( $loop549@iteration -1) % 4  == (string) 0}}
														{{literal}}
														<tr>{{/literal}}
														{{/if}}
														<td style="width:25%;" class="clients_rebates">
															<div class="clients_rebates_wrapper">
																<h3>
																	<a class="product_name" href="{{$loop549->getItem("@link")}}" title="{{$loop549->getItem("@name")}}">{{$loop549->getItem("@name")}}</a>
																</h3>
																<span class="n67313_other_value">{{$loop549->getItem("@value")}}{{$txt['77449::57379_proc']}}</span>
															</div>
														</td>
														{{if ( $loop549@iteration -1) % 4  == (string) (4 - 1) or  $loop549@iteration  == (string) $loop549@total }}
															{{literal}}
														</tr>{{/literal}}
													{{/if}}
												{{/foreach}}
											</table>
										{{/if}}
									</div>
								</div>
								{{if  $xml->getItem("page/rebates/product")}}
									<div class="n67313_out">
										<div class="n67313_label_b">{{$txt['77449::57379_rabszcz']}}
											{{if (( $xml->getItem("page/rebates/category")) or ( $xml->getItem("page/rebates/producer")) or ( $xml->getItem("page/rebates/series"))) and (( $xml->getItem("page/rebates/other")) and !( $xml->getItem("page/rebates/other/@value")  == (string) '0.00'))}}
												<div class="n67313_label_r">{{$txt['77449::57379_other_info_b1']}}
												</div>
											{{elseif (( $xml->getItem("page/rebates/category")) or ( $xml->getItem("page/rebates/producer")) or ( $xml->getItem("page/rebates/series"))) and !(( $xml->getItem("page/rebates/other")) and !( $xml->getItem("page/rebates/other/@value")  == (string) '0.00'))}}
												<div class="n67313_label_r">{{$txt['77449::57379_other_info_b2']}}
												</div>
											{{elseif (( $xml->getItem("page/rebates/other")) and !( $xml->getItem("page/rebates/other/@value")  == (string) '0.00')) and !( $xml->getItem("page/rebates/category")) and !( $xml->getItem("page/rebates/producer")) and !( $xml->getItem("page/rebates/series"))}}
												<div class="n67313_label_r">{{$txt['77449::57379_other_info_b3']}}
												</div>
											{{/if}}
										</div>
										<div class="n67313_border">
											<div class="n67313_rebate_l">{{$txt['77449::57379_wypr']}}
											</div>
											<table class="clients_rebates">
												{{foreach from=$xml->getList("page/rebates/product/item") item=loop591}}
													{{if ( $loop591@iteration -1) % 4  == (string) 0}}
														{{literal}}
														<tr>{{/literal}}
														{{/if}}
														<td style="width:25%;" class="clients_rebates">
															<div class="clients_rebates_wrapper">
																<h3>
																	<a class="product_name" href="{{$loop591->getItem("@link")}}" title="{{$loop591->getItem("@name")}}">{{$loop591->getItem("@name")}}</a>
																</h3>
																<span class="n67313_other_value">{{$loop591->getItem("@value")}}{{$txt['77449::57379_proc']}}</span>
															</div>
														</td>
														{{if ( $loop591@iteration -1) % 4  == (string) (4 - 1) or  $loop591@iteration  == (string) $loop591@total }}
															{{literal}}
														</tr>{{/literal}}
													{{/if}}
												{{/foreach}}
											</table>
										</div>
									</div>
								{{/if}}
								{{if !( $xml->getItem("page/rebates/other/@value")  == (string) '0.00')}}
									<div class="n67313_out">
										<div class="n67313_label_b">{{$txt['77449::57379_label_1']}}
											<div class="n67313_label_r">
												{{if  $xml->getItem("page/rebates/other/@combined") == (string)'y'}}
													<div class="n67313_other_info">{{$txt['77449::57379_global_info']}}
													</div>
												{{else}}
													<div class="n67313_other_info">{{$txt['77449::57379_global_info2']}}
													</div>
												{{/if}}
											</div>
										</div>
										<div class="n67313_border">
											{{if !( $xml->getItem("page/rebates/other/@value")  == (string) '0.00')}}
												<div class="n67313_rebate_l">
													{{if !( $xml->getItem("page/rebates/category")) and !( $xml->getItem("page/rebates/producer")) and !( $xml->getItem("page/rebates/series")) and !( $xml->getItem("page/rebates/product"))}}
														{{$txt['77449::n57379_otherall']}}
													{{else}}
														{{$txt['77449::n57379_other']}}
													{{/if}}
												</div>
												<div class="n67313_rebate_info">
													<span class="n67313_other_value">{{$xml->getItem("page/rebates/other/@value")}}{{$txt['77449::57379_proc']}}</span>
												</div>
											{{/if}}
										</div>
									</div>
								{{/if}}
							{{elseif ( $xml->getItem("page/rebates/@type")  == (string) 'b' or  $xml->getItem("page/rebates/@type")  == (string) 'p' or  $xml->getItem("page/rebates/@type")  == (string) 'z') and ( $xml->getItem("page/rebates/other/@value")  == (string) '0.00') and ( $xml->getItem("page/rebates_codes/@active")  == (string) 'n')}}
								<div class="n67313_norabate">{{$txt['77449::57379_no']}}
									<a href="/terms.php">{{$txt['77449::57379_reg']}}</a>{{$txt['77449::57379_st']}}
								</div>
							{{else}}
								{{if !( $xml->getItem("page/rebates/other/@value")  == (string) '0.00')}}
									<div class="n67313_out">
										<div class="n67313_label_b">{{$txt['77449::57379_label_1']}}
											<div class="n67313_label_r">
												{{if  $xml->getItem("page/rebates/other/@combined") == (string)'y'}}
													{{$txt['77449::57379_global_info']}}
												{{else}}
													{{$txt['77449::57379_global_info2']}}
												{{/if}}
											</div>
										</div>
										<div class="n67313_border">
											{{if !( $xml->getItem("page/rebates/other/@value")  == (string) '0.00')}}
												<div class="n67313_rebate_l">{{$txt['77449::57379_otherp']}}
												</div>
												<div class="n67313_rebate_info">
													<span class="n67313_other_value">{{$xml->getItem("page/rebates/other/@value")}}{{$txt['77449::57379_proc']}}</span>
												</div>
											{{/if}}
										</div>
									</div>
								{{/if}}
							{{/if}}
							{{if  $xml->getItem("page/rebates_codes/@active")  == (string)  'y' or  $xml->getItem("page/rebate_code/@active")  == (string) 'y'}}
								<div {{assign "classAttributeTmp3" ""}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}n67313_label{{/capture}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}big_label n67313_label{{/capture}}  class="{{$classAttributeTmp3}}">
									<span class="n67313_label">{{$txt['77449::57379_lab_ind']}}</span>
								</div>
								<div class="n67313_out">
									{{if !( $xml->getItem("page/rebate_code/@type")  == (string) 'client')}}
										<div class="n67313_label_b">
											{{if  $xml->getItem("page/rebate_code/@active")  == (string) 'y'}}
												{{if  $xml->getItem("/shop/rebate_code_delete_client_advanced_rebate/@active")  == (string) 'y' or  $xml->getItem("/shop/rebate_code_delete_rebate_for_profit_points/@active")  == (string) 'y' }}
													<div id="basketedit_rebatecode_activate_info" style="display:none;">{{$txt['77449::text_57854_1']}}
													</div>
												{{/if}}
												<div class="n67313_label_l">
													<span class="n67313_label_rebate_code">{{$txt['77449::67313_rebate_code_1']}}
														<strong>{{$xml->getItem("page/rebate_code/@number")}}</strong></span>
													<a id="n67313_a_remove_code" href="#">{{$txt['77449::67313_remove_code']}}</a>
													<a id="n67313_a_change_code" href="#">{{$txt['77449::57228_a_change_code']}}</a>
													<form action="settings.php?from=client_rebate" method="post" id="n67313_change_code">
														<input onclick="$('#basketedit_rebatecode_activate_info').fadeIn('slow');" class="client_rebates_rebatecode_input" name="rebates_codes" type="text" value=""/>
														<input id="global_rebates_codes" name="global_rebates_codes" value="add" type="hidden"/>
														<input {{assign "valueAttributeTmp15" ""}}{{assign "classAttributeTmp11" ""}}{{capture name="classAttributeTmp11" assign="classAttributeTmp11"}}client_rebates_change_code{{/capture}} type="submit"{{capture name="valueAttributeTmp15" assign="valueAttributeTmp15"}}{{/capture}}{{capture name="classAttributeTmp11" assign="classAttributeTmp11"}}btn-small client_rebates_change_code{{/capture}}{{capture name="valueAttributeTmp15" assign="valueAttributeTmp15"}}{{$txt['77449::57228_change_code']}}{{/capture}}  class="{{$classAttributeTmp11}}"  value="{{$valueAttributeTmp15}}"></input>
													</form>
												</div>
												<div class="n67313_label_r">
													{{if  $xml->getItem("page/rebate_code/@min_order")  gt (string) 0}}
														<div class="n67313_other_info">{{$txt['77449::57379_min_order']}}
															<strong>{{$xml->getItem("page/rebate_code/@min_order")}}{{literal}}{{/literal}}{{$xml->getItemEscape("/shop/currency/@name")}}</strong>
														</div>
													{{/if}}
													{{if  $xml->getItem("page/rebate_code/@expires")}}
														<div class="n67313_other_info">{{$txt['77449::57379_expires']}}
															<strong>{{$xml->getItem("page/rebate_code/@expires")}}</strong>
														</div>
													{{/if}}
													{{if  $xml->getItem("page/rebate_code/@combined") == (string)'y' or  $xml->getItem("page/rebate_code/@combined") == (string)'m'}}
														<div class="n67313_other_info">{{$txt['77449::57379_global_info']}}
														</div>
													{{else}}
														<div class="n67313_other_info">{{$txt['77449::57379_global_info2']}}
														</div>
													{{/if}}
													{{if  $xml->getItem("page/rebate_code/inactive_zones/item")}}
														<div class="n67313_other_info">{{$txt['77449::57379_inactive_zones_info']}}
															{{foreach from=$xml->getList("page/rebate_code/inactive_zones/item") item=loop732}}
																{{$loop732->getItem("@description")}}
																{{if  $loop732@iteration   neq (string)  $loop732@total }}
																	{{$txt['77449::57379_przec']}}
																{{/if}}
															{{/foreach}}
														</div>
													{{/if}}
												</div>
											{{else}}
												{{if  $xml->getItem("/shop/rebate_code_delete_client_advanced_rebate/@active")  == (string) 'y' or  $xml->getItem("/shop/rebate_code_delete_rebate_for_profit_points/@active")  == (string) 'y' }}
													<div id="basketedit_rebatecode_activate_info" style="display:none;">{{$txt['77449::text_57854_1']}}
													</div>
												{{/if}}
												<span class="n67313_label_rebate_code">{{$txt['77449::rebate_code_givecode']}}</span>
												<form action="settings.php?from=client_rebate" method="post" class="client_rebates_submit">
													<input onclick="$('#basketedit_rebatecode_activate_info').fadeIn('slow');" class="client_rebates_rebatecode_input" name="rebates_codes" type="text" value=""/>
													<input name="global_rebates_codes" value="add" type="hidden"/>
													<input {{assign "valueAttributeTmp16" ""}}{{assign "classAttributeTmp12" ""}}{{capture name="classAttributeTmp12" assign="classAttributeTmp12"}}client_rebates_submit_code{{/capture}} type="submit"{{capture name="valueAttributeTmp16" assign="valueAttributeTmp16"}}{{/capture}}{{capture name="classAttributeTmp12" assign="classAttributeTmp12"}}btn-small client_rebates_submit_code{{/capture}}{{capture name="valueAttributeTmp16" assign="valueAttributeTmp16"}}{{$txt['77449::67313_02989']}}{{/capture}}  class="{{$classAttributeTmp12}}"  value="{{$valueAttributeTmp16}}"></input>
												</form>
											{{/if}}
										</div>
									{{/if}}
									{{if  $xml->getItem("/shop/page/rebates_for_points/rebate")}}
										<div class="n67313_rebate_l">{{$txt['77449::31019_002k']}}
										</div>
										<div class="rebates_for_points row clearfix align_row" data-align=".for_points#px">
											{{foreach from=$xml->getList("/shop/page/rebates_for_points/rebate") item=loop761}}
												{{if  $loop761->getItem("@order_link")}}
													<div class="for_points_wrapper col-lg-3 col-md-4 col-xs-12">
														<a {{assign "classAttributeTmp13" ""}}{{capture name="classAttributeTmp13" assign="classAttributeTmp13"}}for_points{{/capture}} href="{{$loop761->getItemEscape("@order_link")}}" {{if $loop761->getItem("/shop/rebate_for_profit_points_delete_client_advanced_rebate[@active='y']")}} title="{{$txt['77449::31019_005_3']}}" data-title="{{$txt['77449::31019_005_2']}}" data-button_txt="{{$txt['77449::31019_005_1']}}"{{capture name="classAttributeTmp13" assign="classAttributeTmp13"}}for_points confirmation_link{{/capture}}{{/if}}{{if $loop761->getItem("/shop/rebate_for_profit_points_delete_rebate_code[@active='y']")}} title="{{$txt['77449::31019_005_3_a']}}" data-title="{{$txt['77449::31019_005_2']}}" data-button_txt="{{$txt['77449::31019_005_1']}}"{{capture name="classAttributeTmp13" assign="classAttributeTmp13"}}for_points confirmation_link{{/capture}}{{/if}}{{if $loop761->getItem("@selected") == (string) 'selected'}}{{capture name="classAttributeTmp13" assign="classAttributeTmp13"}}for_points selected{{/capture}}{{if $loop761->getItem("/shop/rebate_for_profit_points_delete_rebate_code[@active='y']")}}{{capture name="classAttributeTmp13" assign="classAttributeTmp13"}}for_points selected confirmation_link{{/capture}}{{/if}}{{if $loop761->getItem("/shop/rebate_for_profit_points_delete_client_advanced_rebate[@active='y']")}}{{capture name="classAttributeTmp13" assign="classAttributeTmp13"}}for_points selected confirmation_link{{/capture}}{{/if}}{{/if}}  class="{{$classAttributeTmp13}}">
															<span class="for_points_value">
																{{if  $loop761->getItem("@selected")  == (string) 'selected'}}
																	<strong>{{$txt['77449::31019_005a']}}</strong>
																{{/if}}
																<span>{{$txt['77449::31019_005rr']}}
																	{{if  $loop761->getItem("@rebate_type") == (string)'quota'}}
																		{{$loop761->getItemEscape("@threshold_formatted")}}
																	{{else}}
																		{{$loop761->getItemEscape("@threshold")}}{{$txt['77449::31019_005']}}
																	{{/if}}
																	</span>
																{{if  $loop761->getItem("@permanent") == (string)'true'}}
																	{{$txt['77449::31019_005st']}}
																{{else}}
																	{{$txt['77449::31019_005tor']}}
																{{/if}}
																</span>
															<span class="for_points_points">{{$loop761->getItemEscape("@points")}}{{$txt['77449::31019_005pkt']}}</span></a>
													</div>
												{{else}}
													<div {{assign "classAttributeTmp14" ""}}{{capture name="classAttributeTmp14" assign="classAttributeTmp14"}}for_points_wrapper col-lg-3 col-md-4 col-xs-12{{/capture}}{{if $loop761->getItem("@selected") == (string) 'selected'}}{{capture name="classAttributeTmp14" assign="classAttributeTmp14"}}for_points_wrapper col-lg-3 col-md-4 col-xs-12 selected{{/capture}}{{/if}}  class="{{$classAttributeTmp14}}">
														<div class="for_points">
															<span class="for_points_value">
																{{if  $loop761->getItem("@selected")  == (string) 'selected'}}
																	<strong>{{$txt['77449::31019_005a']}}</strong>
																{{/if}}
																<span>{{$txt['77449::31019_005rr']}}
																	{{if  $loop761->getItem("@rebate_type") == (string)'quota'}}
																		{{$loop761->getItemEscape("@threshold_formatted")}}
																	{{else}}
																		{{$loop761->getItemEscape("@threshold")}}{{$txt['77449::31019_005']}}
																	{{/if}}
																	</span>
																{{if  $loop761->getItem("@permanent") == (string)'true'}}
																	{{$txt['77449::31019_005st']}}
																{{else}}
																	{{$txt['77449::31019_005tor']}}
																{{/if}}
																</span>
															<span class="for_points_points">{{$loop761->getItemEscape("@points")}}{{$txt['77449::31019_005pkt']}}</span>
														</div>
													</div>
												{{/if}}
											{{/foreach}}
										</div>
									{{/if}}
									{{if  $xml->getItem("page/rebate_code[@active='y']")}}
										<div class="n67313_border">
											{{if  $xml->getItem("page/rebate_code/product[@active='y']")}}
												<div class="n67313_rebate_l">{{$txt['77449::57379_wypr']}}
												</div>
												<table class="clients_rebates">
													{{foreach from=$xml->getList("page/rebate_code/product/item") item=loop861}}
														{{if ( $loop861@iteration -1) % 4  == (string) 0}}
															{{literal}}
															<tr>{{/literal}}
															{{/if}}
															<td style="width:25%;" class="clients_rebates">
																<div class="clients_rebates_wrapper">
																	{{if !($setNameOrder_client_rebates)}}
																		<a class="product_name" href="{{$loop861->getItem("@link")}}" title="{{$loop861->getItem("@name")}}">{{$loop861->getItem("@name")}}</a>
																	{{/if}}
																	<a class="product_icon" href="{{$loop861->getItemEscape("@link")}}" title="{{$loop861->getItem("@name")}}">
																		<img {{if $setIconLarge_client_rebates}} src="{{$loop861->getItemEscape("icon_src")}}" {{else}} src="{{$loop861->getItemEscape("iconsmall")}}" {{/if}} alt="{{$loop861->getItem("@name")}}"></img></a>
																	{{if $setNameOrder_client_rebates}}
																		<a class="product_name" href="{{$loop861->getItem("@link")}}" title="{{$loop861->getItem("@name")}}">{{$loop861->getItem("@name")}}</a>
																	{{/if}}
																	<span class="n67313_other_value">{{$loop861->getItem("@rebate_value")}}{{literal}}{{/literal}}
																		{{if  $loop861->getItem("@rebate_type") == (string)'p' or  $loop861->getItem("@rebate_type") == (string)'percentage'}}
																			{{$txt['77449::57379_proc']}}
																		{{elseif  $loop861->getItem("@rebate_type") == (string)'fixed_amount' or  $loop861->getItem("@rebate_type") == (string)'quota'}}
																			{{$loop861->getItemEscape("/shop/currency/@name")}}
																		{{/if}}
																		</span>
																	<div class="n67313_other_info">
																		{{if  $loop861->getItem("@calculate_from_price") == (string)'client_price' and  $loop861->getItem("@price_type") == (string)'net'}}
																			{{$txt['77449::67313_calculate_from_price_1']}}
																		{{elseif  $loop861->getItem("@calculate_from_price") == (string)'suggested_retail_price'}}
																			{{$txt['77449::67313_calculate_from_price_2']}}
																		{{elseif  $loop861->getItem("@calculate_from_price") == (string)'crossed_out_price'}}
																			{{$txt['77449::67313_calculate_from_price_3']}}
																		{{/if}}
																		{{if  $loop861->getItem("@price_type") == (string)'net'}}
																			{{$txt['77449::67313_net']}}
																		{{/if}}
																	</div>
																</div>
															</td>
															{{if ( $loop861@iteration -1) % 4  == (string) (4 - 1) or  $loop861@iteration  == (string) $loop861@total }}
																{{literal}}
															</tr>{{/literal}}
														{{/if}}
													{{/foreach}}
												</table>
											{{/if}}
											{{if  $xml->getItem("page/rebate_code/producer[@active='y']")}}
												<div class="n67313_rebate_l">{{$txt['77449::57379_prod']}}
												</div>
												<table class="clients_rebates">
													{{foreach from=$xml->getList("page/rebate_code/producer/item") item=loop924}}
														{{if ( $loop924@iteration -1) % 4  == (string) 0}}
															{{literal}}
															<tr>{{/literal}}
															{{/if}}
															<td style="width:25%;" class="clients_rebates">
																<div class="clients_rebates_wrapper">
																	{{if !($setNameOrder_client_rebates)}}
																		<a class="product_name" href="{{$loop924->getItem("@link")}}" title="{{$loop924->getItem("@name")}}">{{$loop924->getItem("@name")}}</a>
																	{{/if}}
																	<a class="product_icon" href="{{$loop924->getItemEscape("@link")}}" title="{{$loop924->getItem("@name")}}">
																		<img {{if $setIconLarge_client_rebates}} src="{{$loop924->getItemEscape("icon_src")}}" {{else}} src="{{$loop924->getItemEscape("iconsmall")}}" {{/if}} alt="{{$loop924->getItem("@name")}}"></img></a>
																	{{if $setNameOrder_client_rebates}}
																		<a class="product_name" href="{{$loop924->getItem("@link")}}" title="{{$loop924->getItem("@name")}}">{{$loop924->getItem("@name")}}</a>
																	{{/if}}
																	<span class="n67313_other_value">{{$loop924->getItem("@rebate_value")}}{{literal}}{{/literal}}
																		{{if  $loop924->getItem("@rebate_type") == (string)'p' or  $loop924->getItem("@rebate_type") == (string)'percentage'}}
																			{{$txt['77449::57379_proc']}}
																		{{elseif  $loop924->getItem("@rebate_type") == (string)'fixed_amount' or  $loop924->getItem("@rebate_type") == (string)'quota'}}
																			{{$loop924->getItemEscape("/shop/currency/@name")}}
																		{{/if}}
																		</span>
																	<div class="n67313_other_info">
																		{{if  $loop924->getItem("@calculate_from_price") == (string)'client_price' and  $loop924->getItem("@price_type") == (string)'net'}}
																			{{$txt['77449::67313_calculate_from_price_1']}}
																		{{elseif  $loop924->getItem("@calculate_from_price") == (string)'suggested_retail_price'}}
																			{{$txt['77449::67313_calculate_from_price_2']}}
																		{{elseif  $loop924->getItem("@calculate_from_price") == (string)'crossed_out_price'}}
																			{{$txt['77449::67313_calculate_from_price_3']}}
																		{{/if}}
																		{{if  $loop924->getItem("@price_type") == (string)'net'}}
																			{{$txt['77449::67313_net']}}
																		{{/if}}
																	</div>
																</div>
															</td>
															{{if ( $loop924@iteration -1) % 4  == (string) (4 - 1) or  $loop924@iteration  == (string) $loop924@total }}
																{{literal}}
															</tr>{{/literal}}
														{{/if}}
													{{/foreach}}
												</table>
											{{/if}}
											{{if  $xml->getItem("page/rebate_code/series[@active='y']")}}
												<div class="n67313_rebate_l">{{$txt['77449::57379_serie']}}
												</div>
												<table class="clients_rebates">
													{{foreach from=$xml->getList("page/rebate_code/series/item") item=loop985}}
														{{if ( $loop985@iteration -1) % 4  == (string) 0}}
															{{literal}}
															<tr>{{/literal}}
															{{/if}}
															<td style="width:25%;" class="clients_rebates">
																<div class="clients_rebates_wrapper">
																	<h3>
																		<a class="product_name" href="{{$loop985->getItem("@link")}}" title="{{$loop985->getItem("@name")}}">{{$loop985->getItem("@name")}}</a>
																	</h3>
																	<span class="n67313_other_value">{{$loop985->getItem("@rebate_value")}}{{literal}}{{/literal}}
																		{{if  $loop985->getItem("@rebate_type") == (string)'p' or  $loop985->getItem("@rebate_type") == (string)'percentage'}}
																			{{$txt['77449::57379_proc']}}
																		{{elseif  $loop985->getItem("@rebate_type") == (string)'fixed_amount' or  $loop985->getItem("@rebate_type") == (string)'quota'}}
																			{{$loop985->getItemEscape("/shop/currency/@name")}}
																		{{/if}}
																		</span>
																	<div class="n67313_other_info">
																		{{if  $loop985->getItem("@calculate_from_price") == (string)'client_price' and  $loop985->getItem("@price_type") == (string)'net'}}
																			{{$txt['77449::67313_calculate_from_price_1']}}
																		{{elseif  $loop985->getItem("@calculate_from_price") == (string)'suggested_retail_price'}}
																			{{$txt['77449::67313_calculate_from_price_2']}}
																		{{elseif  $loop985->getItem("@calculate_from_price") == (string)'crossed_out_price'}}
																			{{$txt['77449::67313_calculate_from_price_3']}}
																		{{/if}}
																		{{if  $loop985->getItem("@price_type") == (string)'net'}}
																			{{$txt['77449::67313_net']}}
																		{{/if}}
																	</div>
																</div>
															</td>
															{{if ( $loop985@iteration -1) % 4  == (string) (4 - 1) or  $loop985@iteration  == (string) $loop985@total }}
																{{literal}}
															</tr>{{/literal}}
														{{/if}}
													{{/foreach}}
												</table>
											{{/if}}
											{{if ( $xml->getItem("page/rebate_code/main_cat/@active")  == (string) 'y') or ( $xml->getItem("page/rebate_code/menu/@active")  == (string) 'y')}}
												<div class="n67313_rebate_l">{{$txt['77449::57379_cat']}}
												</div>
												<table class="clients_rebates">
													{{foreach from=$xml->getList("page/rebate_code/main_cat/item") item=loop1024}}
														{{if ( $loop1024@iteration -1) % 4  == (string) 0}}
															{{literal}}
															<tr>{{/literal}}
															{{/if}}
															<td style="width:25%;" class="clients_rebates">
																<div class="clients_rebates_wrapper">
																	<h3>
																		<a class="product_name" href="{{$loop1024->getItem("@link")}}" title="{{$loop1024->getItem("@name")}}">{{$loop1024->getItem("@name")}}</a>
																	</h3>
																	<span class="n67313_other_value">{{$loop1024->getItem("@rebate_value")}}{{literal}}{{/literal}}
																		{{if  $loop1024->getItem("@rebate_type") == (string)'p' or  $loop1024->getItem("@rebate_type") == (string)'percentage'}}
																			{{$txt['77449::57379_proc']}}
																		{{elseif  $loop1024->getItem("@rebate_type") == (string)'fixed_amount' or  $loop1024->getItem("@rebate_type") == (string)'quota'}}
																			{{$loop1024->getItemEscape("/shop/currency/@name")}}
																		{{/if}}
																		</span>
																	<div class="n67313_other_info">
																		{{if  $loop1024->getItem("@calculate_from_price") == (string)'client_price' and  $loop1024->getItem("@price_type") == (string)'net'}}
																			{{$txt['77449::67313_calculate_from_price_1']}}
																		{{elseif  $loop1024->getItem("@calculate_from_price") == (string)'suggested_retail_price'}}
																			{{$txt['77449::67313_calculate_from_price_2']}}
																		{{elseif  $loop1024->getItem("@calculate_from_price") == (string)'crossed_out_price'}}
																			{{$txt['77449::67313_calculate_from_price_3']}}
																		{{/if}}
																		{{if  $loop1024->getItem("@price_type") == (string)'net'}}
																			{{$txt['77449::67313_net']}}
																		{{/if}}
																	</div>
																</div>
															</td>
															{{if ( $loop1024@iteration -1) % 4  == (string) (4 - 1) or  $loop1024@iteration  == (string) $loop1024@total }}
																{{literal}}
															</tr>{{/literal}}
														{{/if}}
													{{/foreach}}
												</table>
												<table class="clients_rebates">
													{{foreach from=$xml->getList("page/rebate_code/menu/item") item=loop1057}}
														{{if ( $loop1057@iteration -1) % 4  == (string) 0}}
															{{literal}}
															<tr>{{/literal}}
															{{/if}}
															<td style="width:25%;" class="clients_rebates">
																<div class="clients_rebates_wrapper">
																	<h3>
																		<a class="product_name" href="{{$loop1057->getItem("@link")}}" title="{{$loop1057->getItem("@name")}}">{{$loop1057->getItem("@name")}}</a>
																	</h3>
																	<span class="n67313_other_value">{{$loop1057->getItem("@rebate_value")}}{{literal}}{{/literal}}
																		{{if  $loop1057->getItem("@rebate_type") == (string)'p' or  $loop1057->getItem("@rebate_type") == (string)'percentage'}}
																			{{$txt['77449::57379_proc']}}
																		{{elseif  $loop1057->getItem("@rebate_type") == (string)'fixed_amount' or  $loop1057->getItem("@rebate_type") == (string)'quota'}}
																			{{$loop1057->getItemEscape("/shop/currency/@name")}}
																		{{/if}}
																		</span>
																	<div class="n67313_other_info">
																		{{if  $loop1057->getItem("@calculate_from_price") == (string)'client_price' and  $loop1057->getItem("@price_type") == (string)'net'}}
																			{{$txt['77449::67313_calculate_from_price_1']}}
																		{{elseif  $loop1057->getItem("@calculate_from_price") == (string)'suggested_retail_price'}}
																			{{$txt['77449::67313_calculate_from_price_2']}}
																		{{elseif  $loop1057->getItem("@calculate_from_price") == (string)'crossed_out_price'}}
																			{{$txt['77449::67313_calculate_from_price_3']}}
																		{{/if}}
																		{{if  $loop1057->getItem("@price_type") == (string)'net'}}
																			{{$txt['77449::67313_net']}}
																		{{/if}}
																	</div>
																</div>
															</td>
															{{if ( $loop1057@iteration -1) % 4  == (string) (4 - 1) or  $loop1057@iteration  == (string) $loop1057@total }}
																{{literal}}
															</tr>{{/literal}}
														{{/if}}
													{{/foreach}}
												</table>
											{{/if}}
											{{if  $xml->getItem("page/rebate_code/products_rebate[@active='y']")}}
												<div class="n67313_rebate_l">{{$txt['77449::57379_otherp']}}
												</div>
												<div class="n67313_rebate_info">
													<span class="n67313_other_value">{{$xml->getItem("page/rebate_code/products_rebate/@rebate_value")}}{{literal}}{{/literal}}
														{{if  $xml->getItem("page/rebate_code/products_rebate/@rebate_type") == (string)'p' or  $xml->getItem("page/rebate_code/products_rebate/@rebate_type") == (string)'percentage'}}
															{{$txt['77449::57379_proc']}}
														{{elseif  $xml->getItem("page/rebate_code/products_rebate/@rebate_type") == (string)'fixed_amount' or  $xml->getItem("page/rebate_code/products_rebate/@rebate_type") == (string)'quota'}}
															{{$xml->getItemEscape("/shop/currency/@name")}}
														{{/if}}
														</span>
													<div class="n67313_other_info">
														{{if  $xml->getItem("page/rebate_code/products_rebate/@calculate_from_price") == (string)'client_price' and  $xml->getItem("page/rebate_code/products_rebate/@price_type") == (string)'net'}}
															{{$txt['77449::67313_calculate_from_price_1']}}
														{{elseif  $xml->getItem("page/rebate_code/products_rebate/@calculate_from_price") == (string)'suggested_retail_price'}}
															{{$txt['77449::67313_calculate_from_price_2']}}
														{{elseif  $xml->getItem("page/rebate_code/products_rebate/@calculate_from_price") == (string)'crossed_out_price'}}
															{{$txt['77449::67313_calculate_from_price_3']}}
														{{/if}}
														{{if  $xml->getItem("page/rebate_code/products_rebate/@price_type") == (string)'net'}}
															{{$txt['77449::67313_net']}}
														{{/if}}
													</div>
												</div>
											{{/if}}
											{{if  $xml->getItem("page/rebate_code/other_products_rebate[@active='y']")}}
												<div class="n67313_rebate_l">{{$txt['77449::57379_other_products_rebate']}}
												</div>
												<div class="n67313_rebate_info">
													<span class="n67313_other_value">{{$xml->getItem("page/rebate_code/other_products_rebate/@rebate_value")}}{{literal}}{{/literal}}
														{{if  $xml->getItem("page/rebate_code/other_products_rebate/@rebate_type") == (string)'p' or  $xml->getItem("page/rebate_code/other_products_rebate/@rebate_type") == (string)'percentage'}}
															{{$txt['77449::57379_proc']}}
														{{elseif  $xml->getItem("page/rebate_code/other_products_rebate/@rebate_type") == (string)'fixed_amount' or  $xml->getItem("page/rebate_code/other_products_rebate/@rebate_type") == (string)'quota'}}
															{{$signbetweenpricecurrency}}{{$xml->getItemEscape("/shop/currency/@name")}}
														{{/if}}
														</span>
													<div class="n67313_other_info">
														{{if  $xml->getItem("page/rebate_code/other_products_rebate/@calculate_from_price") == (string)'client_price' and  $xml->getItem("page/rebate_code/other_products_rebate/@price_type") == (string)'net'}}
															{{$txt['77449::67313_calculate_from_price_1']}}
														{{elseif  $xml->getItem("page/rebate_code/other_products_rebate/@calculate_from_price") == (string)'suggested_retail_price'}}
															{{$txt['77449::67313_calculate_from_price_2']}}
														{{elseif  $xml->getItem("page/rebate_code/other_products_rebate/@calculate_from_price") == (string)'crossed_out_price'}}
															{{$txt['77449::67313_calculate_from_price_3']}}
														{{/if}}
														{{if  $xml->getItem("page/rebate_code/other_products_rebate/@price_type") == (string)'net'}}
															{{$txt['77449::67313_net']}}
														{{/if}}
													</div>
												</div>
											{{/if}}
											{{if  $xml->getItem("page/rebate_code/shipping_cost_rebate[@active='y']")}}
												<div class="n67313_rebate_l">{{$txt['77449::57379_shipping_cost_rebate']}}
												</div>
												<div class="n67313_rebate_info">
													<span class="n67313_other_value">{{$xml->getItem("page/rebate_code/shipping_cost_rebate/@rebate_value")}}{{literal}}{{/literal}}
														{{if  $xml->getItem("page/rebate_code/shipping_cost_rebate/@rebate_type") == (string)'p' or  $xml->getItem("page/rebate_code/shipping_cost_rebate/@rebate_type") == (string)'percentage'}}
															{{$txt['77449::57379_proc']}}
														{{elseif  $xml->getItem("page/rebate_code/shipping_cost_rebate/@rebate_type") == (string)'fixed_amount' or  $xml->getItem("page/rebate_code/shipping_cost_rebate/@rebate_type") == (string)'quota'}}
															{{$xml->getItemEscape("/shop/currency/@name")}}
														{{/if}}
														</span>
													{{if  $xml->getItem("page/rebate_code/shipping_cost_rebate/@price_type") == (string)'net'}}
														<div class="n67313_other_info">{{$txt['77449::67313_shipping_cost_rebate_net']}}
														</div>
													{{/if}}
												</div>
											{{/if}}
											{{if  $xml->getItem("page/rebate_code/gratis[@active='y']")}}
												<div class="n67313_gratis_out">
													<div class="n67313_rebate_l_w">{{$txt['77449::57379_gratis']}}
													</div>
													<table class="clients_rebates">
														{{foreach from=$xml->getList("page/rebate_code/gratis/item") item=loop1162}}
															{{if ( $loop1162@iteration -1) % 4  == (string) 0}}
																{{literal}}
																<tr>{{/literal}}
																{{/if}}
																<td style="width:25%;" class="clients_rebates">
																	<div class="clients_rebates_wrapper">
																		{{if !($setNameOrder_client_rebates)}}
																			<a class="product_name" href="{{$loop1162->getItem("@link")}}" title="{{$loop1162->getItem("@name")}}">{{$loop1162->getItem("@name")}}</a>
																		{{/if}}
																		<a class="product_icon" href="{{$loop1162->getItemEscape("@link")}}" title="{{$loop1162->getItem("@name")}}">
																			<img {{if $setIconLarge_client_rebates}} src="{{$loop1162->getItemEscape("icon_src")}}" {{else}} src="{{$loop1162->getItemEscape("iconsmall")}}" {{/if}} alt="{{$loop1162->getItem("@name")}}"></img></a>
																		{{if $setNameOrder_client_rebates}}
																			<a class="product_name" href="{{$loop1162->getItem("@link")}}" title="{{$loop1162->getItem("@name")}}">{{$loop1162->getItem("@name")}}</a>
																		{{/if}}
																		<span class="n67313_other_value">{{$txt['77449::57379_gratis2']}}</span>
																	</div>
																</td>
																{{if ( $loop1162@iteration -1) % 4  == (string) (4 - 1) or  $loop1162@iteration  == (string) $loop1162@total }}
																	{{literal}}
																</tr>{{/literal}}
															{{/if}}
														{{/foreach}}
													</table>
												</div>
											{{/if}}
										</div>
									{{/if}}
								</div>
							{{/if}}
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
