
<!--Ustawienia języka oraz walut (menu_settings, 76960.1)-->
{{capture name="display_menu_additional" assign="display_menu_additional"}}
	{{$txt['76960::57295_012']}}
{{/capture}}

<div id="menu_settings" class="{{if !((count( $xml->getList("/shop/currency/option")) gt (string) 1) or (count( $xml->getList("/shop/language/option")) gt (string) 1) or (count( $xml->getList("/shop/countries/country")) gt (string) 1))}}hidden-phone{{/if}}{{literal}} {{/literal}}{{$txt['76960::class_01']}}">
	<div {{assign "classAttributeTmp1" ""}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}menu_settings_bar{{/capture}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}menu_settings_bar {{$txt['76960::class_02']}}{{/capture}}  class="{{$classAttributeTmp1}}">
		{{if $display_menu_additional}}
			<div id="menu_additional">
				{{if  $xml->getItem("basket/@login")}}
					{{$txt['76960::57295_01']}}
					<a href="/login.php" title="{{$txt['76960::57295_004']}}">{{$txt['76960::57295_005']}}</a>{{$txt['76960::57295_1']}}
					<a href="/login.php?operation=logout" title="{{$txt['76960::57295_010']}}">{{$txt['76960::57295_031']}}</a>
				{{else}}
					{{$txt['76960::57295_01']}}
					<a href="/login.php" title="{{$txt['76960::57295_002']}}">{{$txt['76960::57295_012']}}</a>{{$txt['76960::57295_1']}}
					<a href="/client-new.php?register" title="{{$txt['76960::57295_001']}}">{{$txt['76960::57295_011']}}</a>
				{{/if}}
			</div>
			<div id="mobile_additional">
				<a href="/login.php" title="{{$txt['76960::57295_002m']}}">{{$txt['76960::57295_012m']}}</a>{{$txt['76960::57295_1']}}
				<a rel="nofollow" href="/basketedit.php?mode=2" title="{{$txt['76960::57295_001m']}}">{{$txt['76960::57295_011m']}}(
					{{if  $xml->getItem("wishes/@count")}}
						{{$xml->getItemEscape("wishes/@count")}}
					{{else}}
						0
					{{/if}}
					)</a>{{$txt['76960::57295_2']}}
			</div>
		{{/if}}
		<div id="top_contact">
			{{foreach from=$xml->getList("/shop/contact/contact_nodes/node[@type='phone'][1]") item=loop42}}
				{{$loop42->getItemEscape("@title")}}
				{{if  $loop42->getItem("@link")}}
					<a href="{{$loop42->getItemEscape("@link")}}">{{$loop42->getItemEscape("@value")}}</a>
				{{else}}
					<span>{{$loop42->getItemEscape("@value")}}</span>
				{{/if}}
			{{/foreach}}
			{{foreach from=$xml->getList("/shop/contact/contact_nodes/node[@type='mail'][1]") item=loop55}}
				{{$loop55->getItemEscape("@title")}}
				{{if  $loop55->getItem("@link")}}
					<a href="{{$loop55->getItemEscape("@link")}}">{{$loop55->getItemEscape("@value")}}</a>
				{{else}}
					<span>{{$loop55->getItemEscape("@value")}}</span>
				{{/if}}
			{{/foreach}}
		</div>
		{{if (count( $xml->getList("/shop/currency/option"))  gt (string) 1) or (count( $xml->getList("/shop/language/option"))  gt (string) 1) or (count( $xml->getList("/shop/countries/country"))  gt (string) 1)}}
			<div class="open_trigger">
				<span {{assign "classAttributeTmp2" ""}}{{if count( $xml->getList("/shop/language/option")) gt (string) 1}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}hidden-phone flag flag_{{$xml->getItemEscape("/shop/language/option[@selected='true']/@id")}}{{/capture}}{{elseif count( $xml->getList("/shop/currency/option")) gt (string) 1}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}hidden-phone flag_txt{{/capture}}{{$xml->getItemEscape("/shop/currency/option[@selected='true']/@symbol")}}{{elseif count( $xml->getList("/shop/countries/country")) gt (string) 1}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}hidden-phone flag_txt{{/capture}} {{$txt['76960::menu_settings_countries']}} {{/if}}  class="{{$classAttributeTmp2}}"></span>
				<div class="menu_settings_wrapper visible-phone">
					{{if count( $xml->getList("/shop/currency/option"))  gt (string) 1}}
						<span class="menu_settings_bar">
							<span class="menu_settings_barlab">{{$txt['76960::menu_settings_barlab2']}}</span>
							<span class="menu_settings_barval">{{$xml->getItemEscape("/shop/currency/option[@selected='true']/@symbol")}}</span></span>
					{{/if}}
					{{if count( $xml->getList("/shop/language/option"))  gt (string) 1}}
						<span class="menu_settings_bar">
							<span class="menu_settings_barlab">{{$txt['76960::menu_settings_barlab3']}}</span>
							<span class="menu_settings_barval">{{$xml->getItemEscape("/shop/language/option[@selected='true']/@name")}}</span></span>
					{{/if}}
					{{if count( $xml->getList("/shop/countries/country"))  gt (string) 1}}
						<span class="menu_settings_bar">
							<span class="menu_settings_barlab">{{$txt['76960::menu_settings_barlab1']}}</span>
							<span class="menu_settings_barval">{{$xml->getItemEscape("/shop/countries/country[@selected='true']/@name")}}</span></span>
					{{/if}}
				</div>{{$txt['76960::menu_settings_toggle']}}
			</div>
			{{if (count( $xml->getList("/shop/currency/option"))  gt (string) 1) or (count( $xml->getList("/shop/language/option"))  gt (string) 1) or (count( $xml->getList("/shop/countries/country"))  gt (string) 1)}}
				<form action="/settings.php" method="post">
					<ul class="bg_alter">
						{{if count( $xml->getList("/shop/language/option"))  gt (string) 1}}
							<li>
								<div class="form-group">
									{{foreach from=$xml->getList("/shop/language/option") item=loop115}}
										<div class="radio">
											<label>
												<input type="radio" name="lang" {{if $loop115->getItem("@selected") == (string)'true'}} checked="checked"{{/if}} value="{{$loop115->getItemEscape("@id")}}"></input>
												<span class="flag flag_{{$loop115->getItemEscape("@id")}}"></span>
												<span>{{$loop115->getItemEscape("@name")}}</span>
											</label>
										</div>
									{{/foreach}}
								</div>
							</li>
						{{/if}}
						{{if count( $xml->getList("/shop/currency/option"))  gt (string) 1 or count( $xml->getList("/shop/countries/country"))  gt (string) 1}}
							<li>
								{{if count( $xml->getList("/shop/countries/country"))  gt (string) 1}}
									<div class="form-group">
										<label for="menu_settings_country">{{$txt['76960::menu_settings_panel1']}}
										</label>
										<select class="form-control" name="country" id="menu_settings_country">
											{{foreach from=$xml->getList("/shop/countries/country") item=loop140}}
												<option {{if $loop140->getItem("@selected") == (string)'true'}} selected="selected"{{/if}} value="{{$loop140->getItemEscape("@id")}}">{{$loop140->getItemEscape("@name")}}
												</option>
											{{/foreach}}
										</select>
									</div>
								{{/if}}
								{{if count( $xml->getList("/shop/currency/option"))  gt (string) 1}}
									<div class="form-group">
										<label for="menu_settings_curr">{{$txt['76960::menu_settings_panel3']}}
										</label>
										<select class="form-control" name="curr" id="menu_settings_curr">
											{{foreach from=$xml->getList("/shop/currency/option") item=loop156}}
												<option value="{{$loop156->getItemEscape("@id")}}" {{if $loop156->getItem("@selected") == (string)'true'}} selected="selected" {{$loop156->getItemEscape("@symbol")}}{{else}}{{$loop156->getItemEscape("@symbol")}} {{$txt['76960::menu_settings_currency1']}}{{$loop156->getItemEscape("/shop/currency/option[@selected='true']/@symbol")}}{{$txt['76960::menu_settings_currency2']}}{{$loop156->getItemEscape("@rate")}}{{$txt['76960::menu_settings_currency3']}} {{$loop156->getItemEscape("@symbol")}}{{$txt['76960::menu_settings_currency4']}} {{/if}}>
												</option>
											{{/foreach}}
										</select>
									</div>
								{{/if}}
							</li>
						{{/if}}
						<li class="buttons">
							<button class="btn-small" type="submit">{{$txt['76960::menu_settings_submit']}}
							</button>
						</li>
					</ul>
				</form>
			{{/if}}
		{{/if}}
	</div>
</div>