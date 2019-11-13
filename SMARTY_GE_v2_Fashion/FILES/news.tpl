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
						<!--Nowości w sklepie (news, 68342.1)-->
						{{capture name="setLink_back" assign="setLink_back"}}
							{{$txt['68342::53698_x']}}
						{{/capture}}
						{{if  $xml->getItem("/shop/page/news")}}
							<div class="n65105_news" itemscope="" itemtype="http://schema.org/NewsArticle">
								<div class="n65105_news_sub">
									<table>
										<tbody>
											<tr>
												<td class="n53963">
													<h1 {{assign "classAttributeTmp3" ""}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}n53963{{/capture}} itemprop="name"{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}big_label n53963{{/capture}}  class="{{$classAttributeTmp3}}">{{$xml->getItem("/shop/page/news/title")}}
													</h1>
												</td>
												{{if  $xml->getItem("/shop/page/news/date")}}
													<td class="date">
														<div class="date" itemprop="dateCreated">{{$xml->getItem("/shop/page/news/date")}}
														</div>
													</td>
												{{/if}}
											</tr>
											<tr>
												<td colspan="2" class="news">
													<div {{assign "classAttributeTmp4" ""}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}n65105_news_text{{/capture}} itemprop="description"{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}n65105_news_text cm{{/capture}}  class="{{$classAttributeTmp4}}">{{$xml->getItem("/shop/page/news/description")}}
													</div>
													{{if $setLink_back}}
														<div class="back">
															<a class="back" href="#" onClick="if(document.referrer=='') window.location.href = '/news.php'; else history.back();return false;">{{$txt['68342::53698_x']}}</a>
														</div>
													{{/if}}
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						{{/if}}
						{{if  $xml->getItem("/shop/page/newslist")}}
							<div class="n65105_news_list">
								<div class="n65105_news_list_top">
								</div>
								<h1 class="big_label">{{$txt['68342::53825_001']}}
								</h1>
								<div class="n65105_news_list_sub">
									{{if (!( $xml->getItem("/shop/page/newslist/mainpage"))) and (!( $xml->getItem("/shop/page/newslist/mainpage1"))) and (!( $xml->getItem("/shop/page/newslist/mainpage2")))}}
										<div id="return_message" class="n54531_outline">
											<div class="n54531_outline_sub">
												<h3 class="return_label">{{$txt['68342::53698_braknewsow']}}
												</h3>
											</div>
										</div>
									{{/if}}
									{{foreach from=$xml->getList("page/newslist/mainpage1/item") item=loop307}}
										<div {{assign "classAttributeTmp5" ""}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}n65105_news_list_item{{/capture}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}{{if ( $loop307@iteration == (string)1) and ( $loop307@iteration neq (string) $loop307@total )}}n65105_news_list_item_first{{/if}}{{if $loop307@iteration == (string) $loop307@total }}n65105_news_list_item_last{{/if}}{{if ( $loop307@iteration neq (string)1) and ( $loop307@iteration neq (string) $loop307@total )}}n65105_news_list_item{{/if}}{{/capture}}  class="{{$classAttributeTmp5}}">
											<div class="n65105_news_list_item_sub">
												<table border="0">
													<tbody>
														<tr>
															<td class="main_news2">
																<h2 class="main_news2">
																	{{if  $loop307->getItem("link/@href")}}
																		<a href="{{$loop307->getItemEscape("link/@href")}}">{{$loop307->getItem("title")}}</a>
																	{{else}}
																		{{$loop307->getItem("title")}}
																	{{/if}}
																</h2>
															</td>
															{{if  $loop307->getItem("date")}}
																<td class="date">
																	<div class="date">{{$loop307->getItem("date")}}
																	</div>
																</td>
															{{/if}}
														</tr>
														<tr>
															<td class="news" colspan="2">
																{{if  $loop307->getItem("image/@src")}}
																	{{if  $loop307->getItem("link/@href")}}
																		<a href="{{$loop307->getItemEscape("link/@href")}}" title="{{$loop307->getItemEscape("title/text()")}}">
																			<img class="newspage_item" src="{{$loop307->getItemEscape("image/@src")}}" alt="{{$loop307->getItemEscape("title/text()")}}"></img></a>
																	{{else}}
																		<img class="newspage_item" src="{{$loop307->getItemEscape("image/@src")}}" alt="{{$loop307->getItemEscape("title/text()")}}"></img>
																	{{/if}}
																{{/if}}
																<div {{assign "classAttributeTmp6" ""}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}n65105_news_list_text{{/capture}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}n65105_news_list_text cm{{/capture}}  class="{{$classAttributeTmp6}}">{{$loop307->getItem("description")}}
																	{{if  $loop307->getItem("link/@href")}}
																		<span class="more_53963">
																			<a class="n53963" href="{{$loop307->getItemEscape("link/@href")}}" title="{{$loop307->getItem("title")}}">{{$txt['68342::53698_xx']}}</a></span>
																	{{/if}}
																</div>
															</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									{{/foreach}}
									{{foreach from=$xml->getList("page/newslist/mainpage2/item") item=loop387}}
										<div {{assign "classAttributeTmp7" ""}}{{capture name="classAttributeTmp7" assign="classAttributeTmp7"}}n65105_news_list_item{{/capture}}{{capture name="classAttributeTmp7" assign="classAttributeTmp7"}}{{if ( $loop387@iteration == (string)1) and ( $loop387@iteration neq (string) $loop387@total )}}n65105_news_list_item_first{{/if}}{{if $loop387@iteration == (string) $loop387@total }}n65105_news_list_item_last{{/if}}{{if ( $loop387@iteration neq (string)1) and ( $loop387@iteration neq (string) $loop387@total )}}n65105_news_list_item{{/if}}{{/capture}}  class="{{$classAttributeTmp7}}">
											<div class="n65105_news_list_item_sub">
												<table border="0">
													<tbody>
														<tr>
															<td class="main_news2">
																<h2 class="main_news2">
																	{{if  $loop387->getItem("link/@href")}}
																		<a href="{{$loop387->getItemEscape("link/@href")}}">{{$loop387->getItem("title")}}</a>
																	{{else}}
																		{{$loop387->getItem("title")}}
																	{{/if}}
																</h2>
															</td>
															{{if  $loop387->getItem("date")}}
																<td class="date">
																	<div class="date">{{$loop387->getItem("date")}}
																	</div>
																</td>
															{{/if}}
														</tr>
														<tr>
															<td class="news" colspan="2">
																{{if  $loop387->getItem("image/@src")}}
																	{{if  $loop387->getItem("link/@href")}}
																		<a href="{{$loop387->getItemEscape("link/@href")}}" title="{{$loop387->getItemEscape("title/text()")}}">
																			<img class="newspage_item" src="{{$loop387->getItemEscape("image/@src")}}" alt="{{$loop387->getItemEscape("title/text()")}}"></img></a>
																	{{else}}
																		<img class="newspage_item" src="{{$loop387->getItemEscape("image/@src")}}" alt="{{$loop387->getItemEscape("title/text()")}}"></img>
																	{{/if}}
																{{/if}}
																<div class="n65105_news_list_text">{{$loop387->getItem("description")}}
																	{{if  $loop387->getItem("link/@href")}}
																		<span class="more_53963">
																			<a class="n53963" href="{{$loop387->getItemEscape("link/@href")}}" title="{{$loop387->getItem("title")}}">{{$txt['68342::53698_xx']}}</a></span>
																	{{/if}}
																</div>
															</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									{{/foreach}}
									{{foreach from=$xml->getList("page/newslist/mainpage/item") item=loop462}}
										<div {{assign "classAttributeTmp8" ""}}{{capture name="classAttributeTmp8" assign="classAttributeTmp8"}}n65105_news_list_item{{/capture}}{{capture name="classAttributeTmp8" assign="classAttributeTmp8"}}{{if ( $loop462@iteration == (string)1) and ( $loop462@iteration neq (string) $loop462@total )}}n65105_news_list_item_first{{/if}}{{if $loop462@iteration == (string) $loop462@total }}n65105_news_list_item_last{{/if}}{{if ( $loop462@iteration neq (string)1) and ( $loop462@iteration neq (string) $loop462@total )}}n65105_news_list_item{{/if}}{{/capture}}  class="{{$classAttributeTmp8}}">
											<div class="n65105_news_list_item_sub">
												<table border="0">
													<tbody>
														<tr>
															<td class="main_news2">
																<h2 class="main_news2">
																	{{if  $loop462->getItem("link/@href")}}
																		<a href="{{$loop462->getItemEscape("link/@href")}}">{{$loop462->getItem("title")}}</a>
																	{{else}}
																		{{$loop462->getItem("title")}}
																	{{/if}}
																</h2>
															</td>
															{{if  $loop462->getItem("date")}}
																<td class="date">
																	<div class="date">{{$loop462->getItem("date")}}
																	</div>
																</td>
															{{/if}}
														</tr>
														<tr>
															<td class="news" colspan="2">
																{{if  $loop462->getItem("image/@src")}}
																	{{if  $loop462->getItem("link/@href")}}
																		<a href="{{$loop462->getItemEscape("link/@href")}}" title="{{$loop462->getItemEscape("title/text()")}}">
																			<img class="newspage_item" src="{{$loop462->getItemEscape("image/@src")}}" alt="{{$loop462->getItemEscape("title/text()")}}"></img></a>
																	{{else}}
																		<img class="newspage_item" src="{{$loop462->getItemEscape("image/@src")}}" alt="{{$loop462->getItemEscape("title/text()")}}"></img>
																	{{/if}}
																{{/if}}
																<div class="n65105_news_list_text">{{$loop462->getItem("description")}}
																	{{if  $loop462->getItem("link/@href")}}
																		<span class="more_53963">
																			<a class="n53963" href="{{$loop462->getItemEscape("link/@href")}}" title="{{$loop462->getItem("title")}}">{{$txt['68342::53698_xx']}}</a></span>
																	{{/if}}
																</div>
															</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									{{/foreach}}
								</div>
							</div>
						{{/if}}
						<!--stronicowanie newsów (news_paging, 57615.1)-->
						{{if (count( $xml->getList("page/newslist/navigation/item"))  gt (string) 1)}}
							<table align="center" cellspacing="0" cellpadding="0" class="news_paging">
								<tr>
									<td valign="top" align="center" class="news_paging_left">
										{{if  $xml->getItem("page/newslist/navigation/prev")}}
											<a class="news_paging_prev" href="{{$xml->getItem("page/newslist/navigation/path/@value")}}{{$xml->getItemEscape("page/newslist/navigation/prev/@counter")}}">{{$txt['57615::40022_001']}}</a>
										{{/if}}
										{{if !( $xml->getItem("page/newslist/navigation/prev"))}}
											<span class="news_paging_prev">{{$txt['57615::40022_002']}}</span>
										{{/if}}
									</td>
									<td valign="top" align="center" class="news_paging_center">
										{{foreach from=$xml->getList("page/newslist/navigation/item") item=loop563}}
											{{if  $loop563->getItem("@gap")}}
												<span class="pagging_gap">{{$txt['57615::40011_123']}}</span>
											{{/if}}
											{{if !( $loop563->getItem("@type")  == (string) 'current') and !( $loop563->getItem("@gap"))}}
												<a class="paging_tab" href="{{$loop563->getItem("../path/@value")}}{{$loop563->getItemEscape("@counter") - 1}} ">{{$loop563->getItemEscape("@counter")}}</a>
											{{/if}}
											{{if  $loop563->getItem("@type")  == (string) 'current'}}
												<span class="pagging_current">{{$loop563->getItemEscape("@counter")}}</span>
											{{/if}}
										{{/foreach}}
									</td>
									<td valign="top" align="center" class="news_paging_right">
										{{if  $xml->getItem("page/newslist/navigation/next")}}
											<a class="news_paging_next" href=" {{$xml->getItem("page/newslist/navigation/path/@value")}}{{$xml->getItemEscape("page/newslist/navigation/next/@counter")}} ">{{$txt['57615::40022_003']}}</a>
										{{/if}}
										{{if !( $xml->getItem("page/newslist/navigation/next"))}}
											<span class="news_paging_next">{{$txt['57615::40022_004']}}</span>
										{{/if}}
									</td>
								</tr>
							</table>
						{{/if}}
						<!--Bookmarklets News (news_bookmarklets, 78248.1)-->
						{{if  $xml->getItem("page/bookmarklets/item")}}
							<div id="bookmarklets_news">
								<div class="bookmarklets_section">
									<ul>
										{{foreach from=$xml->getList("page/bookmarklets/item") item=loop619}}
											<li>{{$loop619->getItem("text()")}}
											</li>
										{{/foreach}}
									</ul>
								</div>
							</div>
						{{/if}}
						<!--Produkty powiązane (news_cms_associated, 77072.1)-->
						{{if  $xml->getItem("page/news/cms_products/product") or  $xml->getItem("page/news/cms_products/opinion")}}
							<div class="main_hotspot mrg-b clearfix" id="news_cms_associated">
								{{if  $xml->getItem("page/news/cms_products/@link")}}
									<a class="big_label" href="{{$xml->getItemEscape("page/news/cms_products/@link")}}" title="{{$txt['77072::58826_001']}}">
										{{if  $xml->getItem("page/news/cms_products/@name")}}
											{{$xml->getItemEscape("page/news/cms_products/@name")}}
										{{else}}
											{{$txt['77072::58826_label']}}
										{{/if}}
										{{$txt['77072::58826_label-after']}}</a>
								{{else}}
									<div class="big_label">
										{{if  $xml->getItem("page/news/cms_products/@name")}}
											{{$xml->getItemEscape("page/news/cms_products/@name")}}
										{{else}}
											{{$txt['77072::58826_label']}}
										{{/if}}
									</div>
								{{/if}}
								<div class="col-bg-1 align_row main_hotspot_sub" data-align="a.product-icon img#css">
									<div {{assign "classAttributeTmp9" ""}}{{capture name="classAttributeTmp9" assign="classAttributeTmp9"}}products_wrapper row clearfix{{/capture}} data-column="{{$txt['77072::7487444_hotspot_column']}}" data-wrapType="{{$txt['77072::7487444_hotspot_wrapType']}}" {{if (count( $xml->getList("page/news/cms_products/product")) == (string) 1) or (count( $xml->getList("page/news/cms_products/opinion")) == (string) 1)}}{{capture name="classAttributeTmp9" assign="classAttributeTmp9"}}products_wrapper row clearfix col-md-3 col-xs-6{{/capture}}{{/if}}{{if (count( $xml->getList("page/news/cms_products/product")) == (string) 2) or (count( $xml->getList("page/news/cms_products/opinion")) == (string) 2)}}{{capture name="classAttributeTmp9" assign="classAttributeTmp9"}}products_wrapper row clearfix col-md-6 col-xs-12{{/capture}}{{/if}}   class="{{$classAttributeTmp9}}">
										{{foreach from=$xml->getList("page/news/cms_products/*") item=loop659}}
											{{capture name="var_name" assign="var_name"}}
												{{if  $loop659->getItem("product")}}
													{{$loop659->getItem("product/name/text()")}}
												{{else}}
													{{$loop659->getItem("name/text()")}}
												{{/if}}
											{{/capture}}
											{{capture name="var_icon" assign="var_icon"}}
												{{if  $loop659->getItem("product")}}
													{{$loop659->getItemEscape("product/icon")}}
												{{else}}
													{{$loop659->getItemEscape("icon")}}
												{{/if}}
											{{/capture}}
											{{capture name="var_icon_small" assign="var_icon_small"}}
												{{if  $loop659->getItem("product")}}
													{{$loop659->getItemEscape("product/icon_small")}}
												{{else}}
													{{$loop659->getItemEscape("icon_small")}}
												{{/if}}
											{{/capture}}
											{{capture name="var_link" assign="var_link"}}
												{{if  $loop659->getItem("product")}}
													{{$loop659->getItemEscape("product/@link")}}
												{{else}}
													{{$loop659->getItemEscape("@link")}}
												{{/if}}
											{{/capture}}
											<div {{assign "classAttributeTmp10" ""}}{{capture name="classAttributeTmp10" assign="classAttributeTmp10"}}product_wrapper col-md-3 col-xs-6{{/capture}}{{capture name="classAttributeTmp10" assign="classAttributeTmp10"}}{{$txt['77072::product_wrapper_col']}} type_{{$loop659->getItemEscape("name(.)")}}{{/capture}}  class="{{$classAttributeTmp10}}">
												<a class="product-icon" href="{{$var_link}}" title="{{$var_name}}">
													<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/loader.gif?r=1570606529" class="b-lazy" data-src-small="{{$loop659->getItem("$var_icon_small")}}" data-src="{{$loop659->getItem("$var_icon")}}" alt="{{$loop659->getItem("$var_name")}}"></img></a>
												<a class="product-name" href="{{$var_link}}" title="{{$var_name}}">{{$var_name}}</a>
												{{capture name="var_size_min_formatted" assign="var_size_min_formatted"}}
													{{if  $loop659->getItem("product")}}
														{{$loop659->getItemEscape("product/price/@size_min_formatted")}}
													{{else}}
														{{$loop659->getItemEscape("price/@size_min_formatted")}}
													{{/if}}
												{{/capture}}
												{{capture name="var_size_max_formatted" assign="var_size_max_formatted"}}
													{{if  $loop659->getItem("product")}}
														{{$loop659->getItemEscape("product/price/@size_max_formatted")}}
													{{else}}
														{{$loop659->getItemEscape("price/@size_max_formatted")}}
													{{/if}}
												{{/capture}}
												{{capture name="var_points" assign="var_points"}}
													{{if  $loop659->getItem("product")}}
														{{$loop659->getItemEscape("product/price/@points")}}
													{{else}}
														{{$loop659->getItemEscape("price/@points")}}
													{{/if}}
												{{/capture}}
												{{capture name="var_value" assign="var_value"}}
													{{if  $loop659->getItem("product")}}
														{{$loop659->getItemEscape("product/price/@size_min")}}
													{{else}}
														{{$loop659->getItemEscape("price/@size_min")}}
													{{/if}}
												{{/capture}}
												{{capture name="var_price_formatted" assign="var_price_formatted"}}
													{{if  $loop659->getItem("price/@price_unit_formatted") and  $loop659->getItem("sizes/@unit")}}
														{{$loop659->getItemEscape("price/@price_unit_formatted")}}{{literal}}/{{/literal}}{{$loop659->getItemEscape("sizes/@unit_sellby")}}{{literal}}{{/literal}}{{$loop659->getItemEscape("sizes/@unit")}}
													{{elseif  $loop659->getItem("product/price/@price_unit_formatted") and  $loop659->getItem("product/sizes/@unit")}}
														{{$loop659->getItemEscape("product/price/@price_unit_formatted")}}{{literal}}/{{/literal}}{{$loop659->getItemEscape("product/sizes/@unit_sellby")}}{{literal}}{{/literal}}{{$loop659->getItemEscape("product/sizes/@unit")}}
													{{else}}
														{{$var_size_min_formatted}}
													{{/if}}
												{{/capture}}
												{{capture name="var_maxprice_formatted" assign="var_maxprice_formatted"}}
													{{if  $loop659->getItem("price/@maxprice_unit_formatted")}}
														{{$loop659->getItemEscape("price/@maxprice_unit_formatted")}}
													{{elseif  $loop659->getItem("product/price/@maxprice_unit_formatted")}}
														{{$loop659->getItemEscape("product/price/@maxprice_unit_formatted")}}
													{{elseif  $loop659->getItem("product")}}
														{{$loop659->getItemEscape("product/price/@maxprice_formatted")}}
													{{else}}
														{{$loop659->getItemEscape("price/@maxprice_formatted")}}
													{{/if}}
												{{/capture}}
												<div class="product_prices">
													{{if $var_size_min_formatted  neq (string) $var_size_max_formatted}}
														<span class="price">{{$var_size_min_formatted}}{{literal}}-{{/literal}}{{$var_size_max_formatted}}</span>
														{{if $var_points  neq (string) ''}}
															<span class="point-price">{{$var_points}}
																<span class="currency">{{$txt['77072::58826_012']}}</span></span>
														{{/if}}
													{{elseif ($var_value  == (string) 0) and $var_points  == (string) ''}}
														<a class="fon_price" data-mobile-class="btn-small" title="{{$txt['77072::58826_009']}}" href="{{$loop659->getItemEscape("/shop/contact/link/@url")}}">{{$txt['77072::58826_010']}}</a>
													{{else}}
														<span class="price">{{$txt['77072::58826_003']}}{{$var_price_formatted}}</span>
														{{if $var_maxprice_formatted  neq (string) ''}}
															<del class="max-price">{{$txt['77072::58826_006']}}{{$var_maxprice_formatted}}</del>
														{{/if}}
														{{if $var_points  neq (string) ''}}
															<span class="point-price">{{$var_points}}
																<span class="currency">{{$txt['77072::58826_012']}}</span></span>
														{{/if}}
													{{/if}}
													{{if  $loop659->getItem("price/@unit_converted_price_formatted")}}
														<small class="s_unit_converted_price">{{$loop659->getItemEscape("price/@unit_converted_price_formatted")}}{{literal}}/{{/literal}}{{$loop659->getItemEscape("price/@unit_converted_format")}}</small>
													{{/if}}
												</div>
												{{if  $loop659->getItem("client/@client")}}
													<div class="client">{{$loop659->getItem("client/@client")}}
													</div>
												{{/if}}
												{{if  $loop659->getItem("@note")}}
													<div class="note">
														<span>
															<i {{assign "classAttributeTmp11" ""}}{{capture name="classAttributeTmp11" assign="classAttributeTmp11"}}icon-star{{/capture}}{{if $loop659->getItem("@note") gt (string) 0.5}}{{capture name="classAttributeTmp11" assign="classAttributeTmp11"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp11}}"></i>
															<i {{assign "classAttributeTmp12" ""}}{{capture name="classAttributeTmp12" assign="classAttributeTmp12"}}icon-star{{/capture}}{{if $loop659->getItem("@note") gt (string) 1.5}}{{capture name="classAttributeTmp12" assign="classAttributeTmp12"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp12}}"></i>
															<i {{assign "classAttributeTmp13" ""}}{{capture name="classAttributeTmp13" assign="classAttributeTmp13"}}icon-star{{/capture}}{{if $loop659->getItem("@note") gt (string) 2.5}}{{capture name="classAttributeTmp13" assign="classAttributeTmp13"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp13}}"></i>
															<i {{assign "classAttributeTmp14" ""}}{{capture name="classAttributeTmp14" assign="classAttributeTmp14"}}icon-star{{/capture}}{{if $loop659->getItem("@note") gt (string) 3.5}}{{capture name="classAttributeTmp14" assign="classAttributeTmp14"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp14}}"></i>
															<i {{assign "classAttributeTmp15" ""}}{{capture name="classAttributeTmp15" assign="classAttributeTmp15"}}icon-star{{/capture}}{{if $loop659->getItem("@note") gt (string) 4.5}}{{capture name="classAttributeTmp15" assign="classAttributeTmp15"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp15}}"></i></span>
														<small>{{$txt['77072::58826_oc']}}{{$loop659->getItem("@note")}}{{$txt['77072::58826_oce']}}</small>
													</div>
												{{/if}}
												{{if  $loop659->getItem("content")}}
													<div class="cleardescription">{{$loop659->getItem("content")}}
													</div>
												{{/if}}
											</div>
										{{/foreach}}
									</div>
								</div>
							</div>
						{{/if}}
						<!--Facebook comments News (news_facebook_comments, 65686.1)-->
						{{if  $xml->getItem("page/facebook_comments")}}
							<div class="news_fb_comments">
								<div {{assign "classAttributeTmp16" ""}}{{capture name="classAttributeTmp16" assign="classAttributeTmp16"}}news_fb_comments_label{{/capture}}{{capture name="classAttributeTmp16" assign="classAttributeTmp16"}}big_label news_fb_comments_label{{/capture}}  class="{{$classAttributeTmp16}}">{{$txt['65686::65686_00']}}
								</div>
								<div id="fb-root">
								</div>
								<script src="//connect.facebook.net/{{if $xml->getItem("/shop/language/@id") == (string) 'pol'}}pl_PL{{else}}en_US{{/if}}/all.js#xfbml=1">								</script>

								<div class="fb-comments" data-href="{{$xml->getItemEscape("/shop/@baseurl")}}{{$xml->getItemEscape("/shop/navigation/current/@curr_url")|replace:'/':''}}" data-num-posts="{{$txt['65686::65686_01']}}" data-width="{{$txt['65686::65686_02']}}" data-colorscheme="{{$txt['65686::65686_03']}}">
								</div>
							</div>
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
