
<!--Menu Blog (menu_blog, 106535.1)-->
<div id="menu_blog" >
	{{if count( $xml->getList("page/navigation/bycategories/item"))  gt (string) 1}}
		<div id="menu_blog_categories" class="menu_blog_box">
			<ul>
				{{foreach from=$xml->getList("page/navigation/bycategories/item") item=loop8}}
					<li {{if $loop8->getItem("@current") == (string)'active'}} class="active"{{/if}}>
						<a {{if $loop8->getItem("@link")}} href="{{$loop8->getItemEscape("@link")}}"{{/if}}>{{$loop8->getItem("@value")}}</a>
					</li>
				{{/foreach}}
			</ul>
		</div>
	{{/if}}
	{{if  $xml->getItem("page/navigation/bydates/item")}}
		<div id="menu_blog_bydates" class="menu_blog_box">
			<a class="menu_categories_label" href="/blog-list.php" title="{{$txt['106535::n71830txt_archiwum']}}">{{$txt['106535::n71830txt_archiwum']}}</a>
			<ul>
				{{foreach from=$xml->getList("page/navigation/bydates/item") item=loop31}}
					<li {{if $loop31->getItem("@current") == (string)'active'}} class="active"{{/if}}>
						<a {{if $loop31->getItem("@link")}} href="{{$loop31->getItemEscape("@link")}}"{{/if}} title="{{$loop31->getItem("@value")}}">{{$loop31->getItem("@value")}}</a>
						{{if  $loop31->getItem("item")}}
							<ul>
								{{foreach from=$loop31->getList("item") item=loop42}}
									<li {{if $loop42->getItem("@current") == (string)'active'}} class="active"{{/if}}>
										<a {{if $loop42->getItem("@link")}} href="{{$loop42->getItemEscape("@link")}}"{{/if}}{{if $loop42->getItem("@value") == (string)'01'}} title="{{$txt['106535::n71830txt_archiwum01']}}&#160;#160;{{$loop42->getItemEscape("../@value")}}" {{$txt['106535::n71830txt_archiwum01']}} {{elseif $loop42->getItem("@value") == (string)'02'}} title="{{$txt['106535::n71830txt_archiwum02']}}&#160;#160;{{$loop42->getItemEscape("../@value")}}" {{$txt['106535::n71830txt_archiwum02']}} {{elseif $loop42->getItem("@value") == (string)'03'}} title="{{$txt['106535::n71830txt_archiwum03']}}&#160;#160;{{$loop42->getItemEscape("../@value")}}" {{$txt['106535::n71830txt_archiwum03']}} {{elseif $loop42->getItem("@value") == (string)'04'}} title="{{$txt['106535::n71830txt_archiwum04']}}&#160;#160;{{$loop42->getItemEscape("../@value")}}" {{$txt['106535::n71830txt_archiwum04']}} {{elseif $loop42->getItem("@value") == (string)'05'}} title="{{$txt['106535::n71830txt_archiwum05']}}&#160;#160;{{$loop42->getItemEscape("../@value")}}" {{$txt['106535::n71830txt_archiwum05']}} {{elseif $loop42->getItem("@value") == (string)'06'}} title="{{$txt['106535::n71830txt_archiwum06']}}&#160;#160;{{$loop42->getItemEscape("../@value")}}" {{$txt['106535::n71830txt_archiwum06']}} {{elseif $loop42->getItem("@value") == (string)'07'}} title="{{$txt['106535::n71830txt_archiwum07']}}&#160;#160;{{$loop42->getItemEscape("../@value")}}" {{$txt['106535::n71830txt_archiwum07']}} {{elseif $loop42->getItem("@value") == (string)'08'}} title="{{$txt['106535::n71830txt_archiwum08']}}&#160;#160;{{$loop42->getItemEscape("../@value")}}" {{$txt['106535::n71830txt_archiwum08']}} {{elseif $loop42->getItem("@value") == (string)'09'}} title="{{$txt['106535::n71830txt_archiwum09']}}&#160;#160;{{$loop42->getItemEscape("../@value")}}" {{$txt['106535::n71830txt_archiwum09']}} {{elseif $loop42->getItem("@value") == (string)'10'}} title="{{$txt['106535::n71830txt_archiwum10']}}&#160;#160;{{$loop42->getItemEscape("../@value")}}" {{$txt['106535::n71830txt_archiwum10']}} {{elseif $loop42->getItem("@value") == (string)'11'}} title="{{$txt['106535::n71830txt_archiwum11']}}&#160;#160;{{$loop42->getItemEscape("../@value")}}" {{$txt['106535::n71830txt_archiwum11']}} {{elseif $loop42->getItem("@value") == (string)'12'}} title="{{$txt['106535::n71830txt_archiwum12']}}&#160;#160;{{$loop42->getItemEscape("../@value")}}" {{$txt['106535::n71830txt_archiwum12']}} {{/if}}></a>
									</li>
								{{/foreach}}
							</ul>
						{{/if}}
					</li>
				{{/foreach}}
			</ul>
		</div>
	{{/if}}
	{{if  $xml->getItem("action/blog_rss")}}
		<div id="menu_blog_rss">
			<a href="{{$xml->getItemEscape("action/blog_rss/@url")}}" title="{{$txt['106535::n71830txt_rss3']}}">{{$txt['106535::n71830txt_rss3']}}</a>
		</div>
	{{/if}}
</div>