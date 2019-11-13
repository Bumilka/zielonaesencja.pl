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
						{{include file="component_menu_blog_81938.tpl"}}
					</aside>
				{{/if}}
				{{if !( $xml->getItem("action/set_render/item")) or ( $xml->getItem("action/set_render/item/@name")  == (string) 'content')}}
					<div {{assign "classAttributeTmp2" ""}}  id="content"{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}span9{{/capture}}{{if $xml->getItem("page[@type='projector']")}} itemscope="itemscope" itemtype="http://schema.org/Product" {{/if}}{{if $xml->getItem("page/@type") == (string) 'projector'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['73991::70925_projector_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'search'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['73991::70925_search_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'main'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['73991::70925_main_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'navigation'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['73991::70925_navigation_page_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'blog-list' or $xml->getItem("page/@type") == (string) 'blog-item'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['73991::70925_blog_c_class']}}{{/capture}}{{else}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['73991::70925_otherwise_c_class']}}{{/capture}}{{/if}}  class="{{$classAttributeTmp2}}">
						{{include file="component_menu_messages_67953.tpl"}}
						<!--Blog - Content (blog_item_content, 81751.1)-->
						{{if  $xml->getItem("/shop/page/blogitem/long_description")}}
							<div id="blog-item" class="clearfix">
								<h1 class="big_label">{{$xml->getItem("/shop/page/blogitem/title/text()")}}
								</h1>
								{{if  $xml->getItem("/shop/page/blogitem/date/text()")  neq (string) ''}}
									<div class="blog_date">{{$xml->getItemEscape("/shop/page/blogitem/date/text()")}}
									</div>
								{{/if}}
								<div {{assign "classAttributeTmp3" ""}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}blog-item_sub{{/capture}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}blog-item_sub cm{{/capture}}  class="{{$classAttributeTmp3}}">
									{{if  $xml->getItem("/shop/page/blogitem/image/@src")  neq (string) ''}}
										<img class="blog_image" src="{{$xml->getItemEscape("/shop/page/blogitem/image/@src")}}" alt="{{$xml->getItemEscape("/shop/page/blogitem/title/text()")}}"></img>
									{{/if}}
									{{$xml->getItem("/shop/page/blogitem/long_description/text()")}}
								</div>
							</div>
							{{if  $xml->getItem("/shop/page/navigation/bycategories/item/@current") == (string)'active' or  $xml->getItem("/shop/page/navigation/bydates/item/item/@current") == (string)'active'}}
								<div class="blog_viewalso">{{$txt['81751::81751_viewalso1']}}
									{{if  $xml->getItem("/shop/page/navigation/bycategories/item/@current") == (string)'active' and !( $xml->getItem("/shop/page/navigation/bydates//item/@current") == (string)'active')}}
										{{$txt['81751::81751_viewalso3']}}&#160;#160;
										<a href="{{$xml->getItemEscape("/shop/page/navigation/bycategories/item[@current='active']/@link")}}" title="{{$xml->getItemEscape("/shop/page/navigation/bycategories/item[@current='active']/@value")}}">{{$xml->getItemEscape("/shop/page/navigation/bycategories/item[@current='active']/@value")}}</a>
									{{elseif !( $xml->getItem("/shop/page/navigation/bycategories/item/@current") == (string)'active') and  $xml->getItem("/shop/page/navigation/bydates/item/item/@current") == (string)'active'}}
										{{foreach from=$xml->getList("/shop/page/navigation/bydates/item/item[@current='active'][1]") item=loop332}}
											<a href="{{$loop332->getItemEscape("@link")}}" title="{{$txt['81751::n71830txt_inne']}}">
												{{if  $loop332->getItem("@value") == (string)'01'}}
													{{$txt['81751::n71830txt_archiwum01']}}
												{{elseif  $loop332->getItem("@value") == (string)'02'}}
													{{$txt['81751::n71830txt_archiwum02']}}
												{{elseif  $loop332->getItem("@value") == (string)'03'}}
													{{$txt['81751::n71830txt_archiwum03']}}
												{{elseif  $loop332->getItem("@value") == (string)'04'}}
													{{$txt['81751::n71830txt_archiwum04']}}
												{{elseif  $loop332->getItem("@value") == (string)'05'}}
													{{$txt['81751::n71830txt_archiwum05']}}
												{{elseif  $loop332->getItem("@value") == (string)'06'}}
													{{$txt['81751::n71830txt_archiwum06']}}
												{{elseif  $loop332->getItem("@value") == (string)'07'}}
													{{$txt['81751::n71830txt_archiwum07']}}
												{{elseif  $loop332->getItem("@value") == (string)'08'}}
													{{$txt['81751::n71830txt_archiwum08']}}
												{{elseif  $loop332->getItem("@value") == (string)'09'}}
													{{$txt['81751::n71830txt_archiwum09']}}
												{{elseif  $loop332->getItem("@value") == (string)'10'}}
													{{$txt['81751::n71830txt_archiwum10']}}
												{{elseif  $loop332->getItem("@value") == (string)'11'}}
													{{$txt['81751::n71830txt_archiwum11']}}
												{{elseif  $loop332->getItem("@value") == (string)'12'}}
													{{$txt['81751::n71830txt_archiwum12']}}
												{{/if}}
												&#160;#160;{{$loop332->getItemEscape("../@value")}}</a>
										{{/foreach}}
									{{else}}
										{{$txt['81751::81751_viewalso3']}}&#160;#160;
										<a href="{{$xml->getItemEscape("/shop/page/navigation/bycategories/item[@current='active']/@link")}}" title="{{$xml->getItemEscape("/shop/page/navigation/bycategories/item[@current='active']/@value")}}">{{$xml->getItemEscape("/shop/page/navigation/bycategories/item[@current='active']/@value")}}</a>&#160;#160;{{$txt['81751::81751_viewalso2']}}&#160;#160;
										{{foreach from=$xml->getList("/shop/page/navigation/bydates/item/item[@current='active'][1]") item=loop346}}
											<a href="{{$loop346->getItemEscape("@link")}}" title="{{$txt['81751::n71830txt_inne']}}">
												{{if  $loop346->getItem("@value") == (string)'01'}}
													{{$txt['81751::n71830txt_archiwum01']}}
												{{elseif  $loop346->getItem("@value") == (string)'02'}}
													{{$txt['81751::n71830txt_archiwum02']}}
												{{elseif  $loop346->getItem("@value") == (string)'03'}}
													{{$txt['81751::n71830txt_archiwum03']}}
												{{elseif  $loop346->getItem("@value") == (string)'04'}}
													{{$txt['81751::n71830txt_archiwum04']}}
												{{elseif  $loop346->getItem("@value") == (string)'05'}}
													{{$txt['81751::n71830txt_archiwum05']}}
												{{elseif  $loop346->getItem("@value") == (string)'06'}}
													{{$txt['81751::n71830txt_archiwum06']}}
												{{elseif  $loop346->getItem("@value") == (string)'07'}}
													{{$txt['81751::n71830txt_archiwum07']}}
												{{elseif  $loop346->getItem("@value") == (string)'08'}}
													{{$txt['81751::n71830txt_archiwum08']}}
												{{elseif  $loop346->getItem("@value") == (string)'09'}}
													{{$txt['81751::n71830txt_archiwum09']}}
												{{elseif  $loop346->getItem("@value") == (string)'10'}}
													{{$txt['81751::n71830txt_archiwum10']}}
												{{elseif  $loop346->getItem("@value") == (string)'11'}}
													{{$txt['81751::n71830txt_archiwum11']}}
												{{elseif  $loop346->getItem("@value") == (string)'12'}}
													{{$txt['81751::n71830txt_archiwum12']}}
												{{/if}}
												&#160;#160;{{$loop346->getItemEscape("../@value")}}</a>
										{{/foreach}}
									{{/if}}
								</div>
							{{/if}}
						{{/if}}
						<!--Blog - Bookmarklets  (blog_item_bookmarklets, 81839.1)-->
						{{if  $xml->getItem("page/bookmarklets/item")}}
							<div id="blog_item_bookmarklets">
								<div class="bookmarklets_section">
									<ul>
										{{foreach from=$xml->getList("page/bookmarklets/item") item=loop365}}
											<li>{{$loop365->getItem("text()")}}
											</li>
										{{/foreach}}
									</ul>
								</div>
							</div>
						{{/if}}
						<!--Blog - Facebook comments (blog_item_facebook_comments, 81841.1)-->
						{{if  $xml->getItem("page/facebook_comments")}}
							<div class="cms_fb_comments">
								<div {{assign "classAttributeTmp4" ""}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}cms_fb_comments_label{{/capture}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}big_label cms_fb_comments_label{{/capture}}  class="{{$classAttributeTmp4}}">{{$txt['81841::65619_00']}}
								</div>
								<div id="fb-root">
								</div>
								<script src="//connect.facebook.net/{{if $xml->getItem("/shop/language/@id") == (string) 'pol'}}pl_PL{{else}}en_US{{/if}}/all.js#xfbml=1">								</script>

								<div class="fb-comments" data-href="{{$xml->getItemEscape("/shop/page/blogitem/link/@href")}}" data-num-posts="{{$txt['81841::65619_01']}}" data-width="{{$txt['81841::65619_02']}}" data-colorscheme="{{$txt['81841::65619_03']}}">
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
