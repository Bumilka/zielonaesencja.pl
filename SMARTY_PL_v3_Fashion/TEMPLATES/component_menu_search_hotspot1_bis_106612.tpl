
<!--Menu hotspot w search strefa 1 (menu_search_hotspot1_bis, 106612.1)-->
<iaiajaxstart iai-ajax-id="search_hotspot_zone1" iai-ajax-generated="true"/>
{{if  $xml->getItem("page/products/additional/hotspot/products_zone1")}}
	<div class="main_hotspot container mb-4" id="search_hotspot_zone1">
		{{if  $xml->getItem("page/products/additional/hotspot/products_zone1/product") or  $xml->getItem("page/products/additional/hotspot/products_zone1/opinion")}}
			{{if  $xml->getItem("page/products/additional/hotspot/products_zone1/@link")}}
				<h2>
					<a class="big_label" href="{{$xml->getItemEscape("page/products/additional/hotspot/products_zone1/@link")}}" title="{{$txt['106612::58826_001']}}">
						{{if  $xml->getItem("page/products/additional/hotspot/products_zone1/@name")}}
							{{$xml->getItemEscape("page/products/additional/hotspot/products_zone1/@name")}}
						{{else}}
							{{$txt['106612::58826_label']}}
						{{/if}}
						{{$txt['106612::58826_label-after']}}</a>
				</h2>
			{{else}}
				<h2>
					<span class="big_label">
						{{if  $xml->getItem("page/products/additional/hotspot/products_zone1/@name")}}
							{{$xml->getItemEscape("page/products/additional/hotspot/products_zone1/@name")}}
						{{else}}
							{{$txt['106612::58826_label']}}
						{{/if}}
						</span>
				</h2>
			{{/if}}
			<div class="align_row main_hotspot_sub">
				<div class="products_wrapper row m-0">
					{{foreach from=$xml->getList("page/products/additional/hotspot/products_zone1/*") item=loop23}}
						{{capture name="var_name" assign="var_name"}}
							{{if  $loop23->getItem("product")}}
								{{$loop23->getItem("product/name/text()")}}
							{{else}}
								{{$loop23->getItem("name/text()")}}
							{{/if}}
						{{/capture}}
						{{capture name="var_icon" assign="var_icon"}}
							{{if  $loop23->getItem("product")}}
								{{$loop23->getItemEscape("product/icon")}}
							{{else}}
								{{$loop23->getItemEscape("icon")}}
							{{/if}}
						{{/capture}}
						{{capture name="var_icon_small" assign="var_icon_small"}}
							{{if  $loop23->getItem("product")}}
								{{$loop23->getItemEscape("product/icon_small")}}
							{{else}}
								{{$loop23->getItemEscape("icon_small")}}
							{{/if}}
						{{/capture}}
						{{capture name="var_link" assign="var_link"}}
							{{if  $loop23->getItem("product")}}
								{{$loop23->getItemEscape("product/@link")}}
							{{else}}
								{{$loop23->getItemEscape("@link")}}
							{{/if}}
						{{/capture}}
						{{capture name="var_yousave" assign="var_yousave"}}
							{{$txt['106612::TXT_hotspot_yousave']}}
						{{/capture}}
						<div class="product_wrapper col-6 col-sm-3">
							{{if $var_yousave and !($var_yousave  == (string) '') and  $loop23->getItem("price/@yousave_formatted")  neq (string) ''}}
								<div class="hotspot_yousave">
									<span class="yousave_label">{{$var_yousave}}</span>
									<span class="yousave_value">{{$loop23->getItemEscape("price/@yousave_formatted")}}</span>
								</div>
							{{/if}}
							<a class="product-icon d-flex justify-content-center align-items-center" data-product-id="{{$loop23->getItemEscape("@id")}}" href="{{$var_link}}" title="{{$var_name}}">
								<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/loader.gif?r=1570606968" class="b-lazy" data-src-small="{{$loop23->getItem("$var_icon_small")}}" data-src="{{$loop23->getItem("$var_icon")}}" alt="{{$loop23->getItem("$var_name")}}"></img></a>
							<h3>
								<a class="product-name" href="{{$var_link}}" title="{{$var_name}}">{{$var_name}}</a>
							</h3>
							{{capture name="main_hotspot_zone1_b2b_var" assign="main_hotspot_zone1_b2b_var"}}
								{{$txt['106612::main_hotspot_zone1_b2b']}}
							{{/capture}}
							{{capture name="var_net_prices" assign="var_net_prices"}}
								{{$txt['106612::hotspot_net_prices']}}
							{{/capture}}
							{{if $var_net_prices  == (string) ''}}
								{{capture name="var_size_min_formatted" assign="var_size_min_formatted"}}
									{{if  $loop23->getItem("product")}}
										{{$loop23->getItemEscape("product/price/@size_min_formatted")}}
									{{else}}
										{{$loop23->getItemEscape("price/@size_min_formatted")}}
									{{/if}}
								{{/capture}}
								{{capture name="var_size_max_formatted" assign="var_size_max_formatted"}}
									{{if  $loop23->getItem("product")}}
										{{$loop23->getItemEscape("product/price/@size_max_formatted")}}
									{{else}}
										{{$loop23->getItemEscape("price/@size_max_formatted")}}
									{{/if}}
								{{/capture}}
								{{capture name="var_size_min_maxprice_formatted" assign="var_size_min_maxprice_formatted"}}
									{{if  $loop23->getItem("product")}}
										{{$loop23->getItemEscape("product/price/@size_min_maxprice_formatted")}}
									{{else}}
										{{$loop23->getItemEscape("price/@size_min_maxprice_formatted")}}
									{{/if}}
								{{/capture}}
								{{capture name="var_size_max_maxprice_formatted" assign="var_size_max_maxprice_formatted"}}
									{{if  $loop23->getItem("product")}}
										{{$loop23->getItemEscape("product/price/@size_max_maxprice_formatted")}}
									{{else}}
										{{$loop23->getItemEscape("price/@size_max_maxprice_formatted")}}
									{{/if}}
								{{/capture}}
								{{capture name="var_points" assign="var_points"}}
									{{if  $loop23->getItem("product")}}
										{{$loop23->getItemEscape("product/price/@points")}}
									{{else}}
										{{$loop23->getItemEscape("price/@points")}}
									{{/if}}
								{{/capture}}
								{{capture name="var_value" assign="var_value"}}
									{{if  $loop23->getItem("product")}}
										{{$loop23->getItemEscape("product/price/@size_min")}}
									{{else}}
										{{$loop23->getItemEscape("price/@size_min")}}
									{{/if}}
								{{/capture}}
								{{capture name="var_price_formatted" assign="var_price_formatted"}}
									{{if  $loop23->getItem("price/@price_unit_formatted") and  $loop23->getItem("sizes/@unit")}}
										{{$loop23->getItemEscape("price/@price_unit_formatted")}}{{literal}}/{{/literal}}{{$loop23->getItemEscape("sizes/@unit_sellby")}}{{literal}}{{/literal}}{{$loop23->getItemEscape("sizes/@unit")}}
									{{elseif  $loop23->getItem("product/price/@price_unit_formatted") and  $loop23->getItem("product/sizes/@unit")}}
										{{$loop23->getItemEscape("product/price/@price_unit_formatted")}}{{literal}}/{{/literal}}{{$loop23->getItemEscape("product/sizes/@unit_sellby")}}{{literal}}{{/literal}}{{$loop23->getItemEscape("product/sizes/@unit")}}
									{{else}}
										{{$var_size_min_formatted}}
									{{/if}}
								{{/capture}}
								{{capture name="var_maxprice_formatted" assign="var_maxprice_formatted"}}
									{{if  $loop23->getItem("price/@maxprice_unit_formatted")}}
										{{$loop23->getItemEscape("price/@maxprice_unit_formatted")}}
									{{elseif  $loop23->getItem("product/price/@maxprice_unit_formatted")}}
										{{$loop23->getItemEscape("product/price/@maxprice_unit_formatted")}}
									{{elseif  $loop23->getItem("product")}}
										{{$loop23->getItemEscape("product/price/@maxprice_formatted")}}
									{{else}}
										{{$loop23->getItemEscape("price/@maxprice_formatted")}}
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
												<span class="currency">{{$txt['106612::58826_012']}}</span></span>
										{{/if}}
									{{elseif (($var_value  == (string) 0) and $var_points  == (string) '') or ($var_value  == (string) 0 and $main_hotspot_zone1_b2b_var and !($main_hotspot_zone1_b2b_var  == (string) '') and !( $loop23->getItem("/shop/basket/@wholesaler")  == (string) 'true'))}}
										<a {{assign "hrefAttributeTmp6" ""}}  class="fon_price" data-mobile-class="btn-small" {{if $main_hotspot_zone1_b2b_var and !($main_hotspot_zone1_b2b_var == (string) '')}} title="{{$main_hotspot_zone1_b2b_var}}"{{capture name="hrefAttributeTmp6" assign="hrefAttributeTmp6"}}{{$loop23->getItemEscape("/shop/action/signin/@url")}}{{/capture}}{{$main_hotspot_zone1_b2b_var}}{{else}} title="{{$txt['106612::58826_009']}}"{{capture name="hrefAttributeTmp6" assign="hrefAttributeTmp6"}}{{$loop23->getItemEscape("/shop/contact/link/@url")}}{{/capture}} {{$txt['106612::58826_010']}} {{/if}}  href="{{$hrefAttributeTmp6}}"></a>
									{{else}}
										<span class="price">{{$txt['106612::58826_003']}}{{$var_price_formatted}}</span>
										{{if $var_maxprice_formatted  neq (string) ''}}
											<del class="max-price">{{$txt['106612::58826_006']}}{{$var_maxprice_formatted}}</del>
										{{/if}}
										{{if $var_points  neq (string) ''}}
											<span class="point-price">{{$var_points}}
												<span class="currency">{{$txt['106612::58826_012']}}</span></span>
										{{/if}}
									{{/if}}
									{{if  $loop23->getItem("price/@unit_converted_price_formatted")}}
										<small class="s_unit_converted_price">{{$loop23->getItemEscape("price/@unit_converted_price_formatted")}}{{literal}}/{{/literal}}{{$loop23->getItemEscape("price/@unit_converted_format")}}</small>
									{{/if}}
								</div>
							{{else}}
								{{capture name="var_size_min_net_formatted" assign="var_size_min_net_formatted"}}
									{{if  $loop23->getItem("product")}}
										{{$loop23->getItemEscape("product/price/@size_min_net_formatted")}}
									{{else}}
										{{$loop23->getItemEscape("price/@size_min_net_formatted")}}
									{{/if}}
								{{/capture}}
								{{capture name="var_size_max_net_formatted" assign="var_size_max_net_formatted"}}
									{{if  $loop23->getItem("product")}}
										{{$loop23->getItemEscape("product/price/@size_max_net_formatted")}}
									{{else}}
										{{$loop23->getItemEscape("price/@size_max_net_formatted")}}
									{{/if}}
								{{/capture}}
								{{capture name="var_size_min_net_maxprice_formatted" assign="var_size_min_net_maxprice_formatted"}}
									{{if  $loop23->getItem("product")}}
										{{$loop23->getItemEscape("product/price/@size_min_maxprice_net_formatted")}}
									{{else}}
										{{$loop23->getItemEscape("price/@size_min_maxprice_net_formatted")}}
									{{/if}}
								{{/capture}}
								{{capture name="var_size_max_maxprice_net_formatted" assign="var_size_max_maxprice_net_formatted"}}
									{{if  $loop23->getItem("product")}}
										{{$loop23->getItemEscape("product/price/@size_max_maxprice_net_formatted")}}
									{{else}}
										{{$loop23->getItemEscape("price/@size_max_maxprice_net_formatted")}}
									{{/if}}
								{{/capture}}
								{{capture name="var_points_net" assign="var_points_net"}}
									{{if  $loop23->getItem("product")}}
										{{$loop23->getItemEscape("product/price/@points")}}
									{{else}}
										{{$loop23->getItemEscape("price/@points")}}
									{{/if}}
								{{/capture}}
								{{capture name="var_net_value" assign="var_net_value"}}
									{{if  $loop23->getItem("product")}}
										{{$loop23->getItemEscape("product/price/@size_min_net")}}
									{{else}}
										{{$loop23->getItemEscape("price/@size_min_net")}}
									{{/if}}
								{{/capture}}
								{{capture name="var_price_formatted" assign="var_price_formatted"}}
									{{if  $loop23->getItem("price/@price_unit_net_formatted") and  $loop23->getItem("sizes/@unit")}}
										{{$loop23->getItemEscape("price/@price_unit_net_formatted")}}{{literal}}/{{/literal}}{{$loop23->getItemEscape("sizes/@unit_sellby")}}{{literal}}{{/literal}}{{$loop23->getItemEscape("sizes/@unit")}}
									{{elseif  $loop23->getItem("product/price/@price_unit_net_formatted") and  $loop23->getItem("product/sizes/@unit")}}
										{{$loop23->getItemEscape("product/price/@price_unit_net_formatted")}}{{literal}}/{{/literal}}{{$loop23->getItemEscape("product/sizes/@unit_sellby")}}{{literal}}{{/literal}}{{$loop23->getItemEscape("product/sizes/@unit")}}
									{{else}}
										{{$var_size_min_net_formatted}}
									{{/if}}
								{{/capture}}
								{{capture name="var_maxprice_net_formatted" assign="var_maxprice_net_formatted"}}
									{{if  $loop23->getItem("price/@maxprice_unit_net_formatted")}}
										{{$loop23->getItemEscape("price/@maxprice_unit_net_formatted")}}
									{{elseif  $loop23->getItem("product/price/@maxprice_unit_net_formatted")}}
										{{$loop23->getItemEscape("product/price/@maxprice_unit_net_formatted")}}
									{{elseif  $loop23->getItem("product")}}
										{{$loop23->getItemEscape("product/price/@maxprice_net_formatted")}}
									{{else}}
										{{$loop23->getItemEscape("price/@maxprice_net_formatted")}}
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
												<span class="currency">{{$txt['106612::58826_012']}}</span></span>
										{{/if}}
									{{elseif (($var_net_value  == (string) 0) and $var_points_net  == (string) '') or ($var_net_value  == (string) 0 and $main_hotspot_zone1_b2b_var and !($main_hotspot_zone1_b2b_var  == (string) '') and !( $loop23->getItem("/shop/basket/@wholesaler")  == (string) 'true'))}}
										<a {{assign "hrefAttributeTmp6" ""}}  class="fon_price" data-mobile-class="btn-small" {{if $main_hotspot_zone1_b2b_var and !($main_hotspot_zone1_b2b_var == (string) '')}} title="{{$main_hotspot_zone1_b2b_var}}"{{capture name="hrefAttributeTmp6" assign="hrefAttributeTmp6"}}{{$loop23->getItemEscape("/shop/action/signin/@url")}}{{/capture}}{{$main_hotspot_zone1_b2b_var}}{{else}} title="{{$txt['106612::58826_009']}}"{{capture name="hrefAttributeTmp6" assign="hrefAttributeTmp6"}}{{$loop23->getItemEscape("/shop/contact/link/@url")}}{{/capture}} {{$txt['106612::58826_010']}} {{/if}}  href="{{$hrefAttributeTmp6}}"></a>
									{{else}}
										<span class="price">{{$txt['106612::58826_003']}}{{$var_price_formatted}}{{$var_net_prices}}</span>
										{{if $var_maxprice_net_formatted  neq (string) ''}}
											<del class="max-price">{{$txt['106612::58826_006']}}{{$var_maxprice_net_formatted}}{{$var_net_prices}}</del>
										{{/if}}
										{{if $var_points_net  neq (string) ''}}
											<span class="point-price">{{$var_points_net}}
												<span class="currency">{{$txt['106612::58826_012']}}</span></span>
										{{/if}}
									{{/if}}
									{{if  $loop23->getItem("price/@unit_converted_price_net_formatted")}}
										<small class="s_unit_converted_price">{{$loop23->getItemEscape("price/@unit_converted_price_net_formatted")}}{{literal}}/{{/literal}}{{$loop23->getItemEscape("price/@unit_converted_format")}}{{$var_net_prices}}</small>
									{{/if}}
								</div>
							{{/if}}
							{{if  $loop23->getItem("client/@client")}}
								<div class="client">{{$loop23->getItem("client/@client")}}
								</div>
							{{/if}}
							{{if  $loop23->getItem("@note")}}
								<div class="note">
									<span>
										<i {{assign "classAttributeTmp1" ""}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}icon-star{{/capture}}{{if $loop23->getItem("@note") gt (string) 0.5}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp1}}"></i>
										<i {{assign "classAttributeTmp2" ""}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}icon-star{{/capture}}{{if $loop23->getItem("@note") gt (string) 1.5}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp2}}"></i>
										<i {{assign "classAttributeTmp3" ""}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}icon-star{{/capture}}{{if $loop23->getItem("@note") gt (string) 2.5}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp3}}"></i>
										<i {{assign "classAttributeTmp4" ""}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}icon-star{{/capture}}{{if $loop23->getItem("@note") gt (string) 3.5}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp4}}"></i>
										<i {{assign "classAttributeTmp5" ""}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}icon-star{{/capture}}{{if $loop23->getItem("@note") gt (string) 4.5}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp5}}"></i></span>
									<small>{{$txt['106612::58826_oc']}}{{$loop23->getItem("@note")}}{{$txt['106612::58826_oce']}}</small>
								</div>
							{{/if}}
							{{if  $loop23->getItem("content")}}
								<div class="cleardescription">{{$loop23->getItem("content")}}
								</div>
							{{/if}}
						</div>
					{{/foreach}}
				</div>
			</div>
		{{else}}
			data-ajaxLoad="true"data-pageType="search"
			<div class="main_hotspot mb-4 skeleton">
				<span class="big_label"></span>
				<div class="main_hotspot_sub">
					<div class="products_wrapper row clearfix">
						<div class="product_wrapper col-md-3 col-xs-6">
							<span class="product-icon"></span>
							<span class="product-name"></span>
							<div class="product_prices">
							</div>
						</div>
						<div class="product_wrapper col-md-3 col-xs-6">
							<span class="product-icon"></span>
							<span class="product-name"></span>
							<div class="product_prices">
							</div>
						</div>
						<div class="product_wrapper col-md-3 col-xs-6">
							<span class="product-icon"></span>
							<span class="product-name"></span>
							<div class="product_prices">
							</div>
						</div>
						<div class="product_wrapper col-md-3 col-xs-6">
							<span class="product-icon"></span>
							<span class="product-name"></span>
							<div class="product_prices">
							</div>
						</div>
					</div>
				</div>
			</div>
		{{/if}}
	</div>
{{/if}}

<iaiajaxend/>