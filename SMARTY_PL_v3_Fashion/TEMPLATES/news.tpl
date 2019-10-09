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
						<!--Nowości w sklepie (news, 107848.1)-->
						{{capture name="setLink_back" assign="setLink_back"}}
							{{$txt['107848::53698_x']}}
						{{/capture}}
						{{capture name="main_news_see_more" assign="main_news_see_more"}}
							{{$txt['107848::53698_xx']}}
						{{/capture}}
						{{if  $xml->getItem("/shop/page/news")}}
							<div class="n65105_news" itemscope="" itemtype="http://schema.org/NewsArticle">
								<div class="n65105_news_sub">
									<table>
										<tbody>
											<tr>
												<td class="main_news2">
													{{if  $xml->getItem("/shop/page/news/date")}}
														<div {{assign "classAttributeTmp3" ""}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}date{{/capture}} itemprop="dateCreated"{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}date datasquare{{/capture}}  class="{{$classAttributeTmp3}}">{{$xml->getItem("/shop/page/news/date")}}
														</div>
													{{/if}}
													<h1 {{assign "classAttributeTmp4" ""}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}n53963{{/capture}} itemprop="name"{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}big_label n53963{{/capture}}  class="{{$classAttributeTmp4}}">{{$xml->getItem("/shop/page/news/title")}}
													</h1>
												</td>
											</tr>
											<tr>
												<td class="news">
													<div {{assign "classAttributeTmp5" ""}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}n65105_news_text{{/capture}} itemprop="description"{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}n65105_news_text cm{{/capture}}  class="{{$classAttributeTmp5}}">{{$xml->getItem("/shop/page/news/description")}}
													</div>
													{{if $setLink_back}}
														<div class="back">
															<a class="back" href="#" onClick="if(document.referrer=='') window.location.href = '/news.php'; else history.back();return false;">{{$txt['107848::53698_x']}}</a>
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
							<div id="news_list" class="article_wrapper n65105_news_list">
								<h1 class="big_label">{{$txt['107848::53825_001']}}
								</h1>
								<div class="row article_sub_wrapper">
									{{if (!( $xml->getItem("/shop/page/newslist/mainpage"))) and (!( $xml->getItem("/shop/page/newslist/mainpage1"))) and (!( $xml->getItem("/shop/page/newslist/mainpage2")))}}
										<div id="return_message" class="n54531_outline">
											<div class="n54531_outline_sub">
												<h3 class="return_label">{{$txt['107848::53698_braknewsow']}}
												</h3>
											</div>
										</div>
									{{/if}}
									{{foreach from=$xml->getList("page/newslist/mainpage1/item") item=loop311}}
										<div class="article_element_wrapper col-md-6 col-12">
											<div class="date datasquare">{{$loop311->getItem("date")}}
											</div>
											{{if ( $loop311->getItem("link/@href"))  neq (string) ''}}
												<h3 class="article_name_wrapper">
													<a class="article_name" href="{{$loop311->getItemEscape("link/@href")}}" title="{{$loop311->getItem("title")}}">{{$loop311->getItem("title")}}</a>
												</h3>
											{{else}}
												{{if  $loop311->getItem("title")  neq (string) ''}}
													<h3 class="article_name_wrapper">
														<span class="article_name">{{$loop311->getItem("title")}}</span>
													</h3>
												{{/if}}
											{{/if}}
											{{if  $loop311->getItem("image/@src") and  $loop311->getItem("image/@src") neq (string)''}}
												{{if ( $loop311->getItem("link/@href"))  neq (string) ''}}
													{{literal}}
													<a class="article_image_wrapper" href="{{/literal}}{{$loop311->getItemEscape("link/@href")}}{{literal}}" {{/literal}}{{else}}{{literal}}
<span class="article_image_wrapper" {{/literal}}{{/if}}{{literal}}>{{/literal}}
														<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/loader.gif?r=1570606968" data-src-small="{{$loop311->getItem("image/@src")}}" data-src="{{$loop311->getItem("image/@src")}}" class="article_image b-lazy" alt="{{$loop311->getItem("title/text()")}}"></img>
														{{if ( $loop311->getItem("link/@href"))  neq (string) ''}}
															{{literal}}</a>{{/literal}}
													{{else}}
														{{literal}}</span>{{/literal}}
												{{/if}}
											{{/if}}
											<div class="article_text_wrapper">
												<div class="description_text">{{$loop311->getItem("description")}}
												</div>
												{{if  $loop311->getItem("link/@href") and $main_news_see_more}}
													<div class="see_more_wrapper">
														<a class="see_more_link" href="{{$loop311->getItemEscape("link/@href")}}" title="{{$loop311->getItem("title")}}">{{$txt['107848::53698_xx']}}</a>
													</div>
												{{/if}}
											</div>
										</div>
									{{/foreach}}
									{{foreach from=$xml->getList("page/newslist/mainpage2/item") item=loop376}}
										<div class="article_element_wrapper col-md-6 col-12">
											<div class="date datasquare">{{$loop376->getItem("date")}}
											</div>
											{{if ( $loop376->getItem("link/@href"))  neq (string) ''}}
												<h3 class="article_name_wrapper">
													<a class="article_name" href="{{$loop376->getItemEscape("link/@href")}}" title="{{$loop376->getItem("title")}}">{{$loop376->getItem("title")}}</a>
												</h3>
											{{else}}
												{{if  $loop376->getItem("title")  neq (string) ''}}
													<h3 class="article_name_wrapper">
														<span class="article_name">{{$loop376->getItem("title")}}</span>
													</h3>
												{{/if}}
											{{/if}}
											{{if  $loop376->getItem("image/@src") and  $loop376->getItem("image/@src") neq (string)''}}
												{{if ( $loop376->getItem("link/@href"))  neq (string) ''}}
													{{literal}}
													<a class="article_image_wrapper" href="{{/literal}}{{$loop376->getItemEscape("link/@href")}}{{literal}}" {{/literal}}{{else}}{{literal}}
<span class="article_image_wrapper" {{/literal}}{{/if}}{{literal}}>{{/literal}}
														<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/loader.gif?r=1570606968" data-src-small="{{$loop376->getItem("image/@src")}}" data-src="{{$loop376->getItem("image/@src")}}" class="article_image b-lazy" alt="{{$loop376->getItem("title/text()")}}"></img>
														{{if ( $loop376->getItem("link/@href"))  neq (string) ''}}
															{{literal}}</a>{{/literal}}
													{{else}}
														{{literal}}</span>{{/literal}}
												{{/if}}
											{{/if}}
											<div class="article_text_wrapper">
												<div class="description_text">{{$loop376->getItem("description")}}
												</div>
												{{if  $loop376->getItem("link/@href") and $main_news_see_more}}
													<div class="see_more_wrapper">
														<a class="see_more_link" href="{{$loop376->getItemEscape("link/@href")}}" title="{{$loop376->getItem("title")}}">{{$txt['107848::53698_xx']}}</a>
													</div>
												{{/if}}
											</div>
										</div>
									{{/foreach}}
									{{foreach from=$xml->getList("page/newslist/mainpage/item") item=loop441}}
										<div class="article_element_wrapper col-md-6 col-12">
											<div class="date datasquare">{{$loop441->getItem("date")}}
											</div>
											{{if ( $loop441->getItem("link/@href"))  neq (string) ''}}
												<h3 class="article_name_wrapper">
													<a class="article_name" href="{{$loop441->getItemEscape("link/@href")}}" title="{{$loop441->getItem("title")}}">{{$loop441->getItem("title")}}</a>
												</h3>
											{{else}}
												{{if  $loop441->getItem("title")  neq (string) ''}}
													<h3 class="article_name_wrapper">
														<span class="article_name">{{$loop441->getItem("title")}}</span>
													</h3>
												{{/if}}
											{{/if}}
											{{if  $loop441->getItem("image/@src") and  $loop441->getItem("image/@src") neq (string)''}}
												{{if ( $loop441->getItem("link/@href"))  neq (string) ''}}
													{{literal}}
													<a class="article_image_wrapper" href="{{/literal}}{{$loop441->getItemEscape("link/@href")}}{{literal}}" {{/literal}}{{else}}{{literal}}
<span class="article_image_wrapper" {{/literal}}{{/if}}{{literal}}>{{/literal}}
														<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/loader.gif?r=1570606968" data-src-small="{{$loop441->getItem("image/@src")}}" data-src="{{$loop441->getItem("image/@src")}}" class="article_image b-lazy" alt="{{$loop441->getItem("title/text()")}}"></img>
														{{if ( $loop441->getItem("link/@href"))  neq (string) ''}}
															{{literal}}</a>{{/literal}}
													{{else}}
														{{literal}}</span>{{/literal}}
												{{/if}}
											{{/if}}
											<div class="article_text_wrapper">
												<div class="description_text">{{$loop441->getItem("description")}}
												</div>
												{{if  $loop441->getItem("link/@href") and $main_news_see_more}}
													<div class="see_more_wrapper">
														<a class="see_more_link" href="{{$loop441->getItemEscape("link/@href")}}" title="{{$loop441->getItem("title")}}">{{$txt['107848::53698_xx']}}</a>
													</div>
												{{/if}}
											</div>
										</div>
									{{/foreach}}
								</div>
							</div>
						{{/if}}
						{{if  $xml->getItem("/shop/page/news/image")}}
						{{/if}}
						<!--stronicowanie newsów (news_paging, 91990.1)-->
						{{if count( $xml->getList("page/newslist/navigation/item"))}}
							<ul class="pagination pull-right">
								{{if count( $xml->getList("page/newslist/navigation/item"))  gt (string) 1}}
									{{if  $xml->getItem("page/newslist/navigation/prev")}}
										<li>
											<a href=" {{$xml->getItem("page/newslist/navigation/path/@value")}}{{$xml->getItemEscape("page/newslist/navigation/prev/@counter")}}">{{$txt['91990::affiliate_newslist_002']}}</a>
										</li>
									{{/if}}
									{{if !( $xml->getItem("page/newslist/navigation/prev"))}}
										<li class="disabled">
											<span>{{$txt['91990::affiliate_newslist_002a']}}</span>
										</li>
									{{/if}}
									{{foreach from=$xml->getList("page/newslist/navigation/item") item=loop537}}
										{{if  $loop537->getItem("@gap")}}
											<li class="disabled">
												<span>{{$txt['91990::affiliate_calculations_007']}}</span>
											</li>
										{{/if}}
										{{if !( $loop537->getItem("@type")  == (string) 'current') and !( $loop537->getItem("@gap"))}}
											<li>
												<a href="{{$loop537->getItem("../path/@value")}}{{$loop537->getItemEscape("@counter") - 1}}">{{$loop537->getItemEscape("@counter")}}</a>
											</li>
										{{/if}}
										{{if  $loop537->getItem("@type")  == (string) 'current'}}
											<li class="active">
												<span>{{$loop537->getItemEscape("@counter")}}</span>
											</li>
										{{/if}}
									{{/foreach}}
									{{if  $xml->getItem("page/newslist/navigation/next")}}
										<li>
											<a href="{{$xml->getItem("page/newslist/navigation/path/@value")}}{{$xml->getItemEscape("page/newslist/navigation/next/@counter")}}">{{$txt['91990::affiliate_newslist_003']}}</a>
										</li>
									{{/if}}
									{{if !( $xml->getItem("page/newslist/navigation/next"))}}
										<li class="disabled">
											<span>{{$txt['91990::affiliate_newslist_003a']}}</span>
										</li>
									{{/if}}
								{{/if}}
							</ul>
						{{/if}}
						<!--Bookmarklets News (news_bookmarklets, 107867.1)-->
						{{if  $xml->getItem("page/bookmarklets/item")}}
							<div id="bookmarklets_news">
								<div class="bookmarklets_section">
									<ul>
										{{foreach from=$xml->getList("page/bookmarklets/item") item=loop585}}
											<li>{{$loop585->getItem("text()")}}
											</li>
										{{/foreach}}
									</ul>
								</div>
							</div>
						{{/if}}
						{{if  $xml->getItem("/shop/page/bookmarklets/item/@icon_small")}}
						{{/if}}
						<!--Produkty powiązane (news_cms_associated, 107851.1)-->
						{{if  $xml->getItem("page/news/cms_products/product") or  $xml->getItem("page/news/cms_products/opinion")}}
							<div class="main_hotspot mb-4" id="news_cms_associated">
								{{if  $xml->getItem("page/news/cms_products/@link")}}
									<a class="big_label" href="{{$xml->getItemEscape("page/news/cms_products/@link")}}" title="{{$txt['107851::58826_001']}}">
										{{if  $xml->getItem("page/news/cms_products/@name")}}
											{{$xml->getItemEscape("page/news/cms_products/@name")}}
										{{else}}
											{{$txt['107851::58826_label']}}
										{{/if}}
										{{$txt['107851::58826_label-after']}}</a>
								{{else}}
									<div class="big_label">
										{{if  $xml->getItem("page/news/cms_products/@name")}}
											{{$xml->getItemEscape("page/news/cms_products/@name")}}
										{{else}}
											{{$txt['107851::58826_label']}}
										{{/if}}
									</div>
								{{/if}}
								<div class="align_row main_hotspot_sub">
									<div class="products_wrapper row m-0">
										{{foreach from=$xml->getList("page/news/cms_products/*") item=loop615}}
											{{capture name="var_name" assign="var_name"}}
												{{if  $loop615->getItem("product")}}
													{{$loop615->getItem("product/name/text()")}}
												{{else}}
													{{$loop615->getItem("name/text()")}}
												{{/if}}
											{{/capture}}
											{{capture name="var_icon" assign="var_icon"}}
												{{if  $loop615->getItem("product")}}
													{{$loop615->getItemEscape("product/icon")}}
												{{else}}
													{{$loop615->getItemEscape("icon")}}
												{{/if}}
											{{/capture}}
											{{capture name="var_icon_small" assign="var_icon_small"}}
												{{if  $loop615->getItem("product")}}
													{{$loop615->getItemEscape("product/icon_small")}}
												{{else}}
													{{$loop615->getItemEscape("icon_small")}}
												{{/if}}
											{{/capture}}
											{{capture name="var_link" assign="var_link"}}
												{{if  $loop615->getItem("product")}}
													{{$loop615->getItemEscape("product/@link")}}
												{{else}}
													{{$loop615->getItemEscape("@link")}}
												{{/if}}
											{{/capture}}
											{{capture name="var_yousave" assign="var_yousave"}}
												{{$txt['107851::TXT_hotspot_yousave']}}
											{{/capture}}
											<div class="product_wrapper col-6 col-sm-3">
												{{if $var_yousave and !($var_yousave  == (string) '') and  $loop615->getItem("price/@yousave_formatted")  neq (string) ''}}
													<div class="hotspot_yousave">
														<span class="yousave_label">{{$var_yousave}}</span>
														<span class="yousave_value">{{$loop615->getItemEscape("price/@yousave_formatted")}}</span>
													</div>
												{{/if}}
												<a class="product-icon d-flex justify-content-center align-items-center" data-product-id="{{$loop615->getItemEscape("@id")}}" href="{{$var_link}}" title="{{$var_name}}">
													<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/loader.gif?r=1570606968" class="b-lazy" data-src-small="{{$loop615->getItem("$var_icon_small")}}" data-src="{{$loop615->getItem("$var_icon")}}" alt="{{$loop615->getItem("$var_name")}}"></img></a>
												<h3>
													<a class="product-name" href="{{$var_link}}" title="{{$var_name}}">{{$var_name}}</a>
												</h3>
												{{capture name="main_hotspot_zone1_b2b_var" assign="main_hotspot_zone1_b2b_var"}}
													{{$txt['107851::main_hotspot_zone1_b2b']}}
												{{/capture}}
												{{capture name="var_net_prices" assign="var_net_prices"}}
													{{$txt['107851::hotspot_net_prices']}}
												{{/capture}}
												{{if $var_net_prices  == (string) ''}}
													{{capture name="var_size_min_formatted" assign="var_size_min_formatted"}}
														{{if  $loop615->getItem("product")}}
															{{$loop615->getItemEscape("product/price/@size_min_formatted")}}
														{{else}}
															{{$loop615->getItemEscape("price/@size_min_formatted")}}
														{{/if}}
													{{/capture}}
													{{capture name="var_size_max_formatted" assign="var_size_max_formatted"}}
														{{if  $loop615->getItem("product")}}
															{{$loop615->getItemEscape("product/price/@size_max_formatted")}}
														{{else}}
															{{$loop615->getItemEscape("price/@size_max_formatted")}}
														{{/if}}
													{{/capture}}
													{{capture name="var_size_min_maxprice_formatted" assign="var_size_min_maxprice_formatted"}}
														{{if  $loop615->getItem("product")}}
															{{$loop615->getItemEscape("product/price/@size_min_maxprice_formatted")}}
														{{else}}
															{{$loop615->getItemEscape("price/@size_min_maxprice_formatted")}}
														{{/if}}
													{{/capture}}
													{{capture name="var_size_max_maxprice_formatted" assign="var_size_max_maxprice_formatted"}}
														{{if  $loop615->getItem("product")}}
															{{$loop615->getItemEscape("product/price/@size_max_maxprice_formatted")}}
														{{else}}
															{{$loop615->getItemEscape("price/@size_max_maxprice_formatted")}}
														{{/if}}
													{{/capture}}
													{{capture name="var_points" assign="var_points"}}
														{{if  $loop615->getItem("product")}}
															{{$loop615->getItemEscape("product/price/@points")}}
														{{else}}
															{{$loop615->getItemEscape("price/@points")}}
														{{/if}}
													{{/capture}}
													{{capture name="var_value" assign="var_value"}}
														{{if  $loop615->getItem("product")}}
															{{$loop615->getItemEscape("product/price/@size_min")}}
														{{else}}
															{{$loop615->getItemEscape("price/@size_min")}}
														{{/if}}
													{{/capture}}
													{{capture name="var_price_formatted" assign="var_price_formatted"}}
														{{if  $loop615->getItem("price/@price_unit_formatted") and  $loop615->getItem("sizes/@unit")}}
															{{$loop615->getItemEscape("price/@price_unit_formatted")}}{{literal}}/{{/literal}}{{$loop615->getItemEscape("sizes/@unit_sellby")}}{{literal}}{{/literal}}{{$loop615->getItemEscape("sizes/@unit")}}
														{{elseif  $loop615->getItem("product/price/@price_unit_formatted") and  $loop615->getItem("product/sizes/@unit")}}
															{{$loop615->getItemEscape("product/price/@price_unit_formatted")}}{{literal}}/{{/literal}}{{$loop615->getItemEscape("product/sizes/@unit_sellby")}}{{literal}}{{/literal}}{{$loop615->getItemEscape("product/sizes/@unit")}}
														{{else}}
															{{$var_size_min_formatted}}
														{{/if}}
													{{/capture}}
													{{capture name="var_maxprice_formatted" assign="var_maxprice_formatted"}}
														{{if  $loop615->getItem("price/@maxprice_unit_formatted")}}
															{{$loop615->getItemEscape("price/@maxprice_unit_formatted")}}
														{{elseif  $loop615->getItem("product/price/@maxprice_unit_formatted")}}
															{{$loop615->getItemEscape("product/price/@maxprice_unit_formatted")}}
														{{elseif  $loop615->getItem("product")}}
															{{$loop615->getItemEscape("product/price/@maxprice_formatted")}}
														{{else}}
															{{$loop615->getItemEscape("price/@maxprice_formatted")}}
														{{/if}}
													{{/capture}}
													<div class="product_prices">
														{{if $var_size_min_formatted  neq (string) $var_size_max_formatted}}
															<span class="price">{{$var_size_min_formatted}}{{literal}}-{{/literal}}{{$var_size_max_formatted}}</span>
															{{if $var_size_min_maxprice_formatted  neq (string) ''}}
																<del class="max-price">
																	<span>{{$var_size_min_maxprice_formatted}}</span>
																	<b>{{literal}}-{{/literal}}</b>
																	<span>{{$var_size_max_maxprice_formatted}}</span></del>
															{{/if}}
															{{if $var_points  neq (string) ''}}
																<span class="point-price">{{$var_points}}
																	<span class="currency">{{$txt['107851::58826_012']}}</span></span>
															{{/if}}
														{{elseif (($var_value  == (string) 0) and $var_points  == (string) '') or ($var_value  == (string) 0 and $main_hotspot_zone1_b2b_var and !($main_hotspot_zone1_b2b_var  == (string) '') and !( $loop615->getItem("/shop/basket/@wholesaler")  == (string) 'true'))}}
															<a {{assign "hrefAttributeTmp11" ""}}  class="fon_price" data-mobile-class="btn-small" {{if $main_hotspot_zone1_b2b_var and !($main_hotspot_zone1_b2b_var == (string) '')}} title="{{$main_hotspot_zone1_b2b_var}}"{{capture name="hrefAttributeTmp11" assign="hrefAttributeTmp11"}}{{$loop615->getItemEscape("/shop/action/signin/@url")}}{{/capture}}{{$main_hotspot_zone1_b2b_var}}{{else}} title="{{$txt['107851::58826_009']}}"{{capture name="hrefAttributeTmp11" assign="hrefAttributeTmp11"}}{{$loop615->getItemEscape("/shop/contact/link/@url")}}{{/capture}} {{$txt['107851::58826_010']}} {{/if}}  href="{{$hrefAttributeTmp11}}"></a>
														{{else}}
															<span class="price">{{$txt['107851::58826_003']}}{{$var_price_formatted}}</span>
															{{if $var_maxprice_formatted  neq (string) ''}}
																<del class="max-price">{{$txt['107851::58826_006']}}{{$var_maxprice_formatted}}</del>
															{{/if}}
															{{if $var_points  neq (string) ''}}
																<span class="point-price">{{$var_points}}
																	<span class="currency">{{$txt['107851::58826_012']}}</span></span>
															{{/if}}
														{{/if}}
														{{if  $loop615->getItem("price/@unit_converted_price_formatted")}}
															<small class="s_unit_converted_price">{{$loop615->getItemEscape("price/@unit_converted_price_formatted")}}{{literal}}/{{/literal}}{{$loop615->getItemEscape("price/@unit_converted_format")}}</small>
														{{/if}}
													</div>
												{{else}}
													{{capture name="var_size_min_net_formatted" assign="var_size_min_net_formatted"}}
														{{if  $loop615->getItem("product")}}
															{{$loop615->getItemEscape("product/price/@size_min_net_formatted")}}
														{{else}}
															{{$loop615->getItemEscape("price/@size_min_net_formatted")}}
														{{/if}}
													{{/capture}}
													{{capture name="var_size_max_net_formatted" assign="var_size_max_net_formatted"}}
														{{if  $loop615->getItem("product")}}
															{{$loop615->getItemEscape("product/price/@size_max_net_formatted")}}
														{{else}}
															{{$loop615->getItemEscape("price/@size_max_net_formatted")}}
														{{/if}}
													{{/capture}}
													{{capture name="var_size_min_net_maxprice_formatted" assign="var_size_min_net_maxprice_formatted"}}
														{{if  $loop615->getItem("product")}}
															{{$loop615->getItemEscape("product/price/@size_min_maxprice_net_formatted")}}
														{{else}}
															{{$loop615->getItemEscape("price/@size_min_maxprice_net_formatted")}}
														{{/if}}
													{{/capture}}
													{{capture name="var_size_max_maxprice_net_formatted" assign="var_size_max_maxprice_net_formatted"}}
														{{if  $loop615->getItem("product")}}
															{{$loop615->getItemEscape("product/price/@size_max_maxprice_net_formatted")}}
														{{else}}
															{{$loop615->getItemEscape("price/@size_max_maxprice_net_formatted")}}
														{{/if}}
													{{/capture}}
													{{capture name="var_points_net" assign="var_points_net"}}
														{{if  $loop615->getItem("product")}}
															{{$loop615->getItemEscape("product/price/@points")}}
														{{else}}
															{{$loop615->getItemEscape("price/@points")}}
														{{/if}}
													{{/capture}}
													{{capture name="var_net_value" assign="var_net_value"}}
														{{if  $loop615->getItem("product")}}
															{{$loop615->getItemEscape("product/price/@size_min_net")}}
														{{else}}
															{{$loop615->getItemEscape("price/@size_min_net")}}
														{{/if}}
													{{/capture}}
													{{capture name="var_price_formatted" assign="var_price_formatted"}}
														{{if  $loop615->getItem("price/@price_unit_net_formatted") and  $loop615->getItem("sizes/@unit")}}
															{{$loop615->getItemEscape("price/@price_unit_net_formatted")}}{{literal}}/{{/literal}}{{$loop615->getItemEscape("sizes/@unit_sellby")}}{{literal}}{{/literal}}{{$loop615->getItemEscape("sizes/@unit")}}
														{{elseif  $loop615->getItem("product/price/@price_unit_net_formatted") and  $loop615->getItem("product/sizes/@unit")}}
															{{$loop615->getItemEscape("product/price/@price_unit_net_formatted")}}{{literal}}/{{/literal}}{{$loop615->getItemEscape("product/sizes/@unit_sellby")}}{{literal}}{{/literal}}{{$loop615->getItemEscape("product/sizes/@unit")}}
														{{else}}
															{{$var_size_min_net_formatted}}
														{{/if}}
													{{/capture}}
													{{capture name="var_maxprice_net_formatted" assign="var_maxprice_net_formatted"}}
														{{if  $loop615->getItem("price/@maxprice_unit_net_formatted")}}
															{{$loop615->getItemEscape("price/@maxprice_unit_net_formatted")}}
														{{elseif  $loop615->getItem("product/price/@maxprice_unit_net_formatted")}}
															{{$loop615->getItemEscape("product/price/@maxprice_unit_net_formatted")}}
														{{elseif  $loop615->getItem("product")}}
															{{$loop615->getItemEscape("product/price/@maxprice_net_formatted")}}
														{{else}}
															{{$loop615->getItemEscape("price/@maxprice_net_formatted")}}
														{{/if}}
													{{/capture}}
													<div class="product_prices">
														{{if $var_size_min_net_formatted  neq (string) $var_size_max_net_formatted}}
															<span class="price">{{$var_size_min_net_formatted}}{{literal}}-{{/literal}}{{$var_size_max_net_formatted}}{{$var_net_prices}}</span>
															{{if $var_size_min_net_maxprice_formatted  neq (string) ''}}
																<del class="max-price">
																	<span>{{$var_size_min_net_maxprice_formatted}}</span>
																	<b>{{literal}}-{{/literal}}</b>
																	<span>{{$var_size_max_maxprice_net_formatted}}</span>{{$var_net_prices}}</del>
															{{/if}}
															{{if $var_points_net  neq (string) ''}}
																<span class="point-price">{{$var_points_net}}
																	<span class="currency">{{$txt['107851::58826_012']}}</span></span>
															{{/if}}
														{{elseif (($var_net_value  == (string) 0) and $var_points_net  == (string) '') or ($var_net_value  == (string) 0 and $main_hotspot_zone1_b2b_var and !($main_hotspot_zone1_b2b_var  == (string) '') and !( $loop615->getItem("/shop/basket/@wholesaler")  == (string) 'true'))}}
															<a {{assign "hrefAttributeTmp11" ""}}  class="fon_price" data-mobile-class="btn-small" {{if $main_hotspot_zone1_b2b_var and !($main_hotspot_zone1_b2b_var == (string) '')}} title="{{$main_hotspot_zone1_b2b_var}}"{{capture name="hrefAttributeTmp11" assign="hrefAttributeTmp11"}}{{$loop615->getItemEscape("/shop/action/signin/@url")}}{{/capture}}{{$main_hotspot_zone1_b2b_var}}{{else}} title="{{$txt['107851::58826_009']}}"{{capture name="hrefAttributeTmp11" assign="hrefAttributeTmp11"}}{{$loop615->getItemEscape("/shop/contact/link/@url")}}{{/capture}} {{$txt['107851::58826_010']}} {{/if}}  href="{{$hrefAttributeTmp11}}"></a>
														{{else}}
															<span class="price">{{$txt['107851::58826_003']}}{{$var_price_formatted}}{{$var_net_prices}}</span>
															{{if $var_maxprice_net_formatted  neq (string) ''}}
																<del class="max-price">{{$txt['107851::58826_006']}}{{$var_maxprice_net_formatted}}{{$var_net_prices}}</del>
															{{/if}}
															{{if $var_points_net  neq (string) ''}}
																<span class="point-price">{{$var_points_net}}
																	<span class="currency">{{$txt['107851::58826_012']}}</span></span>
															{{/if}}
														{{/if}}
														{{if  $loop615->getItem("price/@unit_converted_price_net_formatted")}}
															<small class="s_unit_converted_price">{{$loop615->getItemEscape("price/@unit_converted_price_net_formatted")}}{{literal}}/{{/literal}}{{$loop615->getItemEscape("price/@unit_converted_format")}}{{$var_net_prices}}</small>
														{{/if}}
													</div>
												{{/if}}
												{{if  $loop615->getItem("client/@client")}}
													<div class="client">{{$loop615->getItem("client/@client")}}
													</div>
												{{/if}}
												{{if  $loop615->getItem("@note")}}
													<div class="note">
														<span>
															<i {{assign "classAttributeTmp6" ""}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}icon-star{{/capture}}{{if $loop615->getItem("@note") gt (string) 0.5}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp6}}"></i>
															<i {{assign "classAttributeTmp7" ""}}{{capture name="classAttributeTmp7" assign="classAttributeTmp7"}}icon-star{{/capture}}{{if $loop615->getItem("@note") gt (string) 1.5}}{{capture name="classAttributeTmp7" assign="classAttributeTmp7"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp7}}"></i>
															<i {{assign "classAttributeTmp8" ""}}{{capture name="classAttributeTmp8" assign="classAttributeTmp8"}}icon-star{{/capture}}{{if $loop615->getItem("@note") gt (string) 2.5}}{{capture name="classAttributeTmp8" assign="classAttributeTmp8"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp8}}"></i>
															<i {{assign "classAttributeTmp9" ""}}{{capture name="classAttributeTmp9" assign="classAttributeTmp9"}}icon-star{{/capture}}{{if $loop615->getItem("@note") gt (string) 3.5}}{{capture name="classAttributeTmp9" assign="classAttributeTmp9"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp9}}"></i>
															<i {{assign "classAttributeTmp10" ""}}{{capture name="classAttributeTmp10" assign="classAttributeTmp10"}}icon-star{{/capture}}{{if $loop615->getItem("@note") gt (string) 4.5}}{{capture name="classAttributeTmp10" assign="classAttributeTmp10"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp10}}"></i></span>
														<small>{{$txt['107851::58826_oc']}}{{$loop615->getItem("@note")}}{{$txt['107851::58826_oce']}}</small>
													</div>
												{{/if}}
												{{if  $loop615->getItem("content")}}
													<div class="cleardescription">{{$loop615->getItem("content")}}
													</div>
												{{/if}}
											</div>
										{{/foreach}}
									</div>
								</div>
							</div>
						{{/if}}
						<!--Facebook comments News (news_facebook_comments, 107868.1)-->
						{{if  $xml->getItem("page/facebook_comments")}}
							<div class="news_fb_comments">
								<div class="big_label news_fb_comments_label">{{$txt['107868::65686_00']}}
								</div>
								<div id="fb-root">
								</div>
								<script src="//connect.facebook.net/{{if $xml->getItem("/shop/language/@id") == (string) 'pol'}}pl_PL{{else}}en_US{{/if}}/all.js#xfbml=1">								</script>

								<div class="fb-comments" data-href="{{$xml->getItemEscape("/shop/@baseurl")}}{{$xml->getItemEscape("/shop/navigation/current/@curr_url")|replace:'/':''}}" data-num-posts="{{$txt['107868::65686_01']}}" data-width="{{$txt['107868::65686_02']}}" data-colorscheme="{{$txt['107868::65686_03']}}">
								</div>
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
