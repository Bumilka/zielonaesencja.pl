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
			<script type="text/javascript" src="/gfx/{{$xml->getItemEscape("language/@id")}}/menu_filter.js.gzip?r=1570606968">			</script>

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
						{{include file="component_menu_additional2_106529.tpl"}}
						{{include file="component_menu_filter_106530.tpl"}}
						{{include file="component_menu_buttons_106536.tpl"}}
					</aside>
				{{/if}}
				{{if !( $xml->getItem("action/set_render/item")) or ( $xml->getItem("action/set_render/item/@name")  == (string) 'content')}}
					<div {{assign "classAttributeTmp2" ""}}  id="content"{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}span9{{/capture}}{{if $xml->getItem("page/@type") == (string) 'projector'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['107419::70925_projector_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'search'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['107419::70925_search_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'main'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['107419::70925_main_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'navigation'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['107419::70925_navigation_page_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'blog-list'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['107419::70925_blog_list_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'blog-item'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['107419::70925_blog_item_c_class']}}{{/capture}}{{else}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['107419::70925_otherwise_c_class']}}{{/capture}}{{/if}}  class="{{$classAttributeTmp2}}">
						{{include file="component_menu_messages_106608.tpl"}}
						<!--Opis kategorii w wyszukiwaniu (search_categoriesdescription, 106637.1)-->
						<div class="search_categoriesdescription">
							<h1 class="big_label">
								{{if !( $xml->getItem("page/products/additional/category_list/name")  == (string) '')}}
									{{$xml->getItem("page/products/additional/category_list/name")}}
								{{else}}
									{{$txt['106637::30022_016wy']}}
								{{/if}}
							</h1>
							{{if !( $xml->getItem("page/products/@hideproducts")  == (string) 'true')}}
								<span class="navigation_total">{{$txt['106637::30022_018d']}}{{$xml->getItemEscape("page/products/navigation/@total")}}{{$txt['106637::30022_018e']}}</span>
							{{/if}}
							{{if !( $xml->getItem("page/products/additional/category_list/description")  == (string) '') and ( $xml->getItem("page/products/additional/category_list/description")) and count( $xml->getList("/shop/page/products/navigation/filtering/filter[@selected]"))  == (string) 0}}
								{{if ( $xml->getItem("/shop/page/products/@hideproducts")  == (string) 'true' ) or (( $xml->getItem("/shop/page/products/navigation/item[1]/@counter")  == (string)1) and ( $xml->getItem("/shop/page/products/navigation/item[1]/@type")  == (string)'current'))}}
									<div class="search_categoriesdescription_sub cm skeleton">{{$xml->getItem("page/products/additional/category_list/description")}}
									</div>
								{{/if}}
							{{/if}}
						</div>
						<!--Stronicowanie wyników (search_paging, 106638.1)-->
						<div id="paging_setting_top" class="paging_setting clearfix">
							<form class="search_setting clearfix" action="/settings.php">
								{{if !( $xml->getItem("page/products/@hideproducts")  == (string) 'true')}}
									{{if !( $xml->getItem("/shop/page/products/navigation/@disable_sort_change")  == (string) 'y')}}
										<div class="select_sort">
											<label for="select_top_sort">{{$txt['106638::40014_8a']}}
											</label>
											<select class="sort_order" id="select_top_sort" name="sort_order" onchange="submit();">
												<option value="name-a" class="option_name-a" {{if $xml->getItem("page/products/navigation/@sort") == (string) 'name' and $xml->getItem("page/products/navigation/@order") == (string) 'a'}} selected="selected" {{/if}}>{{$txt['106638::53599_07']}}
												</option>
												<option value="name-d" class="option_name-d" {{if $xml->getItem("page/products/navigation/@sort") == (string) 'name' and $xml->getItem("page/products/navigation/@order") == (string) 'd'}} selected="selected" {{/if}}>{{$txt['106638::53599_08']}}
												</option>
												<option value="price-a"{{if $xml->getItem("page/products/navigation/@sort") == (string) 'price' and $xml->getItem("page/products/navigation/@order") == (string) 'a'}} selected="selected"{{/if}}>{{$txt['106638::40014_03']}}
												</option>
												<option value="price-d"{{if $xml->getItem("page/products/navigation/@sort") == (string) 'price' and $xml->getItem("page/products/navigation/@order") == (string) 'd'}} selected="selected"{{/if}}>{{$txt['106638::40014_04']}}
												</option>
												<option value="date-a"{{if $xml->getItem("page/products/navigation/@sort") == (string) 'date' and $xml->getItem("page/products/navigation/@order") == (string) 'a'}} selected="selected"{{/if}}>{{$txt['106638::40014_05']}}
												</option>
												<option value="date-d"{{if $xml->getItem("page/products/navigation/@sort") == (string) 'date' and $xml->getItem("page/products/navigation/@order") == (string) 'd'}} selected="selected"{{/if}}>{{$txt['106638::40014_06']}}
												</option>
											</select>
										</div>
									{{/if}}
								{{/if}}
							</form>
							<form class="search_setting clearfix" action="/settings.php">
								{{if !( $xml->getItem("page/products/@hideproducts")  == (string) 'true')}}
									{{if !( $xml->getItem("/shop/page/products/navigation/@disable_portions_change")  == (string) 'y')}}
										{{if count( $xml->getList("page/products/navigation/portions"))  gt (string) 1}}
											<div class="select_portions">
												<label for="select_top_portions">{{$txt['106638::40014_8']}}
												</label>
												<select class="portions" id="select_top_portions" name="portions" onchange="submit();">
													{{foreach from=$xml->getList("page/products/navigation/portions") item=loop317}}
														<option value="{{$loop317->getItemEscape("@counter")}}" {{if $loop317->getItem("@selected") == (string) 'true'}} selected="selected" {{/if}}>{{$txt['106638::40014_8ab']}}{{$loop317->getItemEscape("@counter")}}
														</option>
													{{/foreach}}
												</select>
											</div>
										{{/if}}
									{{/if}}
									{{if count( $xml->getList("/shop/page/products/navigation/filtering/filter"))}}
										<div class="show_filters_wrapper">
											<a class="btn show_filters visible-tablet" href="#menu_filter">{{$txt['106638::n58551_01']}}</a>
										</div>
									{{/if}}
								{{/if}}
							</form>
							{{if !( $xml->getItem("page/products/@hideproducts")  == (string) 'true')}}
								{{if count( $xml->getList("page/products/navigation/item"))}}
									<ul class="pagination d-none d-sm-inline-block d-md-block mb-3 mb-sm-0">
										{{if count( $xml->getList("page/products/navigation/item"))  gt (string) 1}}
											{{if  $xml->getItem("page/products/navigation/prev")}}
												<li>
													<a href=" {{$xml->getItem("page/products/navigation/path/@value")}}{{$xml->getItemEscape("page/products/navigation/prev/@counter")}}">{{$txt['106638::affiliate_products_002']}}</a>
												</li>
											{{/if}}
											{{if !( $xml->getItem("page/products/navigation/prev"))}}
												<li class="disabled">
													<span>{{$txt['106638::affiliate_products_002a']}}</span>
												</li>
											{{/if}}
											{{foreach from=$xml->getList("page/products/navigation/item") item=loop368}}
												{{if  $loop368->getItem("@gap")}}
													<li class="disabled">
														<span>{{$txt['106638::affiliate_calculations_007']}}</span>
													</li>
												{{/if}}
												{{if !( $loop368->getItem("@type")  == (string) 'current') and !( $loop368->getItem("@gap"))}}
													<li>
														<a href="{{$loop368->getItem("../path/@value")}}{{$loop368->getItemEscape("@counter") - 1}}">{{$loop368->getItemEscape("@counter")}}</a>
													</li>
												{{/if}}
												{{if  $loop368->getItem("@type")  == (string) 'current'}}
													<li class="active">
														<span>{{$loop368->getItemEscape("@counter")}}</span>
													</li>
												{{/if}}
											{{/foreach}}
											{{if  $xml->getItem("page/products/navigation/next")}}
												<li>
													<a href="{{$xml->getItem("page/products/navigation/path/@value")}}{{$xml->getItemEscape("page/products/navigation/next/@counter")}}">{{$txt['106638::affiliate_products_003']}}</a>
												</li>
											{{/if}}
											{{if !( $xml->getItem("page/products/navigation/next"))}}
												<li class="disabled">
													<span>{{$txt['106638::affiliate_products_003a']}}</span>
												</li>
											{{/if}}
										{{/if}}
									</ul>
								{{/if}}
							{{/if}}
						</div>
						<!--Filtrowanie wyników wyszukiwania (search_filters, 106645.1)-->
						{{if (count( $xml->getList("/shop/page/products/navigation/filtering/filter/@selected"))  gt (string) 0) or count( $xml->getList("/shop/page/products/navigation/filtering/filter/item/@selected"))  gt (string) 0}}
							{{capture name="show_remove_button" assign="show_remove_button"}}
								{{$txt['106645::show_remove_button']}}
							{{/capture}}
							<div id="filter_list" >
								<div class="filter_list_content">
									{{if $show_remove_button}}
										<a {{assign "hrefAttributeTmp5" ""}}  class="remove_all_list_filters btn-small btn-inverse"{{capture name="hrefAttributeTmp5" assign="hrefAttributeTmp5"}}/settings.php?filter_remove=all{{/capture}}{{if $xml->getItem("/shop/page/products/navigation/search_link/@value")}}{{capture name="hrefAttributeTmp5" assign="hrefAttributeTmp5"}}{{$xml->getItemEscape("/shop/page/products/navigation/search_link/@value ")}}{{/capture}}{{/if}} title="{{$txt['106645::n56366_remove_all_tit_list']}}"  href="{{$hrefAttributeTmp5}}">{{$txt['106645::n56366_remove_all_list']}}</a>
									{{/if}}
									{{foreach from=$xml->getList("/shop/page/products/navigation/filtering/filter[(@type='list') or (@type='text')]") item=loop427}}
										{{if ( $loop427->getItem("@selected")  neq (string) '') or count( $loop427->getList("item/@selected"))  gt (string) 0}}
											{{if ( $loop427->getItem("@id")  == (string) 'filter_price') and ( $loop427->getItem("@selected")) and !( $loop427->getItem("@selected")  == (string) '')}}
												{{if  $loop427->getItem("item[@selected = 'selected']")}}
													{{foreach from=$loop427->getList("item[@selected = 'selected']") item=loop432}}
														<a class="filter_list_remove btn-regular" href="{{$loop432->getItemEscape("@link_remove")}}">
															<span>{{$loop432->getItemEscape("@name_formatted")}}</span></a>
													{{/foreach}}
												{{else}}
													<a class="filter_list_remove btn-regular" href="{{$loop427->getItemEscape("@link_remove")}}">
														<span>
															{{if  $loop427->getItem("substring-before(@selected, '-')")  neq (string) ''}}
																{{$loop427->getItemEscape("substring-before(@selected, '-')")}}{{$loop427->getItemEscape("/shop/currency/@name")}}
															{{/if}}
															-
															{{if  $loop427->getItem("substring-after(@selected, '-')")  neq (string) ''}}
																{{$loop427->getItemEscape("substring-after(@selected, '-')")}}{{$loop427->getItemEscape("/shop/currency/@name")}}
															{{/if}}
															</span></a>
												{{/if}}
											{{elseif ( $loop427->getItem("@id")  == (string) 'filter_date') and ( $loop427->getItem("@selected")) and !( $loop427->getItem("@selected")  == (string) '')}}
												{{if  $loop427->getItem("item[@selected = 'selected']")}}
													{{foreach from=$loop427->getList("item[@selected = 'selected']") item=loop456}}
														<a class="filter_list_remove btn-regular" href="{{$loop456->getItemEscape("@link_remove")}}">
															<span>
																{{if  $loop456->getItem("@desc")  == (string) '1week'}}
																	{{$txt['106645::66412_012_0011']}}
																{{elseif  $loop456->getItem("@desc")  == (string) '1month'}}
																	{{$txt['106645::66412_012_001']}}
																{{elseif  $loop456->getItem("@desc")  == (string) '3months'}}
																	{{$txt['106645::66412_012_002']}}
																{{elseif  $loop456->getItem("@desc")  == (string) '6months'}}
																	{{$txt['106645::66412_012_003']}}
																{{elseif  $loop456->getItem("@desc")  == (string) '1year'}}
																	{{$txt['106645::66412_012_004']}}
																{{/if}}
																</span></a>
													{{/foreach}}
												{{else}}
													<a class="filter_list_remove btn-regular" href="{{$loop427->getItemEscape("@link_remove")}}">
														<span>{{$loop427->getItemEscape("@selected")}}</span></a>
												{{/if}}
											{{elseif ( $loop427->getItem("@id")  == (string) 'filter_text') and ( $loop427->getItem("@selected")) and !( $loop427->getItem("@selected")  == (string) '')}}
												<a class="filter_list_remove btn-regular" href="{{$loop427->getItemEscape("@link_remove")}}">
													<span>{{$loop427->getItemEscape("@selected")}}</span></a>
											{{else}}
												{{foreach from=$loop427->getList("item[@selected = 'selected']") item=loop478}}
													<a class="filter_list_remove btn-regular" href="{{$loop478->getItemEscape("@link_remove")}}">
														<span>{{$loop478->getItemEscape("@name")}}</span></a>
												{{/foreach}}
											{{/if}}
										{{/if}}
									{{/foreach}}
									{{foreach from=$xml->getList("/shop/page/products/navigation/filtering/filter[@type='dual']/item[@selected = 'selected']") item=loop490}}
										<a class="filter_list_remove btn-regular" href="{{$loop490->getItemEscape("../@link_remove")}}">
											<span>{{$loop490->getItemEscape("../@name")}}</span></a>
									{{/foreach}}
									{{foreach from=$xml->getList("/shop/page/products/navigation/filtering/filter[@selected != '' or count(item/@selected) > 0]/group/item[@selected = 'selected']") item=loop498}}
										<a class="filter_list_remove btn-regular" href="{{$loop498->getItemEscape("@link_remove")}}">
											<span>{{$loop498->getItemEscape("@name")}}</span></a>
									{{/foreach}}
								</div>
							</div>
						{{/if}}
						<!--Ustawienia wyszukiwania (search_settings, 106644.1)-->
						{{if  $xml->getItem("compare/@count")  gt (string) 0 or  $xml->getItem("/shop/page/@cache_html")  == (string) 'true'}}
							<div id="menu_compare_product" {{if $xml->getItem("/shop/page[@cache_html='true']")}} style="display:none" {{/if}}>
								<div class="big_label">{{$txt['106644::55103_002']}}
								</div>
								<div class="compare_product_sub align_row" data-align="img#css">
									{{foreach from=$xml->getList("compare/product") item=loop517}}
										<a href="{{$loop517->getItemEscape("@link")}}">
											<img src="{{$loop517->getItemEscape("iconsmall")}}" alt="{{$loop517->getItem("name")}}"></img></a>
									{{/foreach}}
								</div>
								<div class="compare_buttons">
									<a {{assign "hrefAttributeTmp6" ""}}  class="btn-small" id="comparers_remove_btn"{{capture name="hrefAttributeTmp6" assign="hrefAttributeTmp6"}}settings.php?comparers=remove&#160;amp;product= {{foreach from=$xml->getList("compare/product") item=loop532}}{{$loop532->getItemEscape("@id")}}{{if !(count( $loop532->getList("../product")) == (string) $loop532@iteration )}},{{/if}}{{/foreach}}{{/capture}}{{if $xml->getItem("/shop/action/settings/@url")}}{{capture name="hrefAttributeTmp6" assign="hrefAttributeTmp6"}}{{$xml->getItemEscape("/shop/action/settings/@url")}}?comparers=remove&#160;amp;product= {{foreach from=$xml->getList("compare/product") item=loop537}}{{$loop537->getItemEscape("@id")}}{{if !(count( $loop537->getList("../product")) == (string) $loop537@iteration )}},{{/if}}{{/foreach}}{{/capture}}{{if $xml->getItem("/shop/page[@cache_html='true']")}}{{capture name="hrefAttributeTmp6" assign="hrefAttributeTmp6"}}{{$xml->getItemEscape("/shop/action/settings/@url")}}?comparers=remove&#160;amp;product=###{{/capture}}{{/if}}{{/if}} title="{{$txt['106644::55103_00_1b']}}"  href="{{$hrefAttributeTmp6}}">{{$txt['106644::55103_00_2b']}}</a>
									{{if  $xml->getItem("compare/@count")  gt (string) 1 or  $xml->getItem("/shop/page/@cache_html")  == (string) 'true'}}
										<a {{assign "hrefAttributeTmp7" ""}}  class="btn-small"{{capture name="hrefAttributeTmp7" assign="hrefAttributeTmp7"}}product-compare.php{{/capture}}{{if $xml->getItem("/shop/action/productCompare/@url")}}{{capture name="hrefAttributeTmp7" assign="hrefAttributeTmp7"}}{{$xml->getItemEscape("/shop/action/productCompare/@url")}}{{/capture}}{{/if}} title="{{$txt['106644::55103_003']}}" target="{{$txt['106644::55103_023']}}"  href="{{$hrefAttributeTmp7}}">
											<span>{{$txt['106644::55103_004']}}</span>
											<span class="d-sm-none">({{$xml->getItemEscape("compare/@count")}})</span></a>
									{{/if}}
								</div>
								{{if  $xml->getItem("/shop/page[@cache_html='true']")}}
									<script>
                        app_shop.run(function(){ menu_compare_cache(); }, 'all');
                    									</script>

								{{/if}}
							</div>
						{{/if}}
						<!--Lista produktów (search, 108334.1)-->
						{{capture name="param_search" assign="param_search"}}
							{{$txt['108334::58230_setParam']}}
						{{/capture}}
						{{capture name="param_search_gfx" assign="param_search_gfx"}}
							{{$txt['108334::58230_setParamGfx']}}
						{{/capture}}
						{{capture name="addcompare_txt" assign="addcompare_txt"}}
							{{$txt['108334::54084_00_2']}}
						{{/capture}}
						{{capture name="var_yousave" assign="var_yousave"}}
							{{$txt['108334::TXT_hotspot_yousave']}}
						{{/capture}}
						{{if  $xml->getItem("/shop/page/products/display_mode[@active='normal']")}}
							<div id="search" class="row">
								{{foreach from=$xml->getList("/shop/page/products/product") item=loop575}}
									<div {{assign "classAttributeTmp3" ""}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}product_wrapper col-6 col-sm-4{{/capture}} data-product_id="{{$loop575->getItemEscape("@id")}}" {{if $loop575->getItem("/shop/page/@ecommerce_module_class")}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}} {{$txt['108334::SETTING_106639_product_wrapper']}} {{capture name='ecommerce_module_separator' assign='ecommerce_module_separator'}}{productId}{{/capture}}{{capture name='ecommerce_module_class_before' assign='ecommerce_module_class_before'}}{{$loop575->getItemEscape("substring-before(/shop/page/@ecommerce_module_class, $ecommerce_module_separator)")}}{{/capture}}{{capture name='ecommerce_module_class_after' assign='ecommerce_module_class_after'}}{{$loop575->getItemEscape("substring-after(/shop/page/@ecommerce_module_class, $ecommerce_module_separator)")}}{{/capture}}{{$ecommerce_module_class_before}}{{$loop575->getItemEscape("@id")}}{{$ecommerce_module_class_after}}{{/capture}}{{/if}}  class="{{$classAttributeTmp3}}">
										{{if  $loop575->getItem("/shop/compare/@active")  == (string) 'y' and $addcompare_txt}}
											<a {{assign "hrefAttributeTmp8" ""}}{{assign "classAttributeTmp4" ""}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}btn-regular compare_add{{/capture}} rel="nofollow" {{if $loop575->getItem("@id") == (string) $loop575->getItem("/shop/compare/product/@id")}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}btn-regular compare_add remove{{/capture}}{{if $loop575->getItem("/shop/action/settings/@url")}}{{capture name="hrefAttributeTmp8" assign="hrefAttributeTmp8"}}{{$loop575->getItemEscape("/shop/action/settings/@url")}}?comparers=remove&#160;amp;product={{$loop575->getItemEscape("@id")}}{{/capture}}{{/if}} title="{{$txt['108334::58826_rem_title']}}" {{$txt['108334::54084_00_2a']}} {{else}}{{if $loop575->getItem("/shop/action/settings/@url")}}{{capture name="hrefAttributeTmp8" assign="hrefAttributeTmp8"}}{{$loop575->getItemEscape("/shop/action/settings/@url")}}?comparers=add&#160;amp;product={{$loop575->getItemEscape("@id")}}{{/capture}}{{/if}} title="{{$txt['108334::58826_title_comp']}}" {{$txt['108334::54084_00_2ico']}}{{$addcompare_txt}}{{/if}}  class="{{$classAttributeTmp4}}"  href="{{$hrefAttributeTmp8}}"></a>
										{{/if}}
										{{if $var_yousave and !($var_yousave  == (string) '') and  $loop575->getItem("price/@yousave_formatted")  neq (string) ''}}
											<div class="hotspot_yousave">
												<span class="yousave_label">{{$var_yousave}}</span>
												<span class="yousave_value">{{$loop575->getItemEscape("price/@yousave_formatted")}}</span>
											</div>
										{{/if}}
										<a class="product-icon align_row" data-align="img#css" href="{{$loop575->getItemEscape("@link")}}" data-product-id="{{$loop575->getItemEscape("@id")}}">
											<img class="b-lazy" src="/gfx/__IAI_TEMPLATE_LANG_639_1__/loader.gif?r=1570606968" data-src-small="{{$loop575->getItem("icon_small")}}" data-src="{{$loop575->getItem("icon")}}" alt="{{$loop575->getItem("name")}}"></img>
											<strong class="label_icons">
												{{if  $loop575->getItem("@promo")}}
													<span class="label promo">{{$txt['108334::53885_307pro']}}</span>
												{{/if}}
												{{if  $loop575->getItem("@new")}}
													<span class="label newproducts">{{$txt['108334::53885_307n']}}</span>
												{{/if}}
												{{if  $loop575->getItem("@promo") and  $loop575->getItem("@new")}}
												{{elseif  $loop575->getItem("@promo") or  $loop575->getItem("@new")}}
													{{if  $loop575->getItem("@bestseller")}}
														<span class="label bestseller">{{$txt['108334::53885_307b']}}</span>
													{{elseif  $loop575->getItem("@discount")}}
														<span class="label discount">{{$txt['108334::53885_307pr']}}</span>
													{{elseif  $loop575->getItem("@distinguished")}}
														<span class="label distinguished">{{$txt['108334::53885_307p']}}</span>
													{{/if}}
												{{else}}
													{{if  $loop575->getItem("@bestseller")}}
														<span class="label bestseller">{{$txt['108334::53885_307b']}}</span>
													{{/if}}
													{{if  $loop575->getItem("@discount")}}
														<span class="label discount">{{$txt['108334::53885_307pr']}}</span>
													{{/if}}
													{{if  $loop575->getItem("@distinguished") and !( $loop575->getItem("@bestseller") and  $loop575->getItem("@discount"))}}
														<span class="label distinguished">{{$txt['108334::53885_307p']}}</span>
													{{/if}}
												{{/if}}
												</strong></a>
										<h3>
											<a class="product-name" href="{{$loop575->getItemEscape("@link")}}" title="{{$loop575->getItem("name")}}">{{$loop575->getItem("name")}}</a>
										</h3>
										<div class="product_prices">
											{{if ( $loop575->getItem("sizes/prices/@minprice_formatted")  neq (string)  $loop575->getItem("sizes/prices/@maxprice_formatted")) or ( $loop575->getItem("sizes/prices/@minprice_unit_formatted")  neq (string)  $loop575->getItem("sizes/prices/@maxprice_unit_formatted"))}}
												<span class="price">{{$txt['108334::32344_000']}}
													{{if  $loop575->getItem("sizes/prices/@minprice_unit_formatted")}}
														{{$loop575->getItemEscape("sizes/prices/@minprice_unit_formatted")}}
													{{else}}
														{{$loop575->getItemEscape("sizes/prices/@minprice_formatted")}}
													{{/if}}
													{{$txt['108334::32344_001']}}
													{{if  $loop575->getItem("sizes/prices/@maxprice_unit_formatted")}}
														{{$loop575->getItemEscape("sizes/prices/@maxprice_unit_formatted")}}
													{{else}}
														{{$loop575->getItemEscape("sizes/prices/@maxprice_formatted")}}
													{{/if}}
													{{if  $loop575->getItem("sizes/prices/@minprice_unit_formatted")}}
														{{literal}}/{{/literal}}{{$loop575->getItemEscape("sizes/@unit_sellby")}}{{literal}}{{/literal}}{{$loop575->getItemEscape("sizes/@unit")}}
													{{/if}}
													</span>
												{{if ( $loop575->getItem("sizes/prices/@size_min_maxprice_formatted")  neq (string)  $loop575->getItem("sizes/prices/@size_max_maxprice_formatted")) or ( $loop575->getItem("sizes/prices/@size_min_maxprice_unit_formatted")  neq (string)  $loop575->getItem("sizes/prices/@size_max_maxprice_unit_formatted"))}}
													<del class="max-price">
														{{if  $loop575->getItem("sizes/prices/@size_min_maxprice_unit_formatted")}}
															<span>{{$loop575->getItemEscape("sizes/prices/@size_min_maxprice_unit_formatted")}}</span>
															<b>{{$txt['108334::32344_001']}}</b>
															<span>{{$loop575->getItemEscape("sizes/prices/@size_max_maxprice_unit_formatted")}}</span>
														{{else}}
															<span>{{$loop575->getItemEscape("sizes/prices/@size_min_maxprice_formatted")}}</span>
															<b>{{$txt['108334::32344_001']}}</b>
															<span>{{$loop575->getItemEscape("sizes/prices/@size_max_maxprice_formatted")}}</span>
														{{/if}}
														</del>
												{{/if}}
											{{elseif ( $loop575->getItem("sizes/prices/@minprice")  == (string) 0) and !( $loop575->getItem("price/@points"))}}
												<a class="fon_price" data-mobile-class="btn-small" href="/contact.php" title="{{$txt['108334::58826_009']}}">{{$txt['108334::58826_010']}}</a>
											{{else}}
												<span class="price">{{$txt['108334::58826_003']}}
													{{if  $loop575->getItem("price/@price_unit_formatted")}}
														{{$loop575->getItemEscape("price/@price_unit_formatted")}}{{literal}}/{{/literal}}{{$loop575->getItemEscape("sizes/@unit_sellby")}}{{literal}}{{/literal}}{{$loop575->getItemEscape("sizes/@unit")}}
													{{else}}
														{{$loop575->getItemEscape("sizes/prices/@minprice_formatted")}}{{literal}}/{{/literal}}{{$loop575->getItemEscape("sizes/@unit")}}
													{{/if}}
													</span>
												{{if  $loop575->getItem("price/@maxprice") or  $loop575->getItem("price/@maxprice_unit")}}
													<del class="max-price">{{$txt['108334::58826_006']}}
														{{if  $loop575->getItem("price/@maxprice_unit_formatted")}}
															{{$loop575->getItemEscape("price/@maxprice_unit_formatted")}}
														{{else}}
															{{$loop575->getItemEscape("price/@maxprice_formatted")}}
														{{/if}}
														</del>
												{{/if}}
												{{if  $loop575->getItem("price/@points")}}
													{{$txt['108334::58826_005']}}
													<span class="point-price">{{$loop575->getItemEscape("price/@points")}}
														<span class="currency">{{$txt['108334::58826_012']}}</span></span>
												{{/if}}
											{{/if}}
											{{if  $loop575->getItem("price/@unit_converted_price_formatted")}}
												<small class="s_unit_converted_price">{{$loop575->getItemEscape("price/@unit_converted_price_formatted")}}{{literal}}/{{/literal}}{{$loop575->getItemEscape("price/@unit_converted_format")}}</small>
											{{/if}}
										</div>
										{{if count( $loop575->getList("versions/version/@gfx_small"))  gt (string) 1 or (!( $loop575->getItem("sizes/size/@type") == (string)'uniw'))}}
											<div class="search_details">
												{{if !( $loop575->getItem("sizes/size/@type") == (string)'uniw')}}
													<div class="sizes_wrapper">
														<label>{{$txt['108334::74559_001']}}
														</label>
														{{foreach from=$loop575->getList("sizes/size") item=loop738}}
															<span>{{$loop738->getItemEscape("@description")}}</span>
														{{/foreach}}
													</div>
												{{/if}}
												{{if count( $loop575->getList("versions/version/@gfx_small"))  gt (string) 1}}
													<div class="versions_wrapper">
														{{foreach from=$loop575->getList("versions/version") item=loop747}}
															<a href="{{$loop747->getItemEscape("@link")}}">
																<img src="{{$loop747->getItemEscape("@gfx_small")}}" alt="{{$loop747->getItemEscape("@name")}}"></img></a>
														{{/foreach}}
													</div>
												{{/if}}
											</div>
										{{/if}}
										{{if !($param_search)}}
											{{if  $loop575->getItem("traits/trait[not(@gfx)]") and  $loop575->getItem("traits/trait[not(contains(@groupdescription, 'gs1:'))]")}}
												<div class="list_traits">
													<ul>
														{{foreach from=$loop575->getList("traits/trait[not(@gfx)]") item=loop767}}
															{{if !( $loop767->getItem("@groupid")  == (string)  $loop767->getItem("preceding-sibling::trait/@groupid")) and !( $loop767->getItem("contains(@groupdescription, 'gs1:')"))}}
																<li>
																	<span>{{$loop767->getItemEscape("@groupdescription")}}{{$txt['108334::58668_traitseparator']}}</span>
																	<div>
																		<a href="{{$loop767->getItemEscape("@link")}}">{{$loop767->getItemEscape("@traitdescription")}}</a>
																		{{if  $loop767->getItem("@groupid")  == (string)  $loop767->getItem("following-sibling::trait/@groupid")}}
																			{{capture name="temporaryGroup" assign="temporaryGroup"}}
																				{{$loop767->getItemEscape("@groupid")}}
																			{{/capture}}
																			{{foreach from=$loop767->getList("following-sibling::trait[(@groupid = {{$temporaryGroup}})]") item=loop776}}{{$txt['108334::n58633_traitseparator']}}
																				<a href="{{$loop776->getItemEscape("@link")}}">{{$loop776->getItemEscape("@traitdescription")}}</a>
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
											{{if  $loop575->getItem("traits/trait[@gfx2]")}}
												<div class="list_traits_gfx">
													<ul>
														{{foreach from=$loop575->getList("traits/trait[@gfx2]") item=loop793}}
															<li>
																<a title="{{$loop793->getItemEscape("@groupdescription")}}{{literal}} {{/literal}}{{$loop793->getItemEscape("@traitdescription")}}" href="{{$loop793->getItemEscape("@link")}}">
																	<img src="{{$loop793->getItemEscape("@gfx2")}}" alt="{{$loop793->getItemEscape("@traitdescription")}}"></img></a>
															</li>
														{{/foreach}}
													</ul>
												</div>
											{{/if}}
										{{/if}}
									</div>
								{{/foreach}}
							</div>
						{{/if}}
						<!--Stronicowanie, sekcja 2 (search_paging2, 106643.1)-->
						<div class="paging_setting_bottom" id="search_paging_bottom">
							<form id="search_setting_bottom" class="search_setting" action="/settings.php">
								{{if  $xml->getItem("page/products/navigation/next")}}
									{{if !( $xml->getItem("/shop/page/products/navigation/@disable_sort_change")  == (string) 'y')}}
										<div class="select_sort">
											<label for="select_bottom_sort">{{$txt['106643::40014_8a']}}
											</label>
											<select class="sort_order" id="select_bottom_sort" name="sort_order" onchange="submit();">
												<option value="name-a" class="option_name-a" {{if $xml->getItem("page/products/navigation/@sort") == (string) 'name' and $xml->getItem("page/products/navigation/@order") == (string) 'a'}} selected="selected" {{/if}}>{{$txt['106643::53599_07']}}
												</option>
												<option value="name-d" class="option_name-d" {{if $xml->getItem("page/products/navigation/@sort") == (string) 'name' and $xml->getItem("page/products/navigation/@order") == (string) 'd'}} selected="selected" {{/if}}>{{$txt['106643::53599_08']}}
												</option>
												<option value="price-a"{{if $xml->getItem("page/products/navigation/@sort") == (string) 'price' and $xml->getItem("page/products/navigation/@order") == (string) 'a'}} selected="selected"{{/if}}>{{$txt['106643::40014_03']}}
												</option>
												<option value="price-d"{{if $xml->getItem("page/products/navigation/@sort") == (string) 'price' and $xml->getItem("page/products/navigation/@order") == (string) 'd'}} selected="selected"{{/if}}>{{$txt['106643::40014_04']}}
												</option>
												<option value="date-a"{{if $xml->getItem("page/products/navigation/@sort") == (string) 'date' and $xml->getItem("page/products/navigation/@order") == (string) 'a'}} selected="selected"{{/if}}>{{$txt['106643::40014_05']}}
												</option>
												<option value="date-d"{{if $xml->getItem("page/products/navigation/@sort") == (string) 'date' and $xml->getItem("page/products/navigation/@order") == (string) 'd'}} selected="selected"{{/if}}>{{$txt['106643::40014_06']}}
												</option>
											</select>
										</div>
									{{/if}}
									{{if !( $xml->getItem("/shop/page/products/navigation/@disable_portions_change")  == (string) 'y')}}
										{{if count( $xml->getList("page/products/navigation/portions"))  gt (string) 1}}
											<div class="select_portions">
												<label for="select_bottom_portions">{{$txt['106643::40014_8']}}
												</label>
												<select class="portions" id="select_bottom_portions" name="portions" onchange="submit();">
													{{foreach from=$xml->getList("page/products/navigation/portions") item=loop848}}
														<option value="{{$loop848->getItemEscape("@counter")}}" {{if $loop848->getItem("@selected") == (string) 'true'}} selected="selected" {{/if}}>{{$txt['106643::40014_8ab_bottom']}}{{$loop848->getItemEscape("@counter")}}
														</option>
													{{/foreach}}
												</select>
											</div>
										{{/if}}
									{{/if}}
								{{/if}}
							</form>
							{{if !( $xml->getItem("page/products/@hideproducts")  == (string) 'true')}}
								{{if count( $xml->getList("page/products/navigation/item"))}}
									<ul class="pagination d-sm-inline-block d-md-block">
										{{if count( $xml->getList("page/products/navigation/item"))  gt (string) 1}}
											{{if  $xml->getItem("page/products/navigation/prev")}}
												<li>
													<a class="prev" href=" {{$xml->getItem("page/products/navigation/path/@value")}}{{$xml->getItemEscape("page/products/navigation/prev/@counter")}}">{{$txt['106643::affiliate_products_002']}}</a>
												</li>
											{{/if}}
											{{if !( $xml->getItem("page/products/navigation/prev"))}}
												<li class="disabled">
													<span class="prev">{{$txt['106643::affiliate_products_002a']}}</span>
												</li>
											{{/if}}
											{{foreach from=$xml->getList("page/products/navigation/item") item=loop893}}
												{{if  $loop893->getItem("@gap")}}
													<li class="disabled">
														<span>{{$txt['106643::affiliate_calculations_007']}}</span>
													</li>
												{{/if}}
												{{if !( $loop893->getItem("@type")  == (string) 'current') and !( $loop893->getItem("@gap"))}}
													<li>
														<a href="{{$loop893->getItem("../path/@value")}}{{$loop893->getItemEscape("@counter") - 1}}">{{$loop893->getItemEscape("@counter")}}</a>
													</li>
												{{/if}}
												{{if  $loop893->getItem("@type")  == (string) 'current'}}
													<li class="active">
														<span>{{$loop893->getItemEscape("@counter")}}</span>
													</li>
												{{/if}}
											{{/foreach}}
											{{if  $xml->getItem("page/products/navigation/next")}}
												<li>
													<a class="next" href="{{$xml->getItem("page/products/navigation/path/@value")}}{{$xml->getItemEscape("page/products/navigation/next/@counter")}}">{{$txt['106643::affiliate_products_003']}}</a>
												</li>
											{{/if}}
											{{if !( $xml->getItem("page/products/navigation/next"))}}
												<li class="disabled">
													<span class="next">{{$txt['106643::affiliate_products_003a']}}</span>
												</li>
											{{/if}}
										{{/if}}
									</ul>
								{{/if}}
							{{/if}}
						</div>
						<!--Hotspot w search strefa 1 (search_hotspot_zone1, 92231.1)-->
						{{if  $xml->getItem("/shop/page/products/additional/hotspot/products_zone1/@iairs_ajax")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/products/additional/hotspot/products_zone1/@hotspot_ajax")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/products/additional/hotspot/products_zone1/@name")}}
						{{/if}}
					</div>
				{{/if}}
			</div>
		</div>
		{{if !( $xml->getItem("action/set_render/item")) or ( $xml->getItem("action/set_render/item/@name")  == (string) 'footer')}}
			<footer class="{{$txt['107419::70925_footer_class']}}">
				{{include file="component_menu_search_hotspot1_bis_106612.tpl"}}
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
		<script type="text/javascript" src="/gfx/{{$xml->getItemEscape("language/@id")}}/search_categoriesdescription.js.gzip?r=1570606968">		</script>

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
