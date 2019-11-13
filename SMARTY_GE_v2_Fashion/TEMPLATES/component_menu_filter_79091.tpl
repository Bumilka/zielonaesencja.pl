
<!--Filtrowanie wyników wyszukiwania (menu_filter, 79091.1)-->
{{capture name="setFilter_showall" assign="setFilter_showall"}}
	{{$txt['79091::66412_500_001']}}
{{/capture}}

{{capture name="filter_ukryj" assign="filter_ukryj"}}
	{{$txt['79091::66412_ukryj']}}
{{/capture}}

{{capture name="filter_pokaz" assign="filter_pokaz"}}
	{{$txt['79091::66412_pokaz']}}
{{/capture}}

{{if count( $xml->getList("/shop/page/products/navigation/filtering/filter"))}}
	<script type="text/javascript" class="ajaxLoad">   
var filter_ukryj = '{{$txt['79091::66412_ukryj']}}';
var filter_pokaz = '{{$txt['79091::66412_pokaz']}}';
	</script>

	<div id="menu_filter">
		<div id="menu_filter_sub">
			<h2>{{$txt['79091::n58551_01']}}
			</h2>
			<form id="filter_form" action="search.php" method="get">
				{{foreach from=$xml->getList("/shop/page/products/navigation/filtering/filter") item=loop17}}
					<input type="hidden" id="{{$loop17->getItemEscape("@id")|replace:'[]':''}}_form" name="{{$loop17->getItemEscape("@id")}}" value=""></input>
				{{/foreach}}
			</form>
			<div class="menu_filter_wrapper">
				{{foreach from=$xml->getList("/shop/page/products/navigation/filtering/filter[(@type='list') or (@type='text')]") item=loop31}}
					{{if  $loop31->getItem("@type") == (string)'text'}}
						<div class="filter_item list_type" id="{{$loop31->getItemEscape("@id")|replace:'[]':''}}">
							<h3>
								<a {{assign "hrefAttributeTmp14" ""}}{{capture name="hrefAttributeTmp14" assign="hrefAttributeTmp14"}}#{{/capture}} class="filter_toggle" id="{{$loop31->getItemEscape("@id")|replace:'[]':''}}_toggle"{{capture name="hrefAttributeTmp14" assign="hrefAttributeTmp14"}}#toggle_{{$loop31->getItemEscape("@id")|replace:'[]':''}}_content{{/capture}} title="{{$txt['79091::66412_001_001']}}"  href="{{$hrefAttributeTmp14}}"></a>
								<span>{{$loop31->getItemEscape("@name")}}</span>
								<span class="filter_loader" style="display: none;" id="{{$loop31->getItemEscape("@id")|replace:'[]':''}}_loader"></span>
								{{if  $loop31->getItem("@selected") and !( $loop31->getItem("@selected")  == (string) '')}}
									<a class="rem_filter" href="{{$loop31->getItemEscape("@link_remove")}}">{{$txt['79091::30020_001_bb']}}</a>
								{{/if}}
							</h3>
							<div class="filter_content" id="{{$loop31->getItemEscape("@id")|replace:'[]':''}}_content">
								<input type="text" class="input_filter_text" value=" {{if ( $loop31->getItem("@selected")) and not ( $loop31->getItem("@selected") == (string) '')}}{{$loop31->getItemEscape("@selected")}}{{/if}} " placeholder="{{$txt['79091::30020_006_01']}}" id="{{$loop31->getItemEscape("@id")|replace:'[]':''}}_input"></input>
								<a class="filter_submit_small" href="#filter_submit" id="{{$loop31->getItemEscape("@id")|replace:'[]':''}}_submit" data-filter="{{$loop31->getItemEscape("@id")|replace:'[]':''}}" title="{{$txt['79091::66412_004_001a']}}">{{$txt['79091::66412_004_001b']}}</a>
							</div>
						</div>
					{{elseif  $loop31->getItem("@display") == (string)'gfx'}}
						<div class="filter_item list_type" id="{{$loop31->getItemEscape("@id")|replace:'[]':''}}">
							<h3>
								<a {{assign "hrefAttributeTmp14" ""}}{{capture name="hrefAttributeTmp14" assign="hrefAttributeTmp14"}}#{{/capture}} class="filter_toggle" id="{{$loop31->getItemEscape("@id")|replace:'[]':''}}_toggle"{{capture name="hrefAttributeTmp14" assign="hrefAttributeTmp14"}}#toggle_{{$loop31->getItemEscape("@id")|replace:'[]':''}}_content{{/capture}} title="{{$txt['79091::66412_001_001']}}"  href="{{$hrefAttributeTmp14}}"></a>
								<span>{{$loop31->getItemEscape("@name")}}</span>
								<span class="filter_loader" style="display: none;" id="{{$loop31->getItemEscape("@id")|replace:'[]':''}}_loader"></span>
								{{if  $loop31->getItem("item[@selected='selected']")}}
									<a class="rem_filter" href="{{$loop31->getItemEscape("@link_remove")}}">{{$txt['79091::30020_001_bb']}}</a>
								{{/if}}
							</h3>
							<div class="filter_content filter_gfxonly" id="{{$loop31->getItemEscape("@id")|replace:'[]':''}}_content">
								<ul class="{{$loop31->getItemEscape("@id")|replace:'[]':''}}">
									{{foreach from=$loop31->getList("item") item=loop121}}
										<!--IAI_TEMPLATE_sort_SELECT:@selected_DATATYPE:_ORDER:descending-->
										<li {{if $loop121->getItem("@quantity") == (string) '0'}} class="disabled"{{/if}} id="{{$loop121->getItemEscape("../@id")|replace:'[]':''}}_{{$loop121->getItemEscape("@value")}}_box">
											<input type="checkbox" class="checkbox_hidden" id="{{$loop121->getItemEscape("../@id")|replace:'[]':''}}_val{{$loop121->getItemEscape("@value")}}" value="{{$loop121->getItemEscape("@value")}}" {{if $loop121->getItem("@selected") == (string)'selected'}} checked="checked" {{/if}}{{if $loop121->getItem("@quantity") == (string) '0'}} disabled="disabled" {{/if}}></input>
											{{if  $loop121->getItem("@gfx_normal")}}
												<label {{assign "classAttributeTmp1" ""}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}imgfix{{/capture}}{{if $loop121->getItem("@selected") == (string)'selected'}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}imgfix active{{/capture}}{{/if}} for="{{$loop121->getItemEscape("../@id")|replace:'[]':''}}_val{{$loop121->getItemEscape("@value")}}"  class="{{$classAttributeTmp1}}">
													<span class="imgfix" style="background: url('{{$loop121->getItemEscape("@gfx_normal")}}') no-repeat -5000px;"></span>
													<img class="filter_gfxonly" src="{{$loop121->getItemEscape("@gfx_normal")}}" alt="{{$loop121->getItemEscape("@name")}}" title="{{$loop121->getItemEscape("@name")}}"></img>
												</label>
											{{/if}}
										</li>
									{{/foreach}}
								</ul>
								<div class="filter_options" id="{{$loop31->getItemEscape("@id")|replace:'[]':''}}_options">
									<a {{assign "classAttributeTmp2" ""}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}filter_submit{{/capture}} style="display: none"{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}btn-small filter_submit{{/capture}} href="#filter_submit" id="{{$loop31->getItemEscape("@id")|replace:'[]':''}}_submit" data-filter="{{$loop31->getItemEscape("@id")|replace:'[]':''}}" title="{{$txt['79091::66412_002_001a']}}"  class="{{$classAttributeTmp2}}">{{$txt['79091::66412_002_001b']}}</a>
								</div>
							</div>
						</div>
					{{elseif  $loop31->getItem("@display") == (string)'name_gfx'}}
						<div class="filter_item list_type" id="{{$loop31->getItemEscape("@id")|replace:'[]':''}}">
							<h3>
								<a {{assign "hrefAttributeTmp14" ""}}{{capture name="hrefAttributeTmp14" assign="hrefAttributeTmp14"}}#{{/capture}} class="filter_toggle" id="{{$loop31->getItemEscape("@id")|replace:'[]':''}}_toggle"{{capture name="hrefAttributeTmp14" assign="hrefAttributeTmp14"}}#toggle_{{$loop31->getItemEscape("@id")|replace:'[]':''}}_content{{/capture}} title="{{$txt['79091::66412_001_001']}}"  href="{{$hrefAttributeTmp14}}"></a>
								<span>{{$loop31->getItemEscape("@name")}}</span>
								<span class="filter_loader" style="display: none;" id="{{$loop31->getItemEscape("@id")|replace:'[]':''}}_loader"></span>
								{{if  $loop31->getItem("item[@selected='selected']")}}
									<a class="rem_filter" href="{{$loop31->getItemEscape("@link_remove")}}">{{$txt['79091::30020_001_bb']}}</a>
								{{/if}}
							</h3>
							<div class="filter_content filter_namegfx" id="{{$loop31->getItemEscape("@id")|replace:'[]':''}}_content">
								<ul class="{{$loop31->getItemEscape("@id")|replace:'[]':''}}">
									{{foreach from=$loop31->getList("item") item=loop224}}
										<!--IAI_TEMPLATE_sort_SELECT:@selected_DATATYPE:_ORDER:descending-->
										<li {{assign "classAttributeTmp3" ""}}{{if ( $loop224->getItem("@quantity") == (string) '0') and ( $loop224@iteration gt (string) $setFilter_showall)}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}disabled filterhidden{{/capture}}{{elseif $loop224@iteration gt (string) $setFilter_showall}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}filterhidden{{/capture}}{{elseif $loop224->getItem("@quantity") == (string) '0'}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}disabled{{/capture}}{{/if}} id="{{$loop224->getItemEscape("../@id")|replace:'[]':''}}_{{$loop224->getItemEscape("@value")}}_box"  class="{{$classAttributeTmp3}}">
											<table class="filter_namegfx">
												<tbody>
													<tr>
														<td class="filter_namegfx_input">
															<input type="checkbox" class="filter_checkbox" id="{{$loop224->getItemEscape("../@id")|replace:'[]':''}}_val{{$loop224->getItemEscape("@value")}}" value="{{$loop224->getItemEscape("@value")}}" {{if $loop224->getItem("@selected") == (string)'selected'}} checked="checked" {{/if}}{{if $loop224->getItem("@quantity") == (string) '0'}} disabled="disabled" {{/if}}></input>
														</td>
														<td class="filter_namegfx_gfx">
															{{if  $loop224->getItem("@gfx_normal")}}
																<label class="imgfix" for="{{$loop224->getItemEscape("../@id")|replace:'[]':''}}_val{{$loop224->getItemEscape("@value")}}">
																	<span class="imgfix" style="background: url('{{$loop224->getItemEscape("@gfx_normal")}}') no-repeat -5000px;"></span>
																	<img class="filter_namegfx_gfx" src="{{$loop224->getItemEscape("@gfx_normal")}}" alt="{{$loop224->getItemEscape("@name")}}" title="{{$loop224->getItemEscape("@name")}}"></img>
																</label>
															{{/if}}
														</td>
														<td class="filter_namegfx_name">
															<label for="{{$loop224->getItemEscape("../@id")|replace:'[]':''}}_val{{$loop224->getItemEscape("@value")}}">{{$loop224->getItemEscape("@name")}}
															</label>
															<span class="filter_quantity" {{if !( $loop224->getItem("@quantity"))}} style="display: none;"{{/if}} id="{{$loop224->getItemEscape("../@id")|replace:'[]':''}}_val{{$loop224->getItemEscape("@value")}}_quantity" data-filter="{{$loop224->getItemEscape("@name")}}">{{$txt['79091::66412_003_001a']}}
																<span class="filter_quantity_value">
																	{{if  $loop224->getItem("@quantity")}}
																		{{$loop224->getItemEscape("@quantity")}}
																	{{else}}
																		0
																	{{/if}}
																	</span>{{$txt['79091::66412_003_001b']}}</span>
														</td>
													</tr>
												</tbody>
											</table>
										</li>
									{{/foreach}}
								</ul>
								<div class="filter_options" id="{{$loop31->getItemEscape("@id")|replace:'[]':''}}_options">
									<a {{assign "classAttributeTmp2" ""}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}filter_submit{{/capture}} style="display: none"{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}btn-small filter_submit{{/capture}} href="#filter_submit" id="{{$loop31->getItemEscape("@id")|replace:'[]':''}}_submit" data-filter="{{$loop31->getItemEscape("@id")|replace:'[]':''}}" title="{{$txt['79091::66412_002_001a']}}"  class="{{$classAttributeTmp2}}">{{$txt['79091::66412_002_001b']}}</a>
									{{if count( $loop31->getList("item"))  gt (string) $setFilter_showall}}
										<a {{assign "classAttributeTmp5" ""}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}show_all{{/capture}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}btn-small show_all{{/capture}} href="#filter_showall" id="{{$loop31->getItemEscape("@id")|replace:'[]':''}}_showall" data-filter="{{$loop31->getItemEscape("@id")|replace:'[]':''}}" title="{{$txt['79091::66412_002_002a']}}"  class="{{$classAttributeTmp5}}">{{$txt['79091::66412_002_002b']}}</a>
									{{/if}}
								</div>
							</div>
						</div>
					{{elseif  $loop31->getItem("@id") == (string)'filter_price'}}
						<div class="filter_item list_type" id="{{$loop31->getItemEscape("@id")|replace:'[]':''}}">
							<h3>
								<a {{assign "hrefAttributeTmp14" ""}}{{capture name="hrefAttributeTmp14" assign="hrefAttributeTmp14"}}#{{/capture}} class="filter_toggle" id="{{$loop31->getItemEscape("@id")|replace:'[]':''}}_toggle"{{capture name="hrefAttributeTmp14" assign="hrefAttributeTmp14"}}#toggle_{{$loop31->getItemEscape("@id")|replace:'[]':''}}_content{{/capture}} title="{{$txt['79091::66412_001_001']}}"  href="{{$hrefAttributeTmp14}}"></a>
								<span>{{$loop31->getItemEscape("@name")}}</span>
								<span class="filter_loader" style="display: none;" id="{{$loop31->getItemEscape("@id")|replace:'[]':''}}_loader"></span>
								{{if  $loop31->getItem("@selected") and !( $loop31->getItem("@selected")  == (string) '')}}
									<a class="rem_filter" href="{{$loop31->getItemEscape("@link_remove")}}">{{$txt['79091::30020_001_bb']}}</a>
								{{/if}}
							</h3>
							<div class="filter_content" id="{{$loop31->getItemEscape("@id")|replace:'[]':''}}_content">
								<ul class="{{$loop31->getItemEscape("@id")|replace:'[]':''}}">
									{{foreach from=$loop31->getList("item") item=loop349}}
										<li {{if $loop349->getItem("@quantity") == (string) '0'}} class="disabled"{{/if}} id="{{$loop349->getItemEscape("../@id")|replace:'[]':''}}_{{$loop349->getItemEscape("@value")}}_box">
											<input type="checkbox" class="filter_checkbox" id="{{$loop349->getItemEscape("../@id")|replace:'[]':''}}_val{{$loop349->getItemEscape("@value")}}" value="{{$loop349->getItemEscape("@value")}}" {{if $loop349->getItem("@selected") == (string)'selected'}} checked="checked" {{/if}}{{if $loop349->getItem("@quantity") == (string) '0'}} disabled="disabled" {{/if}}></input>
											<div class="filter_name_wrapper">
												<label for="{{$loop349->getItemEscape("../@id")|replace:'[]':''}}_val{{$loop349->getItemEscape("@value")}}">{{$loop349->getItemEscape("@name_formatted")}}
												</label>
												<span class="filter_quantity" {{if !( $loop349->getItem("@quantity"))}} style="display: none;"{{/if}} id="{{$loop349->getItemEscape("../@id")|replace:'[]':''}}_val{{$loop349->getItemEscape("@value")}}_quantity" data-filter="{{$loop349->getItemEscape("@name")}}">{{$txt['79091::66412_003_001a']}}
													<span class="filter_quantity_value">
														{{if  $loop349->getItem("@quantity")}}
															{{$loop349->getItemEscape("@quantity")}}
														{{else}}
															0
														{{/if}}
														</span>{{$txt['79091::66412_003_001b']}}</span>
											</div>
										</li>
									{{/foreach}}
								</ul>
								<div class="filter_options" id="{{$loop31->getItemEscape("@id")|replace:'[]':''}}_options">
									<a {{assign "classAttributeTmp2" ""}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}filter_submit{{/capture}} style="display: none"{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}btn-small filter_submit{{/capture}} href="#filter_submit" id="{{$loop31->getItemEscape("@id")|replace:'[]':''}}_submit" data-filter="{{$loop31->getItemEscape("@id")|replace:'[]':''}}" title="{{$txt['79091::66412_002_001a']}}"  class="{{$classAttributeTmp2}}">{{$txt['79091::66412_002_001b']}}</a>
								</div>
							</div>
						</div>
						<div class="filter_item list_type">
							<h3>
								<a {{assign "hrefAttributeTmp18" ""}}{{capture name="hrefAttributeTmp18" assign="hrefAttributeTmp18"}}#{{/capture}} class="filter_toggle" id="{{$loop31->getItemEscape("@id")|replace:'[]':''}}_range_toggle"{{capture name="hrefAttributeTmp18" assign="hrefAttributeTmp18"}}#toggle_{{$loop31->getItemEscape("@id")|replace:'[]':''}}_range_content{{/capture}} title="{{$txt['79091::66412_001_001']}}"  href="{{$hrefAttributeTmp18}}"></a>
								<span>{{$txt['79091::66412_z_0']}}</span>
							</h3>
							<div class="filter_content" id="{{$loop31->getItemEscape("@id")|replace:'[]':''}}_range_content">
								<ul class="{{$loop31->getItemEscape("@id")|replace:'[]':''}}_range">
									<li class="filter_price_range">
										{{if  $loop31->getItem("/shop/page/products/navigation/filtering/filter[(@id = 'filter_price')]/@selected")}}
											<input type="hidden" id="min_price_set" value="{{$loop31->getItemEscape("substring-before(/shop/page/products/navigation/filtering/filter[(@id = 'filter_price')]/@selected,'-')")}}"></input>
											<input type="hidden" id="max_price_set" value="{{$loop31->getItemEscape("substring-after(/shop/page/products/navigation/filtering/filter[(@id = 'filter_price')]/@selected,'-')")}}"></input>
										{{/if}}
										<input type="hidden" id="min_price_start" value="0"></input>
										<input type="hidden" id="max_price_start" value="{{$loop31->getItemEscape("substring-before(substring-after(/shop/page/products/navigation/filtering/filter[@id = 'filter_price']/item[position() = last()]/@name,'- '), '.')")}}"></input>
										<div id="slider-price_wrapper">
											<div id="slider-price">
											</div>
										</div>
										<div class="filter_range" id="{{$loop31->getItemEscape("@id")|replace:'[]':''}}_range" data-filter="{{$loop31->getItemEscape("@id")|replace:'[]':''}}">
											<span class="filter_range_from">{{$txt['79091::66412_007_001']}}</span>
											<span class="filter_range_from_wrapper">
												<input {{assign "valueAttributeTmp22" ""}}  type="text" class="filter_range_from" id="{{$loop31->getItemEscape("@id")|replace:'[]':''}}_range_from" data-filter="{{$loop31->getItemEscape("@id")|replace:'[]':''}}" {{if !( $loop31->getItem("item[@selected = 'selected']")) and ( $loop31->getItem("@selected") and !( $loop31->getItem("@selected") == (string) ''))}}{{capture name="valueAttributeTmp22" assign="valueAttributeTmp22"}}{{$loop31->getItemEscape("substring-before(@selected, '-')")}}{{/capture}}{{else}}{{capture name="valueAttributeTmp22" assign="valueAttributeTmp22"}}0{{/capture}}{{/if}}  value="{{$valueAttributeTmp22}}"></input>
												<span class="filter_range_curr">{{$loop31->getItemEscape("/shop/currency/option[@selected = 'true']/@symbol")}}</span></span>
											<span class="filter_range_to">{{$txt['79091::66412_007_002']}}</span>
											<span class="filter_range_to_wrapper">
												<input {{assign "valueAttributeTmp23" ""}}  type="text" class="filter_range_to" id="{{$loop31->getItemEscape("@id")|replace:'[]':''}}_range_to" data-filter="{{$loop31->getItemEscape("@id")|replace:'[]':''}}" {{if !( $loop31->getItem("item[@selected = 'selected']")) and ( $loop31->getItem("@selected") and !( $loop31->getItem("@selected") == (string) ''))}}{{capture name="valueAttributeTmp23" assign="valueAttributeTmp23"}}{{$loop31->getItemEscape("substring-after(@selected, '-')")}}{{/capture}}{{else}}{{capture name="valueAttributeTmp23" assign="valueAttributeTmp23"}}{{$loop31->getItemEscape("substring-before(substring-after(/shop/page/products/navigation/filtering/filter[@id = 'filter_price']/item[position() = last()]/@name,'- '), '.')")}}{{/capture}}{{/if}}  value="{{$valueAttributeTmp23}}"></input>
												<span class="filter_range_curr">{{$loop31->getItemEscape("/shop/currency/option[@selected = 'true']/@symbol")}}</span></span>
											<span class="filter_submit_range_wrapper">
												<a class="filter_submit_range" href="#filter_submit" data-filter="{{$loop31->getItemEscape("@id")|replace:'[]':''}}" title="{{$txt['79091::66412_004_001a']}}">{{$txt['79091::66412_004_001br']}}</a></span>
										</div>
									</li>
								</ul>
							</div>
						</div>
					{{elseif  $loop31->getItem("@id") == (string)'filter_date'}}
						<div class="filter_item list_type" id="{{$loop31->getItemEscape("@id")|replace:'[]':''}}">
							<h3>
								<a {{assign "hrefAttributeTmp14" ""}}{{capture name="hrefAttributeTmp14" assign="hrefAttributeTmp14"}}#{{/capture}} class="filter_toggle" id="{{$loop31->getItemEscape("@id")|replace:'[]':''}}_toggle"{{capture name="hrefAttributeTmp14" assign="hrefAttributeTmp14"}}#toggle_{{$loop31->getItemEscape("@id")|replace:'[]':''}}_content{{/capture}} title="{{$txt['79091::66412_001_001']}}"  href="{{$hrefAttributeTmp14}}"></a>
								<span>{{$loop31->getItemEscape("@name")}}</span>
								<span class="filter_loader" style="display: none;" id="{{$loop31->getItemEscape("@id")|replace:'[]':''}}_loader"></span>
								{{if  $loop31->getItem("@selected") and !( $loop31->getItem("@selected")  == (string) '')}}
									<a class="rem_filter" href="{{$loop31->getItemEscape("@link_remove")}}">{{$txt['79091::30020_001_bb']}}</a>
								{{/if}}
							</h3>
							<div class="filter_content" id="{{$loop31->getItemEscape("@id")|replace:'[]':''}}_content">
								<ul class="{{$loop31->getItemEscape("@id")|replace:'[]':''}}">
									{{foreach from=$loop31->getList("item[@desc = '1week' or @desc = '1month' or @desc = '3months' or @desc = '6months' or @desc = '1year']") item=loop517}}
										<li {{if $loop517->getItem("@quantity") == (string) '0'}} class="disabled"{{/if}} id="{{$loop517->getItemEscape("../@id")|replace:'[]':''}}_{{$loop517->getItemEscape("@value")}}_box">
											<input type="checkbox" data-filter="filter_date_option" class="filter_checkbox" id="{{$loop517->getItemEscape("../@id")|replace:'[]':''}}_val{{$loop517->getItemEscape("@value")}}" value="{{$loop517->getItemEscape("@value")}}" {{if $loop517->getItem("@selected") == (string)'selected'}} checked="checked" {{/if}}{{if $loop517->getItem("@quantity") == (string) '0'}} disabled="disabled" {{/if}}></input>
											<div class="filter_name_wrapper">
												<label for="{{$loop517->getItemEscape("../@id")|replace:'[]':''}}_val{{$loop517->getItemEscape("@value")}}">
													{{if  $loop517->getItem("@desc")  == (string) '1week'}}
														{{$txt['79091::66412_012_0011']}}
													{{elseif  $loop517->getItem("@desc")  == (string) '1month'}}
														{{$txt['79091::66412_012_001']}}
													{{elseif  $loop517->getItem("@desc")  == (string) '3months'}}
														{{$txt['79091::66412_012_002']}}
													{{elseif  $loop517->getItem("@desc")  == (string) '6months'}}
														{{$txt['79091::66412_012_003']}}
													{{elseif  $loop517->getItem("@desc")  == (string) '1year'}}
														{{$txt['79091::66412_012_004']}}
													{{/if}}
												</label>
												<span class="filter_quantity" {{if !( $loop517->getItem("@quantity")) or ( $loop517->getItem("@quantity") == (string) '')}} style="display: none;"{{/if}} id="{{$loop517->getItemEscape("../@id")|replace:'[]':''}}_val{{$loop517->getItemEscape("@value")}}_quantity" data-filter="{{$loop517->getItemEscape("@name")}}">{{$txt['79091::66412_003_001a']}}
													<span class="filter_quantity_value">
														{{if  $loop517->getItem("@quantity")}}
															{{$loop517->getItemEscape("@quantity")}}
														{{else}}
															0
														{{/if}}
														</span>{{$txt['79091::66412_003_001b']}}</span>
											</div>
										</li>
									{{/foreach}}
									<li>
										<label class="filter_calendar" for="{{$loop31->getItemEscape("@id")|replace:'[]':''}}_datepicker">
											<div class="filter_calendar" id="{{$loop31->getItemEscape("@id")|replace:'[]':''}}_calendar" data-filter="{{$loop31->getItemEscape("@id")|replace:'[]':''}}">
												<input {{assign "valueAttributeTmp24" ""}}  type="checkbox" class="filter_calendar checkbox_hidden" id="{{$loop31->getItemEscape("@id")|replace:'[]':''}}_calendar_picker" {{if !( $loop31->getItem("item[@selected = 'selected']")) and ( $loop31->getItem("@selected") and !( $loop31->getItem("@selected") == (string) ''))}}{{capture name="valueAttributeTmp24" assign="valueAttributeTmp24"}}{{$loop31->getItemEscape("@selected")}}{{/capture}} checked="checked" {{else}}{{capture name="valueAttributeTmp24" assign="valueAttributeTmp24"}}{{/capture}}{{/if}}  value="{{$valueAttributeTmp24}}"></input>
												{{if !( $loop31->getItem("item[@selected = 'selected']")) and ( $loop31->getItem("@selected") and !( $loop31->getItem("@selected")  == (string) ''))}}
													<span class="filter_calendar_from">{{$txt['79091::66412_008_002']}}</span>
													<input type="text" class="filter_datepicker" id="{{$loop31->getItemEscape("@id")|replace:'[]':''}}_datepicker" data-filter="{{$loop31->getItemEscape("@selected")}}" value="{{$loop31->getItemEscape("@selected")}}"></input>
												{{else}}
													<span class="filter_calendar_from" style="display: none;">{{$txt['79091::66412_008_002']}}</span>
													<input type="text" class="filter_datepicker" id="{{$loop31->getItemEscape("@id")|replace:'[]':''}}_datepicker" placeholder="{{$txt['79091::66412_008_001']}}"></input>
												{{/if}}
											</div>
										</label>
										<script type="text/javascript" class="ajaxLoad">
                               var datepicker_min = '{{$loop31->getItemEscape("@oldest")}}';
                               var datepicker_max = '{{$loop31->getItemEscape("@today")}}';
                            										</script>

									</li>
								</ul>
								<div class="filter_options" id="{{$loop31->getItemEscape("@id")|replace:'[]':''}}_options">
									<a {{assign "classAttributeTmp2" ""}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}filter_submit{{/capture}} style="display: none"{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}btn-small filter_submit{{/capture}} href="#filter_submit" id="{{$loop31->getItemEscape("@id")|replace:'[]':''}}_submit" data-filter="{{$loop31->getItemEscape("@id")|replace:'[]':''}}" title="{{$txt['79091::66412_002_001a']}}"  class="{{$classAttributeTmp2}}">{{$txt['79091::66412_002_001b']}}</a>
								</div>
							</div>
						</div>
					{{else}}
						<div class="filter_item list_type" id="{{$loop31->getItemEscape("@id")|replace:'[]':''}}">
							<h3>
								<a {{assign "hrefAttributeTmp14" ""}}{{capture name="hrefAttributeTmp14" assign="hrefAttributeTmp14"}}#{{/capture}} class="filter_toggle" id="{{$loop31->getItemEscape("@id")|replace:'[]':''}}_toggle"{{capture name="hrefAttributeTmp14" assign="hrefAttributeTmp14"}}#toggle_{{$loop31->getItemEscape("@id")|replace:'[]':''}}_content{{/capture}} title="{{$txt['79091::66412_001_001']}}"  href="{{$hrefAttributeTmp14}}"></a>
								<span>{{$loop31->getItemEscape("@name")}}</span>
								<span class="filter_loader" style="display: none;" id="{{$loop31->getItemEscape("@id")|replace:'[]':''}}_loader"></span>
								{{if  $loop31->getItem("item[@selected='selected']")}}
									<a class="rem_filter" href="{{$loop31->getItemEscape("@link_remove")}}">{{$txt['79091::30020_001_bb']}}</a>
								{{/if}}
							</h3>
							<div class="filter_content" id="{{$loop31->getItemEscape("@id")|replace:'[]':''}}_content">
								<ul class="{{$loop31->getItemEscape("@id")|replace:'[]':''}}">
									{{foreach from=$loop31->getList("item") item=loop663}}
										<!--IAI_TEMPLATE_sort_SELECT:@selected_DATATYPE:_ORDER:descending-->
										<li {{assign "classAttributeTmp8" ""}}{{if ( $loop663->getItem("@quantity") == (string) '0') and ( $loop663@iteration gt (string) $setFilter_showall)}}{{capture name="classAttributeTmp8" assign="classAttributeTmp8"}}disabled filterhidden{{/capture}}{{elseif $loop663@iteration gt (string) $setFilter_showall}}{{capture name="classAttributeTmp8" assign="classAttributeTmp8"}}filterhidden{{/capture}}{{elseif $loop663->getItem("@quantity") == (string) '0'}}{{capture name="classAttributeTmp8" assign="classAttributeTmp8"}}disabled{{/capture}}{{/if}} id="{{$loop663->getItemEscape("../@id")|replace:'[]':''}}_{{$loop663->getItemEscape("@value")}}_box"  class="{{$classAttributeTmp8}}">
											<input type="checkbox" class="filter_checkbox" id="{{$loop663->getItemEscape("../@id")|replace:'[]':''}}_val{{$loop663->getItemEscape("@value")}}" value="{{$loop663->getItemEscape("@value")}}" {{if $loop663->getItem("@selected") == (string)'selected'}} checked="checked" {{/if}}{{if $loop663->getItem("@quantity") == (string) '0'}} disabled="disabled" {{/if}}></input>
											<div class="filter_name_wrapper">
												<label for="{{$loop663->getItemEscape("../@id")|replace:'[]':''}}_val{{$loop663->getItemEscape("@value")}}">{{$loop663->getItemEscape("@name")}}
												</label>
												<span class="filter_quantity" {{if !( $loop663->getItem("@quantity"))}} style="display: none;"{{/if}} id="{{$loop663->getItemEscape("../@id")|replace:'[]':''}}_val{{$loop663->getItemEscape("@value")}}_quantity" data-filter="{{$loop663->getItemEscape("@name")}}">{{$txt['79091::66412_003_001a']}}
													<span class="filter_quantity_value">
														{{if  $loop663->getItem("@quantity")}}
															{{$loop663->getItemEscape("@quantity")}}
														{{else}}
															0
														{{/if}}
														</span>{{$txt['79091::66412_003_001b']}}</span>
											</div>
										</li>
									{{/foreach}}
								</ul>
								<div class="filter_options" id="{{$loop31->getItemEscape("@id")|replace:'[]':''}}_options">
									<a {{assign "classAttributeTmp2" ""}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}filter_submit{{/capture}} style="display: none"{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}btn-small filter_submit{{/capture}} href="#filter_submit" id="{{$loop31->getItemEscape("@id")|replace:'[]':''}}_submit" data-filter="{{$loop31->getItemEscape("@id")|replace:'[]':''}}" title="{{$txt['79091::66412_002_001a']}}"  class="{{$classAttributeTmp2}}">{{$txt['79091::66412_002_001b']}}</a>
									{{if count( $loop31->getList("item"))  gt (string) $setFilter_showall}}
										<a {{assign "classAttributeTmp5" ""}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}show_all{{/capture}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}btn-small show_all{{/capture}} href="#filter_showall" id="{{$loop31->getItemEscape("@id")|replace:'[]':''}}_showall" data-filter="{{$loop31->getItemEscape("@id")|replace:'[]':''}}" title="{{$txt['79091::66412_002_002a']}}"  class="{{$classAttributeTmp5}}">{{$txt['79091::66412_002_002b']}}</a>
									{{/if}}
								</div>
							</div>
						</div>
					{{/if}}
				{{/foreach}}
				{{if  $xml->getItem("/shop/page/products/navigation/filtering/filter[@type='dual']")}}
					<div id="filter_dual" class="filter_item dual_type">
						<h3>
							<a {{assign "hrefAttributeTmp21" ""}}{{capture name="hrefAttributeTmp21" assign="hrefAttributeTmp21"}}#{{/capture}} class="filter_toggle"{{capture name="hrefAttributeTmp21" assign="hrefAttributeTmp21"}}#toggle_filter_dual_content{{/capture}} title="{{$txt['79091::66412_001_001']}}"  href="{{$hrefAttributeTmp21}}"></a>
							<span>{{$txt['79091::53560_08m']}}</span>
							<span class="filter_loader" style="display: none;" id="dual_loader"></span>
						</h3>
						<div id="filter_dual_content" class="filter_content">
							<ul>
								{{foreach from=$xml->getList("/shop/page/products/navigation/filtering/filter[@type='dual']/item[@value='y']") item=loop765}}
									<li {{if $loop765->getItem("@quantity") == (string) '0'}} class="disabled"{{/if}} id="{{$loop765->getItemEscape("../@id")|replace:'[]':''}}_{{$loop765->getItemEscape("@value")}}_box">
										<input type="checkbox" class="filter_checkbox" id="{{$loop765->getItemEscape("../@id")}}" {{if $loop765->getItem("@selected") == (string)'selected'}} checked="checked" {{/if}}{{if $loop765->getItem("@quantity") == (string) '0'}} disabled="disabled" {{/if}}></input>
										<div class="filter_name_wrapper">
											<label for="{{$loop765->getItemEscape("../@id")}}">{{$loop765->getItemEscape("../@name")}}
											</label>
											<span class="filter_quantity" {{if !( $loop765->getItem("@quantity"))}} style="display: none;"{{/if}} id="{{$loop765->getItemEscape("../@id")|replace:'[]':''}}_val{{$loop765->getItemEscape("@value")}}_quantity" data-filter="{{$loop765->getItemEscape("@name")}}">{{$txt['79091::66412_003_001a']}}
												<span class="filter_quantity_value">
													{{if  $loop765->getItem("@quantity")}}
														{{$loop765->getItemEscape("@quantity")}}
													{{else}}
														0
													{{/if}}
													</span>{{$txt['79091::66412_003_001b']}}</span>
										</div>
									</li>
								{{/foreach}}
							</ul>
							<div class="filter_options" id="filter_dual_options">
								<a {{assign "classAttributeTmp11" ""}}{{capture name="classAttributeTmp11" assign="classAttributeTmp11"}}filter_submit{{/capture}} style="display: none"{{capture name="classAttributeTmp11" assign="classAttributeTmp11"}}btn-small filter_submit{{/capture}} href="#filter_submit" id="filter_dual_submit" data-filter="filter_dual" title="{{$txt['79091::66412_002_001a']}}"  class="{{$classAttributeTmp11}}">{{$txt['79091::66412_002_001b']}}</a>
							</div>
						</div>
					</div>
				{{/if}}
				<div id="filter_buttons" class="filter_buttons">
					<a {{assign "classAttributeTmp12" ""}}{{capture name="classAttributeTmp12" assign="classAttributeTmp12"}}filters_submit{{/capture}} id="filters_submit"{{capture name="classAttributeTmp12" assign="classAttributeTmp12"}}btn-small filters_submit{{/capture}} href="#filter_submit" title="{{$txt['79091::n56366_submit']}}"  class="{{$classAttributeTmp12}}">{{$txt['79091::n56366_submit_value']}}</a>
					{{if ( $xml->getItem("/shop/page/products/navigation/filtering/filter/item/@selected") == (string)'selected') or count( $xml->getList("/shop/page/products/navigation/filtering/filter/@selected"))}}
						<a {{assign "classAttributeTmp13" ""}}{{capture name="classAttributeTmp13" assign="classAttributeTmp13"}}remove_all_filters{{/capture}} href="/settings.php?filter_remove=all"{{capture name="classAttributeTmp13" assign="classAttributeTmp13"}}btn-small remove_all_filters{{/capture}} title="{{$txt['79091::n56366_remove_all_tit']}}"  class="{{$classAttributeTmp13}}">{{$txt['79091::n56366_remove_all']}}</a>
					{{/if}}
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" class="ajaxLoad">   
menu_filter_init();
	</script>

{{/if}}
