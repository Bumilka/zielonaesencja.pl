
<!--Filtrowanie wyników wyszukiwania (menu_filter, 106530.1)-->
{{capture name="setFilter_showaFiltering" assign="setFilter_showaFiltering"}}
	{{$txt['106530::103182_filtering']}}
{{/capture}}

{{capture name="setFilter_showall" assign="setFilter_showall"}}
	{{$txt['106530::66412_500_001']}}
{{/capture}}

{{capture name="filter_ukryj" assign="filter_ukryj"}}
	{{$txt['106530::66412_ukryj']}}
{{/capture}}

{{capture name="filter_pokaz" assign="filter_pokaz"}}
	{{$txt['106530::66412_pokaz']}}
{{/capture}}

{{capture name="wprowadz_zakres_cen" assign="wprowadz_zakres_cen"}}
	{{$txt['106530::66412_z_0']}}
{{/capture}}

{{capture name="showAdditionalHeader" assign="showAdditionalHeader"}}
	{{$txt['106530::546457_showaddheader']}}
{{/capture}}

{{if count( $xml->getList("/shop/page/products/navigation/filtering/filter"))}}
	<script class="ajaxLoad">
                var filter_ukryj = '{{$txt['106530::66412_ukryj']}}';
                var filter_pokaz = '{{$txt['106530::66412_pokaz']}}';
            	</script>

	<div id="menu_filter" class="bg_alter mb-4">
		<div id="menu_filter_sub">
			<form id="filter_form" method="get" action="{{$xml->getItemEscape("/shop/page/products/navigation/search_link/@value")}}">
				{{foreach from=$xml->getList("/shop/page/products/navigation/filtering/filter") item=loop18}}
					<input type="hidden" id="{{$loop18->getItemEscape("@id")|replace:'[]':''}}_form" name="{{$loop18->getItemEscape("@id")}}" value=""></input>
				{{/foreach}}
				{{if !( $xml->getItem("/shop/page/products/navigation/filtering/filter[@id = 'filter_nextday']/item[@value='y']")) and (( $xml->getItem("/shop/page/nextday/@couriers_available")  == (string) 'true' and  $xml->getItem("/shop/page/nextday/@client_localized")  == (string) 'false') or ( $xml->getItem("/shop/page/nextday/@couriers_available")  == (string) 'true' and  $xml->getItem("/shop/page/nextday/@client_localized")  == (string) 'true' and  $xml->getItem("/shop/page/nextday/@service_available_for_current_location")  == (string) 'true'))}}
					<input type="hidden" id="filter_nextday_form" name="filter_nextday" value=""></input>
				{{/if}}
				{{if !( $xml->getItem("/shop/page/products/navigation/filtering/filter[@id = 'filter_sameday']/item[@value='y']")) and (( $xml->getItem("/shop/page/sameday/@couriers_available")  == (string) 'true' and  $xml->getItem("/shop/page/sameday/@client_localized")  == (string) 'false') or ( $xml->getItem("/shop/page/sameday/@couriers_available")  == (string) 'true' and  $xml->getItem("/shop/page/sameday/@client_localized")  == (string) 'true' and  $xml->getItem("/shop/page/sameday/@service_available_for_current_location")  == (string) 'true'))}}
					<input type="hidden" id="filter_sameday_form" name="filter_sameday" value=""></input>
				{{/if}}
			</form>
			<div class="menu_filter_wrapper">
				{{foreach from=$xml->getList("/shop/page/products/navigation/filtering/filter[(@type='list') or (@type='text')]") item=loop44}}
					{{if  $loop44->getItem("@type") == (string)'text'}}
						<div class="filter_item list_type" id="{{$loop44->getItemEscape("@id")|replace:'[]':''}}">
							<div class="filter_header">
								<a {{assign "hrefAttributeTmp26" ""}}{{assign "classAttributeTmp1" ""}}{{capture name="hrefAttributeTmp26" assign="hrefAttributeTmp26"}}#{{/capture}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}filter_toggle{{/capture}} id="{{$loop44->getItemEscape("@id")|replace:'[]':''}}_toggle"{{capture name="hrefAttributeTmp26" assign="hrefAttributeTmp26"}}#toggle_{{$loop44->getItemEscape("@id")|replace:'[]':''}}_content{{/capture}} title="{{$txt['106530::66412_001_001']}}" {{if $loop44->getItem("@selected")}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}filter_toggle selected_filter{{/capture}}{{/if}}  class="{{$classAttributeTmp1}}"  href="{{$hrefAttributeTmp26}}"></a>
								<span>{{$loop44->getItemEscape("@name")}}</span>
								<span class="filter_loader" style="display: none;" id="{{$loop44->getItemEscape("@id")|replace:'[]':''}}_loader"></span>
								{{if  $loop44->getItem("@selected") and !( $loop44->getItem("@selected")  == (string) '')}}
									<a class="rem_filter" href="{{$loop44->getItemEscape("@link_remove")}}">{{$txt['106530::30020_001_bb']}}</a>
								{{/if}}
							</div>
							<div class="filter_content" id="{{$loop44->getItemEscape("@id")|replace:'[]':''}}_content">
								{{if $showAdditionalHeader}}
									<div class="filter_header">
										<a {{assign "hrefAttributeTmp27" ""}}{{capture name="hrefAttributeTmp27" assign="hrefAttributeTmp27"}}#{{/capture}} class="filter_toggle" id="{{$loop44->getItemEscape("@id")|replace:'[]':''}}_toggle"{{capture name="hrefAttributeTmp27" assign="hrefAttributeTmp27"}}#toggle_{{$loop44->getItemEscape("@id")|replace:'[]':''}}_content{{/capture}} title="{{$txt['106530::66412_001_001']}}"  href="{{$hrefAttributeTmp27}}"></a>
										<span>{{$loop44->getItemEscape("@name")}}</span>
										<span class="filter_loader" style="display: none;" id="{{$loop44->getItemEscape("@id")|replace:'[]':''}}_loader"></span>
										{{if  $loop44->getItem("@selected") and !( $loop44->getItem("@selected")  == (string) '')}}
											<a class="rem_filter" href="{{$loop44->getItemEscape("@link_remove")}}">{{$txt['106530::30020_001_bb']}}</a>
										{{/if}}
									</div>
								{{/if}}
								<input type="text" class="input_filter_text" value=" {{if ( $loop44->getItem("@selected")) and not ( $loop44->getItem("@selected") == (string) '')}}{{$loop44->getItemEscape("@selected")}}{{/if}} " placeholder="{{$txt['106530::30020_006_01']}}" id="{{$loop44->getItemEscape("@id")|replace:'[]':''}}_input"></input>
								<a class="filter_submit_small" href="#filter_submit" id="{{$loop44->getItemEscape("@id")|replace:'[]':''}}_submit" data-filter="{{$loop44->getItemEscape("@id")|replace:'[]':''}}" title="{{$txt['106530::66412_004_001a']}}">{{$txt['106530::66412_004_001b']}}</a>
							</div>
						</div>
					{{elseif  $loop44->getItem("@display") == (string)'gfx'}}
						<div class="filter_item list_type" id="{{$loop44->getItemEscape("@id")|replace:'[]':''}}">
							<div class="filter_header">
								<a {{assign "hrefAttributeTmp26" ""}}{{assign "classAttributeTmp1" ""}}{{capture name="hrefAttributeTmp26" assign="hrefAttributeTmp26"}}#{{/capture}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}filter_toggle{{/capture}} id="{{$loop44->getItemEscape("@id")|replace:'[]':''}}_toggle"{{capture name="hrefAttributeTmp26" assign="hrefAttributeTmp26"}}#toggle_{{$loop44->getItemEscape("@id")|replace:'[]':''}}_content{{/capture}} title="{{$txt['106530::66412_001_001']}}" {{if $loop44->getItem("@selected")}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}filter_toggle selected_filter{{/capture}}{{/if}}  class="{{$classAttributeTmp1}}"  href="{{$hrefAttributeTmp26}}"></a>
								<span>{{$loop44->getItemEscape("@name")}}</span>
								<span class="filter_loader" style="display: none;" id="{{$loop44->getItemEscape("@id")|replace:'[]':''}}_loader"></span>
								{{if  $loop44->getItem("item[@selected='selected']")}}
									<a class="rem_filter" href="{{$loop44->getItemEscape("@link_remove")}}">{{$txt['106530::30020_001_bb']}}</a>
								{{/if}}
							</div>
							<div class="filter_content filter_gfxonly" id="{{$loop44->getItemEscape("@id")|replace:'[]':''}}_content">
								{{if $showAdditionalHeader}}
									<div class="filter_header">
										<a {{assign "hrefAttributeTmp27" ""}}{{capture name="hrefAttributeTmp27" assign="hrefAttributeTmp27"}}#{{/capture}} class="filter_toggle" id="{{$loop44->getItemEscape("@id")|replace:'[]':''}}_toggle"{{capture name="hrefAttributeTmp27" assign="hrefAttributeTmp27"}}#toggle_{{$loop44->getItemEscape("@id")|replace:'[]':''}}_content{{/capture}} title="{{$txt['106530::66412_001_001']}}"  href="{{$hrefAttributeTmp27}}"></a>
										<span>{{$loop44->getItemEscape("@name")}}</span>
										<span class="filter_loader" style="display: none;" id="{{$loop44->getItemEscape("@id")|replace:'[]':''}}_loader"></span>
										{{if  $loop44->getItem("item[@selected='selected']")}}
											<a class="rem_filter" href="{{$loop44->getItemEscape("@link_remove")}}">{{$txt['106530::30020_001_bb']}}</a>
										{{/if}}
									</div>
								{{/if}}
								<ul class="{{$loop44->getItemEscape("@id")|replace:'[]':''}}">
									{{foreach from=$loop44->getList("item") item=loop163}}
										<!--IAI_TEMPLATE_sort_SELECT:@selected_DATATYPE:_ORDER:descending-->
										<li {{if $loop163->getItem("@quantity") == (string) '0'}} class="disabled"{{/if}} id="{{$loop163->getItemEscape("../@id")|replace:'[]':''}}_{{$loop163->getItemEscape("@value")}}_box">
											<input type="checkbox" class="checkbox_hidden" id="{{$loop163->getItemEscape("../@id")|replace:'[]':''}}_val{{$loop163->getItemEscape("@value")}}" value="{{$loop163->getItemEscape("@value")}}" {{if $loop163->getItem("@selected") == (string)'selected'}} checked="checked" {{/if}}{{if $loop163->getItem("@quantity") == (string) '0'}} disabled="disabled" {{/if}}></input>
											{{if  $loop163->getItem("@gfx_normal")}}
												<label {{assign "classAttributeTmp3" ""}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}imgfix{{/capture}}{{if $loop163->getItem("@selected") == (string)'selected'}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}imgfix active{{/capture}}{{/if}} for="{{$loop163->getItemEscape("../@id")|replace:'[]':''}}_val{{$loop163->getItemEscape("@value")}}"  class="{{$classAttributeTmp3}}">
													<span class="imgfix" style="background: url('{{$loop163->getItemEscape("@gfx_normal")}}') no-repeat -5000px;"></span>
													<img class="filter_gfxonly" src="{{$loop163->getItemEscape("@gfx_normal")}}" alt="{{$loop163->getItemEscape("@name")}}" title="{{$loop163->getItemEscape("@name")}}"></img>
												</label>
											{{/if}}
										</li>
									{{/foreach}}
								</ul>
								<div class="filter_options" id="{{$loop44->getItemEscape("@id")|replace:'[]':''}}_options">
									<a {{assign "classAttributeTmp4" ""}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}filter_submit{{/capture}} style="display: none"{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}filter_submit{{/capture}} href="#filter_submit" id="{{$loop44->getItemEscape("@id")|replace:'[]':''}}_submit" data-filter="{{$loop44->getItemEscape("@id")|replace:'[]':''}}" title="{{$txt['106530::66412_002_001a']}}"  class="{{$classAttributeTmp4}}">{{$txt['106530::66412_002_001b']}}</a>
								</div>
							</div>
						</div>
					{{elseif  $loop44->getItem("@display") == (string)'name_gfx'}}
						<div class="filter_item list_type" id="{{$loop44->getItemEscape("@id")|replace:'[]':''}}">
							<div class="filter_header">
								<a {{assign "hrefAttributeTmp26" ""}}{{assign "classAttributeTmp1" ""}}{{capture name="hrefAttributeTmp26" assign="hrefAttributeTmp26"}}#{{/capture}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}filter_toggle{{/capture}} id="{{$loop44->getItemEscape("@id")|replace:'[]':''}}_toggle"{{capture name="hrefAttributeTmp26" assign="hrefAttributeTmp26"}}#toggle_{{$loop44->getItemEscape("@id")|replace:'[]':''}}_content{{/capture}} title="{{$txt['106530::66412_001_001']}}" {{if $loop44->getItem("@selected")}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}filter_toggle selected_filter{{/capture}}{{/if}}  class="{{$classAttributeTmp1}}"  href="{{$hrefAttributeTmp26}}"></a>
								<span>{{$loop44->getItemEscape("@name")}}</span>
								<span class="filter_loader" style="display: none;" id="{{$loop44->getItemEscape("@id")|replace:'[]':''}}_loader"></span>
								{{if  $loop44->getItem("item[@selected='selected']")}}
									<a class="rem_filter" href="{{$loop44->getItemEscape("@link_remove")}}">{{$txt['106530::30020_001_bb']}}</a>
								{{/if}}
							</div>
							<div class="filter_content filter_namegfx" id="{{$loop44->getItemEscape("@id")|replace:'[]':''}}_content">
								{{if $showAdditionalHeader}}
									<div class="filter_header">
										<a {{assign "hrefAttributeTmp27" ""}}{{capture name="hrefAttributeTmp27" assign="hrefAttributeTmp27"}}#{{/capture}} class="filter_toggle" id="{{$loop44->getItemEscape("@id")|replace:'[]':''}}_toggle"{{capture name="hrefAttributeTmp27" assign="hrefAttributeTmp27"}}#toggle_{{$loop44->getItemEscape("@id")|replace:'[]':''}}_content{{/capture}} title="{{$txt['106530::66412_001_001']}}"  href="{{$hrefAttributeTmp27}}"></a>
										<span>{{$loop44->getItemEscape("@name")}}</span>
										<span class="filter_loader" style="display: none;" id="{{$loop44->getItemEscape("@id")|replace:'[]':''}}_loader"></span>
										{{if  $loop44->getItem("item[@selected='selected']")}}
											<a class="rem_filter" href="{{$loop44->getItemEscape("@link_remove")}}">{{$txt['106530::30020_001_bb']}}</a>
										{{/if}}
									</div>
								{{/if}}
								<ul class="{{$loop44->getItemEscape("@id")|replace:'[]':''}}">
									{{foreach from=$loop44->getList("item") item=loop267}}
										<!--IAI_TEMPLATE_sort_SELECT:@selected_DATATYPE:_ORDER:descending-->
										<li {{assign "classAttributeTmp6" ""}}{{if ( $loop267->getItem("@quantity") == (string) '0') and ( $loop267@iteration gt (string) $setFilter_showall)}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}disabled filterhidden{{/capture}}{{elseif $loop267@iteration gt (string) $setFilter_showall}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}filterhidden{{/capture}}{{elseif $loop267->getItem("@quantity") == (string) '0'}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}disabled{{/capture}}{{/if}} id="{{$loop267->getItemEscape("../@id")|replace:'[]':''}}_{{$loop267->getItemEscape("@value")}}_box"  class="{{$classAttributeTmp6}}">
											<table class="filter_namegfx">
												<tbody>
													<tr>
														<td class="filter_namegfx_input">
															<input type="checkbox" class="filter_checkbox" id="{{$loop267->getItemEscape("../@id")|replace:'[]':''}}_val{{$loop267->getItemEscape("@value")}}" value="{{$loop267->getItemEscape("@value")}}" {{if $loop267->getItem("@selected") == (string)'selected'}} checked="checked" {{/if}}{{if $loop267->getItem("@quantity") == (string) '0'}} disabled="disabled" {{/if}}></input>
														</td>
														<td class="filter_namegfx_gfx">
															{{if  $loop267->getItem("@gfx_normal")}}
																<label class="imgfix" for="{{$loop267->getItemEscape("../@id")|replace:'[]':''}}_val{{$loop267->getItemEscape("@value")}}">
																	<span class="imgfix" style="background: url('{{$loop267->getItemEscape("@gfx_normal")}}') no-repeat -5000px;"></span>
																	<img class="filter_namegfx_gfx" src="{{$loop267->getItemEscape("@gfx_normal")}}" alt="{{$loop267->getItemEscape("@name")}}" title="{{$loop267->getItemEscape("@name")}}"></img>
																</label>
															{{else}}
																<label class="imgfix" for="{{$loop267->getItemEscape("../@id")|replace:'[]':''}}_val{{$loop267->getItemEscape("@value")}}">
																</label>
															{{/if}}
														</td>
														<td class="filter_namegfx_name">
															<label for="{{$loop267->getItemEscape("../@id")|replace:'[]':''}}_val{{$loop267->getItemEscape("@value")}}">{{$loop267->getItemEscape("@name")}}
															</label>
															<span class="filter_quantity" {{if !( $loop267->getItem("@quantity"))}} style="display: none;"{{/if}} id="{{$loop267->getItemEscape("../@id")|replace:'[]':''}}_val{{$loop267->getItemEscape("@value")}}_quantity" data-filter="{{$loop267->getItemEscape("@name")}}">{{$txt['106530::66412_003_001a']}}
																<span class="filter_quantity_value">
																	{{if  $loop267->getItem("@quantity")}}
																		{{$loop267->getItemEscape("@quantity")}}
																	{{else}}
																		0
																	{{/if}}
																	</span>{{$txt['106530::66412_003_001b']}}</span>
														</td>
													</tr>
												</tbody>
											</table>
										</li>
									{{/foreach}}
								</ul>
								<div class="filter_options" id="{{$loop44->getItemEscape("@id")|replace:'[]':''}}_options">
									<a {{assign "classAttributeTmp4" ""}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}filter_submit{{/capture}} style="display: none"{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}filter_submit{{/capture}} href="#filter_submit" id="{{$loop44->getItemEscape("@id")|replace:'[]':''}}_submit" data-filter="{{$loop44->getItemEscape("@id")|replace:'[]':''}}" title="{{$txt['106530::66412_002_001a']}}"  class="{{$classAttributeTmp4}}">{{$txt['106530::66412_002_001b']}}</a>
									{{if count( $loop44->getList("item"))  gt (string) $setFilter_showall}}
										<a {{assign "classAttributeTmp8" ""}}{{capture name="classAttributeTmp8" assign="classAttributeTmp8"}}show_all{{/capture}}{{capture name="classAttributeTmp8" assign="classAttributeTmp8"}}show_all{{/capture}} href="#filter_showall" id="{{$loop44->getItemEscape("@id")|replace:'[]':''}}_showall" data-filter="{{$loop44->getItemEscape("@id")|replace:'[]':''}}" title="{{$txt['106530::66412_002_002a']}}"  class="{{$classAttributeTmp8}}">{{$txt['106530::66412_002_002b']}}({{$loop44->getItemEscape("count(item) - $setFilter_showall")}})</a>
									{{/if}}
								</div>
							</div>
						</div>
					{{elseif  $loop44->getItem("@id") == (string)'filter_price'}}
						<div class="filter_item list_type" id="{{$loop44->getItemEscape("@id")|replace:'[]':''}}">
							<div class="filter_header">
								<a {{assign "hrefAttributeTmp26" ""}}{{assign "classAttributeTmp1" ""}}{{capture name="hrefAttributeTmp26" assign="hrefAttributeTmp26"}}#{{/capture}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}filter_toggle{{/capture}} id="{{$loop44->getItemEscape("@id")|replace:'[]':''}}_toggle"{{capture name="hrefAttributeTmp26" assign="hrefAttributeTmp26"}}#toggle_{{$loop44->getItemEscape("@id")|replace:'[]':''}}_content{{/capture}} title="{{$txt['106530::66412_001_001']}}" {{if $loop44->getItem("@selected")}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}filter_toggle selected_filter{{/capture}}{{/if}}  class="{{$classAttributeTmp1}}"  href="{{$hrefAttributeTmp26}}"></a>
								<span>{{$loop44->getItemEscape("@name")}}</span>
								<span class="filter_loader" style="display: none;" id="{{$loop44->getItemEscape("@id")|replace:'[]':''}}_loader"></span>
								{{if  $loop44->getItem("@selected") and !( $loop44->getItem("@selected")  == (string) '')}}
									<a class="rem_filter" href="{{$loop44->getItemEscape("@link_remove")}}">{{$txt['106530::30020_001_bb']}}</a>
								{{/if}}
							</div>
							<div class="filter_content" id="{{$loop44->getItemEscape("@id")|replace:'[]':''}}_content">
								{{if $showAdditionalHeader}}
									<div class="filter_header">
										<a {{assign "hrefAttributeTmp27" ""}}{{capture name="hrefAttributeTmp27" assign="hrefAttributeTmp27"}}#{{/capture}} class="filter_toggle" id="{{$loop44->getItemEscape("@id")|replace:'[]':''}}_toggle"{{capture name="hrefAttributeTmp27" assign="hrefAttributeTmp27"}}#toggle_{{$loop44->getItemEscape("@id")|replace:'[]':''}}_content{{/capture}} title="{{$txt['106530::66412_001_001']}}"  href="{{$hrefAttributeTmp27}}"></a>
										<span>{{$loop44->getItemEscape("@name")}}</span>
										<span class="filter_loader" style="display: none;" id="{{$loop44->getItemEscape("@id")|replace:'[]':''}}_loader"></span>
										{{if  $loop44->getItem("@selected") and !( $loop44->getItem("@selected")  == (string) '')}}
											<a class="rem_filter" href="{{$loop44->getItemEscape("@link_remove")}}">{{$txt['106530::30020_001_bb']}}</a>
										{{/if}}
									</div>
								{{/if}}
								<ul class="{{$loop44->getItemEscape("@id")|replace:'[]':''}}">
									{{foreach from=$loop44->getList("item") item=loop403}}
										<li {{if $loop403->getItem("@quantity") == (string) '0'}} class="disabled"{{/if}} id="{{$loop403->getItemEscape("../@id")|replace:'[]':''}}_{{$loop403->getItemEscape("@value")}}_box">
											<input type="checkbox" class="filter_checkbox" id="{{$loop403->getItemEscape("../@id")|replace:'[]':''}}_val{{$loop403->getItemEscape("@value")}}" value="{{$loop403->getItemEscape("@value")}}" {{if $loop403->getItem("@selected") == (string)'selected'}} checked="checked" {{/if}}{{if $loop403->getItem("@quantity") == (string) '0'}} disabled="disabled" {{/if}}></input>
											<div class="filter_name_wrapper">
												<label for="{{$loop403->getItemEscape("../@id")|replace:'[]':''}}_val{{$loop403->getItemEscape("@value")}}">{{$loop403->getItemEscape("@name_formatted")}}
												</label>
												<span class="filter_quantity" {{if !( $loop403->getItem("@quantity"))}} style="display: none;"{{/if}} id="{{$loop403->getItemEscape("../@id")|replace:'[]':''}}_val{{$loop403->getItemEscape("@value")}}_quantity" data-filter="{{$loop403->getItemEscape("@name")}}">{{$txt['106530::66412_003_001a']}}
													<span class="filter_quantity_value">
														{{if  $loop403->getItem("@quantity")}}
															{{$loop403->getItemEscape("@quantity")}}
														{{else}}
															0
														{{/if}}
														</span>{{$txt['106530::66412_003_001b']}}</span>
											</div>
										</li>
									{{/foreach}}
								</ul>
								<div class="filter_options" id="{{$loop44->getItemEscape("@id")|replace:'[]':''}}_options">
									<a {{assign "classAttributeTmp4" ""}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}filter_submit{{/capture}} style="display: none"{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}filter_submit{{/capture}} href="#filter_submit" id="{{$loop44->getItemEscape("@id")|replace:'[]':''}}_submit" data-filter="{{$loop44->getItemEscape("@id")|replace:'[]':''}}" title="{{$txt['106530::66412_002_001a']}}"  class="{{$classAttributeTmp4}}">{{$txt['106530::66412_002_001b']}}</a>
								</div>
							</div>
						</div>
						{{if $wprowadz_zakres_cen}}
							<div class="filter_item list_type">
								<div class="filter_header">
									<a {{assign "hrefAttributeTmp34" ""}}{{assign "classAttributeTmp11" ""}}{{capture name="hrefAttributeTmp34" assign="hrefAttributeTmp34"}}#{{/capture}}{{capture name="classAttributeTmp11" assign="classAttributeTmp11"}}filter_toggle{{/capture}} id="{{$loop44->getItemEscape("@id")|replace:'[]':''}}_range_toggle"{{capture name="hrefAttributeTmp34" assign="hrefAttributeTmp34"}}#toggle_{{$loop44->getItemEscape("@id")|replace:'[]':''}}_range_content{{/capture}} title="{{$txt['106530::66412_001_001']}}" {{if $loop44->getItem("@selected")}}{{capture name="classAttributeTmp11" assign="classAttributeTmp11"}}filter_toggle selected_filter{{/capture}}{{/if}}  class="{{$classAttributeTmp11}}"  href="{{$hrefAttributeTmp34}}"></a>
									<span>{{$wprowadz_zakres_cen}}</span>
								</div>
								<div class="filter_content" id="{{$loop44->getItemEscape("@id")|replace:'[]':''}}_range_content">
									{{if $showAdditionalHeader}}
										<div class="filter_header">
											<a {{assign "hrefAttributeTmp35" ""}}{{capture name="hrefAttributeTmp35" assign="hrefAttributeTmp35"}}#{{/capture}} class="filter_toggle" id="{{$loop44->getItemEscape("@id")|replace:'[]':''}}_range_toggle"{{capture name="hrefAttributeTmp35" assign="hrefAttributeTmp35"}}#toggle_{{$loop44->getItemEscape("@id")|replace:'[]':''}}_range_content{{/capture}} title="{{$txt['106530::66412_001_001']}}"  href="{{$hrefAttributeTmp35}}"></a>
											<span>{{$wprowadz_zakres_cen}}</span>
										</div>
									{{/if}}
									<ul class="{{$loop44->getItemEscape("@id")|replace:'[]':''}}_range">
										<li class="filter_price_range">
											{{if  $loop44->getItem("/shop/page/products/navigation/filtering/filter[(@id = 'filter_price')]/@selected")}}
												<input type="hidden" id="min_price_set" value="{{$loop44->getItemEscape("substring-before(/shop/page/products/navigation/filtering/filter[(@id = 'filter_price')]/@selected,'-')")}}"></input>
												<input type="hidden" id="max_price_set" value="{{$loop44->getItemEscape("substring-after(/shop/page/products/navigation/filtering/filter[(@id = 'filter_price')]/@selected,'-')")}}"></input>
											{{/if}}
											<input type="hidden" id="min_price_start" value="0"></input>
											<input type="hidden" id="max_price_start" value="{{$loop44->getItemEscape("substring-before(substring-after(/shop/page/products/navigation/filtering/filter[@id = 'filter_price']/item[position() = last()]/@name,'- '), '.')")}}"></input>
											<div id="slider-price_wrapper">
												<div id="slider-price">
												</div>
											</div>
											<div class="filter_range" id="{{$loop44->getItemEscape("@id")|replace:'[]':''}}_range" data-filter="{{$loop44->getItemEscape("@id")|replace:'[]':''}}">
												<span class="filter_range_from">{{$txt['106530::66412_007_001']}}</span>
												<span class="filter_range_from_wrapper">
													<input {{assign "valueAttributeTmp46" ""}}  type="text" class="filter_range_from" id="{{$loop44->getItemEscape("@id")|replace:'[]':''}}_range_from" data-filter="{{$loop44->getItemEscape("@id")|replace:'[]':''}}" {{if !( $loop44->getItem("item[@selected = 'selected']")) and ( $loop44->getItem("@selected") and !( $loop44->getItem("@selected") == (string) ''))}}{{capture name="valueAttributeTmp46" assign="valueAttributeTmp46"}}{{$loop44->getItemEscape("substring-before(@selected, '-')")}}{{/capture}}{{else}}{{capture name="valueAttributeTmp46" assign="valueAttributeTmp46"}}0{{/capture}}{{/if}}  value="{{$valueAttributeTmp46}}"></input>
													<span class="filter_range_curr">{{$loop44->getItemEscape("/shop/currency/option[@selected = 'true']/@symbol")}}</span></span>
												<span class="filter_range_to">{{$txt['106530::66412_007_002']}}</span>
												<span class="filter_range_to_wrapper">
													<input {{assign "valueAttributeTmp47" ""}}  type="text" class="filter_range_to" id="{{$loop44->getItemEscape("@id")|replace:'[]':''}}_range_to" data-filter="{{$loop44->getItemEscape("@id")|replace:'[]':''}}" {{if !( $loop44->getItem("item[@selected = 'selected']")) and ( $loop44->getItem("@selected") and !( $loop44->getItem("@selected") == (string) ''))}}{{capture name="valueAttributeTmp47" assign="valueAttributeTmp47"}}{{$loop44->getItemEscape("substring-after(@selected, '-')")}}{{/capture}}{{else}}{{capture name="valueAttributeTmp47" assign="valueAttributeTmp47"}}{{$loop44->getItemEscape("substring-before(substring-after(/shop/page/products/navigation/filtering/filter[@id = 'filter_price']/item[position() = last()]/@name,'- '), '.')")}}{{/capture}}{{/if}}  value="{{$valueAttributeTmp47}}"></input>
													<span class="filter_range_curr">{{$loop44->getItemEscape("/shop/currency/option[@selected = 'true']/@symbol")}}</span></span>
												<span class="filter_submit_range_wrapper">
													<a class="filter_submit_range" href="#filter_submit" data-filter="{{$loop44->getItemEscape("@id")|replace:'[]':''}}" title="{{$txt['106530::66412_004_001a']}}">{{$txt['106530::66412_004_001br']}}</a></span>
											</div>
										</li>
									</ul>
								</div>
							</div>
						{{/if}}
					{{elseif  $loop44->getItem("@id") == (string)'filter_date'}}
						<div class="filter_item list_type" id="{{$loop44->getItemEscape("@id")|replace:'[]':''}}">
							<div class="filter_header">
								<a {{assign "hrefAttributeTmp26" ""}}{{assign "classAttributeTmp1" ""}}{{capture name="hrefAttributeTmp26" assign="hrefAttributeTmp26"}}#{{/capture}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}filter_toggle{{/capture}} id="{{$loop44->getItemEscape("@id")|replace:'[]':''}}_toggle"{{capture name="hrefAttributeTmp26" assign="hrefAttributeTmp26"}}#toggle_{{$loop44->getItemEscape("@id")|replace:'[]':''}}_content{{/capture}} title="{{$txt['106530::66412_001_001']}}" {{if $loop44->getItem("@selected")}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}filter_toggle selected_filter{{/capture}}{{/if}}  class="{{$classAttributeTmp1}}"  href="{{$hrefAttributeTmp26}}"></a>
								<span>{{$loop44->getItemEscape("@name")}}</span>
								<span class="filter_loader" style="display: none;" id="{{$loop44->getItemEscape("@id")|replace:'[]':''}}_loader"></span>
								{{if  $loop44->getItem("@selected") and !( $loop44->getItem("@selected")  == (string) '')}}
									<a class="rem_filter" href="{{$loop44->getItemEscape("@link_remove")}}">{{$txt['106530::30020_001_bb']}}</a>
								{{/if}}
							</div>
							<div class="filter_content" id="{{$loop44->getItemEscape("@id")|replace:'[]':''}}_content">
								{{if $showAdditionalHeader}}
									<div class="filter_header">
										<a {{assign "hrefAttributeTmp27" ""}}{{capture name="hrefAttributeTmp27" assign="hrefAttributeTmp27"}}#{{/capture}} class="filter_toggle" id="{{$loop44->getItemEscape("@id")|replace:'[]':''}}_toggle"{{capture name="hrefAttributeTmp27" assign="hrefAttributeTmp27"}}#toggle_{{$loop44->getItemEscape("@id")|replace:'[]':''}}_content{{/capture}} title="{{$txt['106530::66412_001_001']}}"  href="{{$hrefAttributeTmp27}}"></a>
										<span>{{$loop44->getItemEscape("@name")}}</span>
										<span class="filter_loader" style="display: none;" id="{{$loop44->getItemEscape("@id")|replace:'[]':''}}_loader"></span>
										{{if  $loop44->getItem("@selected") and !( $loop44->getItem("@selected")  == (string) '')}}
											<a class="rem_filter" href="{{$loop44->getItemEscape("@link_remove")}}">{{$txt['106530::30020_001_bb']}}</a>
										{{/if}}
									</div>
								{{/if}}
								<ul class="{{$loop44->getItemEscape("@id")|replace:'[]':''}}">
									{{foreach from=$loop44->getList("item[@desc = '1week' or @desc = '1month' or @desc = '3months' or @desc = '6months' or @desc = '1year']") item=loop585}}
										<li {{if $loop585->getItem("@quantity") == (string) '0'}} class="disabled"{{/if}} id="{{$loop585->getItemEscape("../@id")|replace:'[]':''}}_{{$loop585->getItemEscape("@value")}}_box">
											<input type="checkbox" data-filter="filter_date_option" class="filter_checkbox" id="{{$loop585->getItemEscape("../@id")|replace:'[]':''}}_val{{$loop585->getItemEscape("@value")}}" value="{{$loop585->getItemEscape("@value")}}" {{if $loop585->getItem("@selected") == (string)'selected'}} checked="checked" {{/if}}{{if $loop585->getItem("@quantity") == (string) '0'}} disabled="disabled" {{/if}}></input>
											<div class="filter_name_wrapper">
												<label for="{{$loop585->getItemEscape("../@id")|replace:'[]':''}}_val{{$loop585->getItemEscape("@value")}}">
													{{if  $loop585->getItem("@desc")  == (string) '1week'}}
														{{$txt['106530::66412_012_0011']}}
													{{elseif  $loop585->getItem("@desc")  == (string) '1month'}}
														{{$txt['106530::66412_012_001']}}
													{{elseif  $loop585->getItem("@desc")  == (string) '3months'}}
														{{$txt['106530::66412_012_002']}}
													{{elseif  $loop585->getItem("@desc")  == (string) '6months'}}
														{{$txt['106530::66412_012_003']}}
													{{elseif  $loop585->getItem("@desc")  == (string) '1year'}}
														{{$txt['106530::66412_012_004']}}
													{{/if}}
												</label>
												<span class="filter_quantity" {{if !( $loop585->getItem("@quantity")) or ( $loop585->getItem("@quantity") == (string) '')}} style="display: none;"{{/if}} id="{{$loop585->getItemEscape("../@id")|replace:'[]':''}}_val{{$loop585->getItemEscape("@value")}}_quantity" data-filter="{{$loop585->getItemEscape("@name")}}">{{$txt['106530::66412_003_001a']}}
													<span class="filter_quantity_value">
														{{if  $loop585->getItem("@quantity")}}
															{{$loop585->getItemEscape("@quantity")}}
														{{else}}
															0
														{{/if}}
														</span>{{$txt['106530::66412_003_001b']}}</span>
											</div>
										</li>
									{{/foreach}}
									<li>
										<label class="filter_calendar" for="{{$loop44->getItemEscape("@id")|replace:'[]':''}}_datepicker">
											<div class="filter_calendar" id="{{$loop44->getItemEscape("@id")|replace:'[]':''}}_calendar" data-filter="{{$loop44->getItemEscape("@id")|replace:'[]':''}}">
												<input {{assign "valueAttributeTmp48" ""}}  type="checkbox" class="filter_calendar checkbox_hidden" id="{{$loop44->getItemEscape("@id")|replace:'[]':''}}_calendar_picker" {{if !( $loop44->getItem("item[@selected = 'selected']")) and ( $loop44->getItem("@selected") and !( $loop44->getItem("@selected") == (string) ''))}}{{capture name="valueAttributeTmp48" assign="valueAttributeTmp48"}}{{$loop44->getItemEscape("@selected")}}{{/capture}} checked="checked" {{else}}{{capture name="valueAttributeTmp48" assign="valueAttributeTmp48"}}{{/capture}}{{/if}}  value="{{$valueAttributeTmp48}}"></input>
												{{if !( $loop44->getItem("item[@selected = 'selected']")) and ( $loop44->getItem("@selected") and !( $loop44->getItem("@selected")  == (string) ''))}}
													<span class="filter_calendar_from">{{$txt['106530::66412_008_002']}}</span>
													<input type="text" class="filter_datepicker" id="{{$loop44->getItemEscape("@id")|replace:'[]':''}}_datepicker" data-filter="{{$loop44->getItemEscape("@selected")}}" value="{{$loop44->getItemEscape("@selected")}}"></input>
												{{else}}
													<span class="filter_calendar_from" style="display: none;">{{$txt['106530::66412_008_002']}}</span>
													<input type="text" class="filter_datepicker" id="{{$loop44->getItemEscape("@id")|replace:'[]':''}}_datepicker" placeholder="{{$txt['106530::66412_008_001']}}"></input>
												{{/if}}
											</div>
										</label>
										<script class="ajaxLoad">
                                                         var datepicker_min = '{{$loop44->getItemEscape("@oldest")}}';
                                                         var datepicker_max = '{{$loop44->getItemEscape("@today")}}';
                                                    										</script>

									</li>
								</ul>
								<div class="filter_options" id="{{$loop44->getItemEscape("@id")|replace:'[]':''}}_options">
									<a {{assign "classAttributeTmp4" ""}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}filter_submit{{/capture}} style="display: none"{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}filter_submit{{/capture}} href="#filter_submit" id="{{$loop44->getItemEscape("@id")|replace:'[]':''}}_submit" data-filter="{{$loop44->getItemEscape("@id")|replace:'[]':''}}" title="{{$txt['106530::66412_002_001a']}}"  class="{{$classAttributeTmp4}}">{{$txt['106530::66412_002_001b']}}</a>
								</div>
							</div>
						</div>
					{{else}}
						<div {{assign "classAttributeTmp14" ""}}{{capture name="classAttributeTmp14" assign="classAttributeTmp14"}}filter_item list_type{{/capture}} id="{{$loop44->getItemEscape("@id")|replace:'[]':''}}" {{if $loop44->getItem("group")}}{{capture name="classAttributeTmp14" assign="classAttributeTmp14"}}filter_item list_type group{{/capture}}{{/if}}  class="{{$classAttributeTmp14}}">
							<div class="filter_header">
								<a {{assign "hrefAttributeTmp26" ""}}{{assign "classAttributeTmp1" ""}}{{capture name="hrefAttributeTmp26" assign="hrefAttributeTmp26"}}#{{/capture}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}filter_toggle{{/capture}} id="{{$loop44->getItemEscape("@id")|replace:'[]':''}}_toggle"{{capture name="hrefAttributeTmp26" assign="hrefAttributeTmp26"}}#toggle_{{$loop44->getItemEscape("@id")|replace:'[]':''}}_content{{/capture}} title="{{$txt['106530::66412_001_001']}}" {{if $loop44->getItem("@selected")}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}filter_toggle selected_filter{{/capture}}{{/if}}  class="{{$classAttributeTmp1}}"  href="{{$hrefAttributeTmp26}}"></a>
								<span>{{$loop44->getItemEscape("@name")}}</span>
								<span class="filter_loader" style="display: none;" id="{{$loop44->getItemEscape("@id")|replace:'[]':''}}_loader"></span>
								{{if  $loop44->getItem("item[@selected='selected']")}}
									<a class="rem_filter" href="{{$loop44->getItemEscape("@link_remove")}}">{{$txt['106530::30020_001_bb']}}</a>
								{{/if}}
							</div>
							{{if  $loop44->getItem("group")}}
								<div class="filter_content" id="{{$loop44->getItemEscape("@id")|replace:'[]':''}}_content">
									{{foreach from=$loop44->getList("group") item=loop709}}
										<div class="filter_sub">
											<div class="filter_sub_header">{{$loop709->getItemEscape("@title")}}
											</div>
											<div class="filter_content_sub" id="filter_sub_{{$loop709->getItemEscape("@id")|replace:'[]':''}}_content">
												{{if count( $loop709->getList("item"))  gt (string) $setFilter_showaFiltering - 1}}
													<div class="filter_search">
														<input type="text"/>
														<div class="btn filter_search_btn">{{$txt['106530::30020_filter_search_btn']}}
														</div>
													</div>
												{{/if}}
												{{if $showAdditionalHeader}}
													<div class="filter_header">
														<a {{assign "hrefAttributeTmp39" ""}}{{capture name="hrefAttributeTmp39" assign="hrefAttributeTmp39"}}#{{/capture}} class="filter_toggle" id="filter_toggle_{{$loop709->getItemEscape("@id")|replace:'[]':''}}_toggle"{{capture name="hrefAttributeTmp39" assign="hrefAttributeTmp39"}}#toggle_{{$loop709->getItemEscape("@id")|replace:'[]':''}}_content{{/capture}} title="{{$txt['106530::66412_001_001']}}"  href="{{$hrefAttributeTmp39}}"></a>
														<span>{{$loop709->getItemEscape("@name")}}</span>
														<span class="filter_loader" style="display: none;" id="filter_loader_{{$loop709->getItemEscape("@id")|replace:'[]':''}}_loader"></span>
														{{if  $loop709->getItem("item[@selected='selected']")}}
															<a class="rem_filter" href="{{$loop709->getItemEscape("@link_remove")}}">{{$txt['106530::30020_001_bb']}}</a>
														{{/if}}
													</div>
												{{/if}}
												<ul class="filter_items_{{$loop709->getItemEscape("@id")|replace:'[]':''}}">
													{{foreach from=$loop709->getList("item") item=loop745}}
														<!--IAI_TEMPLATE_sort_SELECT:@selected_DATATYPE:_ORDER:descending-->
														<li {{assign "classAttributeTmp16" ""}}{{if ( $loop745->getItem("@quantity") == (string) '0') and ( $loop745@iteration gt (string) $setFilter_showall)}}{{capture name="classAttributeTmp16" assign="classAttributeTmp16"}}disabled filterhidden{{/capture}}{{elseif $loop745@iteration gt (string) $setFilter_showall}}{{capture name="classAttributeTmp16" assign="classAttributeTmp16"}}filterhidden{{/capture}}{{elseif $loop745->getItem("@quantity") == (string) '0'}}{{capture name="classAttributeTmp16" assign="classAttributeTmp16"}}disabled{{/capture}}{{/if}} id="filter_item_{{$loop745->getItemEscape("../@id")|replace:'[]':''}}_{{$loop745->getItemEscape("@value")}}_box"  class="{{$classAttributeTmp16}}">
															<input type="checkbox" class="filter_checkbox" id="filter_{{$loop745->getItemEscape("../@id")|replace:'[]':''}}_val{{$loop745->getItemEscape("@value")}}" value="{{$loop745->getItemEscape("@value")}}" {{if $loop745->getItem("@selected") == (string)'selected'}} checked="checked" {{/if}}{{if $loop745->getItem("@quantity") == (string) '0'}} disabled="disabled" {{/if}}></input>
															<div class="filter_name_wrapper">
																<label for="filter_{{$loop745->getItemEscape("../@id")|replace:'[]':''}}_val{{$loop745->getItemEscape("@value")}}">{{$loop745->getItem("@name")}}
																</label>
																<span class="filter_quantity" {{if !( $loop745->getItem("@quantity"))}} style="display: none;"{{/if}} id="filter_quantity_{{$loop745->getItemEscape("../@id")|replace:'[]':''}}_val{{$loop745->getItemEscape("@value")}}_quantity" data-filter="{{$loop745->getItemEscape("@name")}}">{{$txt['106530::66412_003_001a']}}
																	<span class="filter_quantity_value">
																		{{if  $loop745->getItem("@quantity")}}
																			{{$loop745->getItemEscape("@quantity")}}
																		{{else}}
																			0
																		{{/if}}
																		</span>{{$txt['106530::66412_003_001b']}}</span>
															</div>
														</li>
													{{/foreach}}
												</ul>
												<div class="filter_options" id="filter_options_{{$loop709->getItemEscape("@id")|replace:'[]':''}}_options">
													<a {{assign "classAttributeTmp17" ""}}{{capture name="classAttributeTmp17" assign="classAttributeTmp17"}}filter_submit{{/capture}} style="display: none"{{capture name="classAttributeTmp17" assign="classAttributeTmp17"}}filter_submit{{/capture}} href="#filter_submit" id="filter_submit_{{$loop709->getItemEscape("@id")|replace:'[]':''}}_submit" data-filter="filter_{{$loop709->getItemEscape("@id")|replace:'[]':''}}" title="{{$txt['106530::66412_002_001a']}}"  class="{{$classAttributeTmp17}}">{{$txt['106530::66412_002_001b']}}</a>
													{{if count( $loop709->getList("item"))  gt (string) $setFilter_showall}}
														<a {{assign "classAttributeTmp18" ""}}{{capture name="classAttributeTmp18" assign="classAttributeTmp18"}}show_all{{/capture}}{{capture name="classAttributeTmp18" assign="classAttributeTmp18"}}show_all{{/capture}} href="#filter_showall" id="filter_showall_{{$loop709->getItemEscape("@id")|replace:'[]':''}}_showall" data-filter="filter_sub_{{$loop709->getItemEscape("@id")|replace:'[]':''}}_content" title="{{$txt['106530::66412_002_002a']}}"  class="{{$classAttributeTmp18}}">{{$txt['106530::66412_002_002b']}}({{$loop709->getItemEscape("count(item) - $setFilter_showall")}})</a>
													{{/if}}
												</div>
											</div>
										</div>
									{{/foreach}}
								</div>
							{{else}}
								<div class="filter_content" id="{{$loop44->getItemEscape("@id")|replace:'[]':''}}_content">
									{{if $showAdditionalHeader}}
										<div class="filter_header">
											<a {{assign "hrefAttributeTmp27" ""}}{{capture name="hrefAttributeTmp27" assign="hrefAttributeTmp27"}}#{{/capture}} class="filter_toggle" id="{{$loop44->getItemEscape("@id")|replace:'[]':''}}_toggle"{{capture name="hrefAttributeTmp27" assign="hrefAttributeTmp27"}}#toggle_{{$loop44->getItemEscape("@id")|replace:'[]':''}}_content{{/capture}} title="{{$txt['106530::66412_001_001']}}"  href="{{$hrefAttributeTmp27}}"></a>
											<span>{{$loop44->getItemEscape("@name")}}</span>
											<span class="filter_loader" style="display: none;" id="{{$loop44->getItemEscape("@id")|replace:'[]':''}}_loader"></span>
											{{if  $loop44->getItem("item[@selected='selected']")}}
												<a class="rem_filter" href="{{$loop44->getItemEscape("@link_remove")}}">{{$txt['106530::30020_001_bb']}}</a>
											{{/if}}
										</div>
									{{/if}}
									<ul class="{{$loop44->getItemEscape("@id")|replace:'[]':''}}">
										{{foreach from=$loop44->getList("item") item=loop834}}
											<!--IAI_TEMPLATE_sort_SELECT:@selected_DATATYPE:_ORDER:descending-->
											<li {{assign "classAttributeTmp19" ""}}{{if ( $loop834->getItem("@quantity") == (string) '0') and ( $loop834@iteration gt (string) $setFilter_showall)}}{{capture name="classAttributeTmp19" assign="classAttributeTmp19"}}disabled filterhidden{{/capture}}{{elseif $loop834@iteration gt (string) $setFilter_showall}}{{capture name="classAttributeTmp19" assign="classAttributeTmp19"}}filterhidden{{/capture}}{{elseif $loop834->getItem("@quantity") == (string) '0'}}{{capture name="classAttributeTmp19" assign="classAttributeTmp19"}}disabled{{/capture}}{{/if}} id="{{$loop834->getItemEscape("../@id")|replace:'[]':''}}_{{$loop834->getItemEscape("@value")}}_box"  class="{{$classAttributeTmp19}}">
												<input type="checkbox" class="filter_checkbox" id="{{$loop834->getItemEscape("../@id")|replace:'[]':''}}_val{{$loop834->getItemEscape("@value")}}" value="{{$loop834->getItemEscape("@value")}}" {{if $loop834->getItem("@selected") == (string)'selected'}} checked="checked" {{/if}}{{if $loop834->getItem("@quantity") == (string) '0'}} disabled="disabled" {{/if}}></input>
												<div class="filter_name_wrapper">
													<label for="{{$loop834->getItemEscape("../@id")|replace:'[]':''}}_val{{$loop834->getItemEscape("@value")}}">{{$loop834->getItem("@name")}}
													</label>
													<span class="filter_quantity" {{if !( $loop834->getItem("@quantity"))}} style="display: none;"{{/if}} id="{{$loop834->getItemEscape("../@id")|replace:'[]':''}}_val{{$loop834->getItemEscape("@value")}}_quantity" data-filter="{{$loop834->getItemEscape("@name")}}">{{$txt['106530::66412_003_001a']}}
														<span class="filter_quantity_value">
															{{if  $loop834->getItem("@quantity")}}
																{{$loop834->getItemEscape("@quantity")}}
															{{else}}
																0
															{{/if}}
															</span>{{$txt['106530::66412_003_001b']}}</span>
												</div>
											</li>
										{{/foreach}}
									</ul>
									<div class="filter_options" id="{{$loop44->getItemEscape("@id")|replace:'[]':''}}_options">
										<a {{assign "classAttributeTmp4" ""}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}filter_submit{{/capture}} style="display: none"{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}filter_submit{{/capture}} href="#filter_submit" id="{{$loop44->getItemEscape("@id")|replace:'[]':''}}_submit" data-filter="{{$loop44->getItemEscape("@id")|replace:'[]':''}}" title="{{$txt['106530::66412_002_001a']}}"  class="{{$classAttributeTmp4}}">{{$txt['106530::66412_002_001b']}}</a>
										{{if count( $loop44->getList("item"))  gt (string) $setFilter_showall}}
											<a {{assign "classAttributeTmp8" ""}}{{capture name="classAttributeTmp8" assign="classAttributeTmp8"}}show_all{{/capture}}{{capture name="classAttributeTmp8" assign="classAttributeTmp8"}}show_all{{/capture}} href="#filter_showall" id="{{$loop44->getItemEscape("@id")|replace:'[]':''}}_showall" data-filter="{{$loop44->getItemEscape("@id")|replace:'[]':''}}" title="{{$txt['106530::66412_002_002a']}}"  class="{{$classAttributeTmp8}}">{{$txt['106530::66412_002_002b']}}({{$loop44->getItemEscape("count(item) - $setFilter_showall")}})</a>
										{{/if}}
									</div>
								</div>
							{{/if}}
						</div>
					{{/if}}
				{{/foreach}}
				{{capture name="samedayCouriersAvail" assign="samedayCouriersAvail"}}
					{{$xml->getItemEscape("/shop/page/sameday/@couriers_available")}}
				{{/capture}}
				{{capture name="samedayClientLocal" assign="samedayClientLocal"}}
					{{$xml->getItemEscape("/shop/page/sameday/@client_localized")}}
				{{/capture}}
				{{capture name="samedayServiceAvail" assign="samedayServiceAvail"}}
					{{$xml->getItemEscape("/shop/page/sameday/@service_available_for_current_location")}}
				{{/capture}}
				{{capture name="nextdayCouriersAvail" assign="nextdayCouriersAvail"}}
					{{$xml->getItemEscape("/shop/page/nextday/@couriers_available")}}
				{{/capture}}
				{{capture name="nextdayClientLocal" assign="nextdayClientLocal"}}
					{{$xml->getItemEscape("/shop/page/nextday/@client_localized")}}
				{{/capture}}
				{{capture name="nextdayServiceAvail" assign="nextdayServiceAvail"}}
					{{$xml->getItemEscape("/shop/page/nextday/@service_available_for_current_location")}}
				{{/capture}}
				{{if  $xml->getItem("/shop/page/products/navigation/filtering/filter[@type='dual']") or ($samedayCouriersAvail  == (string) 'true' and $samedayClientLocal  == (string) 'false') or ($samedayCouriersAvail  == (string) 'true' and $samedayClientLocal  == (string) 'true' and $samedayServiceAvail  == (string) 'true') or ($nextdayCouriersAvail  == (string) 'true' and $nextdayClientLocal  == (string) 'false') or ($nextdayCouriersAvail  == (string) 'true' and $nextdayClientLocal  == (string) 'true' and $nextdayServiceAvail  == (string) 'true')}}
					<div id="filter_dual" class="filter_item dual_type">
						{{if ($samedayCouriersAvail  == (string) 'true' and $samedayClientLocal  == (string) 'false') or ($samedayCouriersAvail  == (string) 'true' and $samedayClientLocal  == (string) 'true' and $samedayServiceAvail  == (string) 'true') or ($nextdayCouriersAvail  == (string) 'true' and $nextdayClientLocal  == (string) 'false') or ($nextdayCouriersAvail  == (string) 'true' and $nextdayClientLocal  == (string) 'true' and $nextdayServiceAvail  == (string) 'true')}}
							<div class="filter_header">
								<a {{assign "hrefAttributeTmp41" ""}}{{assign "classAttributeTmp22" ""}}{{capture name="hrefAttributeTmp41" assign="hrefAttributeTmp41"}}#{{/capture}}{{capture name="classAttributeTmp22" assign="classAttributeTmp22"}}filter_toggle{{/capture}}{{capture name="hrefAttributeTmp41" assign="hrefAttributeTmp41"}}#toggle_filter_dual_content{{/capture}} title="{{$txt['106530::66412_001_001']}}" {{if $xml->getItem("@selected")}}{{capture name="classAttributeTmp22" assign="classAttributeTmp22"}}filter_toggle selected_filter{{/capture}}{{/if}}  class="{{$classAttributeTmp22}}"  href="{{$hrefAttributeTmp41}}"></a>
								<span>{{$txt['106530::53560_08m76589gh']}}</span>
								<span class="filter_loader" style="display: none;" id="dual_loader"></span>
							</div>
							<div id="filter_dual_content" class="filter_content xpress">
								{{if $showAdditionalHeader}}
									<div class="filter_header">
										<a {{assign "hrefAttributeTmp42" ""}}{{capture name="hrefAttributeTmp42" assign="hrefAttributeTmp42"}}#{{/capture}} class="filter_toggle"{{capture name="hrefAttributeTmp42" assign="hrefAttributeTmp42"}}#toggle_filter_dual_content{{/capture}} title="{{$txt['106530::66412_001_001']}}"  href="{{$hrefAttributeTmp42}}"></a>
										<span>{{$txt['106530::53560_08m76589gh']}}</span>
										<span class="filter_loader" style="display: none;" id="dual_loader"></span>
									</div>
								{{/if}}
								<ul>
									{{if  $xml->getItem("/shop/page/products/navigation/filtering/filter[@id = 'filter_nextday' or @id = 'filter_sameday']/item[@value='y']")}}
										{{foreach from=$xml->getList("/shop/page/products/navigation/filtering/filter[@id = 'filter_nextday' or @id = 'filter_sameday']/item[@value='y']") item=loop945}}
											<li {{if $loop945->getItem("@quantity") == (string) '0'}} class="disabled"{{/if}} id="{{$loop945->getItemEscape("../@id")|replace:'[]':''}}_{{$loop945->getItemEscape("@value")}}_box" {{if $loop945->getItem("../@id") == (string) 'filter_nextday'}} data-xpress="true" data-localized="{{$nextdayClientLocal}}" data-available="{{$nextdayCouriersAvail}}" {{elseif $loop945->getItem("../@id") == (string) 'filter_sameday'}} data-xpress="true" data-localized="{{$samedayClientLocal}}" data-available="{{$samedayCouriersAvail}}" {{/if}}>
												<input type="checkbox" class="filter_checkbox" id="{{$loop945->getItemEscape("../@id")}}" {{if $loop945->getItem("@selected") == (string)'selected'}} checked="checked" {{/if}}{{if $loop945->getItem("@quantity") == (string) '0'}} disabled="disabled" {{/if}}></input>
												<div class="filter_name_wrapper">
													<label for="{{$loop945->getItemEscape("../@id")}}">
														{{if  $loop945->getItem("../@id")  == (string) 'filter_nextday'}}
															{{$txt['106530::7547547_nexday']}}
															<span id="nextday_icon">{{$txt['106530::77687568_nextday']}}</span>
														{{elseif  $loop945->getItem("../@id")  == (string) 'filter_sameday'}}
															{{$txt['106530::7547547_sameday']}}
															<i class="{{$txt['106530::4673745_sameday']}}"></i>
														{{/if}}
													</label>
													<span class="filter_quantity" {{if !( $loop945->getItem("@quantity"))}} style="display: none;"{{/if}} id="{{$loop945->getItemEscape("../@id")|replace:'[]':''}}_val{{$loop945->getItemEscape("@value")}}_quantity" data-filter="{{$loop945->getItemEscape("@name")}}"></span>
												</div>
											</li>
										{{/foreach}}
									{{elseif ($samedayCouriersAvail  == (string) 'true' and $samedayClientLocal  == (string) 'false') or ($samedayCouriersAvail  == (string) 'true' and $samedayClientLocal  == (string) 'true' and $samedayServiceAvail  == (string) 'true') or ($nextdayCouriersAvail  == (string) 'true' and $nextdayClientLocal  == (string) 'false') or ($nextdayCouriersAvail  == (string) 'true' and $nextdayClientLocal  == (string) 'true' and $nextdayServiceAvail  == (string) 'true')}}
										<ul>
											{{if ($nextdayCouriersAvail  == (string) 'true' and $nextdayClientLocal  == (string) 'false') or ($nextdayCouriersAvail  == (string) 'true' and $nextdayClientLocal  == (string) 'true' and $nextdayServiceAvail  == (string) 'true')}}
												<li id="filter_nextday_y_box" class="enabled" data-xpress="true" data-localized="{{$nextdayClientLocal}}" data-available="{{$nextdayCouriersAvail}}">
													<input class="filter_checkbox" id="filter_nextday" type="checkbox"/>
													<div class="filter_name_wrapper">
														<label for="filter_nextday">{{$txt['106530::7547547_nexday']}}
															<span id="nextday_icon">{{$txt['106530::77687568_nextday']}}</span>
														</label>
													</div>
												</li>
											{{/if}}
											{{if ($samedayCouriersAvail  == (string) 'true' and $samedayClientLocal  == (string) 'false') or ($samedayCouriersAvail  == (string) 'true' and $samedayClientLocal  == (string) 'true' and $samedayServiceAvail  == (string) 'true')}}
												<li id="filter_sameday_y_box" class="enabled" data-xpress="true" data-localized="{{$samedayClientLocal}}" data-available="{{$samedayCouriersAvail}}">
													<input class="filter_checkbox" id="filter_sameday" type="checkbox"/>
													<div class="filter_name_wrapper">
														<label for="filter_sameday">{{$txt['106530::7547547_sameday']}}
															<i class="{{$txt['106530::4673745_sameday']}}"></i>
														</label>
													</div>
												</li>
											{{/if}}
										</ul>
									{{/if}}
								</ul>
								<div class="filter_options" id="filter_dual_options">
									<a {{assign "classAttributeTmp23" ""}}{{capture name="classAttributeTmp23" assign="classAttributeTmp23"}}filter_submit{{/capture}} style="display: none"{{capture name="classAttributeTmp23" assign="classAttributeTmp23"}}filter_submit{{/capture}} href="#filter_submit" id="filter_dual_submit" data-filter="filter_dual" title="{{$txt['106530::66412_002_001a']}}"  class="{{$classAttributeTmp23}}">{{$txt['106530::66412_002_001b']}}</a>
								</div>
							</div>
						{{/if}}
						{{if  $xml->getItem("/shop/page/products/navigation/filtering/filter[@type='dual' and not(@id = 'filter_nextday') and not(@id = 'filter_sameday')]")}}
							<div class="filter_header">
								<a {{assign "hrefAttributeTmp42" ""}}{{capture name="hrefAttributeTmp42" assign="hrefAttributeTmp42"}}#{{/capture}} class="filter_toggle"{{capture name="hrefAttributeTmp42" assign="hrefAttributeTmp42"}}#toggle_filter_dual_content{{/capture}} title="{{$txt['106530::66412_001_001']}}"  href="{{$hrefAttributeTmp42}}"></a>
								<span>{{$txt['106530::53560_08m']}}</span>
								<span class="filter_loader" style="display: none;" id="dual_loader"></span>
							</div>
							<div id="filter_dual_content" class="filter_content">
								{{if $showAdditionalHeader}}
									<div class="filter_header">
										<a {{assign "hrefAttributeTmp42" ""}}{{capture name="hrefAttributeTmp42" assign="hrefAttributeTmp42"}}#{{/capture}} class="filter_toggle"{{capture name="hrefAttributeTmp42" assign="hrefAttributeTmp42"}}#toggle_filter_dual_content{{/capture}} title="{{$txt['106530::66412_001_001']}}"  href="{{$hrefAttributeTmp42}}"></a>
										<span>{{$txt['106530::53560_08m']}}</span>
										<span class="filter_loader" style="display: none;" id="dual_loader"></span>
									</div>
								{{/if}}
								<ul>
									{{foreach from=$xml->getList("/shop/page/products/navigation/filtering/filter[@type='dual']/item[@value='y']") item=loop1074}}
										{{if !( $loop1074->getItem("../@id")  == (string) 'filter_nextday') and !( $loop1074->getItem("../@id")  == (string) 'filter_sameday')}}
											<li {{if $loop1074->getItem("@quantity") == (string) '0'}} class="disabled"{{/if}} id="{{$loop1074->getItemEscape("../@id")|replace:'[]':''}}_{{$loop1074->getItemEscape("@value")}}_box">
												<input type="checkbox" class="filter_checkbox" id="{{$loop1074->getItemEscape("../@id")}}" {{if $loop1074->getItem("@selected") == (string)'selected'}} checked="checked" {{/if}}{{if $loop1074->getItem("@quantity") == (string) '0'}} disabled="disabled" {{/if}}></input>
												<div class="filter_name_wrapper">
													<label for="{{$loop1074->getItemEscape("../@id")}}">{{$loop1074->getItemEscape("../@name")}}
													</label>
													<span class="filter_quantity" {{if !( $loop1074->getItem("@quantity"))}} style="display: none;"{{/if}} id="{{$loop1074->getItemEscape("../@id")|replace:'[]':''}}_val{{$loop1074->getItemEscape("@value")}}_quantity" data-filter="{{$loop1074->getItemEscape("@name")}}">{{$txt['106530::66412_003_001a']}}
														<span class="filter_quantity_value">
															{{if  $loop1074->getItem("@quantity")}}
																{{$loop1074->getItemEscape("@quantity")}}
															{{else}}
																0
															{{/if}}
															</span>{{$txt['106530::66412_003_001b']}}</span>
												</div>
											</li>
										{{/if}}
									{{/foreach}}
								</ul>
								<div class="filter_options" id="filter_dual_options">
									<a {{assign "classAttributeTmp23" ""}}{{capture name="classAttributeTmp23" assign="classAttributeTmp23"}}filter_submit{{/capture}} style="display: none"{{capture name="classAttributeTmp23" assign="classAttributeTmp23"}}filter_submit{{/capture}} href="#filter_submit" id="filter_dual_submit" data-filter="filter_dual" title="{{$txt['106530::66412_002_001a']}}"  class="{{$classAttributeTmp23}}">{{$txt['106530::66412_002_001b']}}</a>
								</div>
							</div>
						{{/if}}
					</div>
				{{/if}}
				<div id="filter_buttons" class="filter_buttons">
					<a {{assign "classAttributeTmp25" ""}}{{capture name="classAttributeTmp25" assign="classAttributeTmp25"}}filters_submit{{/capture}} id="filters_submit"{{capture name="classAttributeTmp25" assign="classAttributeTmp25"}}btn-large filters_submit{{/capture}} href="#filter_submit" title="{{$txt['106530::n56366_submit']}}"  class="{{$classAttributeTmp25}}">{{$txt['106530::n56366_submit_value']}}</a>
					{{if ( $xml->getItem("/shop/page/products/navigation/filtering/filter/item/@selected") == (string)'selected') or count( $xml->getList("/shop/page/products/navigation/filtering/filter/@selected"))}}
						<a {{assign "hrefAttributeTmp45" ""}}  class="btn-large btn-inverse remove_all_filters"{{capture name="hrefAttributeTmp45" assign="hrefAttributeTmp45"}}/settings.php?filter_remove=all{{/capture}}{{if $xml->getItem("/shop/page/products/navigation/search_link/@value")}}{{capture name="hrefAttributeTmp45" assign="hrefAttributeTmp45"}}{{$xml->getItemEscape("/shop/page/products/navigation/search_link/@value ")}}{{/capture}}{{/if}} title="{{$txt['106530::n56366_remove_all_tit']}}"  href="{{$hrefAttributeTmp45}}">{{$txt['106530::n56366_remove_all']}}</a>
					{{/if}}
				</div>
			</div>
		</div>
	</div>
	<script src="//maps.googleapis.com/maps/api/js?sensor=false"/>{{/if}}{{if  $xml->getItem("/shop/page/products/navigation/filtering/filter[@id='filter_instock']")}}{{if  $xml->getItem("/shop/page/products/navigation/filtering/filter/@mode")}}{{/if}}{{/if}}{{if  $xml->getItem("/shop/page/products/navigation/filtering/filter/group/@id")}}{{/if}}
