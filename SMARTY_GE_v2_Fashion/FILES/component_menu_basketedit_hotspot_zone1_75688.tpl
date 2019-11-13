
<!--Menu hotspot w koszyku strefa 1 (menu_basketedit_hotspot_zone1, 75688.1)-->
{{if  $xml->getItem("page/hotspot/products_zone1/product") or  $xml->getItem("page/hotspot/products_zone1/opinion")}}
	<div class="main_hotspot mrg-b clearfix" id="menu_basketedit_hotspot">
		<div class="big_label">
			{{if  $xml->getItem("page/hotspot/products_zone1/@name")}}
				{{$xml->getItemEscape("page/hotspot/products_zone1/@name")}}
			{{else}}
				{{$txt['75688::58826_label']}}
			{{/if}}
			{{$txt['75688::58826_label-after']}}
		</div>
		<div class="col-bg-1 align_row main_hotspot_sub" data-align="a.product-icon img#css">
			<div {{assign "classAttributeTmp1" ""}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}products_wrapper row clearfix{{/capture}}{{if (count( $xml->getList("page/hotspot/products_zone1/product")) == (string) 1) or (count( $xml->getList("page/hotspot/products_zone1/opinion")) == (string) 1)}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}products_wrapper row clearfix col-md-3 col-xs-6{{/capture}}{{/if}}{{if (count( $xml->getList("page/hotspot/products_zone1/product")) == (string) 2) or (count( $xml->getList("page/hotspot/products_zone1/opinion")) == (string) 2)}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}products_wrapper row clearfix col-md-6 col-xs-12{{/capture}}{{/if}} data-column="{{$txt['75688::7487444_hotspot_column']}}" data-wrapType="{{$txt['75688::7487444_hotspot_wrapType']}}"   class="{{$classAttributeTmp1}}">
				{{foreach from=$xml->getList("page/hotspot/products_zone1/*") item=loop27}}
					{{capture name="var_name" assign="var_name"}}
						{{if  $loop27->getItem("product")}}
							{{$loop27->getItem("product/name/text()")}}
						{{else}}
							{{$loop27->getItem("name/text()")}}
						{{/if}}
					{{/capture}}
					{{capture name="var_icon" assign="var_icon"}}
						{{if  $loop27->getItem("product")}}
							{{$loop27->getItemEscape("product/icon")}}
						{{else}}
							{{$loop27->getItemEscape("icon")}}
						{{/if}}
					{{/capture}}
					{{capture name="var_icon_small" assign="var_icon_small"}}
						{{if  $loop27->getItem("product")}}
							{{$loop27->getItemEscape("product/icon_small")}}
						{{else}}
							{{$loop27->getItemEscape("icon_small")}}
						{{/if}}
					{{/capture}}
					{{capture name="var_link" assign="var_link"}}
						{{if  $loop27->getItem("product")}}
							{{$loop27->getItemEscape("product/@link")}}
						{{else}}
							{{$loop27->getItemEscape("@link")}}
						{{/if}}
					{{/capture}}
					<div {{assign "classAttributeTmp2" ""}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}product_wrapper col-md-3 col-xs-6{{/capture}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['75688::product_wrapper_col']}} type_{{$loop27->getItemEscape("name(.)")}}{{/capture}}  class="{{$classAttributeTmp2}}">
						<a class="product-icon" href="{{$var_link}}" title="{{$var_name}}">
							<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/loader.gif?r=1570606529" class="b-lazy" data-src-small="{{$loop27->getItem("$var_icon_small")}}" data-src="{{$loop27->getItem("$var_icon")}}" alt="{{$loop27->getItem("$var_name")}}"></img></a>
						<a class="product-name" href="{{$var_link}}" title="{{$var_name}}">{{$var_name}}</a>
						{{capture name="var_size_min_formatted" assign="var_size_min_formatted"}}
							{{if  $loop27->getItem("product")}}
								{{$loop27->getItemEscape("product/price/@size_min_formatted")}}
							{{else}}
								{{$loop27->getItemEscape("price/@size_min_formatted")}}
							{{/if}}
						{{/capture}}
						{{capture name="var_size_max_formatted" assign="var_size_max_formatted"}}
							{{if  $loop27->getItem("product")}}
								{{$loop27->getItemEscape("product/price/@size_max_formatted")}}
							{{else}}
								{{$loop27->getItemEscape("price/@size_max_formatted")}}
							{{/if}}
						{{/capture}}
						{{capture name="var_points" assign="var_points"}}
							{{if  $loop27->getItem("product")}}
								{{$loop27->getItemEscape("product/price/@points")}}
							{{else}}
								{{$loop27->getItemEscape("price/@points")}}
							{{/if}}
						{{/capture}}
						{{capture name="var_size_min_maxprice_formatted" assign="var_size_min_maxprice_formatted"}}
							{{if  $loop27->getItem("product")}}
								{{$loop27->getItemEscape("product/price/@size_min_maxprice_formatted")}}
							{{else}}
								{{$loop27->getItemEscape("price/@size_min_maxprice_formatted")}}
							{{/if}}
						{{/capture}}
						{{capture name="var_size_max_maxprice_formatted" assign="var_size_max_maxprice_formatted"}}
							{{if  $loop27->getItem("product")}}
								{{$loop27->getItemEscape("product/price/@size_max_maxprice_formatted")}}
							{{else}}
								{{$loop27->getItemEscape("price/@size_max_maxprice_formatted")}}
							{{/if}}
						{{/capture}}
						{{capture name="var_value" assign="var_value"}}
							{{if  $loop27->getItem("product")}}
								{{$loop27->getItemEscape("product/price/@value")}}
							{{else}}
								{{$loop27->getItemEscape("price/@value")}}
							{{/if}}
						{{/capture}}
						{{capture name="var_price_formatted" assign="var_price_formatted"}}
							{{if  $loop27->getItem("price/@price_unit_formatted") and  $loop27->getItem("sizes/@unit")}}
								{{$loop27->getItemEscape("price/@price_unit_formatted")}}{{literal}}/{{/literal}}{{$loop27->getItemEscape("sizes/@unit_sellby")}}{{literal}}{{/literal}}{{$loop27->getItemEscape("sizes/@unit")}}
							{{elseif  $loop27->getItem("product/price/@price_unit_formatted") and  $loop27->getItem("product/sizes/@unit")}}
								{{$loop27->getItemEscape("product/price/@price_unit_formatted")}}{{literal}}/{{/literal}}{{$loop27->getItemEscape("product/sizes/@unit_sellby")}}{{literal}}{{/literal}}{{$loop27->getItemEscape("product/sizes/@unit")}}
							{{else}}
								{{$var_size_min_formatted}}
							{{/if}}
						{{/capture}}
						{{capture name="var_maxprice_formatted" assign="var_maxprice_formatted"}}
							{{if  $loop27->getItem("price/@maxprice_unit_formatted")}}
								{{$loop27->getItemEscape("price/@maxprice_unit_formatted")}}
							{{elseif  $loop27->getItem("product/price/@maxprice_unit_formatted")}}
								{{$loop27->getItemEscape("product/price/@maxprice_unit_formatted")}}
							{{elseif  $loop27->getItem("product")}}
								{{$loop27->getItemEscape("product/price/@maxprice_formatted")}}
							{{else}}
								{{$loop27->getItemEscape("price/@maxprice_formatted")}}
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
										<span class="currency">{{$txt['75688::58826_012']}}</span></span>
								{{/if}}
							{{elseif ($var_value  == (string) 0) and $var_points  == (string) ''}}
								<a class="fon_price" data-mobile-class="btn-small" title="{{$txt['75688::58826_009']}}" href="{{$loop27->getItemEscape("/shop/contact/link/@url")}}">{{$txt['75688::58826_010']}}</a>
							{{else}}
								<span class="price">{{$txt['75688::58826_003']}}{{$var_price_formatted}}</span>
								{{if $var_maxprice_formatted  neq (string) ''}}
									<del class="max-price">{{$txt['75688::58826_006']}}{{$var_maxprice_formatted}}</del>
								{{/if}}
								{{if $var_points  neq (string) ''}}
									<span class="point-price">{{$var_points}}
										<span class="currency">{{$txt['75688::58826_012']}}</span></span>
								{{/if}}
							{{/if}}
							{{if  $loop27->getItem("price/@unit_converted_price_formatted")}}
								<small class="s_unit_converted_price">{{$loop27->getItemEscape("price/@unit_converted_price_formatted")}}{{literal}}/{{/literal}}{{$loop27->getItemEscape("price/@unit_converted_format")}}</small>
							{{/if}}
						</div>
						{{if  $loop27->getItem("client/@client")}}
							<div class="client">{{$loop27->getItem("client/@client")}}
							</div>
						{{/if}}
						{{if  $loop27->getItem("@note")}}
							<div class="note">
								<span>
									<i {{assign "classAttributeTmp3" ""}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}icon-star{{/capture}}{{if $loop27->getItem("@note") gt (string) 0.5}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp3}}"></i>
									<i {{assign "classAttributeTmp4" ""}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}icon-star{{/capture}}{{if $loop27->getItem("@note") gt (string) 1.5}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp4}}"></i>
									<i {{assign "classAttributeTmp5" ""}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}icon-star{{/capture}}{{if $loop27->getItem("@note") gt (string) 2.5}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp5}}"></i>
									<i {{assign "classAttributeTmp6" ""}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}icon-star{{/capture}}{{if $loop27->getItem("@note") gt (string) 3.5}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp6}}"></i>
									<i {{assign "classAttributeTmp7" ""}}{{capture name="classAttributeTmp7" assign="classAttributeTmp7"}}icon-star{{/capture}}{{if $loop27->getItem("@note") gt (string) 4.5}}{{capture name="classAttributeTmp7" assign="classAttributeTmp7"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp7}}"></i></span>
								<small>{{$txt['75688::58826_oc']}}{{$loop27->getItem("@note")}}{{$txt['75688::58826_oce']}}</small>
							</div>
						{{/if}}
						{{if  $loop27->getItem("content")}}
							<div class="cleardescription">{{$loop27->getItem("content")}}
							</div>
						{{/if}}
					</div>
				{{/foreach}}
			</div>
		</div>
	</div>
{{/if}}
