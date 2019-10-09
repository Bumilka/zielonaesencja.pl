
<!--Ustawienia języka oraz walut (menu_settings, 106470.1)-->
{{capture name="display_menu_additional" assign="display_menu_additional"}}
	{{$txt['106470::57295_012']}}
{{/capture}}

{{capture name="register_wholesaler" assign="register_wholesaler"}}
	{{$txt['106470::4534234_register_wholesaler']}}
{{/capture}}

<div id="menu_settings" class="{{literal}} {{/literal}}{{$txt['106470::class_01']}}">
	<div {{assign "classAttributeTmp1" ""}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}menu_settings_bar{{/capture}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}menu_settings_bar {{$txt['106470::class_02']}}{{/capture}}  class="{{$classAttributeTmp1}}">
		{{if (count( $xml->getList("/shop/currency/option"))  gt (string) 1) or (count( $xml->getList("/shop/language/option"))  gt (string) 1) or (count( $xml->getList("/shop/countries/country"))  gt (string) 1)}}
			<div class="open_trigger">
				<span {{assign "classAttributeTmp2" ""}}{{if count( $xml->getList("/shop/language/option")) gt (string) 1}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}d-none d-md-inline-block flag flag_{{$xml->getItemEscape("/shop/language/option[@selected='true']/@id")}}{{/capture}}{{elseif count( $xml->getList("/shop/currency/option")) gt (string) 1}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}d-none d-md-inline-block flag_txt{{/capture}}{{$xml->getItemEscape("/shop/currency/option[@selected='true']/@symbol")}}{{elseif count( $xml->getList("/shop/countries/country")) gt (string) 1}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}d-none d-md-inline-block flag_txt{{/capture}} {{$txt['106470::menu_settings_countries']}} {{/if}}  class="{{$classAttributeTmp2}}"></span>
				<div class="menu_settings_wrapper d-md-none">
					{{if  $xml->getItem("/shop/language/option/@selected") or  $xml->getItem("/shop/currency/option/@selected")}}
						<div class="menu_settings_inline">
							<div class="menu_settings_header">{{$txt['106470::TXT_106003_lang_curr']}}
							</div>
							<div class="menu_settings_content">
								<span {{assign "classAttributeTmp3" ""}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}menu_settings_flag{{/capture}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}menu_settings_flag flag flag_{{$xml->getItemEscape("/shop/language/option[@selected='true']/@id")}}{{/capture}}  class="{{$classAttributeTmp3}}"></span>
								<strong class="menu_settings_value">
									<span class="menu_settings_language">{{$xml->getItemEscape("/shop/language/option[@selected='true']/@name")}}</span>
									<span>{{literal}}|{{/literal}}</span>
									<span class="menu_settings_currency">{{$xml->getItemEscape("/shop/currency/option[@selected='true']/@symbol")}}</span></strong>
							</div>
						</div>
					{{/if}}
					{{if  $xml->getItem("/shop/countries/country/@selected")}}
						<div class="menu_settings_inline">
							<div class="menu_settings_header">{{$txt['106470::TXT_106003_country']}}
							</div>
							<div class="menu_settings_content">
								<strong class="menu_settings_value">{{$xml->getItemEscape("/shop/countries/country[@selected='true']/@name")}}</strong>
							</div>
						</div>
					{{/if}}
				</div>{{$txt['106470::menu_settings_toggle']}}
			</div>
			{{if (count( $xml->getList("/shop/currency/option"))  gt (string) 1) or (count( $xml->getList("/shop/language/option"))  gt (string) 1) or (count( $xml->getList("/shop/countries/country"))  gt (string) 1)}}
				<form action="/settings.php" method="post" {{if $xml->getItem("/shop/action/settings/@url")}} action="{{$xml->getItemEscape("/shop/action/settings/@url")}}" {{/if}}>
					<ul class="bg_alter">
						{{if count( $xml->getList("/shop/language/option"))  gt (string) 1}}
							<li>
								<div class="form-group">
									<label class="menu_settings_lang_label">{{$txt['106470::menu_settings_panel2']}}
									</label>
									{{foreach from=$xml->getList("/shop/language/option") item=loop68}}
										<div class="radio">
											<label>
												<input type="radio" name="lang" {{if $loop68->getItem("@selected") == (string)'true'}} checked="checked"{{/if}} value="{{$loop68->getItemEscape("@id")}}"></input>
												<span class="flag flag_{{$loop68->getItemEscape("@id")}}"></span>
												<span>{{$loop68->getItemEscape("@name")}}</span>
											</label>
										</div>
									{{/foreach}}
								</div>
							</li>
						{{/if}}
						{{if count( $xml->getList("/shop/currency/option"))  gt (string) 1 or count( $xml->getList("/shop/countries/country"))  gt (string) 1}}
							<li>
								{{if count( $xml->getList("/shop/currency/option"))  gt (string) 1}}
									<div class="form-group">
										<label for="menu_settings_curr">{{$txt['106470::menu_settings_panel3']}}
										</label>
										<div class="select-after">
											<select class="form-control" name="curr" id="menu_settings_curr">
												{{foreach from=$xml->getList("/shop/currency/option") item=loop94}}
													<option value="{{$loop94->getItemEscape("@id")}}" {{if $loop94->getItem("@selected") == (string)'true'}} selected="selected" {{$loop94->getItemEscape("@symbol")}}{{else}}{{$loop94->getItemEscape("@symbol")}} {{$txt['106470::menu_settings_currency1']}}{{$loop94->getItemEscape("/shop/currency/option[@selected='true']/@symbol")}}{{$txt['106470::menu_settings_currency2']}}{{$loop94->getItemEscape("@rate")}}{{$txt['106470::menu_settings_currency3']}} {{$loop94->getItemEscape("@symbol")}}{{$txt['106470::menu_settings_currency4']}} {{/if}}>
													</option>
												{{/foreach}}
											</select>
										</div>
									</div>
								{{/if}}
								{{if count( $xml->getList("/shop/countries/country"))  gt (string) 1}}
									<div class="form-group">
										<label for="menu_settings_country">{{$txt['106470::menu_settings_panel1']}}
										</label>
										<div class="select-after">
											<select class="form-control" name="country" id="menu_settings_country">
												{{foreach from=$xml->getList("/shop/countries/country") item=loop116}}
													<option {{if $loop116->getItem("@selected") == (string)'true'}} selected="selected"{{/if}} value="{{$loop116->getItemEscape("@id")}}">{{$loop116->getItemEscape("@name")}}
													</option>
												{{/foreach}}
											</select>
										</div>
									</div>
								{{/if}}
							</li>
						{{/if}}
						<li class="buttons">
							<button class="btn-small" type="submit">{{$txt['106470::menu_settings_submit']}}
							</button>
						</li>
					</ul>
				</form>
			{{/if}}
		{{/if}}
		{{if $display_menu_additional}}
			<div id="menu_additional">
				{{if  $xml->getItem("basket/@login")}}
					{{$txt['106470::57295_1a']}}
					<a {{assign "hrefAttributeTmp4" ""}}{{capture name="hrefAttributeTmp4" assign="hrefAttributeTmp4"}}/login.php{{/capture}}{{if $xml->getItem("/shop/action/login/@url")}}{{capture name="hrefAttributeTmp4" assign="hrefAttributeTmp4"}}{{$xml->getItemEscape("/shop/action/login/@url")}}{{/capture}}{{/if}} title="{{$txt['106470::57295_004']}}"  href="{{$hrefAttributeTmp4}}">{{$txt['106470::57295_005']}}</a>{{$txt['106470::57295_1']}}
					<a {{assign "hrefAttributeTmp5" ""}}{{capture name="hrefAttributeTmp5" assign="hrefAttributeTmp5"}}/login.php?operation=logout{{/capture}}{{if $xml->getItem("/shop/action/login/@url")}}{{capture name="hrefAttributeTmp5" assign="hrefAttributeTmp5"}}{{$xml->getItemEscape("/shop/action/login/@url")}}?operation=logout{{/capture}}{{/if}} title="{{$txt['106470::57295_010']}}"  href="{{$hrefAttributeTmp5}}">{{$txt['106470::57295_031']}}</a>
				{{else}}
					{{$txt['106470::57295_1a']}}
					<a {{assign "hrefAttributeTmp6" ""}}{{capture name="hrefAttributeTmp6" assign="hrefAttributeTmp6"}}/login.php{{/capture}}{{if $xml->getItem("/shop/action/login/@url")}}{{capture name="hrefAttributeTmp6" assign="hrefAttributeTmp6"}}{{$xml->getItemEscape("/shop/action/login/@url")}}{{/capture}}{{/if}} title="{{$txt['106470::57295_002']}}"  href="{{$hrefAttributeTmp6}}">{{$txt['106470::57295_012']}}</a>{{$txt['106470::57295_1']}}
					<a {{assign "hrefAttributeTmp7" ""}}{{capture name="hrefAttributeTmp7" assign="hrefAttributeTmp7"}}/client-new.php?register{{/capture}}{{if $xml->getItem("/shop/action/registration_options/retail")}}{{capture name="hrefAttributeTmp7" assign="hrefAttributeTmp7"}}{{$xml->getItemEscape("/shop/action/registration_options/retail/@registration_url")}}{{/capture}}{{else}}{{capture name="hrefAttributeTmp7" assign="hrefAttributeTmp7"}}{{$xml->getItemEscape("/shop/action/registration_options/wholesale/@registration_url")}}{{/capture}}{{/if}} title="{{$txt['106470::57295_001']}}"  href="{{$hrefAttributeTmp7}}">{{$txt['106470::57295_011']}}</a>
				{{/if}}
			</div>
		{{/if}}
	</div>
</div>