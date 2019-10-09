
<!--Błędy i informacje w projektorze (menu_messages, 106608.1)-->
{{capture name="rebates_code_used" assign="rebates_code_used"}}
	{{$txt['106608::n67953_rebates_code_used']}}
{{/capture}}

{{capture name="change_success" assign="change_success"}}
	{{$txt['106608::n67953_change_success']}}
{{/capture}}

{{capture name="change_success_despite_no_change" assign="change_success_despite_no_change"}}
	{{$txt['106608::n67953_change_success_despite_no_change']}}
{{/capture}}

{{if count( $xml->getList("/shop/page/communicates/warning"))}}
	<div {{assign "classAttributeTmp1" ""}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}menu_messages_warning{{/capture}} id="menu_messages_warning" {{if $xml->getItem("/shop/page/communicates/communicate/@messageType") == (string) 'message'}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}menu_messages_message{{/capture}}{{elseif $xml->getItem("/shop/page/communicates/communicate/@messageType") == (string) 'warning'}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}menu_messages_warning{{/capture}}{{elseif $xml->getItem("/shop/page/communicates/communicate/@messageType") == (string) 'error'}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}menu_messages_error{{/capture}}{{elseif $xml->getItem("/shop/page/communicates/communicate/@messageType") == (string) 'success'}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}menu_messages_success{{/capture}}{{/if}}  class="{{$classAttributeTmp1}}">
		<div class="menu_messages_warning_sub">
			{{foreach from=$xml->getList("/shop/page/communicates/warning") item=loop22}}
				<p>
					{{if  $loop22->getItem("@type") == (string)'file_upload_invalid_type'}}
						{{$txt['106608::w000f01a']}}
						<span class="invalidFileName">{{$loop22->getItemEscape("@value")}}</span>{{$txt['106608::w000f01b']}}
					{{elseif  $loop22->getItem("@type") == (string)'file_upload_invalid_extension'}}
						{{$txt['106608::w000f02a']}}
						<span class="invalidFileName">{{$loop22->getItemEscape("@value")}}</span>{{$txt['106608::w000f02b']}}
					{{elseif  $loop22->getItem("@type") == (string)'file_upload_size_exceeded'}}
						{{$txt['106608::w000f03a']}}
						<span class="invalidFileName">{{$loop22->getItemEscape("@value")}}</span>{{$txt['106608::w000f03b']}}
					{{elseif  $loop22->getItem("@type") == (string)'file_uploaded_remove_fail'}}
						{{$txt['106608::w000f04a']}}
						<span class="invalidFileName">{{$loop22->getItemEscape("@value")}}</span>.
					{{elseif  $loop22->getItem("@type") == (string)'rebates_code_expired'}}
						{{$txt['106608::w000a']}}
					{{elseif  $loop22->getItem("@type") == (string)'rebates_code_notbegun'}}
						{{$txt['106608::w000b']}}
					{{elseif  $loop22->getItem("@type") == (string)'order_minimal_wholesale_blocked'}}
						{{$txt['106608::w0000_1']}}
						{{if $signbeforeprice  == (string) 'true'}}
							{{$loop22->getItemEscape("/shop/currency/@name")}}{{$signbetweenpricecurrency}}
						{{/if}}
						{{$loop22->getItemEscape("@value")}}
						{{if $signbeforeprice  == (string) 'false'}}
							{{$signbetweenpricecurrency}}{{$loop22->getItemEscape("/shop/currency/@name")}}
						{{/if}}
					{{elseif  $loop22->getItem("@type") == (string)'order_minimal_wholesale_changed'}}
						{{$txt['106608::w0000_2']}}
					{{elseif  $loop22->getItem("@type") == (string)'openid_invalid_authorization'}}
						{{$txt['106608::w0000']}}
					{{elseif  $loop22->getItem("@type") == (string)'suggest_sent'}}
						{{$txt['106608::w0001']}}{{$loop22->getItemEscape("@value")}}.
					{{elseif  $loop22->getItem("@type") == (string)'search_to_many_products'}}
						{{$txt['106608::w001']}}
					{{elseif  $loop22->getItem("@type") == (string)'search_products_not_found'}}
						{{$txt['106608::w002']}}
					{{elseif  $loop22->getItem("@type") == (string)'search_text_to_short'}}
						{{$txt['106608::w002b']}}
					{{elseif  $loop22->getItem("@type") == (string)'login taken'}}
						{{$txt['106608::w003']}}
					{{elseif  $loop22->getItem("@type") == (string)'account_not_added'}}
						{{$txt['106608::w004']}}
					{{elseif  $loop22->getItem("@type") == (string)'exists such account'}}
						{{$txt['106608::w005']}}
					{{elseif  $loop22->getItem("@type") == (string)'deliv_addr_not_deleted'}}
						{{$txt['106608::w006']}}
					{{elseif  $loop22->getItem("@type") == (string)'deliv_addr_not_selected'}}
						{{$txt['106608::w007']}}
					{{elseif  $loop22->getItem("@type") == (string)'no login'}}
						{{$txt['106608::w008']}}
					{{elseif  $loop22->getItem("@type") == (string)'incorect login'}}
						{{$txt['106608::w009']}}
					{{elseif  $loop22->getItem("@type") == (string)'no password'}}
						{{$txt['106608::w010a']}}
					{{elseif  $loop22->getItem("@type") == (string)'password to short'}}
						{{$txt['106608::w010b']}}
					{{elseif  $loop22->getItem("@type") == (string)'password_to_long'}}
						{{$txt['106608::w010hb']}}
					{{elseif  $loop22->getItem("@type") == (string)'login equals password'}}
						{{$txt['106608::w010c']}}
					{{elseif  $loop22->getItem("@type") == (string)'not equal passwords'}}
						{{$txt['106608::w012']}}
					{{elseif  $loop22->getItem("@type") == (string)'no firstname'}}
						{{$txt['106608::w013']}}
					{{elseif  $loop22->getItem("@type") == (string)'no name'}}
						{{$txt['106608::w014']}}
					{{elseif  $loop22->getItem("@type") == (string)'birth_date'}}
						{{$txt['106608::w014b']}}
					{{elseif  $loop22->getItem("@type") == (string)'incorect email'}}
						{{$txt['106608::w015']}}
					{{elseif  $loop22->getItem("@type") == (string)'incorect nip'}}
						{{$txt['106608::w017']}}
					{{elseif  $loop22->getItem("@type") == (string)'no firmname'}}
						{{$txt['106608::w115']}}
					{{elseif  $loop22->getItem("@type") == (string)'incorrect region'}}
						{{$txt['106608::w018']}}
					{{elseif  $loop22->getItem("@type") == (string)'no city'}}
						{{$txt['106608::w019']}}
					{{elseif  $loop22->getItem("@type") == (string)'no street'}}
						{{$txt['106608::w020']}}
					{{elseif  $loop22->getItem("@type") == (string)'no_street_number'}}
						{{$txt['106608::w020']}}
					{{elseif  $loop22->getItem("@type") == (string)'incorect phone'}}
						{{$txt['106608::w021']}}
					{{elseif  $loop22->getItem("@type") == (string)'incorect spare phone'}}
						{{$txt['106608::w022']}}
					{{elseif  $loop22->getItem("@type") == (string)'incorect zipcode'}}
						{{$txt['106608::w023']}}
					{{elseif  $loop22->getItem("@type") == (string)'double_address_error'}}
						{{$txt['106608::w024123']}}
					{{elseif  $loop22->getItem("@type") == (string)'no delivery firstname'}}
						{{$txt['106608::w024']}}
					{{elseif  $loop22->getItem("@type") == (string)'no delivery lastname'}}
						{{$txt['106608::w025']}}
					{{elseif  $loop22->getItem("@type") == (string)'no delivery city'}}
						{{$txt['106608::w026']}}
					{{elseif  $loop22->getItem("@type") == (string)'no delivery street'}}
						{{$txt['106608::w027']}}
					{{elseif  $loop22->getItem("@type") == (string)'incorect delivery region'}}
						{{$txt['106608::w028']}}
					{{elseif  $loop22->getItem("@type") == (string)'incorect delivery zipcode'}}
						{{$txt['106608::w029']}}
					{{elseif  $loop22->getItem("@type") == (string)'order_newpayment_hhtransfer_error'}}
						{{$txt['106608::w021qwe']}}
					{{elseif  $loop22->getItem("@type") == (string)'order_newpayment_voucher_error'}}
						{{$txt['106608::w022qwe']}}
						{{if  $loop22->getItem("@value") == (string)'v1'}}
							{{$txt['106608::w022qwe1']}}
						{{/if}}
						{{if  $loop22->getItem("@value") == (string)'v2'}}
							{{$txt['106608::w022qwe2']}}
						{{/if}}
						{{if  $loop22->getItem("@value") == (string)'v3'}}
							{{$txt['106608::w022qwe3']}}
						{{/if}}
						{{if  $loop22->getItem("@value") == (string)'v4'}}
							{{$txt['106608::w022qwe4']}}
						{{/if}}
						{{if  $loop22->getItem("@value") == (string)'v5'}}
							{{$txt['106608::w022qwe5']}}
						{{/if}}
						{{if  $loop22->getItem("@value") == (string)'v7'}}
							{{$txt['106608::w022qwe7']}}
						{{/if}}
						{{if  $loop22->getItem("@value") == (string)'v8'}}
							{{$txt['106608::w022qwe8']}}
						{{/if}}
					{{elseif  $loop22->getItem("@type") == (string)'order_newpayment_incorrect_paymentid'}}
						{{$txt['106608::w028qwe']}}
					{{elseif  $loop22->getItem("@type") == (string)'order_newpayment_error'}}
						{{$txt['106608::w029qwe']}}
					{{elseif  $loop22->getItem("@type") == (string)'order_newpayment_points_error'}}
						{{$txt['106608::order_newpayment_points_error']}}
					{{elseif  $loop22->getItem("@type") == (string)'filter_products_not_found'}}
						{{$txt['106608::a001']}}
					{{elseif  $loop22->getItem("@type") == (string)'questionnaire_error'}}
						{{$txt['106608::a001bb']}}
					{{elseif  $loop22->getItem("@type") == (string)'questionnaire_sent'}}
						{{$txt['106608::a001bcc']}}
					{{elseif  $loop22->getItem("@type") == (string)'orderopen_not_found'}}
						{{$txt['106608::orderopen01']}}
					{{elseif  $loop22->getItem("@type") == (string)'order_nonstandard_inactive'}}
						{{$txt['106608::ordernonstandard01']}}
					{{elseif  $loop22->getItem("@type") == (string)'order_nonstandard_inactive_worth'}}
						{{$txt['106608::ordernonstandard02']}}
					{{elseif  $loop22->getItem("@type") == (string)'order_nonstandard_inactive_weight'}}
						{{$txt['106608::ordernonstandard03']}}
					{{elseif  $loop22->getItem("@type") == (string)'no-auction-info'}}
						{{$txt['106608::53434_auction01']}}
					{{elseif  $loop22->getItem("@type") == (string)'no-auction-account'}}
						{{$txt['106608::53434_auction02']}}
					{{elseif  $loop22->getItem("@type") == (string)'no-allegro-item'}}
						{{$txt['106608::53434_auction03']}}
					{{elseif  $loop22->getItem("@type") == (string)'no-buyer-info'}}
						{{$txt['106608::53434_auction04']}}
					{{elseif  $loop22->getItem("@type") == (string)'no-seller-info'}}
						{{$txt['106608::53434_auction05']}}
					{{elseif  $loop22->getItem("@type") == (string)'no-shipping'}}
						{{$txt['106608::53434_auction06']}}
					{{elseif  $loop22->getItem("@type") == (string)'no-order'}}
						{{$txt['106608::53434_auction07']}}
					{{elseif  $loop22->getItem("@type") == (string)'less_del'}}
						{{$txt['106608::53434_auction08']}}
					{{elseif  $loop22->getItem("@type") == (string)'cant_del'}}
						{{$txt['106608::53434_auction09']}}
					{{elseif  $loop22->getItem("@type") == (string)'rebates_code_ok'}}
						{{$txt['106608::m003']}}
					{{elseif  $loop22->getItem("@type") == (string)'rebates_code_undefined'}}
						{{$txt['106608::53434_rebate03']}}
					{{elseif  $loop22->getItem("@type") == (string)'rebates_code_used' and $rebates_code_used}}
						{{$rebates_code_used}}
					{{elseif  $loop22->getItem("@type") == (string)'rebates_code_begins'}}
						{{$txt['106608::53434_rebate01']}}
					{{elseif  $loop22->getItem("@type") == (string)'rebates_code_expires'}}
						{{$txt['106608::53434_rebate02']}}
					{{elseif  $loop22->getItem("@type") == (string)'membershipcard_undefined'}}
						{{$txt['106608::40018_901']}}
					{{elseif  $loop22->getItem("@type") == (string)'membershipcard_expires'}}
						{{$txt['106608::40018_903']}}
					{{elseif  $loop22->getItem("@type") == (string)'membershipcard_blocked'}}
						{{$txt['106608::40018_904']}}
					{{elseif  $loop22->getItem("@type") == (string)'membershipcard_ok'}}
						{{$txt['106608::40018_902']}}
					{{elseif  $loop22->getItem("@type") == (string)'client_wholesale_application_error'}}
						{{$txt['106608::40018_920']}}
					{{elseif  $loop22->getItem("@type") == (string)'client_wholesale_registered'}}
						{{$txt['106608::40018_921']}}
					{{elseif  $loop22->getItem("@type") == (string)'ordered_empty'}}
						{{$txt['106608::40018_951']}}
					{{elseif  $loop22->getItem("@type") == (string)'shipping_error'}}
						{{$txt['106608::40018_952']}}
					{{elseif  $loop22->getItem("@type") == (string)'basket_empty'}}
						{{$txt['106608::40018_953']}}
					{{elseif  $loop22->getItem("@type") == (string)'order_minimum'}}
						{{$txt['106608::40018_954']}}
						{{if  $loop22->getItem("@value") gt (string)0}}
							{{$txt['106608::40018_955']}}
							{{if $signbeforeprice  == (string) 'true'}}
								{{$loop22->getItemEscape("/shop/currency/@name")}}{{$signbetweenpricecurrency}}
							{{/if}}
							{{$loop22->getItemEscape("@value")}}
							{{if $signbeforeprice  == (string) 'false'}}
								{{$signbetweenpricecurrency}}{{$loop22->getItemEscape("/shop/currency/@name")}}
							{{/if}}
							{{$txt['106608::40018_955b']}}
						{{/if}}
					{{elseif  $loop22->getItem("@type") == (string)'order_tomuch'}}
						{{$txt['106608::40018_956']}}
						{{if  $loop22->getItem("@value") gt (string)0}}
							{{$txt['106608::40018_957max']}}
							{{if $signbeforeprice  == (string) 'true'}}
								{{$loop22->getItemEscape("/shop/currency/@name")}}{{$signbetweenpricecurrency}}
							{{/if}}
							{{$loop22->getItemEscape("@value")}}
							{{if $signbeforeprice  == (string) 'false'}}
								{{$signbetweenpricecurrency}}{{$loop22->getItemEscape("/shop/currency/@name")}}
							{{/if}}
						{{/if}}
					{{elseif  $loop22->getItem("@type") == (string)'requiredPhoneAndEmail'}}
						{{$txt['106608::40018_960']}}
						<a href="{{$loop22->getItemEscape("@value")}}" title="{{$txt['106608::40018_961']}}">{{$txt['106608::40018_962']}}</a>{{$txt['106608::40018_963']}}
					{{elseif  $loop22->getItem("@type") == (string)'noPickupSites'}}
						{{$txt['106608::40018_964']}}
						<a href="{{$loop22->getItemEscape("@value")}}" title="{{$txt['106608::40018_965']}}">{{$txt['106608::40018_966']}}</a>{{$txt['106608::40018_963']}}
					{{elseif  $loop22->getItem("@type") == (string)'noPickupStocks'}}
						{{$txt['106608::40018_967']}}
						<a href="{{$loop22->getItemEscape("@value")}}" title="{{$txt['106608::40018_965']}}">{{$txt['106608::40018_966']}}</a>{{$txt['106608::40018_963']}}
					{{elseif  $loop22->getItem("@type") == (string)'rma_edit_error'}}
						{{$txt['106608::warning_rma_edit_error']}}
					{{elseif  $loop22->getItem("@type") == (string)'onlyHttps'}}
						{{$txt['106608::warning_onlyHttps']}}
					{{elseif  $loop22->getItem("@type") == (string)'login_unavailable'}}
						{{$txt['106608::40018_923openid_c']}}{{$loop22->getItemEscape("@value")}}.
					{{else}}
						{{$loop22->getItem("description")}}
					{{/if}}
				</p>
			{{/foreach}}
		</div>
	</div>
{{/if}}

{{if count( $xml->getList("/shop/page/communicates/message"))}}
	<div {{assign "classAttributeTmp2" ""}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}menu_messages_message{{/capture}} id="menu_messages_warning" {{if $xml->getItem("/shop/page/communicates/communicate/@messageType") == (string) 'message'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}menu_messages_message{{/capture}}{{elseif $xml->getItem("/shop/page/communicates/communicate/@messageType") == (string) 'warning'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}menu_messages_warning{{/capture}}{{elseif $xml->getItem("/shop/page/communicates/communicate/@messageType") == (string) 'error'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}menu_messages_error{{/capture}}{{elseif $xml->getItem("/shop/page/communicates/communicate/@messageType") == (string) 'success'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}menu_messages_success{{/capture}}{{/if}}  class="{{$classAttributeTmp2}}">
		<div class="menu_messages_message_sub">
			{{foreach from=$xml->getList("/shop/page/communicates/message") item=loop163}}
				<p>
					{{if  $loop163->getItem("@type") == (string)'change_success' and $change_success}}
						{{$change_success}}
					{{elseif  $loop163->getItem("@type") == (string)'change_success_despite_no_change' and $change_success_despite_no_change}}
						{{$change_success_despite_no_change}}
					{{elseif  $loop163->getItem("@type") == (string)'affiliate_not_active'}}
						{{$txt['106608::w0001a']}}
					{{elseif  $loop163->getItem("@type") == (string)'deliv_addr_deleted'}}
						{{$txt['106608::m001']}}
					{{elseif  $loop163->getItem("@type") == (string)'affiliate_off'}}
						{{$txt['106608::m02201']}}
					{{elseif  $loop163->getItem("@type") == (string)'affiliate_blocked'}}
						{{$txt['106608::m02301']}}
					{{elseif  $loop163->getItem("@type") == (string)'deliv_addr_selected'}}
						{{$txt['106608::m002']}}
					{{elseif  $loop163->getItem("@type") == (string)'rebates_code_ok'}}
						{{$txt['106608::m003']}}
					{{elseif  $loop163->getItem("@type") == (string)'client_wholesale_application_added'}}
						{{$txt['106608::40018_922']}}
					{{elseif  $loop163->getItem("@type") == (string)'login_connect'}}
						{{$txt['106608::40018_923openid']}}{{$loop163->getItemEscape("@value")}}{{$txt['106608::40018_923openid_2']}}
					{{elseif  $loop163->getItem("@type") == (string)'login_connected'}}
						{{$txt['106608::40018_923openid_a']}}{{$loop163->getItemEscape("@value")}}{{$txt['106608::40018_923openid_a2']}}
					{{elseif  $loop163->getItem("@type") == (string)'login_disconnected'}}
						{{$txt['106608::40018_923openid_b']}}{{$loop163->getItemEscape("@value")}}{{$txt['106608::40018_923openid_b2']}}
					{{elseif  $loop163->getItem("@type") == (string)'login_unavailable'}}
						{{$txt['106608::40018_923openid_c']}}{{$loop163->getItemEscape("@value")}}.
					{{elseif  $loop163->getItem("@type") == (string)'openid_login_canceled'}}
						{{$txt['106608::40018_950openid']}}
					{{elseif  $loop163->getItem("@type") == (string)'client_wholesale_application_changed'}}
						{{$txt['106608::40018_923']}}
					{{elseif  $loop163->getItem("@type") == (string)'wisheslist_empty'}}
						{{$txt['106608::40018_950']}}
					{{elseif  $loop163->getItem("@type") == (string)'products_requests_empty'}}
						{{$txt['106608::40018_957empty']}}
					{{elseif  $loop163->getItem("@type") == (string)'products_requests_added'}}
						{{$txt['106608::40018_958']}}
					{{elseif  $loop163->getItem("@type") == (string)'products_requests_removed'}}
						{{$txt['106608::40018_959']}}
					{{elseif  $loop163->getItem("@type") == (string)'rma_add'}}
						{{$txt['106608::message_rma_add']}}
					{{elseif  $loop163->getItem("@type") == (string)'return_add'}}
						{{$txt['106608::message_return_add']}}
					{{elseif  $loop163->getItem("@type") == (string)'return_edit'}}
						{{$txt['106608::message_z_edit']}}
					{{elseif  $loop163->getItem("@type") == (string)'rma_edit'}}
						{{$txt['106608::message_rma_edit']}}
					{{elseif  $loop163->getItem("@type") == (string)'order_nonstandard_reason'}}
						{{$txt['106608::ordernonstandard04']}}
					{{elseif  $loop163->getItem("@type") == (string)'order_nonstandard_reason_worth'}}
						{{$txt['106608::ordernonstandard05']}}
					{{elseif  $loop163->getItem("@type") == (string)'order_nonstandard_reason_weight'}}
						{{$txt['106608::ordernonstandard06']}}
					{{elseif  $loop163->getItem("@type") == (string)'mailing_addsuccess'}}
						{{$txt['106608::mailing_addsuccess']}}
					{{elseif  $loop163->getItem("@type") == (string)'mailing_removesuccess'}}
						{{$txt['106608::mailing_removesuccess']}}
					{{elseif  $loop163->getItem("@type")  == (string) 'mailing_nosuchemail'}}
						{{$txt['106608::mailing_nosuchemail']}}
					{{elseif  $loop163->getItem("@type")  == (string) 'mailing_sendingconfirm'}}
						{{$txt['106608::mailing_sendingconfirm']}}
					{{else}}
						{{$loop163->getItem("description")}}
					{{/if}}
				</p>
			{{/foreach}}
		</div>
	</div>
{{/if}}

{{if  $xml->getItem("/shop/order_edit/@order_number")}}
	<div class="menu_messages_message" id="menu_messages_warning">
		<div class="menu_messages_message_sub">
			<p>{{$txt['106608::order_edit_a']}}{{$xml->getItemEscape("/shop/order_edit/@order_number")}}{{$txt['106608::order_edit_b']}}
				<a href="{{$xml->getItemEscape("/shop/order_edit/@cancel_lik")}}">{{$txt['106608::order_edit_c']}}</a>{{$txt['106608::order_edit_d']}}
			</p>
		</div>
	</div>
{{/if}}

{{if  $xml->getItem("/shop/return_edit/@return_id")}}
	<div class="menu_messages_message" id="menu_messages_warning">
		<div class="menu_messages_message_sub">
			<p>{{$txt['106608::order_edit_z_a']}}{{$xml->getItemEscape("/shop/return_edit/@return_id")}}{{$txt['106608::order_edit_z_b']}}
				<a href="{{$xml->getItemEscape("/shop/return_edit/@cancel_link")}}">{{$txt['106608::order_edit_z_c']}}</a>{{$txt['106608::order_edit_z_d']}}
			</p>
		</div>
	</div>
{{/if}}
