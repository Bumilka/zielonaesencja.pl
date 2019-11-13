
<!--Menu powiadomienia (menu_notice, 63739.1)-->
{{if  $xml->getItem("/shop/order_edit/@order_number")}}
	{{if  $xml->getItem("/shop/action_alert") or  $xml->getItem("/shop/page/projector/product/exchange/@exchange_id") or ( $xml->getItem("/shop/page/@type")  == (string) 'order2') or ( $xml->getItem("/shop/page/@type")  == (string) 'order-wrappers')}}
		<div id="menu_preloader">
			{{if  $xml->getItem("/shop/action_alert/@type")  == (string) 'order_edit'}}
				<div id="menu_notice">
					<h2>{{$txt['63739::menu_notice_1']}}
					</h2>
					<strong>{{$txt['63739::menu_notice_order_edit']}}</strong>
					<div class="menu_notice_button">
						<button onclick="$('#dialog_close').click();" class="btn-small menu_notice_button">{{$txt['63739::menu_notice_order_edit_button']}}
						</button>
					</div>
					<div class="clearboth">
					</div>
				</div>
			{{elseif  $xml->getItem("/shop/action_alert/@type")  == (string) 'order_edit_auction'}}
				<div id="menu_notice">
					<h2>{{$txt['63739::order_edit_auction_1']}}
					</h2>
					<strong>{{$txt['63739::menu_notice_order_edit_auction']}}</strong>
					<div class="menu_notice_button">
						<button onclick="$('#dialog_close').click();" class="btn-small menu_notice_button">{{$txt['63739::menu_notice_order_edit_auction_button']}}
						</button>
					</div>
					<div class="clearboth">
					</div>
				</div>
			{{elseif  $xml->getItem("/shop/action_alert/@type")  == (string) 'order1'}}
				<div id="menu_notice">
					<h2>{{$txt['63739::order_order1_1']}}
					</h2>
					<strong>{{$txt['63739::menu_notice_order1']}}</strong>
					<div class="menu_notice_button">
						<button onclick="$('#dialog_close').click();" class="btn-small menu_notice_button">{{$txt['63739::menu_notice_order_order1_button']}}
						</button>
					</div>
					<div class="clearboth">
					</div>
				</div>
			{{elseif  $xml->getItem("/shop/page/@type")  == (string) 'order2'}}
				<div id="menu_notice">
					<h2>{{$txt['63739::order_order2_1']}}
					</h2>
					<strong>{{$txt['63739::menu_notice_order2']}}</strong>
					<div class="menu_notice_button">
						<button onclick="$('#dialog_close').click();" class="btn-small menu_notice_button">{{$txt['63739::menu_notice_order_order2_button']}}
						</button>
					</div>
					<div class="clearboth">
					</div>
				</div>
			{{elseif  $xml->getItem("/shop/page/@type")  == (string) 'order-wrappers'}}
				<div id="menu_notice">
					<h2>{{$txt['63739::order_order-wrappers_1']}}
					</h2>
					<strong>{{$txt['63739::menu_notice_order-wrappers']}}</strong>
					<div class="menu_notice_button">
						<button onclick="$('#dialog_close').click();" class="btn-small menu_notice_button">{{$txt['63739::menu_notice_order_order-wrappers_button']}}
						</button>
					</div>
					<div class="clearboth">
					</div>
				</div>
			{{elseif  $xml->getItem("/shop/action_alert/@type")  == (string) 'add_basket'}}
				<div id="menu_notice">
					<h2>{{$txt['63739::order_add_basket_1']}}
					</h2>
					<strong>{{$txt['63739::menu_notice_add_basket']}}</strong>
					<div class="menu_notice_button">
						<button onclick="$('#dialog_close').click();" class="btn-small menu_notice_button">{{$txt['63739::menu_notice_order_add_basket_button']}}
						</button>
					</div>
					<div class="clearboth">
					</div>
				</div>
			{{elseif  $xml->getItem("/shop/action_alert/@type")  == (string) 'change_basket'}}
				<div id="menu_notice">
					<h2>{{$txt['63739::order_change_basket_1']}}
					</h2>
					<strong>{{$txt['63739::menu_notice_change_basket']}}</strong>
					<div class="menu_notice_button">
						<button onclick="$('#dialog_close').click();" class="btn-small menu_notice_button">{{$txt['63739::menu_notice_order_change_basket_button']}}
						</button>
					</div>
					<div class="clearboth">
					</div>
				</div>
			{{elseif  $xml->getItem("page/projector/product/exchange/@exchange_id")}}
				<div id="menu_notice">
					<h2>{{$txt['63739::order_projctor_1']}}
					</h2>
					<strong>{{$txt['63739::menu_notice_projctor']}}</strong>
					<div class="menu_notice_button">
						<button onclick="$('#dialog_close').click();" class="btn-small menu_notice_button">{{$txt['63739::menu_notice_order_projctor_button']}}
						</button>
					</div>
					<div class="clearboth">
					</div>
				</div>
			{{/if}}
			<script>
                   $(function(){
                 $('#menu_notice').dialog({'wrappContent':'true'});
                })
            			</script>

		</div>
	{{/if}}
{{/if}}

{{if  $xml->getItem("/shop/page[@type='prepaid']")}}
	<div id="menu_preloader">
		<div id="menu_notice">
			<h2>{{$txt['63739::order_prepaid_1']}}
			</h2>
			<strong>{{$txt['63739::menu_notice_prepaid']}}</strong>
			<div class="menu_notice_button">
				<button {{assign "classAttributeTmp1" ""}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}prepaid_cancel{{/capture}} onclick="$('#dialog_close').click();"{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}btn-small prepaid_cancel{{/capture}}  class="{{$classAttributeTmp1}}">{{$txt['63739::menu_notice_prepaid_button1']}}
				</button>
				<button {{assign "classAttributeTmp2" ""}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}prepaid_confirm{{/capture}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}btn-small prepaid_confirm{{/capture}}  class="{{$classAttributeTmp2}}">{{$txt['63739::menu_notice_prepaid_button2']}}
				</button>
			</div>
			<div class="clearboth">
			</div>
		</div>
	</div>
	<script>
        $('a.orderdetails_info_cancel').removeAttr('onclick');
        $('a.orderdetails_info_cancel').click(function(){
               thisHref = $(this).attr('href');
               $('#menu_notice strong').html(txt_orderdetails_info_message);
               $('#menu_notice').dialog({'wrappContent':'true'});
               $('#menu_notice button.prepaid_confirm').click(function(){
                    self.location.href = thisHref;
               })
        return false; 
        })
    	</script>

{{/if}}
