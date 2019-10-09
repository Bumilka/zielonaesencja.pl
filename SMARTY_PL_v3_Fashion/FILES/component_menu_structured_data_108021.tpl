
<!--Structured data markup (menu_structured_data, 108021.1)-->
{{capture name="menu_structured_data_hurt" assign="menu_structured_data_hurt"}}
	{{$txt['108021::menu_structured_data_hurt']}}
{{/capture}}

{{capture name="curr_url" assign="curr_url"}}
	{{$xml->getItemEscape("/shop/@currurl")}}
{{/capture}}

{{capture name="url_length" assign="url_length"}}
	{{$xml->getItemEscape("string-length($curr_url)")}}
{{/capture}}

{{capture name="productLink" assign="productLink"}}
	{{$xml->getItemEscape("substring-after(/shop/page/projector/product/@link, '/')")}}
{{/capture}}

{{if  $xml->getItem("page/@type")  == (string) 'navigation' or  $xml->getItem("page/@type")  == (string) 'search' or  $xml->getItem("page/@type")  == (string) 'projector' or  $xml->getItem("page/@type")  == (string) 'main'}}
	<script type="application/ld+json">
        {
        "@context": "http://schema.org",
        "@type": "Organization",
        "url": "{{$xml->getItemEscape("/shop/@currurl")}}",
        "logo": "{{$xml->getItemEscape("substring($curr_url,1,($url_length - 1))")}}{{$xml->getItemEscape("/shop/mask/top/link/image/@src")}}"
        }
      	</script>

{{/if}}

{{if  $xml->getItem("bc/item") and ( $xml->getItem("page/@type")  == (string) 'navigation' or  $xml->getItem("page/@type")  == (string) 'search' or  $xml->getItem("page/@type")  == (string) 'projector')}}
	<script type="application/ld+json">
        {
            "@context": "http://schema.org",
            "@type": "BreadcrumbList",
            "itemListElement": [
{{foreach from=$xml->getList("bc/item") item=loop22}}{{if !( $loop22@iteration   == (string) 1)}},{{/if}}
            {
            "@type": "ListItem",
            "position": {{$loop22@iteration}},
            "item": {
            "@id": "{{$loop22->getItemEscape("substring($curr_url,1,($url_length - 1))")}}{{$loop22->getItemEscape("@link")}}",
            "name": "{{$loop22->getItemEscape("@title")}}"
            }
            }
{{/foreach}}
]
        }
    	</script>

{{/if}}

<script type="application/ld+json">
      {
      "@context": "http://schema.org",
      "@type": "WebSite",
      {{if  $xml->getItem("/shop/@shopname")}}"name":"{{$xml->getItemEscape("/shop/@shopname")}}",{{/if}}{{if  $xml->getItem("/shop/@shopshortname")}}"alternateName": "{{$xml->getItemEscape("/shop/@shopshortname")}}",{{/if}}
      "url": "{{$xml->getItemEscape("/shop/@currurl")}}",
      "potentialAction": {
      "@type": "SearchAction",
      "target": "{{$xml->getItemEscape("/shop/@currurl")}}search.php?text={search_term_string}",
      "query-input": "required name=search_term_string"
      }
      }
    </script>

{{if  $xml->getItem("page[@type='projector']")}}
	<script type="application/ld+json">
      {
      "@context": "http://schema.org",
      "@type": "Product",
      {{if  $xml->getItem("page/projector/comments/opinions/opinion")}}
        "aggregateRating": {
        "@type": "AggregateRating",
        "ratingValue": "{{$xml->getItem("page/projector/comments/@avg")}} ",
        "reviewCount": "{{$xml->getItemEscape("page/projector/comments/@all")}}"
        },
      {{/if}}
      "description": "{{$xml->getItem("page/projector/product/cleardescription")|replace:'"': '\"'}}",
      "name": "{{$xml->getItem("/shop/page/projector/product/name")|replace:'"': '\"'}}",
      "productID": "mpn:{{$xml->getItemEscape("page/projector/product/@code")}}",
      "brand": "{{$xml->getItem("page/projector/product/firm/@name")|replace:'"': '\"'}}",
      "image": "{{if !( $xml->getItem("contains(/shop/page/projector/product/enclosures/images/enclosure/@url, 'http')"))}}{{$xml->getItemEscape("substring($curr_url,1,($url_length - 1))")}}{{/if}}{{$xml->getItem("/shop/page/projector/product/enclosures/images/enclosure/@url")}}"
      {{if (( $xml->getItem("/shop/page/projector/product/versions/version[@id = /shop/page/projector/product/@id]/size/price/@value")  neq (string) 0 or  $xml->getItem("/shop/basket/@wholesaler")  == (string) 'true') and $menu_structured_data_hurt  neq (string) '') or !($menu_structured_data_hurt  neq (string) '')}},
        "offers": [
{{foreach from=$xml->getList("page/projector/product/sizes/size") item=loop71}}{{if !( $loop71@iteration   == (string) 1)}},{{/if}}
            {
            "@type": "Offer",
            "availability": "{{if  $loop71->getItem("availability[(@status = 'enable') or (@status = 'order')]")}}http://schema.org/InStock{{else}}http://schema.org/OutOfStock{{/if}}",
            "price": "{{$loop71->getItemEscape("price/@value")}}",
            "priceCurrency": "{{$loop71->getItemEscape("/shop/currency/@id")}}",
            "eligibleQuantity": {
            "value":  "{{$loop71->getItemEscape("/shop/page/projector/product/sizes/@unit_sellby")}}",
            "unitCode": "{{$loop71->getItemEscape("/shop/page/projector/product/sizes/@unit_single")}}",
            "@type": [
            "QuantitativeValue"
            ]
            },
            "url": "{{$loop71->getItemEscape("substring($curr_url,1,($url_length - 1))")}}{{$loop71->getItemEscape("/shop/page/projector/product/@link")}}?selected_size={{$loop71->getItemEscape("@type")}}"
            }
{{/foreach}}
        ]{{/if}}{{if  $xml->getItem("page/projector/comments/opinions/opinion")}},
          "review": [
{{foreach from=$xml->getList("page/projector/comments/opinions/opinion") item=loop94}}{{if !( $loop94@iteration   == (string) 1)}},{{/if}}
            {
            "@type": "Review",
            "author": "{{$loop94->getItemEscape("@client")}}",
            "description": "{{$loop94->getItem(".")|replace:'"': '\"'}}",
            "reviewRating": {
            "@type": "Rating",
            "bestRating": "5",
            "ratingValue": "{{$loop94->getItemEscape("round(@note)")}}",
            "worstRating": "1"
            }
            }
{{/foreach}}
          ]
        {{/if}}
        }
      	</script>

{{/if}}

{{if  $xml->getItem("page/@type")  == (string) 'blog-item'}}
	<script type="application/ld+json">
        {
        "@context": "http://schema.org",
        "@type": "NewsArticle",
        "headline": "{{$xml->getItem("/shop/page/blogitem/title/text()")}}",
        "mainEntityOfPage": "{{$xml->getItem("/shop/page/blogitem/link/@href")}}",
        "datePublished": "{{$xml->getItem("/shop/page/blogitem/date/text()")}}",
        "dateModified": "{{$xml->getItem("/shop/page/blogitem/date/text()")}}",
        "image": {
        "@type":"ImageObject",
        "url":"{{$xml->getItemEscape("substring($curr_url,1,($url_length - 1))")}}{{$xml->getItem("/shop/page/blogitem/image/@src")}}",
        "width":"{{$xml->getItem("/shop/page/blogitem/image/@width")}}",
        "height":"{{$xml->getItem("/shop/page/blogitem/image/@height")}}"
        },
        "description": "{{$xml->getItem("/shop/page/blogitem/description/text()")}}",
        "author":{
        "@type": "Organization",
        "name":"{{$xml->getItemEscape("/shop/contact/owner/@shopshortname")}}"
        },
        "publisher":{
        "@type": "Organization",
        "name": "{{$xml->getItemEscape("/shop/contact/owner/@shopshortname")}}",
        "logo": {
        "@type":"ImageObject",
        "url":"{{$xml->getItemEscape("substring($curr_url,1,($url_length - 1))")}}{{$xml->getItemEscape("/shop/mask/top/link/image/@src")}}",
        "width":"{{$xml->getItemEscape("/shop/mask/top/link/image/@width")}}",
        "height":"{{$xml->getItemEscape("/shop/mask/top/link/image/@height")}}"
        }
        }
        }
      	</script>

{{/if}}
