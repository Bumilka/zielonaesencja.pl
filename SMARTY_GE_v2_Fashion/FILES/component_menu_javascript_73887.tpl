
<!--Javascript (menu_javascript, 73887.2)-->{{$txt['73887::00001']}}
<script type="text/javascript">{{if (  $xml->getItem("page/@type")  == (string) 'basketedit') or (  $xml->getItem("page/@type") == (string)'login' and  $xml->getItem("page/login/onceorder/@display") == (string)'y') or (( $xml->getItem("page/@type")  == (string) 'client-new') and !( $xml->getItem("page/client-data/@edit")  == (string) 'true') and ( $xml->getItem("page/client-data/@afterlogin")  == (string) 'order')) or (  $xml->getItem("page/@type")  == (string) 'order1') or (  $xml->getItem("page/@type")  == (string) 'order-nonstandardized') or (  $xml->getItem("page/@type")  == (string) 'pickup-sites') or (  $xml->getItem("page/@type")  == (string) 'order2') or (  $xml->getItem("page/@type")  == (string) 'client-save') or (  $xml->getItem("page/@type")  == (string) 'prepaid') or (  $xml->getItem("page/@type")  == (string) 'order-payment') or (  $xml->getItem("page/@type")  == (string) 'order-newpayment')}}
$('html').addClass('cop_site');
{{/if}} 
app_shop.vars.currency_format = "{{$xml->getItemEscape("/shop/currency/option[@selected='true']/@currency_format")}}";
app_shop.vars.currency_before_value = {{$xml->getItemEscape("/shop/currency/option[@selected='true']/@currency_before_value")}};
app_shop.vars.currency_space = {{$xml->getItemEscape("/shop/currency/option[@selected='true']/@currency_space")}};
app_shop.vars.symbol = "{{$xml->getItemEscape("/shop/currency/option[@selected='true']/@symbol")}}";
app_shop.vars.rate_accurate = [];
{{foreach from=$xml->getList("/shop/currency/option") item=loop12}}{{if  $loop12->getItem("@rate_accurate")}}
        app_shop.vars.rate_accurate['{{$loop12->getItemEscape("@id")}}'] = "{{$loop12->getItemEscape("@rate_accurate")}}";
    {{/if}}{{/foreach}}
var currency_decimal_separator = '{{$xml->getItemEscape("/shop/currency/option[@selected='true']/@currency_decimal_separator")}}';
var currency_grouping_separator = '{{$xml->getItemEscape("/shop/currency/option[@selected='true']/@currency_grouping_separator")}}';
{{if  $xml->getItem("/shop/form_data/upload_file/blacklist_extension/param")}}
app_shop.vars.blacklist_extension = [
{{foreach from=$xml->getList("/shop/form_data/upload_file/blacklist_extension/param") item=loop21}}{{if !( $loop21@iteration  == (string)1)}},{{/if}}"{{$loop21->getItemEscape("@type")}}"
{{/foreach}}
];
{{/if}}{{if  $xml->getItem("/shop/form_data/upload_file/blacklist_mime/param")}}
app_shop.vars.blacklist_mime = [
{{foreach from=$xml->getList("/shop/form_data/upload_file/blacklist_mime/param") item=loop27}}{{if !( $loop27@iteration  == (string)1)}},{{/if}}"{{$loop27->getItemEscape("@type")}}"
{{/foreach}}
];
{{/if}}{{if  $xml->getItem("/shop/action_alert[@type='add_basket']")}}$('body').addClass('action_add_basket');{{/if}}{{if  $xml->getItem("/shop/action_alert[@type='remove_basket']")}}$('body').addClass('action_remove_basket');{{/if}}{{if  $xml->getItem("/shop/action_alert[@type='add_wishes']")}}$('body').addClass('action_add_wishes');{{/if}}{{if  $xml->getItem("/shop/action_alert[@type='remove_wishes']")}}$('body').addClass('action_remove_wishes');{{/if}}{{if  $xml->getItem("/shop/action_alert[@type='add_comparers']")}}$('body').addClass('action_add_comparers');{{/if}}{{if  $xml->getItem("/shop/action_alert[@type='remove_comparers']")}}$('body').addClass('action_remove_comparers');{{/if}}</script>

<div id="viewType" style="display:none">
</div>