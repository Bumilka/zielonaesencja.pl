
<!--Lokalizator (projector_stepper, 106590.1)-->
{{capture name="searchResults_title" assign="searchResults_title"}}
	{{$txt['106590::30024_025search_results']}}
{{/capture}}

{{capture name="breadcrumbs_label" assign="breadcrumbs_label"}}
	{{$txt['106590::n55616_1']}}
{{/capture}}

<div class="breadcrumbs col-md-12">
	<div {{assign "classAttributeTmp1" ""}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}back_button{{/capture}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}{{$txt['106590::n55616_1_class']}}{{/capture}}  class="{{$classAttributeTmp1}}">
		<button id="back_button">{{$txt['106590::n55616_1_back']}}
		</button>
	</div>
	<div class="list_wrapper">
		<ol>
			{{if $breadcrumbs_label}}
				<li>
					<span>{{$breadcrumbs_label}}</span>
				</li>
			{{/if}}
			<li class="bc-main">
				<span>
					<a href="/">{{$txt['106590::n55616_2']}}</a></span>
			</li>
			{{if  $xml->getItem("page/@type")  == (string) 'main'}}
			{{elseif  $xml->getItem("page/@type")  == (string) 'wishesedit'}}
				<li class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
					<span>{{$txt['106590::30024_001']}}</span>
				</li>
			{{elseif  $xml->getItem("page/@type")  == (string) 'basketedit'}}
				<li class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
					<span>{{$txt['106590::30024_002']}}</span>
				</li>
			{{elseif  $xml->getItem("page/@type")  == (string) 'product-stocks'}}
				<li class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
					<span>{{$txt['106590::30024_025product_stocks']}}</span>
				</li>
			{{elseif  $xml->getItem("page/@type")  == (string) 'blog-list'}}
				{{if  $xml->getItem("page/navigation/bycategories/item[@current='active']")}}
					<li class="bc-{{$xml->getItemEscape("page/@type")}}">
						<a {{assign "hrefAttributeTmp4" ""}}{{capture name="hrefAttributeTmp4" assign="hrefAttributeTmp4"}}/blog-list.php{{/capture}}{{if $xml->getItem("/shop/action/blogList/@url")}}{{capture name="hrefAttributeTmp4" assign="hrefAttributeTmp4"}}{{$xml->getItemEscape("/shop/action/blogList/@url")}}{{/capture}}{{/if}}  href="{{$hrefAttributeTmp4}}">{{$txt['106590::30024_002blog-list']}}</a>
					</li>
					<li class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
						<span>{{$xml->getItemEscape("page/navigation/bycategories/item[@current='active']/@value")}}</span>
					</li>
				{{else}}
					<li class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
						<span>{{$txt['106590::30024_002blog-list']}}</span>
					</li>
				{{/if}}
			{{elseif  $xml->getItem("page/@type")  == (string) 'blog-item'}}
				<li class="bc-{{$xml->getItemEscape("page/@type")}}">
					<a {{assign "hrefAttributeTmp4" ""}}{{capture name="hrefAttributeTmp4" assign="hrefAttributeTmp4"}}/blog-list.php{{/capture}}{{if $xml->getItem("/shop/action/blogList/@url")}}{{capture name="hrefAttributeTmp4" assign="hrefAttributeTmp4"}}{{$xml->getItemEscape("/shop/action/blogList/@url")}}{{/capture}}{{/if}}  href="{{$hrefAttributeTmp4}}">{{$txt['106590::30024_002blog-list']}}</a>
				</li>
				<li class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
					<span>{{$xml->getItemEscape("page/blogitem/title/text()")}}</span>
				</li>
			{{elseif  $xml->getItem("page/@type")  == (string) 'opinions-photos'}}
				<li class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
					<span>{{$txt['106590::30024_002opinions-photos']}}</span>
				</li>
			{{elseif  $xml->getItem("page/@type")  == (string) 'opinions-shop'}}
				<li class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
					<span>{{$txt['106590::30024_002opinions-shop']}}</span>
				</li>
			{{elseif  $xml->getItem("page/@type")  == (string) 'categories-list'}}
				<li class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
					<span>{{$txt['106590::30024_003']}}</span>
				</li>
			{{elseif  $xml->getItem("page/@type")  == (string) 'order-payment'}}
				<li class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
					<span>{{$txt['106590::30041_004']}}</span>
				</li>
			{{elseif  $xml->getItem("page/@type")  == (string) 'order-newpayment'}}
				<li class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
					<span>{{$txt['106590::30041_005']}}</span>
				</li>
			{{elseif  $xml->getItem("page/@type")  == (string) 'order-wrappers'}}
				<li class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
					<span>{{$txt['106590::30041_006']}}</span>
				</li>
			{{elseif  $xml->getItem("page/@type")  == (string) 'news'}}
				{{if  $xml->getItem("/shop/page/news/title")}}
					<li class="bc-{{$xml->getItemEscape("page/@type")}}">
						<a href="/news.php">{{$txt['106590::30041_007']}}</a>
					</li>
					<li class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
						<span>{{$xml->getItem("/shop/page/news/title")}}</span>
					</li>
				{{else}}
					<li class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
						<span>{{$txt['106590::30041_007']}}</span>
					</li>
				{{/if}}
			{{elseif  $xml->getItem("page/@type")  == (string) 'client-rebates'}}
				<li class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
					<span>{{$txt['106590::30041_008_a']}}</span>
				</li>
			{{elseif  $xml->getItem("page/@type")  == (string) 'sitemap'}}
				<li class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
					<span>{{$txt['106590::30041_008']}}</span>
				</li>
			{{elseif  $xml->getItem("page/@type")  == (string) 'client-save'}}
				<li class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
					<span>{{$txt['106590::30041_009']}}</span>
				</li>
			{{elseif (( $xml->getItem("page/@type")  == (string) 'client-new') and !( $xml->getItem("page/client-data/@register") == (string)'true') and !( $xml->getItem("page/client-data/@edit") == (string)'true'))}}
				<li class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
					<span>{{$txt['106590::30041_010']}}</span>
				</li>
			{{elseif (( $xml->getItem("page/@type")  == (string) 'client-new') and ( $xml->getItem("page/client-data/@register") == (string)'true'))}}
				<li class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
					<span>{{$txt['106590::30041_010a']}}</span>
				</li>
			{{elseif (( $xml->getItem("page/@type")  == (string) 'client-new') and ( $xml->getItem("page/client-data/@edit") == (string)'true'))}}
				<li class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
					<span>{{$txt['106590::30041_010b']}}</span>
				</li>
			{{elseif  $xml->getItem("page/@type")  == (string) 'order-nonstandardized'}}
				<li class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
					<span>{{$txt['106590::30041_011_1']}}</span>
				</li>
			{{elseif  $xml->getItem("page/@type")  == (string) 'pickup-sites'}}
				<li class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
					<span>{{$txt['106590::30041_011_2']}}</span>
				</li>
			{{elseif  $xml->getItem("page/@type")  == (string) 'contact'}}
				<li class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
					<span>{{$txt['106590::30024_011']}}</span>
				</li>
			{{elseif  $xml->getItem("page/@type")  == (string) 'links'}}
				<li class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
					<span>{{$txt['106590::30024_012']}}</span>
				</li>
			{{elseif  $xml->getItem("page/@type")  == (string) 'login'}}
				{{if  $xml->getItem("page/login/response/@type")  == (string) 'give login'}}
					<li class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
						<span>{{$txt['106590::30024_013']}}</span>
					</li>
				{{/if}}
				{{if !( $xml->getItem("page/login/response/@type")  == (string) 'give login')}}
					{{if  $xml->getItem("/shop/basket/@login")}}
						<li class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
							<span>{{$txt['106590::30024_014']}}</span>
						</li>
					{{elseif  $xml->getItem("page/login/response/@type")  == (string) 'no login'}}
						<li class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
							<span>{{$txt['106590::30024_015']}}</span>
						</li>
					{{/if}}
				{{/if}}
			{{elseif  $xml->getItem("page/@type")  == (string) 'rma-add'}}
				<li class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
					<span>{{$txt['106590::30024_014rma-add']}}</span>
				</li>
			{{elseif  $xml->getItem("page/@type")  == (string) 'rma_products'}}
				{{if  $xml->getItem("page/@display")  == (string) 'confirmation'}}
					<li class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
						<span>{{$txt['106590::30024_014rma-confirmation']}}</span>
					</li>
				{{elseif  $xml->getItem("page/@display")  == (string) 'details'}}
					<li class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
						<span>{{$txt['106590::30024_014rma-details']}}</span>
					</li>
				{{elseif  $xml->getItem("page/@display")  == (string) 'add'}}
					<li class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
						<span>{{$txt['106590::30024_014rma-products']}}</span>
					</li>
				{{elseif  $xml->getItem("page/@display")  == (string) 'stock'}}
					<li class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
						<span>{{$txt['106590::30024_014rma-stock']}}</span>
					</li>
				{{/if}}
			{{elseif  $xml->getItem("page/@type")  == (string) 'rma-list'}}
				<li class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
					<span>{{$txt['106590::30024_014rma-list']}}</span>
				</li>
			{{elseif  $xml->getItem("page/@type")  == (string) 'stock'}}
				<li class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
					<span>{{$txt['106590::30024_014stock']}}</span>
				</li>
			{{elseif  $xml->getItem("page/@type")  == (string) 'order1'}}
				<li class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
					<span>{{$txt['106590::30024_016']}}</span>
				</li>
			{{elseif  $xml->getItem("page/@type")  == (string) 'order2'}}
				<li class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
					<span>{{$txt['106590::30024_017']}}</span>
				</li>
			{{elseif  $xml->getItem("page/@type")  == (string) 'prepaid'}}
				<li class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
					<span>{{$txt['106590::30024_018']}}</span>
				</li>
			{{elseif  $xml->getItem("page/@type")  == (string) 'producers-list'}}
				<li class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
					<span>{{$txt['106590::30024_019']}}</span>
				</li>
			{{elseif  $xml->getItem("page/@type")  == (string) 'searching'}}
				<li class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
					<span>{{$txt['106590::30024_020']}}</span>
				</li>
			{{elseif  $xml->getItem("page/@type")  == (string) 'text'}}
				<li class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
					<span>{{$xml->getItemEscape("page/text/@name")}}</span>
				</li>
			{{elseif  $xml->getItem("page/@type")  == (string) 'return'}}
				<li class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
					<span>{{$txt['106590::30024_021']}}</span>
				</li>
			{{elseif  $xml->getItem("page/@type")  == (string) 'client-orders'}}
				<li class="bc-active bc-login">
					<a href="{{$xml->getItemEscape("/shop/action/login/@url")}}">{{$txt['106590::30024_014']}}</a>
				</li>
				<li class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
					<span>{{$txt['106590::30024_022']}}</span>
				</li>
			{{elseif  $xml->getItem("page/@type")  == (string) 'order-open'}}
				<li class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
					<span>{{$txt['106590::30024_025b']}}</span>
				</li>
			{{elseif  $xml->getItem("page/@type")  == (string) 'product-compare'}}
				<li class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
					<span>{{$txt['106590::30024_025compare']}}</span>
				</li>
			{{elseif  $xml->getItem("page/@type")  == (string) 'products-bought'}}
				<li class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
					<span>{{$txt['106590::30024_025bought']}}</span>
				</li>
			{{elseif  $xml->getItem("page/@type")  == (string) 'return_products'}}
				<li class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
					<span>{{$txt['106590::30024_025return']}}</span>
				</li>
			{{elseif  $xml->getItem("page/@type")  == (string) 'client-cards'}}
				<li class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
					<span>
						{{capture name="client_cards" assign="client_cards"}}
							{{$txt['106590::30024_025cards']}}
						{{/capture}}
						</span>
				</li>
			{{elseif  $xml->getItem("page/@type")  == (string) 'navigation' or  $xml->getItem("page/@type")  == (string) 'search'}}
				{{if  $xml->getItem("bc/item")}}
					{{foreach from=$xml->getList("bc/item") item=loop298}}
						<li {{assign "classAttributeTmp2" ""}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}bc-item-{{$loop298@iteration}}{{/capture}}{{if $loop298@iteration == (string) $loop298@total }}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}bc-active bc-item-{{$loop298@iteration}}{{/capture}}{{/if}}  class="{{$classAttributeTmp2}}">
							{{if !( $loop298@iteration   == (string)  $loop298@total )}}
								<a href="{{$loop298->getItemEscape("@link")}}">{{$loop298->getItemEscape("@title")}}</a>
							{{else}}
								<span>{{$loop298->getItemEscape("@title")}}</span>
							{{/if}}
						</li>
					{{/foreach}}
				{{else}}
					{{if $searchResults_title}}
						<li>
							<span>{{$searchResults_title}}
								{{if  $xml->getItem("page/search_params/text/@value") and !( $xml->getItem("page/search_params/text/@value") == (string)'')}}
									{{$txt['106590::30024_025search_results_sep']}}{{$xml->getItemEscape("page/search_params/text/@value")}}
								{{/if}}
								</span>
						</li>
					{{/if}}
				{{/if}}
			{{elseif  $xml->getItem("page/@type")  == (string) 'projector'}}
				{{foreach from=$xml->getList("bc/item") item=loop331}}
					<li {{assign "classAttributeTmp3" ""}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}category bc-item-{{$loop331@iteration}}{{/capture}}{{if $loop331@iteration == (string) $loop331@total }}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}category bc-active bc-item-{{$loop331@iteration}}{{/capture}}{{/if}}  class="{{$classAttributeTmp3}}">
						<a class="category" href="{{$loop331->getItemEscape("@link")}}">{{$loop331->getItemEscape("@title")}}</a>
					</li>
				{{/foreach}}
				<li class="bc-active bc-product-name">
					<span>{{$xml->getItemEscape("page/projector/product/name")}}</span>
				</li>
			{{else}}
				<li class="bc-active bc-{{$xml->getItemEscape("page/@type")}}">
					<span>{{$xml->getItemEscape("page/@type")}}</span>
				</li>
			{{/if}}
		</ol>{{$txt['106590::30024_end']}}
	</div>
</div>