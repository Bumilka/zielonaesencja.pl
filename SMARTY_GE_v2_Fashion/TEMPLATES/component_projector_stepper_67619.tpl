
<!--Lokalizator (projector_stepper, 67619.8)-->
{{capture name="searchResults_title" assign="searchResults_title"}}
	{{$txt['67619::30024_025search_results']}}
{{/capture}}

{{capture name="client_cards" assign="client_cards"}}
	{{$txt['67619::30024_025cards']}}
{{/capture}}

<div id="breadcrumbs">
	<div xmlns:v="http://rdf.data-vocabulary.org/#" id="breadcrumbs_sub">
		<h3>{{$txt['67619::n55616_1']}}
		</h3>
		<ol>
			<li class="bc-main" typeof="v:Breadcrumb">
				<span>
					<a rel="v:url" property="v:title" href="/">{{$txt['67619::n55616_2']}}</a></span>
			</li>
			{{if  $xml->getItem("page/@type")  == (string) 'main'}}
			{{elseif  $xml->getItem("page/@type")  == (string) 'wishesedit'}}
				<li typeof="v:Breadcrumb" class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
					<span>{{$txt['67619::30024_001']}}</span>
				</li>
			{{elseif  $xml->getItem("page/@type")  == (string) 'basketedit'}}
				<li typeof="v:Breadcrumb" class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
					<span>{{$txt['67619::30024_002']}}</span>
				</li>
			{{elseif  $xml->getItem("page/@type")  == (string) 'blog-list'}}
				{{if  $xml->getItem("page/navigation/bycategories/item[@current='active']")}}
					<li typeof="v:Breadcrumb" class="bc-{{$xml->getItemEscape("page/@type")}}">
						<a rel="v:url" property="v:title" href="/blog-list.php">{{$txt['67619::30024_002blog-list']}}</a>
					</li>
					<li typeof="v:Breadcrumb" class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
						<span>{{$xml->getItemEscape("page/navigation/bycategories/item[@current='active']/@value")}}</span>
					</li>
				{{else}}
					<li typeof="v:Breadcrumb" class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
						<span>{{$txt['67619::30024_002blog-list']}}</span>
					</li>
				{{/if}}
			{{elseif  $xml->getItem("page/@type")  == (string) 'blog-item'}}
				<li typeof="v:Breadcrumb" class="bc-{{$xml->getItemEscape("page/@type")}}">
					<a rel="v:url" property="v:title" href="/blog-list.php">{{$txt['67619::30024_002blog-list']}}</a>
				</li>
				<li typeof="v:Breadcrumb" class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
					<span>{{$xml->getItemEscape("page/blogitem/title/text()")}}</span>
				</li>
			{{elseif  $xml->getItem("page/@type")  == (string) 'opinions-photos'}}
				<li typeof="v:Breadcrumb" class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
					<span>{{$txt['67619::30024_002opinions-photos']}}</span>
				</li>
			{{elseif  $xml->getItem("page/@type")  == (string) 'categories-list'}}
				<li typeof="v:Breadcrumb" class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
					<span>{{$txt['67619::30024_003']}}</span>
				</li>
			{{elseif  $xml->getItem("page/@type")  == (string) 'order-payment'}}
				<li typeof="v:Breadcrumb" class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
					<span>{{$txt['67619::30041_004']}}</span>
				</li>
			{{elseif  $xml->getItem("page/@type")  == (string) 'order-newpayment'}}
				<li typeof="v:Breadcrumb" class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
					<span>{{$txt['67619::30041_005']}}</span>
				</li>
			{{elseif  $xml->getItem("page/@type")  == (string) 'order-wrappers'}}
				<li typeof="v:Breadcrumb" class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
					<span>{{$txt['67619::30041_006']}}</span>
				</li>
			{{elseif  $xml->getItem("page/@type")  == (string) 'news'}}
				<li typeof="v:Breadcrumb" class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
					<span>{{$txt['67619::30041_007']}}</span>
				</li>
				{{if  $xml->getItem("/shop/page/news/title")}}
					<li typeof="v:Breadcrumb" class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
						<span>{{$xml->getItem("/shop/page/news/title")}}</span>
					</li>
				{{/if}}
			{{elseif  $xml->getItem("page/@type")  == (string) 'client-rebates'}}
				<li typeof="v:Breadcrumb" class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
					<span>{{$txt['67619::30041_008_a']}}</span>
				</li>
			{{elseif  $xml->getItem("page/@type")  == (string) 'sitemap'}}
				<li typeof="v:Breadcrumb" class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
					<span>{{$txt['67619::30041_008']}}</span>
				</li>
			{{elseif  $xml->getItem("page/@type")  == (string) 'client-save'}}
				<li typeof="v:Breadcrumb" class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
					<span>{{$txt['67619::30041_009']}}</span>
				</li>
			{{elseif (( $xml->getItem("page/@type")  == (string) 'client-new') and !( $xml->getItem("page/client-data/@register") == (string)'true') and !( $xml->getItem("page/client-data/@edit") == (string)'true'))}}
				<li typeof="v:Breadcrumb" class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
					<span>{{$txt['67619::30041_010']}}</span>
				</li>
			{{elseif (( $xml->getItem("page/@type")  == (string) 'client-new') and ( $xml->getItem("page/client-data/@register") == (string)'true'))}}
				<li typeof="v:Breadcrumb" class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
					<span>{{$txt['67619::30041_010a']}}</span>
				</li>
			{{elseif (( $xml->getItem("page/@type")  == (string) 'client-new') and ( $xml->getItem("page/client-data/@edit") == (string)'true'))}}
				<li typeof="v:Breadcrumb" class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
					<span>{{$txt['67619::30041_010b']}}</span>
				</li>
			{{elseif  $xml->getItem("page/@type")  == (string) 'order-nonstandardized'}}
				<li typeof="v:Breadcrumb" class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
					<span>{{$txt['67619::30041_011_1']}}</span>
				</li>
			{{elseif  $xml->getItem("page/@type")  == (string) 'pickup-sites'}}
				<li typeof="v:Breadcrumb" class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
					<span>{{$txt['67619::30041_011_2']}}</span>
				</li>
			{{elseif  $xml->getItem("page/@type")  == (string) 'contact'}}
				<li typeof="v:Breadcrumb" class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
					<span>{{$txt['67619::30024_011']}}</span>
				</li>
			{{elseif  $xml->getItem("page/@type")  == (string) 'links'}}
				<li typeof="v:Breadcrumb" class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
					<span>{{$txt['67619::30024_012']}}</span>
				</li>
			{{elseif  $xml->getItem("page/@type")  == (string) 'login'}}
				{{if  $xml->getItem("page/login/response/@type")  == (string) 'give login'}}
					<li typeof="v:Breadcrumb" class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
						<span>{{$txt['67619::30024_013']}}</span>
					</li>
				{{/if}}
				{{if !( $xml->getItem("page/login/response/@type")  == (string) 'give login')}}
					{{if  $xml->getItem("/shop/basket/@login")}}
						<li typeof="v:Breadcrumb" class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
							<span>{{$txt['67619::30024_014']}}</span>
						</li>
					{{elseif  $xml->getItem("page/login/response/@type")  == (string) 'no login'}}
						<li typeof="v:Breadcrumb" class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
							<span>{{$txt['67619::30024_015']}}</span>
						</li>
					{{/if}}
				{{/if}}
			{{elseif  $xml->getItem("page/@type")  == (string) 'rma-add'}}
				<li typeof="v:Breadcrumb" class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
					<span>{{$txt['67619::30024_014rma-add']}}</span>
				</li>
			{{elseif  $xml->getItem("page/@type")  == (string) 'rma-list'}}
				<li typeof="v:Breadcrumb" class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
					<span>{{$txt['67619::30024_014rma-list']}}</span>
				</li>
			{{elseif  $xml->getItem("page/@type")  == (string) 'stock'}}
				<li typeof="v:Breadcrumb" class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
					<span>{{$txt['67619::30024_014stock']}}</span>
				</li>
			{{elseif  $xml->getItem("page/@type")  == (string) 'order1'}}
				<li typeof="v:Breadcrumb" class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
					<span>{{$txt['67619::30024_016']}}</span>
				</li>
			{{elseif  $xml->getItem("page/@type")  == (string) 'order2'}}
				<li typeof="v:Breadcrumb" class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
					<span>{{$txt['67619::30024_017']}}</span>
				</li>
			{{elseif  $xml->getItem("page/@type")  == (string) 'prepaid'}}
				<li typeof="v:Breadcrumb" class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
					<span>{{$txt['67619::30024_018']}}</span>
				</li>
			{{elseif  $xml->getItem("page/@type")  == (string) 'producers-list'}}
				<li typeof="v:Breadcrumb" class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
					<span>{{$txt['67619::30024_019']}}</span>
				</li>
			{{elseif  $xml->getItem("page/@type")  == (string) 'searching'}}
				<li typeof="v:Breadcrumb" class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
					<span>{{$txt['67619::30024_020']}}</span>
				</li>
			{{elseif  $xml->getItem("page/@type")  == (string) 'text'}}
				<li typeof="v:Breadcrumb" class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
					<span>{{$xml->getItemEscape("page/text/@name")}}</span>
				</li>
			{{elseif  $xml->getItem("page/@type")  == (string) 'return'}}
				<li typeof="v:Breadcrumb" class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
					<span>{{$txt['67619::30024_021']}}</span>
				</li>
			{{elseif  $xml->getItem("page/@type")  == (string) 'client-orders'}}
				<li typeof="v:Breadcrumb" class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
					<span>{{$txt['67619::30024_022']}}</span>
				</li>
			{{elseif  $xml->getItem("page/@type")  == (string) 'order-open'}}
				<li typeof="v:Breadcrumb" class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
					<span>{{$txt['67619::30024_025b']}}</span>
				</li>
			{{elseif  $xml->getItem("page/@type")  == (string) 'product-compare'}}
				<li typeof="v:Breadcrumb" class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
					<span>{{$txt['67619::30024_025compare']}}</span>
				</li>
			{{elseif  $xml->getItem("page/@type")  == (string) 'return_products'}}
				<li typeof="v:Breadcrumb" class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
					<span>{{$txt['67619::30024_025return']}}</span>
				</li>
			{{elseif  $xml->getItem("page/@type")  == (string) 'client-cards' and $client_cards}}
				<li typeof="v:Breadcrumb" class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
					<span>{{$client_cards}}</span>
				</li>
			{{elseif  $xml->getItem("page/@type")  == (string) 'navigation' or  $xml->getItem("page/@type")  == (string) 'search'}}
				{{if  $xml->getItem("bc/item")}}
					{{foreach from=$xml->getList("bc/item") item=loop250}}
						<li {{assign "classAttributeTmp1" ""}}  typeof="v:Breadcrumb"{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}bc-item-{{$loop250@iteration}}{{/capture}}{{if $loop250@iteration == (string) $loop250@total }}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}bc-active bc-item-{{$loop250@iteration}}{{/capture}}{{/if}}  class="{{$classAttributeTmp1}}">
							{{if !( $loop250@iteration   == (string)  $loop250@total )}}
								<a rel="v:url" property="v:title" href="{{$loop250->getItemEscape("@link")}}">{{$loop250->getItemEscape("@title")}}</a>
							{{else}}
								<span>{{$loop250->getItemEscape("@title")}}</span>
							{{/if}}
						</li>
					{{/foreach}}
				{{else}}
					{{if $searchResults_title}}
						<li typeof="v:Breadcrumb">
							<span>{{$txt['67619::30024_025search_results']}}
								{{if  $xml->getItem("page/search_params/text/@value") and !( $xml->getItem("page/search_params/text/@value") == (string)'')}}
									{{$txt['67619::30024_025search_results_sep']}}{{$xml->getItemEscape("page/search_params/text/@value")}}
								{{/if}}
								</span>
						</li>
					{{/if}}
				{{/if}}
			{{elseif  $xml->getItem("page/@type")  == (string) 'projector'}}
				{{foreach from=$xml->getList("bc/item") item=loop285}}
					<li {{assign "classAttributeTmp2" ""}}  typeof="v:Breadcrumb"{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}category bc-item-{{$loop285@iteration}}{{/capture}}{{if $loop285@iteration == (string) $loop285@total }}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}category bc-active bc-item-{{$loop285@iteration}}{{/capture}}{{/if}}  class="{{$classAttributeTmp2}}">
						<a rel="v:url" property="v:title" class="category" href="{{$loop285->getItemEscape("@link")}}">{{$loop285->getItemEscape("@title")}}</a>
					</li>
				{{/foreach}}
				<li class="bc-active bc-product-name">
					<span>{{$xml->getItemEscape("page/projector/product/name")}}</span>
				</li>
			{{else}}
				<li typeof="v:Breadcrumb" class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
					<span>{{$xml->getItemEscape("page/@type")}}</span>
				</li>
			{{/if}}
		</ol>{{$txt['67619::30024_end']}}
	</div>
</div>