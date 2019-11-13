
<!--Menu - Drzewo 1 (menu_categories, 74009.2)-->
{{capture name="dlmenu_showall" assign="dlmenu_showall"}}
	{{$txt['74009::56412_003']}}
{{/capture}}

<div id="menu_categories" class="clearfix dl-menuwrapper">
	<ul id="mobile_menu">
		<li>
			<a href="/categories.php" class="mobile_menu dl-trigger">{{$txt['74009::58826_m1']}}</a>
		</li>
	</ul>
	<ul class="dl-menu">
		{{foreach from=$xml->getList("navigation/item") item=loop14}}
			<li>
				{{if  $loop14->getItem("@link") and  $loop14->getItem("@link")  neq (string) '##'}}
					{{literal}}
					<a href="{{/literal}}{{$loop14->getItemEscape("@link")}}{{literal}}" target="{{/literal}}{{$loop14->getItemEscape("@target")}}{{literal}}" title="{{/literal}}{{$loop14->getItemEscape("@name")}}{{else}}{{literal}}
<span{{/literal}}{{literal}} title="{{/literal}}{{$loop14->getItemEscape("@name")}}{{/if}}{{if ( $loop14->getItem("@ni") == (string) $loop14->getItem("/shop/navigation/current/@ni")) or ( $loop14->getItem("item//@ni") == (string) $loop14->getItem("/shop/navigation/current/@ni"))}}{{literal}}" class="dl-active{{/literal}}{{/if}}{{literal}}" >{{/literal}}
						{{if  $loop14->getItem("@gfx")}}
							<img src="{{$loop14->getItemEscape("@gfx")}}" alt="{{$loop14->getItem("@name")}}" title="{{$loop14->getItem("@name")}}"></img>
						{{else}}
							{{$loop14->getItem("@name")}}
						{{/if}}
						{{if  $loop14->getItem("@link") and  $loop14->getItem("@link")  neq (string) '##'}}
							{{literal}}</a>{{/literal}}
					{{else}}
						{{literal}}</span>{{/literal}}
				{{/if}}
				{{if  $loop14->getItem("item") and !( $loop14->getItem("@reload") == (string)'y')}}
					<ul class="dl-submenu">
						{{foreach from=$loop14->getList("item") item=loop47}}
							<li>
								<a {{assign "hrefAttributeTmp2" ""}}{{assign "classAttributeTmp1" ""}}{{capture name="hrefAttributeTmp2" assign="hrefAttributeTmp2"}}##{{/capture}}{{if $loop47->getItem("@link")}}{{capture name="hrefAttributeTmp2" assign="hrefAttributeTmp2"}}{{$loop47->getItemEscape("@link")}}{{/capture}}{{/if}}{{if $loop47->getItem("item")}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}level_2 toggle{{/capture}}{{if ( $loop47->getItem("@ni") == (string) $loop47->getItem("/shop/navigation/current/@ni")) or ( $loop47->getItem("item//@ni") == (string) $loop47->getItem("/shop/navigation/current/@ni"))}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}level_2 toggle dl-active{{/capture}}{{/if}}{{else}}{{if ( $loop47->getItem("@ni") == (string) $loop47->getItem("/shop/navigation/current/@ni")) or ( $loop47->getItem("item//@ni") == (string) $loop47->getItem("/shop/navigation/current/@ni"))}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}dl-active{{/capture}}{{/if}}{{/if}}{{if $loop47->getItem("@target")}} target="{{$loop47->getItemEscape("@target")}}" {{/if}}  class="{{$classAttributeTmp1}}"  href="{{$hrefAttributeTmp2}}">{{$loop47->getItem("@name")}}</a>
								{{if  $loop47->getItem("item") and !( $loop47->getItem("@reload") == (string)'y')}}
									<ul class="dl-submenu">
										{{foreach from=$loop47->getList("item") item=loop72}}
											<li>
												<a {{assign "hrefAttributeTmp3" ""}}{{capture name="hrefAttributeTmp3" assign="hrefAttributeTmp3"}}##{{/capture}}{{if ( $loop72->getItem("@ni") == (string) $loop72->getItem("/shop/navigation/current/@ni")) or ( $loop72->getItem("item//@ni") == (string) $loop72->getItem("/shop/navigation/current/@ni"))}} class="dl-active" {{/if}}{{if $loop72->getItem("@link")}}{{capture name="hrefAttributeTmp3" assign="hrefAttributeTmp3"}}{{$loop72->getItemEscape("@link")}}{{/capture}}{{/if}}{{if $loop72->getItem("@target")}} target="{{$loop72->getItemEscape("@target")}}" {{/if}}  href="{{$hrefAttributeTmp3}}">{{$loop72->getItem("@name")}}</a>
											</li>
										{{/foreach}}
										{{if (count( $loop47->getList("item"))  gt (string) 1) and  $loop47->getItem("@link") and  $loop47->getItem("@display_all")  == (string) 'y' and $dlmenu_showall}}
											<li class="display_all">
												<a class="display_all" href=" {{if $loop47->getItem("@display_all_link")}}{{$loop47->getItemEscape("@display_all_link")}}{{else}}{{$loop47->getItemEscape("@link")}}{{/if}} ">{{$dlmenu_showall}}</a>
											</li>
										{{/if}}
									</ul>
								{{/if}}
							</li>
						{{/foreach}}
						{{if (count( $loop14->getList("item"))  gt (string) 1) and  $loop14->getItem("@link") and  $loop14->getItem("@display_all")  == (string) 'y' and $dlmenu_showall}}
							<li class="display_all">
								<a class="display_all" href=" {{if $loop14->getItem("@display_all_link")}}{{$loop14->getItemEscape("@display_all_link")}}{{else}}{{$loop14->getItemEscape("@link")}}{{/if}} ">{{$dlmenu_showall}}</a>
							</li>
						{{/if}}
					</ul>
				{{/if}}
			</li>
		{{/foreach}}
	</ul>
</div>