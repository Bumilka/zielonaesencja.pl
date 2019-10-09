
<!--Javascript (menu_javascript, 107349.1)-->{{$txt['107349::00001']}}
<script type="text/javascript" class="ajaxLoad">{{if (  $xml->getItem("page/@type")  == (string) 'basketedit') or (  $xml->getItem("page/@type") == (string)'login' and  $xml->getItem("page/login/onceorder/@display") == (string)'y') or (( $xml->getItem("page/@type")  == (string) 'client-new') and !( $xml->getItem("page/client-data/@edit")  == (string) 'true') and ( $xml->getItem("page/client-data/@afterlogin")  == (string) 'order')) or (  $xml->getItem("page/@type")  == (string) 'order1') or (  $xml->getItem("page/@type")  == (string) 'order-nonstandardized') or (  $xml->getItem("page/@type")  == (string) 'pickup-sites') or (  $xml->getItem("page/@type")  == (string) 'order2') or (  $xml->getItem("page/@type")  == (string) 'client-save') or (  $xml->getItem("page/@type")  == (string) 'prepaid') or (  $xml->getItem("page/@type")  == (string) 'order-payment') or (  $xml->getItem("page/@type")  == (string) 'order-newpayment') or (  $xml->getItem("page/@type")  == (string) 'rma_products' ) or (  $xml->getItem("page/@type")  == (string) 'return_products' ) or ( $xml->getItem("page/@type")  == (string) 'client-orders') or ( $xml->getItem("page/@type")  == (string) 'rma-add')}}
                   document.getElementsByTagName('html')[0].className += ' cop_site';
                {{/if}}{{if  $xml->getItem("/shop/action_alert/@type")}}
                    document.getElementsByTagName('html')[0].className += "{{$xml->getItemEscape("/shop/action_alert/@type")}}";
                {{/if}}
                app_shop.vars.vat_registered = "{{$xml->getItemEscape("/shop/contact/owner/@vat_registered")}}";
                app_shop.vars.currency_format = "{{$xml->getItemEscape("/shop/currency/option[@selected='true']/@currency_format")}}";
                {{if  $xml->getItem("/shop/currency/option[@selected='true']/@currency_before_value")}}
                    app_shop.vars.currency_before_value = {{$xml->getItemEscape("/shop/currency/option[@selected='true']/@currency_before_value")}};
                {{/if}}{{if  $xml->getItem("/shop/currency/option[@selected='true']/@currency_space")}}
                    app_shop.vars.currency_space = {{$xml->getItemEscape("/shop/currency/option[@selected='true']/@currency_space")}};
                {{/if}}
                app_shop.vars.symbol = "{{$xml->getItemEscape("/shop/currency/option[@selected='true']/@symbol")}}";
                app_shop.vars.id= "{{$xml->getItemEscape("/shop/currency/option[@selected='true']/@id")}}";
                app_shop.vars.baseurl = "{{$xml->getItemEscape("/shop/@baseurl")}}";
                app_shop.vars.sslurl= "{{$xml->getItemEscape("/shop/@sslurl")}}";
                app_shop.vars.curr_url= "{{$xml->getItemEscape("/shop/navigation/current/@curr_url")}}";
                {{if  $xml->getItem("/shop/basket/@login")}}
                    app_shop.vars.logged = 1;
                {{/if}}
                var currency_decimal_separator = '{{$xml->getItemEscape("/shop/currency/option[@selected='true']/@currency_decimal_separator")}}';
                var currency_grouping_separator = '{{$xml->getItemEscape("/shop/currency/option[@selected='true']/@currency_grouping_separator")}}';
                {{if  $xml->getItem("/shop/form_data/upload_file/blacklist_extension/param")}}
                    app_shop.vars.blacklist_extension = [
{{foreach from=$xml->getList("/shop/form_data/upload_file/blacklist_extension/param") item=loop30}}{{if !( $loop30@iteration  == (string)1)}},{{/if}}"{{$loop30->getItemEscape("@type")}}"
{{/foreach}}
];
                {{/if}}{{if  $xml->getItem("/shop/form_data/upload_file/blacklist_mime/param")}}
                    app_shop.vars.blacklist_mime = [
{{foreach from=$xml->getList("/shop/form_data/upload_file/blacklist_mime/param") item=loop36}}{{if !( $loop36@iteration  == (string)1)}},{{/if}}"{{$loop36->getItemEscape("@type")}}"
{{/foreach}}
];
                {{/if}}{{if  $xml->getItem("/shop/contact/link/@url")}}
                    app_shop.urls.contact = "{{$xml->getItemEscape("/shop/contact/link/@url")}}";
                {{/if}}</script>

<div id="viewType" style="display:none">
</div>