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
						<!--Lista plików do pobrania przez klienta - pliki (client_files_files, 71387.1)-->
						<div class="n68137">
							{{if  $xml->getItem("page/client_files/@mode")  == (string) 'to_download'}}
								<div class="n68137_downloadable">
									<div {{assign "classAttributeTmp3" ""}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}n68137_label{{/capture}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}big_label n68137_label{{/capture}}  class="{{$classAttributeTmp3}}">
										<span class="n68137_label">{{$txt['71387::68137_label']}}</span>
									</div>
									<div class="n68137_description">
										<div class="n68137_description_cms">{{$xml->getItemEscape("/shop/page/cms_txt/cms[@type='to_download']")}}{{$xml->getItemEscape("/shop/page/cms_txt/cms[@type='not_available']")}}
										</div>
									</div>
									<div class="n68137_files">
										{{foreach from=$xml->getList("/shop/page/client_files/product_data") item=loop272}}
											<div class="n68137_file">
												<div class="n68137_files_image">
													<img class="n68137_img" src="{{$loop272->getItemEscape("@icon")}}" alt="{{$loop272->getItemEscape("product_attachments/attachment/@file_name")}}"></img>
												</div>
												<div class="n68137_files_description">
													<a class="n68137_desc_name" href="{{$loop272->getItemEscape("@link")}}">{{$loop272->getItemEscape("@name")}}</a>
													<div class="n68137_files_description_order">
														<span class="n68137_desc_label">{{$txt['71387::68137_order']}}</span>
														<span class="n68137_desc_value">
															<a class="n68137_desc_value" href="{{$loop272->getItemEscape("@order_link")}}">{{$loop272->getItemEscape("@order_sn")}}</a></span>
													</div>
													<div class="n68137_files_description_availability">
														<span class="n68137_desc_label">{{$txt['71387::68137_availability']}}</span>
														<span class="n68137_desc_value">
															{{if  $loop272->getItem("@available")  == (string) 'y'}}
																{{$txt['71387::68137_file_available']}}
															{{else}}
																{{$txt['71387::68137_file_unavailable_pay']}}
															{{/if}}
															</span>
													</div>
												</div>
												{{if  $loop272->getItem("@available")  == (string) 'y'}}
													<button {{assign "classAttributeTmp4" ""}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}n68137_files_download{{/capture}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}btn-small n68137_files_download{{/capture}}  class="{{$classAttributeTmp4}}">{{$txt['71387::68137_download']}}
													</button>
												{{else}}
													<a {{assign "classAttributeTmp5" ""}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}n68137_files_pay{{/capture}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}n68137_files_pay btn-small{{/capture}} href="{{$loop272->getItemEscape("@order_link")}}"  class="{{$classAttributeTmp5}}">{{$txt['71387::68137_pay']}}</a>
												{{/if}}
												<div class="clearDiv">
												</div>
												<div class="n68137_popup">
													<div class="n68137_close_popup">
													</div>
													<div {{assign "classAttributeTmp6" ""}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}n68137_label_popup{{/capture}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}big_label n68137_label_popup{{/capture}}  class="{{$classAttributeTmp6}}">{{$txt['71387::68137_label_popup']}}
													</div>
													<div class="n68137_description_popup">{{$txt['71387::68137_cms_popup']}}
														<div class="n68137_description_cms_popup">{{$loop272->getItemEscape("/shop/page/cms_txt/cms[@type='toplayer']")}}
														</div>
													</div>
													{{foreach from=$loop272->getList("product_attachments/attachment") item=loop325}}
														<div class="n68137_files_description_popup">
															<div class="n68137_desc_popup">
																<div class="n68137_desc_name_popup">
																	{{if  $loop325->getItem("@name") and  $loop325->getItem("@name")  neq (string) ''}}
																		<span class="n68137_desc_name_popup">{{$loop325->getItemEscape("@name")}}</span>
																	{{/if}}
																	{{if  $loop325->getItem("@size_mb") and  $loop325->getItem("@size_mb")  neq (string) '' and  $loop325->getItem("@size_mb")  gt (string) 0}}
																		<span class="n68137_desc_size_popup">{{$txt['71387::68137_desc_size_popup_bracket_open']}}{{$loop325->getItemEscape("@size_mb")}}{{$txt['71387::68137_desc_size_popup_bracket_close']}}</span>
																	{{/if}}
																</div>
																<div class="n68137_desc_availability_popup">{{$txt['71387::68137_available']}}
																	{{if  $loop325->getItem("@unlimited") == (string)'true'}}
																		{{$txt['71387::68137_unlimited']}}
																		{{if  $loop325->getItem("@expiration_date")}}
																			{{$txt['71387::68137_until']}}{{$loop325->getItemEscape("@expiration_date")}}
																		{{/if}}
																	{{elseif ( $loop325->getItem("@unlimited") == (string)'false') and !( $loop325->getItem("@downloads_limit"))}}
																		{{$txt['71387::68137_unlimited']}}
																		{{if  $loop325->getItem("@expiration_date")}}
																			{{$txt['71387::68137_until']}}{{$loop325->getItemEscape("@expiration_date")}}
																		{{/if}}
																	{{else}}
																		{{$loop325->getItemEscape("@downloads_left")}}
																		{{if  $loop325->getItem("@downloads_left")  == (string) 1}}
																			{{$txt['71387::68137_time']}}
																		{{else}}
																			{{$txt['71387::68137_times']}}
																		{{/if}}
																		{{if  $loop325->getItem("@expiration_date")}}
																			{{$txt['71387::68137_until']}}{{$loop325->getItemEscape("@expiration_date")}}
																		{{/if}}
																	{{/if}}
																</div>
															</div>
															<a {{assign "classAttributeTmp7" ""}}{{capture name="classAttributeTmp7" assign="classAttributeTmp7"}}n68137_files_download_popup{{/capture}}{{capture name="classAttributeTmp7" assign="classAttributeTmp7"}}btn-small n68137_files_download_popup{{/capture}} href="{{$loop325->getItemEscape("@download_link")}}"  class="{{$classAttributeTmp7}}">
																<span class="n68137_button_label_popup">{{$txt['71387::68137_button_label_popup']}}
																	<span class="n68137_button_value_popup">{{$loop325->getItemEscape("@file_extension")}}</span></span></a>
															<div class="clearDiv">
															</div>
														</div>
													{{/foreach}}
												</div>
											</div>
										{{/foreach}}
									</div>
								</div>
							{{elseif  $xml->getItem("page/client_files/@mode")  == (string) 'not_available'}}
								<div class="n68137_notdownloadable">
									<div {{assign "classAttributeTmp3" ""}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}n68137_label{{/capture}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}big_label n68137_label{{/capture}}  class="{{$classAttributeTmp3}}">
										<span class="n68137_label">{{$txt['71387::68137_label_not_available']}}</span>
									</div>
									<div class="n68137_description">
										<div class="n68137_description_cms">
										</div>
									</div>
									<div class="n68137_files">
										{{foreach from=$xml->getList("/shop/page/client_files/product_data") item=loop396}}
											<div class="n68137_file">
												<div class="n68137_files_image">
													<img class="n68137_img" src="{{$loop396->getItemEscape("@icon")}}" alt="{{$loop396->getItemEscape("product_attachments/attachment/@file_name")}}"></img>
												</div>
												<div class="n68137_files_description">
													<a class="n68137_desc_name" href="{{$loop396->getItemEscape("@link")}}">{{$loop396->getItemEscape("@name")}}</a>
													<div class="n68137_files_description_order">
														<span class="n68137_desc_label">{{$txt['71387::68137_order']}}</span>
														<a class="n68137_desc_value" href="{{$loop396->getItemEscape("@order_link")}}">{{$loop396->getItemEscape("@order_sn")}}</a>
													</div>
													<div class="n68137_files_description_availability">
														<span class="n68137_desc_label">{{$txt['71387::68137_availability']}}</span>
														<span class="n68137_desc_value">
															{{if  $loop396->getItem("product_attachments/@downloads_left")  == (string) '0'}}
																{{$txt['71387::68137_file_depleted']}}
															{{else}}
																{{$txt['71387::68137_file_unavailable']}}
															{{/if}}
															</span>
													</div>
												</div>
												{{if  $loop396->getItem("@available") == (string)'y'}}
													<a {{assign "classAttributeTmp9" ""}}{{capture name="classAttributeTmp9" assign="classAttributeTmp9"}}n68137_files_buy{{/capture}}{{capture name="classAttributeTmp9" assign="classAttributeTmp9"}}btn-small n68137_files_buy{{/capture}} href="{{$loop396->getItemEscape("@link")}}"  class="{{$classAttributeTmp9}}">{{$txt['71387::68137_buy']}}</a>
												{{/if}}
												<div class="clearDiv">
												</div>
											</div>
										{{/foreach}}
									</div>
								</div>
							{{/if}}
						</div>
						<script>
$('button.n68137_files_download').click(function(){
        var $this = $(this);
        $this.parent().find('div.n68137_popup').dialog({
            'wrappContent':true,
            'removeContent' : false,
            'fixed':false,
            'fitToWindow': false,
            'width':500
        });
        return false;
});
						</script>

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
