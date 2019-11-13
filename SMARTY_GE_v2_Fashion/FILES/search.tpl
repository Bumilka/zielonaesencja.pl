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
						{{include file="component_menu_additional2_100991.tpl"}}
						{{include file="component_menu_filter_79091.tpl"}}
						{{include file="component_menu_buttons_77612.tpl"}}
						{{include file="component_menu_additional1_76965.tpl"}}
						{{include file="component_menu_categories2_85180.tpl"}}
					</aside>
				{{/if}}
				{{if !( $xml->getItem("action/set_render/item")) or ( $xml->getItem("action/set_render/item/@name")  == (string) 'content')}}
					<div {{assign "classAttributeTmp2" ""}}  id="content"{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}span9{{/capture}}{{if $xml->getItem("page[@type='projector']")}} itemscope="itemscope" itemtype="http://schema.org/Product" {{/if}}{{if $xml->getItem("page/@type") == (string) 'projector'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['73991::70925_projector_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'search'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['73991::70925_search_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'main'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['73991::70925_main_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'navigation'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['73991::70925_navigation_page_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'blog-list' or $xml->getItem("page/@type") == (string) 'blog-item'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['73991::70925_blog_c_class']}}{{/capture}}{{else}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['73991::70925_otherwise_c_class']}}{{/capture}}{{/if}}  class="{{$classAttributeTmp2}}">
						{{include file="component_menu_messages_67953.tpl"}}
						<!--Opis kategorii w wyszukiwaniu (search_categoriesdescription, 74496.1)-->
						<div {{assign "classAttributeTmp3" ""}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}search_categoriesdescription{{/capture}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}search_categoriesdescription clearfix{{/capture}}  class="{{$classAttributeTmp3}}">
							<h1 class="big_label">
								{{if !( $xml->getItem("page/products/additional/category_list/name")  == (string) '')}}
									{{$xml->getItem("page/products/additional/category_list/name")}}
								{{else}}
									{{$txt['74496::30022_016wy']}}
								{{/if}}
							</h1>
							{{if !( $xml->getItem("page/products/@hideproducts")  == (string) 'true')}}
								<span class="navigation_total">{{$txt['74496::30022_018d']}}{{$xml->getItemEscape("page/products/navigation/@total")}}{{$txt['74496::30022_018e']}}</span>
							{{/if}}
							{{if !( $xml->getItem("page/products/additional/category_list/description")  == (string) '') and ( $xml->getItem("page/products/additional/category_list/description")) and count( $xml->getList("/shop/page/products/navigation/filtering/filter[@selected]"))  == (string) 0}}
								{{if ( $xml->getItem("/shop/page/products/@hideproducts")  == (string) 'true' ) or (( $xml->getItem("/shop/page/products/navigation/item[1]/@counter")  == (string)1) and ( $xml->getItem("/shop/page/products/navigation/item[1]/@type")  == (string)'current'))}}
									<div {{assign "classAttributeTmp4" ""}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}search_categoriesdescription_sub{{/capture}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}search_categoriesdescription_sub cm{{/capture}}  class="{{$classAttributeTmp4}}">{{$xml->getItem("page/products/additional/category_list/description")}}
									</div>
								{{/if}}
							{{/if}}
						</div>
						<!--Stronicowanie wyników (search_paging, 76577.1)-->
						<div {{assign "classAttributeTmp5" ""}}  id="paging_setting_top"{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}paging_setting{{/capture}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}paging_setting clearfix{{/capture}}  class="{{$classAttributeTmp5}}">
							<form class="search_setting clearfix" action="settings.php">
								{{if !( $xml->getItem("page/products/@hideproducts")  == (string) 'true')}}
									{{if !( $xml->getItem("/shop/page/products/navigation/@disable_sort_change")  == (string) 'y')}}
										<div class="select_sort">
											<label for="select_top_sort">{{$txt['76577::40014_8a']}}
											</label>
											<select class="sort_order" id="select_top_sort" name="sort_order" onchange="submit();">
												<option value="name-a" class="option_name-a" {{if $xml->getItem("page/products/navigation/@sort") == (string) 'name' and $xml->getItem("page/products/navigation/@order") == (string) 'a'}} selected="selected" {{/if}}>{{$txt['76577::53599_07']}}
												</option>
												<option value="name-d" class="option_name-d" {{if $xml->getItem("page/products/navigation/@sort") == (string) 'name' and $xml->getItem("page/products/navigation/@order") == (string) 'd'}} selected="selected" {{/if}}>{{$txt['76577::53599_08']}}
												</option>
												<option value="price-a"{{if $xml->getItem("page/products/navigation/@sort") == (string) 'price' and $xml->getItem("page/products/navigation/@order") == (string) 'a'}} selected="selected"{{/if}}>{{$txt['76577::40014_03']}}
												</option>
												<option value="price-d"{{if $xml->getItem("page/products/navigation/@sort") == (string) 'price' and $xml->getItem("page/products/navigation/@order") == (string) 'd'}} selected="selected"{{/if}}>{{$txt['76577::40014_04']}}
												</option>
												<option value="date-a"{{if $xml->getItem("page/products/navigation/@sort") == (string) 'date' and $xml->getItem("page/products/navigation/@order") == (string) 'a'}} selected="selected"{{/if}}>{{$txt['76577::40014_05']}}
												</option>
												<option value="date-d"{{if $xml->getItem("page/products/navigation/@sort") == (string) 'date' and $xml->getItem("page/products/navigation/@order") == (string) 'd'}} selected="selected"{{/if}}>{{$txt['76577::40014_06']}}
												</option>
											</select>
										</div>
									{{/if}}
									{{if !( $xml->getItem("/shop/page/products/navigation/@disable_portions_change")  == (string) 'y')}}
										{{if count( $xml->getList("page/products/navigation/portions"))  gt (string) 1}}
											<div class="select_portions">
												<label for="select_top_portions">{{$txt['76577::40014_8']}}
												</label>
												<select class="portions" id="select_top_portions" name="portions" onchange="submit();">
													{{foreach from=$xml->getList("page/products/navigation/portions") item=loop311}}
														<option value="{{$loop311->getItemEscape("@counter")}}" {{if $loop311->getItem("@selected") == (string) 'true'}} selected="selected" {{/if}}>{{$txt['76577::40014_8ab']}}{{$loop311->getItemEscape("@counter")}}
														</option>
													{{/foreach}}
												</select>
											</div>
										{{/if}}
									{{/if}}
									{{if count( $xml->getList("/shop/page/products/navigation/filtering/filter"))}}
										<div class="show_filters_wrapper">
											<a class="btn show_filters visible-phone" href="#menu_filter">{{$txt['76577::n58551_01']}}</a>
										</div>
									{{/if}}
								{{/if}}
							</form>
							{{if !( $xml->getItem("page/products/@hideproducts")  == (string) 'true')}}
								{{if  $xml->getItem("page/products/navigation/@total")  gt (string)  $xml->getItem("page/products/navigation/@portions")}}
									<div class="search_paging">
										<div class="search_paging_sub">
											{{if  $xml->getItem("page/products/navigation/prev")}}
												<a class="previous" href="{{$xml->getItem("page/products/navigation/path/@value")}}{{$xml->getItemEscape("page/products/navigation/prev/@counter")}}">{{$txt['76577::40011_001']}}</a>
											{{/if}}
											{{if !( $xml->getItem("page/products/navigation/prev"))}}
												<span class="previous">{{$txt['76577::40011_001']}}</span>
											{{/if}}
											{{foreach from=$xml->getList("page/products/navigation/item") item=loop354}}
												{{if  $loop354->getItem("@gap")}}
													<span class="gap">{{$txt['76577::40011_123']}}</span>
												{{/if}}
												{{if !( $loop354->getItem("@type")  == (string) 'current') and !( $loop354->getItem("@gap"))}}
													<a class="paging" href="{{$loop354->getItem("../path/@value")}}{{$loop354->getItemEscape("@counter") - 1}}">{{$loop354->getItemEscape("@counter")}}</a>
												{{/if}}
												{{if  $loop354->getItem("@type")  == (string) 'current'}}
													<span class="current">{{$loop354->getItemEscape("@counter")}}</span>
												{{/if}}
											{{/foreach}}
											{{if  $xml->getItem("page/products/navigation/next")}}
												<a class="next" href="{{$xml->getItem("page/products/navigation/path/@value")}}{{$xml->getItemEscape("page/products/navigation/next/@counter")}}">{{$txt['76577::40011_005']}}</a>
											{{/if}}
											{{if !( $xml->getItem("page/products/navigation/next"))}}
												<span class="next">{{$txt['76577::40011_005']}}</span>
											{{/if}}
										</div>
									</div>
								{{/if}}
							{{/if}}
						</div>
						<!--Filtrowanie wyników wyszukiwania (search_filters, 67012.1)-->
						{{if (count( $xml->getList("/shop/page/products/navigation/filtering/filter/@selected"))  gt (string) 0) or count( $xml->getList("/shop/page/products/navigation/filtering/filter/item/@selected"))  gt (string) 0}}
							<div id="filter_list">
								<div class="filter_list_sub">
									<div class="filter_list_label">{{$txt['67012::66463_001']}}
									</div>
									<div class="filter_list_contetn">
										{{foreach from=$xml->getList("/shop/page/products/navigation/filtering/filter[(@type='list') or (@type='text')]") item=loop402}}
											{{if ( $loop402->getItem("@selected")  neq (string) '') or count( $loop402->getList("item/@selected"))  gt (string) 0}}
												<div class="filter_list_wrapper">
													<span class="filter_list_name" id="{{$loop402->getItemEscape("@id")|replace:'[]':''}}_listname" data-link_remove="{{$loop402->getItemEscape("@link_remove")}}">{{$loop402->getItemEscape("@name")}}{{$txt['67012::66463_002']}}</span>
													<ul class="filter_list" id="{{$loop402->getItemEscape("@id")|replace:'[]':''}}_list">
														{{if ( $loop402->getItem("@id")  == (string) 'filter_price') and ( $loop402->getItem("@selected")) and !( $loop402->getItem("@selected")  == (string) '')}}
															{{if  $loop402->getItem("item[@selected = 'selected']")}}
																{{foreach from=$loop402->getList("item[@selected = 'selected']") item=loop418}}
																	<li>
																		<span class="filter_list_remove_left"></span>
																		<a class="filter_list_remove" href="{{$loop418->getItemEscape("@link_remove")}}">
																			<span>{{$loop418->getItemEscape("@name_formatted")}}</span></a>
																		<span class="filter_list_remove_right"></span>
																	</li>
																{{/foreach}}
															{{else}}
																<li>
																	<span class="filter_list_remove_left"></span>
																	<a class="filter_list_remove" href="{{$loop402->getItemEscape("@link_remove")}}">
																		<span>
																			{{if  $loop402->getItem("substring-before(@selected, '-')")  neq (string) ''}}
																				{{$loop402->getItemEscape("substring-before(@selected, '-')")}}{{$loop402->getItemEscape("/shop/currency/@name")}}
																			{{/if}}
																			-
																			{{if  $loop402->getItem("substring-after(@selected, '-')")  neq (string) ''}}
																				{{$loop402->getItemEscape("substring-after(@selected, '-')")}}{{$loop402->getItemEscape("/shop/currency/@name")}}
																			{{/if}}
																			</span></a>
																	<span class="filter_list_remove_right"></span>
																</li>
															{{/if}}
														{{elseif ( $loop402->getItem("@id")  == (string) 'filter_date') and ( $loop402->getItem("@selected")) and !( $loop402->getItem("@selected")  == (string) '')}}
															{{if  $loop402->getItem("item[@selected = 'selected']")}}
																{{foreach from=$loop402->getList("item[@selected = 'selected']") item=loop450}}
																	<li>
																		<span class="filter_list_remove_left"></span>
																		<a class="filter_list_remove" href="{{$loop450->getItemEscape("@link_remove")}}">
																			<span>
																				{{if  $loop450->getItem("@desc")  == (string) '1week'}}
																					{{$txt['67012::66412_012_0011']}}
																				{{elseif  $loop450->getItem("@desc")  == (string) '1month'}}
																					{{$txt['67012::66412_012_001']}}
																				{{elseif  $loop450->getItem("@desc")  == (string) '3months'}}
																					{{$txt['67012::66412_012_002']}}
																				{{elseif  $loop450->getItem("@desc")  == (string) '6months'}}
																					{{$txt['67012::66412_012_003']}}
																				{{elseif  $loop450->getItem("@desc")  == (string) '1year'}}
																					{{$txt['67012::66412_012_004']}}
																				{{/if}}
																				</span></a>
																		<span class="filter_list_remove_right"></span>
																	</li>
																{{/foreach}}
															{{else}}
																<li>
																	<span class="filter_list_remove_left"></span>
																	<a class="filter_list_remove" href="{{$loop402->getItemEscape("@link_remove")}}">
																		<span>{{$loop402->getItemEscape("@selected")}}</span></a>
																	<span class="filter_list_remove_right"></span>
																</li>
															{{/if}}
														{{elseif ( $loop402->getItem("@id")  == (string) 'filter_text') and ( $loop402->getItem("@selected")) and !( $loop402->getItem("@selected")  == (string) '')}}
															<li>
																<span class="filter_list_remove_left"></span>
																<a class="filter_list_remove" href="{{$loop402->getItemEscape("@link_remove")}}">
																	<span>{{$loop402->getItemEscape("@selected")}}</span></a>
																<span class="filter_list_remove_right"></span>
															</li>
														{{else}}
															{{foreach from=$loop402->getList("item[@selected = 'selected']") item=loop484}}
																<li>
																	<span class="filter_list_remove_left"></span>
																	<a class="filter_list_remove" href="{{$loop484->getItemEscape("@link_remove")}}">
																		<span>{{$loop484->getItemEscape("@name")}}</span></a>
																	<span class="filter_list_remove_right"></span>
																</li>
															{{/foreach}}
														{{/if}}
													</ul>
												</div>
											{{/if}}
										{{/foreach}}
										{{if count( $xml->getList("/shop/page/products/navigation/filtering/filter[@type='dual']/item[@selected = 'selected']"))  gt (string) 0}}
											<div id="filter_list_dual" class="filter_list_wrapper">
												<span class="filter_list_name">{{$txt['67012::66463_003']}}{{$txt['67012::66463_002']}}</span>
												<ul class="filter_list">
													{{foreach from=$xml->getList("/shop/page/products/navigation/filtering/filter[@type='dual']/item[@selected = 'selected']") item=loop513}}
														<li>
															<span class="filter_list_remove_left"></span>
															<a class="filter_list_remove" href="{{$loop513->getItemEscape("../@link_remove")}}">
																<span>{{$loop513->getItemEscape("../@name")}}</span></a>
															<span class="filter_list_remove_right"></span>
														</li>
													{{/foreach}}
												</ul>
											</div>
										{{/if}}
									</div>
								</div>
							</div>
						{{/if}}
						<!--Ustawienia wyszukiwania (search_settings, 75885.1)-->
						{{if  $xml->getItem("compare/@count")  gt (string) 0}}
							<div id="menu_compare_product">
								<div class="big_label">{{$txt['75885::55103_002']}}
								</div>
								<div class="compare_product_sub align_row" data-align="img#css">
									{{foreach from=$xml->getList("compare/product") item=loop541}}
										<a href="{{$loop541->getItemEscape("@removelink")}}">
											<img src="{{$loop541->getItemEscape("iconsmall")}}" alt="{{$loop541->getItem("name")}}"></img></a>
									{{/foreach}}
								</div>
								{{if  $xml->getItem("compare/@count")  gt (string) 1}}
									<div class="compare_buttons">
										<a class="btn-small" href="settings.php?comparers=remove&#160;amp;product= {{foreach from=$xml->getList("compare/product") item=loop557}}{{$loop557->getItemEscape("@id")}}{{if !(count( $loop557->getList("../product")) == (string) $loop557@iteration )}},{{/if}}{{/foreach}} " title="{{$txt['75885::55103_00_1b']}}">{{$txt['75885::55103_00_2b']}}</a>
										<a class="btn-small" href="product-compare.php" title="{{$txt['75885::55103_003']}}" target="{{$txt['75885::55103_023']}}">{{$txt['75885::55103_004']}}</a>
									</div>
								{{/if}}
							</div>
						{{/if}}
						<!--Lista produktów (search, 93310.1)-->
						{{capture name="param_search" assign="param_search"}}
							{{$txt['93310::58230_setParam']}}
						{{/capture}}
						{{capture name="param_search_gfx" assign="param_search_gfx"}}
							{{$txt['93310::58230_setParamGfx']}}
						{{/capture}}
						{{capture name="addcompare_txt" assign="addcompare_txt"}}
							{{$txt['93310::54084_00_2']}}
						{{/capture}}
						{{if  $xml->getItem("/shop/page/products/display_mode[@active='normal']")}}
							<div {{assign "classAttributeTmp6" ""}}  id="search"{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}row{{/capture}}{{if count( $xml->getList("/shop/page/products/product")) == (string) 1}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}row col-md-4 col-xs-6{{/capture}}{{/if}}{{if count( $xml->getList("/shop/page/products/product")) == (string) 2}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}row col-md-8 col-xs-12{{/capture}}{{/if}} data-column="{{$txt['93310::7487444_hotspot_column']}}" data-wrapType="{{$txt['93310::7487444_hotspot_wrapType']}}"  class="{{$classAttributeTmp6}}">
								{{foreach from=$xml->getList("/shop/page/products/product") item=loop589}}
									<div class=" product_wrapper col-md-4 col-xs-6 {{if $loop589->getItem("/shop/page/@ecommerce_module_class")}}{{capture name='ecommerce_module_separator' assign='ecommerce_module_separator'}}{productId}{{/capture}}{{capture name='ecommerce_module_class_before' assign='ecommerce_module_class_before'}}{{$loop589->getItemEscape("substring-before(/shop/page/@ecommerce_module_class, $ecommerce_module_separator)")}}{{/capture}}{{capture name='ecommerce_module_class_after' assign='ecommerce_module_class_after'}}{{$loop589->getItemEscape("substring-after(/shop/page/@ecommerce_module_class, $ecommerce_module_separator)")}}{{/capture}}{{$ecommerce_module_class_before}}{{$loop589->getItemEscape("@id")}}{{$ecommerce_module_class_after}}{{/if}} ">
										<div class="product_wrapper_sub">
											{{if  $loop589->getItem("/shop/compare/@active")  == (string) 'y' and $addcompare_txt}}
												<a {{assign "hrefAttributeTmp8" ""}}{{assign "classAttributeTmp7" ""}}{{capture name="classAttributeTmp7" assign="classAttributeTmp7"}}btn-regular compare_add{{/capture}}{{if $loop589->getItem("@id") == (string) $loop589->getItem("/shop/compare/product/@id")}}{{capture name="classAttributeTmp7" assign="classAttributeTmp7"}}btn-regular compare_add active{{/capture}}{{capture name="hrefAttributeTmp8" assign="hrefAttributeTmp8"}}settings.php?comparers=remove&#160;amp;product={{$loop589->getItemEscape("@id")}}{{/capture}} title="{{$txt['93310::58826_rem_title']}}" {{$txt['93310::54084_00_2a']}} {{else}}{{capture name="hrefAttributeTmp8" assign="hrefAttributeTmp8"}}settings.php?comparers=add&#160;amp;product={{$loop589->getItemEscape("@id")}}{{/capture}} title="{{$txt['93310::58826_title_comp']}}" {{$txt['93310::54084_00_2ico']}}{{$addcompare_txt}}{{/if}}  class="{{$classAttributeTmp7}}"  href="{{$hrefAttributeTmp8}}"></a>
											{{/if}}
											<a class="product-icon align_row" data-align="img#css" href="{{$loop589->getItemEscape("@link")}}">
												{{if  $loop589->getItem("price/@max_diff_percent")}}
													<span class="product_percent_price_value">{{$loop589->getItemEscape("price/@max_diff_percent")}}%</span>
												{{/if}}
												<img class="b-lazy" src="/gfx/__IAI_TEMPLATE_LANG_639_1__/loader.gif?r=1570606529" data-src-small="{{$loop589->getItem("icon_small")}}" data-src="{{$loop589->getItem("icon")}}" alt="{{$loop589->getItem("name")}}"></img>
												<strong class="label_icons">
													{{if  $loop589->getItem("@promo")}}
														<span class="label promo">{{$txt['93310::53885_307pro']}}</span>
													{{/if}}
													{{if  $loop589->getItem("@new")}}
														<span class="label newproducts">{{$txt['93310::53885_307n']}}</span>
													{{/if}}
													{{if  $loop589->getItem("@promo") and  $loop589->getItem("@new")}}
													{{elseif  $loop589->getItem("@promo") or  $loop589->getItem("@new")}}
														{{if  $loop589->getItem("@bestseller")}}
															<span class="label bestseller">{{$txt['93310::53885_307b']}}</span>
														{{elseif  $loop589->getItem("@discount")}}
															<span class="label discount">{{$txt['93310::53885_307pr']}}</span>
														{{elseif  $loop589->getItem("@distinguished")}}
															<span class="label distinguished">{{$txt['93310::53885_307p']}}</span>
														{{/if}}
													{{else}}
														{{if  $loop589->getItem("@bestseller")}}
															<span class="label bestseller">{{$txt['93310::53885_307b']}}</span>
														{{/if}}
														{{if  $loop589->getItem("@discount")}}
															<span class="label discount">{{$txt['93310::53885_307pr']}}</span>
														{{/if}}
														{{if  $loop589->getItem("@distinguished") and !( $loop589->getItem("@bestseller") and  $loop589->getItem("@discount"))}}
															<span class="label distinguished">{{$txt['93310::53885_307p']}}</span>
														{{/if}}
													{{/if}}
													</strong></a>
											<a class="product-name" href="{{$loop589->getItemEscape("@link")}}" title="{{$loop589->getItem("name")}}">{{$loop589->getItem("name")}}</a>
											<div class="product_prices">
												{{if ( $loop589->getItem("sizes/prices/@minprice_formatted")  neq (string)  $loop589->getItem("sizes/prices/@maxprice_formatted")) or ( $loop589->getItem("sizes/prices/@minprice_unit_formatted")  neq (string)  $loop589->getItem("sizes/prices/@maxprice_unit_formatted"))}}
													<span class="price">{{$txt['93310::32344_000']}}
														{{if  $loop589->getItem("sizes/prices/@minprice_unit_formatted")}}
															{{$loop589->getItemEscape("sizes/prices/@minprice_unit_formatted")}}
														{{else}}
															{{$loop589->getItemEscape("sizes/prices/@minprice_formatted")}}
														{{/if}}
														{{$txt['93310::32344_001']}}
														{{if  $loop589->getItem("sizes/prices/@maxprice_unit_formatted")}}
															{{$loop589->getItemEscape("sizes/prices/@maxprice_unit_formatted")}}
														{{else}}
															{{$loop589->getItemEscape("sizes/prices/@maxprice_formatted")}}
														{{/if}}
														{{if  $loop589->getItem("sizes/prices/@minprice_unit_formatted")}}
															{{literal}}/{{/literal}}{{$loop589->getItemEscape("sizes/@unit_sellby")}}{{literal}}{{/literal}}{{$loop589->getItemEscape("sizes/@unit")}}
														{{/if}}
														</span>
													{{if ( $loop589->getItem("sizes/prices/@size_min_maxprice_formatted")  neq (string)  $loop589->getItem("sizes/prices/@size_max_maxprice_formatted")) or ( $loop589->getItem("sizes/prices/@size_min_maxprice_unit_formatted")  neq (string)  $loop589->getItem("sizes/prices/@size_max_maxprice_unit_formatted"))}}
														<del class="max-price">
															{{if  $loop589->getItem("sizes/prices/@size_min_maxprice_unit_formatted")}}
																<span>{{$loop589->getItemEscape("sizes/prices/@size_min_maxprice_unit_formatted")}}</span>
																<b>{{$txt['93310::32344_001']}}</b>
																<span>{{$loop589->getItemEscape("sizes/prices/@size_max_maxprice_unit_formatted")}}</span>
															{{else}}
																<span>{{$loop589->getItemEscape("sizes/prices/@size_min_maxprice_formatted")}}</span>
																<b>{{$txt['93310::32344_001']}}</b>
																<span>{{$loop589->getItemEscape("sizes/prices/@size_max_maxprice_formatted")}}</span>
															{{/if}}
															</del>
													{{/if}}
												{{elseif ( $loop589->getItem("sizes/prices/@minprice")  == (string) 0) and !( $loop589->getItem("price/@points"))}}
													<a class="fon_price" data-mobile-class="btn-small" href="/contact.php" title="{{$txt['93310::58826_009']}}">{{$txt['93310::58826_010']}}</a>
												{{else}}
													<span class="price">{{$txt['93310::58826_003']}}
														{{if  $loop589->getItem("price/@price_unit_formatted")}}
															{{$loop589->getItemEscape("price/@price_unit_formatted")}}{{literal}}/{{/literal}}{{$loop589->getItemEscape("sizes/@unit_sellby")}}{{literal}}{{/literal}}{{$loop589->getItemEscape("sizes/@unit")}}
														{{else}}
															{{$loop589->getItemEscape("sizes/prices/@minprice_formatted")}}
															{{if  $loop589->getItem("price/@unit_converted_price_formatted")}}
																<small class="s_unit_converted_price">
																	({{$loop589->getItemEscape("price/@unit_converted_price_formatted")}}/{{$loop589->getItemEscape("price/@unit_converted_format")}})</small>
															{{/if}}
														{{/if}}
														</span>
													{{if  $loop589->getItem("price/@maxprice") or  $loop589->getItem("price/@maxprice_unit")}}
														<del class="max-price">{{$txt['93310::58826_006']}}
															{{if  $loop589->getItem("price/@maxprice_unit_formatted")}}
																{{$loop589->getItemEscape("price/@maxprice_unit_formatted")}}
															{{else}}
																{{$loop589->getItemEscape("price/@maxprice_formatted")}}
															{{/if}}
															</del>
													{{/if}}
													{{if  $loop589->getItem("price/@points")}}
														{{$txt['93310::58826_005']}}
														<span class="point-price">{{$loop589->getItemEscape("price/@points")}}
															<span class="currency">{{$txt['93310::58826_012']}}</span></span>
													{{/if}}
												{{/if}}
											</div>
											{{if  $loop589->getItem("sizes/size/@type")  == (string) 'uniw'}}
												<form action="/basketchange.php" method="post">
													<input type="hidden" name="product" value="{{$loop589->getItemEscape("@id")}}"></input>
													<input type="hidden" value="uniw" name="size"/>
													<input type="hidden" value="1" name="number"/>
													<button type="submit" class="btn">{{$txt['93310::352412_1_addtobasket']}}
													</button>
												</form>
											{{else}}
												<div class="basket_buttons_container">
													<button type="submit" class="btn show_sizes_toplayer">{{$txt['93310::352412_1_addtobasket']}}
													</button>
													<div class="product_size_list">
														<h3>{{$txt['93310::6346345_choosesize']}}
														</h3>
														<form action="/basketchange.php" method="post">
															<input type="hidden" name="product" value="{{$loop589->getItemEscape("@id")}}"></input>
															<select name="size">
																{{foreach from=$loop589->getList("sizes/size") item=loop762}}
																	<option value="{{$loop762->getItemEscape("@type")}}">{{$loop762->getItemEscape("@name")}}
																	</option>
																{{/foreach}}
															</select>
															<input type="hidden" value="1" name="number"/>
															<button type="submit" class="btn">{{$txt['93310::352412_1_addtobasket']}}
															</button>
														</form>
													</div>
												</div>
											{{/if}}
											{{if count( $loop589->getList("versions/version/@gfx_small"))  gt (string) 1 or (!( $loop589->getItem("sizes/size/@type") == (string)'uniw'))}}
												<div class="search_details">
													{{if !( $loop589->getItem("sizes/size/@type") == (string)'uniw')}}
														<div class="sizes_wrapper">
															<label>{{$txt['93310::74559_001']}}
															</label>
															{{foreach from=$loop589->getList("sizes/size") item=loop783}}
																<span>{{$loop783->getItemEscape("@description")}}</span>
															{{/foreach}}
														</div>
													{{/if}}
													{{if count( $loop589->getList("versions/version/@gfx_small"))  gt (string) 1}}
														<div class="versions_wrapper">
															{{foreach from=$loop589->getList("versions/version") item=loop792}}
																<a href="{{$loop792->getItemEscape("@link")}}">
																	<img src="{{$loop792->getItemEscape("@gfx_small")}}" alt="{{$loop792->getItemEscape("@name")}}"></img></a>
															{{/foreach}}
														</div>
													{{/if}}
												</div>
											{{/if}}
											{{if !($param_search)}}
												{{if  $loop589->getItem("traits/trait[not(@gfx)]")}}
													<div class="list_traits">
														<ul>
															{{foreach from=$loop589->getList("traits/trait[not(@gfx)]") item=loop812}}
																{{if !( $loop812->getItem("@groupid")  == (string)  $loop812->getItem("preceding-sibling::trait/@groupid"))}}
																	<li>
																		<span>{{$loop812->getItemEscape("@groupdescription")}}{{$txt['93310::58668_traitseparator']}}</span>
																		<div>
																			<a href="{{$loop812->getItemEscape("@link")}}">{{$loop812->getItemEscape("@traitdescription")}}</a>
																			{{if  $loop812->getItem("@groupid")  == (string)  $loop812->getItem("following-sibling::trait/@groupid")}}
																				{{capture name="temporaryGroup" assign="temporaryGroup"}}
																					{{$loop812->getItemEscape("@groupid")}}
																				{{/capture}}
																				{{foreach from=$loop812->getList("following-sibling::trait[(@groupid = {{$temporaryGroup}})]") item=loop821}}{{$txt['93310::n58633_traitseparator']}}
																					<a href="{{$loop821->getItemEscape("@link")}}">{{$loop821->getItemEscape("@traitdescription")}}</a>
																				{{/foreach}}
																			{{/if}}
																		</div>
																	</li>
																{{/if}}
															{{/foreach}}
														</ul>
													</div>
												{{/if}}
											{{/if}}
											{{if !($param_search_gfx)}}
												{{if  $loop589->getItem("traits/trait[@gfx2]")}}
													<div class="list_traits_gfx">
														<ul>
															{{foreach from=$loop589->getList("traits/trait[@gfx2]") item=loop838}}
																<li>
																	<a title="{{$loop838->getItemEscape("@groupdescription")}}{{literal}} {{/literal}}{{$loop838->getItemEscape("@traitdescription")}}" href="{{$loop838->getItemEscape("@link")}}">
																		<img src="{{$loop838->getItemEscape("@gfx2")}}" alt="{{$loop838->getItemEscape("@traitdescription")}}"></img></a>
																</li>
															{{/foreach}}
														</ul>
													</div>
												{{/if}}
											{{/if}}
										</div>
									</div>
								{{/foreach}}
							</div>
						{{/if}}
						<!--Stronicowanie, sekcja 2 (search_paging2, 76579.1)-->
						<div class="paging_setting">
							<form id="search_setting_bottom" class="search_setting clearfix" action="settings.php">
								{{if  $xml->getItem("page/products/navigation/next")}}
									{{if !( $xml->getItem("/shop/page/products/navigation/@disable_sort_change")  == (string) 'y')}}
										<div class="select_sort">
											<label for="select_bottom_sort">{{$txt['76579::40014_8a']}}
											</label>
											<select class="sort_order" id="select_bottom_sort" name="sort_order" onchange="submit();">
												<option value="name-a" class="option_name-a" {{if $xml->getItem("page/products/navigation/@sort") == (string) 'name' and $xml->getItem("page/products/navigation/@order") == (string) 'a'}} selected="selected" {{/if}}>{{$txt['76579::53599_07']}}
												</option>
												<option value="name-d" class="option_name-d" {{if $xml->getItem("page/products/navigation/@sort") == (string) 'name' and $xml->getItem("page/products/navigation/@order") == (string) 'd'}} selected="selected" {{/if}}>{{$txt['76579::53599_08']}}
												</option>
												<option value="price-a"{{if $xml->getItem("page/products/navigation/@sort") == (string) 'price' and $xml->getItem("page/products/navigation/@order") == (string) 'a'}} selected="selected"{{/if}}>{{$txt['76579::40014_03']}}
												</option>
												<option value="price-d"{{if $xml->getItem("page/products/navigation/@sort") == (string) 'price' and $xml->getItem("page/products/navigation/@order") == (string) 'd'}} selected="selected"{{/if}}>{{$txt['76579::40014_04']}}
												</option>
												<option value="date-a"{{if $xml->getItem("page/products/navigation/@sort") == (string) 'date' and $xml->getItem("page/products/navigation/@order") == (string) 'a'}} selected="selected"{{/if}}>{{$txt['76579::40014_05']}}
												</option>
												<option value="date-d"{{if $xml->getItem("page/products/navigation/@sort") == (string) 'date' and $xml->getItem("page/products/navigation/@order") == (string) 'd'}} selected="selected"{{/if}}>{{$txt['76579::40014_06']}}
												</option>
											</select>
										</div>
									{{/if}}
									{{if !( $xml->getItem("/shop/page/products/navigation/@disable_portions_change")  == (string) 'y')}}
										{{if count( $xml->getList("page/products/navigation/portions"))  gt (string) 1}}
											<div class="select_portions">
												<label for="select_bottom_portions">{{$txt['76579::40014_8']}}
												</label>
												<select class="portions" id="select_bottom_portions" name="portions" onchange="submit();">
													{{foreach from=$xml->getList("page/products/navigation/portions") item=loop894}}
														<option value="{{$loop894->getItemEscape("@counter")}}" {{if $loop894->getItem("@selected") == (string) 'true'}} selected="selected" {{/if}}>{{$loop894->getItemEscape("@counter")}}
														</option>
													{{/foreach}}
												</select>
											</div>
										{{/if}}
									{{/if}}
								{{/if}}
							</form>
							{{if !( $xml->getItem("page/products/@hideproducts")  == (string) 'true')}}
								{{if  $xml->getItem("page/products/navigation/@total")  gt (string)  $xml->getItem("page/products/navigation/@portions")}}
									<div class="search_paging" id="search_paging_bottom">
										<div class="search_paging_sub">
											{{if  $xml->getItem("page/products/navigation/prev")}}
												<a class="previous" href="{{$xml->getItem("page/products/navigation/path/@value")}}{{$xml->getItemEscape("page/products/navigation/prev/@counter")}}">{{$txt['76579::40011_001']}}</a>
											{{/if}}
											{{if !( $xml->getItem("page/products/navigation/prev"))}}
												<span class="previous">{{$txt['76579::40011_001']}}</span>
											{{/if}}
											{{foreach from=$xml->getList("page/products/navigation/item") item=loop930}}
												{{if  $loop930->getItem("@gap")}}
													<span class="gap">{{$txt['76579::40011_123']}}</span>
												{{/if}}
												{{if !( $loop930->getItem("@type")  == (string) 'current') and !( $loop930->getItem("@gap"))}}
													<a class="paging" href="{{$loop930->getItem("../path/@value")}}{{$loop930->getItemEscape("@counter") - 1}}">{{$loop930->getItemEscape("@counter")}}</a>
												{{/if}}
												{{if  $loop930->getItem("@type")  == (string) 'current'}}
													<span class="current">{{$loop930->getItemEscape("@counter")}}</span>
												{{/if}}
											{{/foreach}}
											{{if  $xml->getItem("page/products/navigation/next")}}
												<a class="next" href="{{$xml->getItem("page/products/navigation/path/@value")}}{{$xml->getItemEscape("page/products/navigation/next/@counter")}}">{{$txt['76579::40011_005']}}</a>
											{{/if}}
											{{if !( $xml->getItem("page/products/navigation/next"))}}
												<span class="next">{{$txt['76579::40011_005']}}</span>
											{{/if}}
										</div>
									</div>
								{{/if}}
							{{/if}}
						</div>
					</div>
				{{/if}}
			</div>
		</div>
		{{if !( $xml->getItem("action/set_render/item")) or ( $xml->getItem("action/set_render/item/@name")  == (string) 'footer')}}
			<footer class="{{$txt['73991::70925_footer_class']}}">
				{{include file="component_menu_hotspot_zone1_70977.tpl"}}
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
