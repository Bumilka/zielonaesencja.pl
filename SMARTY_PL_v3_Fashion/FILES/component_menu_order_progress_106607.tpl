
<!--Postęp składania zamówienia (*mod) (menu_order_progress, 106607.1)-->
{{capture name="wholesalerPrice_order_progress" assign="wholesalerPrice_order_progress"}}
	{{$txt['106607::63643_wholesalerPrice_order_progress']}}
{{/capture}}

{{capture name="cop_global_label" assign="cop_global_label"}}
	{{$txt['106607::63643_cop_global_label']}}
{{/capture}}

{{if !( $xml->getItem("/shop/page/client-data/@registerByExternalService")  == (string) 'true')}}
	{{if  $xml->getItem("page/@type")  == (string) 'basketedit'}}
		{{if $cop_global_label}}
			<span class="big_label cop_global_label">{{$cop_global_label}}</span>
		{{/if}}
		<div class="progress_bar_keeper">
			<div class="progress_bar_outline">
				<div class="progress_bar">
					<div class="progress_bar_active_holder">
						<div class="active_holder_left">
						</div>
						<div class="active_holder_right">
						</div>
						<div class="progress_bar_active_holder_sub">
						</div>
					</div>
					<div class="progress_bar_item progress_bar_1 active">
						<div class="progress_bar_sub">
							<span>{{$txt['106607::53349_001']}}</span>
							<div class="n56354" data-mobile-class="hide">
								<span>{{$txt['106607::53349_001wa']}}
									{{if ( $xml->getItem("/shop/basket/@wholesaler")  == (string) 'true') and !($wholesalerPrice_order_progress)}}
										{{$xml->getItemEscape("basket/@cost_net_formatted")}}{{$txt['106607::30004_netto']}}
									{{else}}
										{{$xml->getItemEscape("basket/@cost_formatted")}}
									{{/if}}
									</span>
							</div>
						</div>
					</div>
					{{if !( $xml->getItem("basket/@login"))}}
						<div class="progress_bar_item progress_bar_2">
							<div class="progress_bar_sub">
								<span>
									{{if  $xml->getItem("navigation/@order_express_mode") == (string)'true'}}
										{{$txt['106607::53349_002']}}
									{{else}}
										{{$txt['106607::53349_002_signin']}}
									{{/if}}
									</span>
								<div class="progress_desc">
									{{if  $xml->getItem("navigation/@order_express_mode") == (string)'true'}}
										{{$txt['106607::53349_602']}}
									{{else}}
										{{$txt['106607::53349_602_signin']}}
									{{/if}}
								</div>
							</div>
						</div>
						<div class="progress_bar_item progress_bar_3">
							<div class="progress_bar_sub">
								<span>{{$txt['106607::53349_003']}}</span>
								<div class="progress_desc">{{$txt['106607::53349_603']}}
								</div>
							</div>
						</div>
						<div class="progress_bar_item progress_bar_4">
							<div class="progress_bar_sub">
								<span>{{$txt['106607::53349_004']}}</span>
								<div class="progress_desc">{{$txt['106607::53349_604']}}
								</div>
							</div>
						</div>
					{{/if}}
					{{if  $xml->getItem("basket/@login")}}
						<div class="progress_bar_item progress_bar_2">
							<div class="progress_bar_sub">
								<span>{{$txt['106607::53349_003']}}</span>
								<div class="progress_desc">{{$txt['106607::53349_603']}}
								</div>
							</div>
						</div>
						<div class="progress_bar_item progress_bar_3">
							<div class="progress_bar_sub">
								<span>{{$txt['106607::53349_004']}}</span>
								<div class="progress_desc">{{$txt['106607::53349_604']}}
								</div>
							</div>
						</div>
						<div class="progress_bar_item progress_bar_4">
							<div class="progress_bar_sub">
								<span>{{$txt['106607::53349_006i']}}</span>
								<div class="progress_desc">{{$txt['106607::53349_606i']}}
								</div>
							</div>
						</div>
					{{/if}}
				</div>
			</div>
		</div>
	{{elseif  $xml->getItem("page/@type") == (string)'login' and  $xml->getItem("page/login/onceorder/@display") == (string)'y'}}
		{{if $cop_global_label}}
			<span class="big_label cop_global_label">{{$cop_global_label}}</span>
		{{/if}}
		<div class="progress_bar_keeper">
			<div class="progress_bar_outline">
				<div class="progress_bar">
					<div class="progress_bar_active_holder">
						<div class="active_holder_left">
						</div>
						<div class="active_holder_right">
						</div>
						<div class="progress_bar_active_holder_sub">
						</div>
					</div>
					<div class="progress_bar_item progress_bar_1">
						<div class="progress_bar_sub">
							<span>{{$txt['106607::53349_001']}}</span>
							<div class="n56354" data-mobile-class="hide">
								<span>{{$txt['106607::53349_001wa']}}
									{{if ( $xml->getItem("/shop/basket/@wholesaler")  == (string) 'true')  and !($wholesalerPrice_order_progress)}}
										{{$xml->getItemEscape("basket/@cost_net_formatted")}}{{$txt['106607::30004_netto']}}
									{{else}}
										{{$xml->getItemEscape("basket/@cost_formatted")}}
									{{/if}}
									</span>
							</div>
						</div>
					</div>
					<div class="progress_bar_item progress_bar_2 active">
						<div class="progress_bar_sub">
							<span>{{$txt['106607::53349_002_signin']}}</span>
							<div class="progress_desc">{{$txt['106607::53349_602_signin']}}
							</div>
						</div>
					</div>
					<div class="progress_bar_item progress_bar_3">
						<div class="progress_bar_sub">
							<span>{{$txt['106607::53349_003']}}</span>
							<div class="progress_desc">{{$txt['106607::53349_603']}}
							</div>
						</div>
					</div>
					<div class="progress_bar_item progress_bar_4">
						<div class="progress_bar_sub">
							<span>{{$txt['106607::53349_004']}}</span>
							<div class="progress_desc">{{$txt['106607::53349_604']}}
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	{{elseif (( $xml->getItem("page/@type")  == (string) 'client-new') and !( $xml->getItem("page/client-data/@edit")  == (string) 'true') and ( $xml->getItem("page/client-data/@afterlogin")  == (string) 'order'))}}
		{{if $cop_global_label}}
			<span class="big_label cop_global_label">{{$cop_global_label}}</span>
		{{/if}}
		<div class="progress_bar_keeper">
			<div class="progress_bar_outline">
				<div class="progress_bar">
					<div class="progress_bar_active_holder">
						<div class="active_holder_left">
						</div>
						<div class="active_holder_right">
						</div>
						<div class="progress_bar_active_holder_sub">
						</div>
					</div>
					<div class="progress_bar_item progress_bar_1">
						<div class="progress_bar_sub">
							<span>{{$txt['106607::53349_001']}}</span>
							<div class="n56354" data-mobile-class="hide">
								<span>{{$txt['106607::53349_001wa']}}
									{{if ( $xml->getItem("/shop/basket/@wholesaler")  == (string) 'true') and !($wholesalerPrice_order_progress)}}
										{{$xml->getItemEscape("basket/@cost_net_formatted")}}{{$txt['106607::30004_netto']}}
									{{else}}
										{{$xml->getItemEscape("basket/@cost_formatted")}}
									{{/if}}
									</span>
							</div>
						</div>
					</div>
					<div class="progress_bar_item progress_bar_2 active">
						<div class="progress_bar_sub">
							<span>{{$txt['106607::53349_002_clientnew']}}</span>
							<div class="progress_desc">{{$txt['106607::53349_602_clientnew']}}
							</div>
						</div>
					</div>
					<div class="progress_bar_item progress_bar_3">
						<div class="progress_bar_sub">
							<span>{{$txt['106607::53349_003']}}</span>
							<div class="progress_desc">{{$txt['106607::53349_603']}}
							</div>
						</div>
					</div>
					<div class="progress_bar_item progress_bar_4">
						<div class="progress_bar_sub">
							<span>{{$txt['106607::53349_004']}}</span>
							<div class="progress_desc">{{$txt['106607::53349_604']}}
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	{{elseif  $xml->getItem("page/@type")  == (string) 'order1'}}
		{{if $cop_global_label}}
			<span class="big_label cop_global_label">{{$cop_global_label}}</span>
		{{/if}}
		<div class="progress_bar_keeper">
			<div class="progress_bar_outline">
				<div class="progress_bar">
					<div class="progress_bar_active_holder">
						<div class="active_holder_left">
						</div>
						<div class="active_holder_right">
						</div>
						<div class="progress_bar_active_holder_sub">
						</div>
					</div>
					<div class="progress_bar_item progress_bar_1">
						<div class="progress_bar_sub">
							<span>{{$txt['106607::53349_001']}}</span>
							<div class="n56354" data-mobile-class="hide">
								<span>{{$txt['106607::53349_001wa']}}
									{{if ( $xml->getItem("/shop/basket/@wholesaler")  == (string) 'true') and !($wholesalerPrice_order_progress)}}
										{{$xml->getItemEscape("basket/@cost_net_formatted")}}{{$txt['106607::30004_netto']}}
									{{else}}
										{{$xml->getItemEscape("basket/@cost_formatted")}}
									{{/if}}
									</span>
							</div>
						</div>
					</div>
					<div class="progress_bar_item progress_bar_2 active">
						<div class="progress_bar_sub">
							<span>{{$txt['106607::53349_003']}}</span>
							<div class="progress_desc">{{$txt['106607::53349_603']}}
							</div>
						</div>
					</div>
					<div class="progress_bar_item progress_bar_3">
						<div class="progress_bar_sub">
							<span>{{$txt['106607::53349_004']}}</span>
							<div class="progress_desc">{{$txt['106607::53349_604']}}
							</div>
						</div>
					</div>
					{{if !( $xml->getItem("basket/@login")) and !( $xml->getItem("navigation/@order_express_mode") == (string)'true')}}
						<div class="progress_bar_item progress_bar_4">
							<div class="progress_bar_sub">
								<span>{{$txt['106607::53349_005']}}</span>
								<div class="progress_desc">{{$txt['106607::53349_605']}}
								</div>
							</div>
						</div>
					{{else}}
						<div class="progress_bar_item progress_bar_4">
							<div class="progress_bar_sub">
								<span>{{$txt['106607::53349_006i']}}</span>
								<div class="progress_desc">{{$txt['106607::53349_606i']}}
								</div>
							</div>
						</div>
					{{/if}}
				</div>
			</div>
		</div>
	{{elseif  $xml->getItem("page/@type")  == (string) 'order-nonstandardized'}}
		{{if $cop_global_label}}
			<span class="big_label cop_global_label">{{$cop_global_label}}</span>
		{{/if}}
		<div class="progress_bar_keeper">
			<div class="progress_bar_outline">
				<div class="progress_bar">
					<div class="progress_bar_active_holder">
						<div class="active_holder_left">
						</div>
						<div class="active_holder_right">
						</div>
						<div class="progress_bar_active_holder_sub">
						</div>
					</div>
					<div class="progress_bar_item progress_bar_1">
						<div class="progress_bar_sub">
							<span>{{$txt['106607::53349_001']}}</span>
							<div class="n56354" data-mobile-class="hide">
								<span>{{$txt['106607::53349_001wa']}}
									{{if ( $xml->getItem("/shop/basket/@wholesaler")  == (string) 'true') and !($wholesalerPrice_order_progress)}}
										{{$xml->getItemEscape("basket/@cost_net_formatted")}}{{$txt['106607::30004_netto']}}
									{{else}}
										{{$xml->getItemEscape("basket/@cost_formatted")}}
									{{/if}}
									</span>
							</div>
						</div>
					</div>
					<div class="progress_bar_item progress_bar_2 active">
						<div class="progress_bar_sub">
							<span>{{$txt['106607::53349_003ono']}}</span>
							<div class="progress_desc">{{$txt['106607::53349_603ono']}}
							</div>
						</div>
					</div>
					<div class="progress_bar_item progress_bar_3">
						<div class="progress_bar_sub">
							<span>{{$txt['106607::53349_004']}}</span>
							<div class="progress_desc">{{$txt['106607::53349_604']}}
							</div>
						</div>
					</div>
					{{if !( $xml->getItem("basket/@login")) and !( $xml->getItem("navigation/@order_express_mode") == (string)'true')}}
						<div class="progress_bar_item progress_bar_4">
							<div class="progress_bar_sub">
								<span>{{$txt['106607::53349_005']}}</span>
								<div class="progress_desc">{{$txt['106607::53349_605']}}
								</div>
							</div>
						</div>
					{{else}}
						<div class="progress_bar_item progress_bar_4">
							<div class="progress_bar_sub">
								<span>{{$txt['106607::53349_006i']}}</span>
								<div class="progress_desc">{{$txt['106607::53349_606i']}}
								</div>
							</div>
						</div>
					{{/if}}
				</div>
			</div>
		</div>
	{{elseif  $xml->getItem("page/@type")  == (string) 'pickup-sites'}}
		{{if $cop_global_label}}
			<span class="big_label cop_global_label">{{$cop_global_label}}</span>
		{{/if}}
		<div class="progress_bar_keeper">
			<div class="progress_bar_outline">
				<div class="progress_bar">
					<div class="progress_bar_active_holder">
						<div class="active_holder_left">
						</div>
						<div class="active_holder_right">
						</div>
						<div class="progress_bar_active_holder_sub">
						</div>
					</div>
					<div class="progress_bar_item progress_bar_1">
						<div class="progress_bar_sub">
							<span>{{$txt['106607::53349_001']}}</span>
							<div class="n56354" data-mobile-class="hide">
								<span>{{$txt['106607::53349_001wa']}}
									{{if ( $xml->getItem("/shop/basket/@wholesaler")  == (string) 'true') and !($wholesalerPrice_order_progress)}}
										{{$xml->getItemEscape("basket/@cost_net_formatted")}}{{$txt['106607::30004_netto']}}
									{{else}}
										{{$xml->getItemEscape("basket/@cost_formatted")}}
									{{/if}}
									</span>
							</div>
						</div>
					</div>
					<div class="progress_bar_item progress_bar_2 active">
						<div class="progress_bar_sub">
							<span>{{$txt['106607::53349_003b']}}</span>
							<div class="progress_desc">{{$txt['106607::53349_603']}}
							</div>
						</div>
					</div>
					<div class="progress_bar_item progress_bar_3">
						<div class="progress_bar_sub">
							<span>{{$txt['106607::53349_004']}}</span>
							<div class="progress_desc">{{$txt['106607::53349_604']}}
							</div>
						</div>
					</div>
					{{if !( $xml->getItem("basket/@login")) and !( $xml->getItem("navigation/@order_express_mode") == (string)'true')}}
						<div class="progress_bar_item progress_bar_4">
							<div class="progress_bar_sub">
								<span>{{$txt['106607::53349_005']}}</span>
								<div class="progress_desc">{{$txt['106607::53349_605']}}
								</div>
							</div>
						</div>
					{{else}}
						<div class="progress_bar_item progress_bar_4">
							<div class="progress_bar_sub">
								<span>{{$txt['106607::53349_006i']}}</span>
								<div class="progress_desc">{{$txt['106607::53349_606i']}}
								</div>
							</div>
						</div>
					{{/if}}
				</div>
			</div>
		</div>
	{{elseif  $xml->getItem("page/@type")  == (string) 'order2'}}
		{{if $cop_global_label}}
			<span class="big_label cop_global_label">{{$cop_global_label}}</span>
		{{/if}}
		<div class="progress_bar_keeper">
			<div class="progress_bar_outline">
				<div class="progress_bar">
					<div class="progress_bar_active_holder">
						<div class="active_holder_left">
						</div>
						<div class="active_holder_right">
						</div>
						<div class="progress_bar_active_holder_sub">
						</div>
					</div>
					<div class="progress_bar_item progress_bar_1">
						<div class="progress_bar_sub">
							<span>{{$txt['106607::53349_001']}}</span>
							<div class="n56354" data-mobile-class="hide">
								<span>{{$txt['106607::53349_001wa']}}
									{{if ( $xml->getItem("/shop/basket/@wholesaler")  == (string) 'true') and !($wholesalerPrice_order_progress)}}
										{{$xml->getItemEscape("basket/@cost_net_formatted")}}{{$txt['106607::30004_netto']}}
									{{else}}
										{{$xml->getItemEscape("basket/@cost_formatted")}}
									{{/if}}
									</span>
							</div>
						</div>
					</div>
					<div class="progress_bar_item progress_bar_2">
						<div class="progress_bar_sub">
							<span>{{$txt['106607::53349_003']}}</span>
							<div class="progress_desc">{{$txt['106607::53349_603']}}
							</div>
						</div>
					</div>
					<div class="progress_bar_item progress_bar_3 active">
						<div class="progress_bar_sub">
							<span>{{$txt['106607::53349_004']}}</span>
							<div class="progress_desc">{{$txt['106607::53349_604']}}
							</div>
						</div>
					</div>
					{{if !( $xml->getItem("basket/@login")) and !( $xml->getItem("navigation/@order_express_mode") == (string)'true')}}
						<div class="progress_bar_item progress_bar_4">
							<div class="progress_bar_sub">
								<span>{{$txt['106607::53349_005']}}</span>
								<div class="progress_desc">{{$txt['106607::53349_605']}}
								</div>
							</div>
						</div>
					{{else}}
						<div class="progress_bar_item progress_bar_4">
							<div class="progress_bar_sub">
								<span>{{$txt['106607::53349_006i']}}</span>
								<div class="progress_desc">{{$txt['106607::53349_606i']}}
								</div>
							</div>
						</div>
					{{/if}}
				</div>
			</div>
		</div>
	{{elseif  $xml->getItem("page/@type")  == (string) 'client-save'}}
		{{if $cop_global_label}}
			<span class="big_label cop_global_label">{{$cop_global_label}}</span>
		{{/if}}
		<div class="progress_bar_keeper">
			<div class="progress_bar_outline">
				<div class="progress_bar">
					<div class="progress_bar_active_holder">
						<div class="active_holder_left">
						</div>
						<div class="active_holder_right">
						</div>
						<div class="progress_bar_active_holder_sub">
						</div>
					</div>
					<div class="progress_bar_item progress_bar_1">
						<div class="progress_bar_sub">
							<span>{{$txt['106607::53349_001']}}</span>
							<div class="n56354" data-mobile-class="hide">
								<span>{{$txt['106607::53349_001wa']}}
									{{if ( $xml->getItem("/shop/basket/@wholesaler")  == (string) 'true') and !($wholesalerPrice_order_progress)}}
										{{$xml->getItemEscape("basket/@cost_net_formatted")}}{{$txt['106607::30004_netto']}}
									{{else}}
										{{$xml->getItemEscape("basket/@cost_formatted")}}
									{{/if}}
									</span>
							</div>
						</div>
					</div>
					<div class="progress_bar_item progress_bar_2">
						<div class="progress_bar_sub">
							<span>{{$txt['106607::53349_004']}}</span>
							<div class="progress_desc">{{$txt['106607::53349_604']}}
							</div>
						</div>
					</div>
					<div class="progress_bar_item progress_bar_3 active">
						<div class="progress_bar_sub">
							<span>{{$txt['106607::53349_005']}}</span>
							<div class="progress_desc">{{$txt['106607::53349_605']}}
							</div>
						</div>
					</div>
					<div class="progress_bar_item progress_bar_4">
						<div class="progress_bar_sub">
							<span>{{$txt['106607::53349_006i']}}</span>
							<div class="progress_desc">{{$txt['106607::53349_606i']}}
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	{{elseif  $xml->getItem("page/@type")  == (string) 'prepaid' and  $xml->getItem("page/prepaid/details/@msg")  == (string) 'order'}}
		{{if $cop_global_label}}
			<span class="big_label cop_global_label">{{$cop_global_label}}</span>
		{{/if}}
		<div class="progress_bar_keeper">
			<div class="progress_bar_outline">
				<div class="progress_bar">
					<div class="progress_bar_active_holder">
						<div class="active_holder_left">
						</div>
						<div class="active_holder_right">
						</div>
						<div class="progress_bar_active_holder_sub">
						</div>
					</div>
					<div class="progress_bar_item progress_bar_1">
						<div class="progress_bar_sub">
							<span>{{$txt['106607::53349_001']}}</span>
							<div class="n56354" data-mobile-class="hide">
								<span>{{$txt['106607::53349_001wa']}}
									{{if ( $xml->getItem("/shop/basket/@wholesaler")  == (string) 'true') and !($wholesalerPrice_order_progress)}}
										{{$xml->getItemEscape("basket/@cost_net_formatted")}}{{$txt['106607::30004_netto']}}
									{{else}}
										{{$xml->getItemEscape("basket/@cost_formatted")}}
									{{/if}}
									</span>
							</div>
						</div>
					</div>
					<div class="progress_bar_item progress_bar_2">
						<div class="progress_bar_sub">
							<span>{{$txt['106607::53349_003']}}</span>
							<div class="progress_desc">{{$txt['106607::53349_603']}}
							</div>
						</div>
					</div>
					<div class="progress_bar_item progress_bar_3">
						<div class="progress_bar_sub">
							<span>{{$txt['106607::53349_004']}}</span>
							<div class="progress_desc">{{$txt['106607::53349_604']}}
							</div>
						</div>
					</div>
					{{if  $xml->getItem("page/prepaid/details/@msg")  == (string) 'order'}}
						<div class="progress_bar_item progress_bar_4 active">
							<div class="progress_bar_sub">
								<span>{{$txt['106607::53349_006']}}
									{{if ( $xml->getItem("page/prepaid/details/@wykonane")  == (string) 'n')}}
										{{$txt['106607::progress161']}}
									{{elseif ( $xml->getItem("page/prepaid/details/@wykonane")  == (string) 't')}}
										{{$txt['106607::progress162']}}
									{{elseif ( $xml->getItem("page/prepaid/details/@wykonane")  == (string) 'i')}}
										{{$txt['106607::progress163']}}
									{{elseif ( $xml->getItem("page/prepaid/details/@wykonane")  == (string) 's')}}
										{{$txt['106607::progress164']}}
									{{elseif ( $xml->getItem("page/prepaid/details/@wykonane")  == (string) 'o')}}
										{{$txt['106607::progress165']}}
									{{elseif ( $xml->getItem("page/prepaid/details/@wykonane")  == (string) 'p')}}
										{{$txt['106607::progress166']}}
									{{elseif ( $xml->getItem("page/prepaid/details/@wykonane")  == (string) 'h')}}
										{{$txt['106607::progress166N']}}
									{{elseif ( $xml->getItem("page/prepaid/details/@wykonane")  == (string) 'w')}}
										{{$txt['106607::progress166w']}}
									{{elseif ( $xml->getItem("page/prepaid/details/@wykonane")  == (string) 'd')}}
										{{$txt['106607::progress166d']}}
									{{elseif ( $xml->getItem("page/prepaid/details/@wykonane")  == (string) 'z')}}
										{{$txt['106607::progress167']}}
									{{elseif ( $xml->getItem("page/prepaid/details/@wykonane")  == (string) 'k')}}
										{{$txt['106607::progress168']}}
									{{elseif ( $xml->getItem("page/prepaid/details/@wykonane")  == (string) 'r')}}
										{{$txt['106607::progress169']}}
									{{elseif ( $xml->getItem("page/prepaid/details/@wykonane")  == (string) 'j')}}
										{{$txt['106607::progress169d']}}
									{{elseif ( $xml->getItem("page/prepaid/details/@wykonane")  == (string) 'l')}}
										{{$txt['106607::progress169l']}}
									{{elseif ( $xml->getItem("page/prepaid/details/@wykonane")  == (string) 'a')}}
										{{$txt['106607::progress169l0']}}
									{{/if}}
									</span>
								<div class="progress_desc">{{$txt['106607::53349_606']}}
								</div>
							</div>
						</div>
					{{else}}
						<div class="progress_bar_item progress_bar_4">
							<div class="progress_bar_sub">
								<span>{{$txt['106607::53349_006']}}
									<span class="progress_bar_status">
										{{if ( $xml->getItem("page/prepaid/details/@wykonane")  == (string) 'n')}}
											{{$txt['106607::progress161']}}
										{{elseif ( $xml->getItem("page/prepaid/details/@wykonane")  == (string) 't')}}
											{{$txt['106607::progress162']}}
										{{elseif ( $xml->getItem("page/prepaid/details/@wykonane")  == (string) 'i')}}
											{{$txt['106607::progress163']}}
										{{elseif ( $xml->getItem("page/prepaid/details/@wykonane")  == (string) 's')}}
											{{$txt['106607::progress164']}}
										{{elseif ( $xml->getItem("page/prepaid/details/@wykonane")  == (string) 'o')}}
											{{$txt['106607::progress165']}}
										{{elseif ( $xml->getItem("page/prepaid/details/@wykonane")  == (string) 'p')}}
											{{$txt['106607::progress166']}}
										{{elseif ( $xml->getItem("page/prepaid/details/@wykonane")  == (string) 'h')}}
											{{$txt['106607::progress166N']}}
										{{elseif ( $xml->getItem("page/prepaid/details/@wykonane")  == (string) 'w')}}
											{{$txt['106607::progress166w']}}
										{{elseif ( $xml->getItem("page/prepaid/details/@wykonane")  == (string) 'd')}}
											{{$txt['106607::progress166d']}}
										{{elseif ( $xml->getItem("page/prepaid/details/@wykonane")  == (string) 'z')}}
											{{$txt['106607::progress167']}}
										{{elseif ( $xml->getItem("page/prepaid/details/@wykonane")  == (string) 'k')}}
											{{$txt['106607::progress168']}}
										{{elseif ( $xml->getItem("page/prepaid/details/@wykonane")  == (string) 'r')}}
											{{$txt['106607::progress169']}}
										{{elseif ( $xml->getItem("page/prepaid/details/@wykonane")  == (string) 'j')}}
											{{$txt['106607::progress169d']}}
										{{elseif ( $xml->getItem("page/prepaid/details/@wykonane")  == (string) 'l')}}
											{{$txt['106607::progress169l']}}
										{{elseif ( $xml->getItem("page/prepaid/details/@wykonane")  == (string) 'a')}}
											{{$txt['106607::progress169l0']}}
										{{/if}}
										</span></span>
								<div class="progress_desc">{{$txt['106607::53349_606']}}
								</div>
							</div>
						</div>
					{{/if}}
				</div>
			</div>
		</div>
	{{elseif  $xml->getItem("page/@type")  == (string) 'order-payment'}}
		{{if $cop_global_label}}
			<span class="big_label cop_global_label">{{$cop_global_label}}</span>
		{{/if}}
		<div class="progress_bar_keeper">
			<div class="progress_bar_outline">
				<div class="progress_bar">
					<div class="progress_bar_active_holder">
						<div class="active_holder_left">
						</div>
						<div class="active_holder_right">
						</div>
						<div class="progress_bar_active_holder_sub">
						</div>
					</div>
					<div class="progress_bar_item progress_bar_1">
						<div class="progress_bar_sub">
							<span>{{$txt['106607::53349_001']}}</span>
							<div class="n56354" data-mobile-class="hide">
								<span>{{$txt['106607::53349_001wa']}}
									{{if ( $xml->getItem("/shop/basket/@wholesaler")  == (string) 'true') and !($wholesalerPrice_order_progress)}}
										{{$xml->getItemEscape("basket/@cost_net_formatted")}}{{$txt['106607::30004_netto']}}
									{{else}}
										{{$xml->getItemEscape("basket/@cost_formatted")}}
									{{/if}}
									</span>
							</div>
						</div>
					</div>
					<div class="progress_bar_item progress_bar_2">
						<div class="progress_bar_sub">
							<span>{{$txt['106607::53349_003']}}</span>
							<div class="progress_desc">{{$txt['106607::53349_603']}}
							</div>
						</div>
					</div>
					<div class="progress_bar_item progress_bar_3">
						<div class="progress_bar_sub">
							<span>{{$txt['106607::53349_004']}}</span>
							<div class="progress_desc">{{$txt['106607::53349_604']}}
							</div>
						</div>
					</div>
					{{if  $xml->getItem("page/order/@new")  == (string) 'true'}}
						<div class="progress_bar_item progress_bar_4 active">
							<div class="progress_bar_sub">
								<span>{{$txt['106607::53349_006p']}}</span>
								<div class="progress_desc">{{$txt['106607::53349_606']}}
								</div>
							</div>
						</div>
					{{else}}
						<div class="progress_bar_item progress_bar_4 active">
							<div class="progress_bar_sub">
								<span>{{$txt['106607::53349_006p']}}</span>
								<div class="progress_desc">{{$txt['106607::53349_606']}}
								</div>
							</div>
						</div>
					{{/if}}
				</div>
			</div>
		</div>
	{{elseif  $xml->getItem("page/@type")  == (string) 'order-newpayment'}}
		{{if $cop_global_label}}
			<span class="big_label cop_global_label">{{$cop_global_label}}</span>
		{{/if}}
		<div class="progress_bar_keeper">
			<div class="progress_bar_outline">
				<div class="progress_bar">
					<div class="progress_bar_active_holder">
						<div class="active_holder_left">
						</div>
						<div class="active_holder_right">
						</div>
						<div class="progress_bar_active_holder_sub">
						</div>
					</div>
					<div class="progress_bar_item progress_bar_1">
						<div class="progress_bar_sub">
							<span>{{$txt['106607::53349_001']}}</span>
							<div class="n56354" data-mobile-class="hide">
								<span>{{$txt['106607::53349_001wa']}}
									{{if ( $xml->getItem("/shop/basket/@wholesaler")  == (string) 'true') and !($wholesalerPrice_order_progress)}}
										{{$xml->getItemEscape("basket/@cost_net_formatted")}}{{$txt['106607::30004_netto']}}
									{{else}}
										{{$xml->getItemEscape("basket/@cost_formatted")}}
									{{/if}}
									</span>
							</div>
						</div>
					</div>
					<div class="progress_bar_item progress_bar_2">
						<div class="progress_bar_sub">
							<span>{{$txt['106607::53349_003']}}</span>
							<div class="progress_desc">{{$txt['106607::53349_603']}}
							</div>
						</div>
					</div>
					<div class="progress_bar_item progress_bar_3">
						<div class="progress_bar_sub">
							<span>{{$txt['106607::53349_004']}}</span>
							<div class="progress_desc">{{$txt['106607::53349_604']}}
							</div>
						</div>
					</div>
					{{if  $xml->getItem("page/order/@new")  == (string) 'true'}}
						<div class="progress_bar_item progress_bar_4 active">
							<div class="progress_bar_sub">
								<span>{{$txt['106607::53349_006p']}}</span>
								<div class="progress_desc">{{$txt['106607::53349_606']}}
								</div>
							</div>
						</div>
					{{else}}
						<div class="progress_bar_item progress_bar_4">
							<div class="progress_bar_sub">
								<span>{{$txt['106607::53349_006p']}}</span>
								<div class="progress_desc">{{$txt['106607::53349_606']}}
								</div>
							</div>
						</div>
					{{/if}}
				</div>
			</div>
		</div>
	{{/if}}
{{/if}}
