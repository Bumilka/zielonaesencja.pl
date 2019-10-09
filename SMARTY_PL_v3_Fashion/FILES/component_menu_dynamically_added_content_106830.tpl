
<!--Elementy dodawane dynamicznie (menu_dynamically_added_content, 106830.1)-->
<script>
                app_shop.vars.request_uri = "{{$xml->getItem("/shop/page/additional_ajax/@request_uri")|replace:'"': '\"'}}"
                app_shop.vars.additional_ajax = '{{$xml->getItemEscape("/shop/page/additional_ajax/@additional_ajax")}}'
            </script>

{{if  $xml->getItem("/shop/@menu_dynamically_added_content")}}
{{/if}}
