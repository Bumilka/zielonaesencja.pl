
<!--Elementy dodawane dynamicznie (menu_dynamically_added_content, 79549.1)-->
<script>
              loadWS.init({
                'request':"{{$xml->getItem("/shop/page/additional_ajax/@request_uri")|replace:'"': '\"'}}",
                'additional':'{{$xml->getItemEscape("/shop/page/additional_ajax/@additional_ajax")}}'
              })
         </script>

{{if  $xml->getItem("/shop/@menu_dynamically_added_content")}}
{{/if}}
