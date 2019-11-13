
<!--Menu programu partnerskiego (menu_affiliate, 69832.1)-->
<div {{assign "classAttributeTmp1" ""}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}n59244_main_wrapper{{/capture}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}{{$txt['69832::62565_class1']}}n59244_main_wrapper{{/capture}}  class="{{$classAttributeTmp1}}">
	<div class="n59244_main" id="menu_affiliate">
		<h2>
			<a class="n59244_label" href="/affiliate-main.php" title="{{$txt['69832::59244_001']}}">{{$txt['69832::59244_002']}}</a>
		</h2>
		<ul>
			<li>
				<span {{if ( $xml->getItem("page/@type") == (string) 'affiliate-stats') or ( $xml->getItem("page/@type") == (string) 'affiliate-orders') or ( $xml->getItem("page/@type") == (string) 'affiliate-clients') or ( $xml->getItem("page/@type") == (string) 'affiliate-client')}} class="activ" {{/if}} title="{{$txt['69832::59244_003']}}">{{$txt['69832::59244_004']}}</span>
				<ul {{if ( $xml->getItem("page/@type") == (string) 'affiliate-stats') or ( $xml->getItem("page/@type") == (string) 'affiliate-orders') or ( $xml->getItem("page/@type") == (string) 'affiliate-clients') or ( $xml->getItem("page/@type") == (string) 'affiliate-client')}} class="activ" {{/if}}>
					<li>
						<a href="affiliate-stats.php" {{if $xml->getItem("page/@type") == (string) 'affiliate-stats'}} class="activ" {{/if}} title="{{$txt['69832::59244_011']}}">{{$txt['69832::59244_012']}}</a>
					</li>
					<li>
						<a href="affiliate-orders.php" {{if $xml->getItem("page/@type") == (string) 'affiliate-orders'}} class="activ" {{/if}} title="{{$txt['69832::59244_013']}}">{{$txt['69832::59244_014']}}</a>
					</li>
					<li>
						<a href="affiliate-clients.php" {{if $xml->getItem("page/@type") == (string) 'affiliate-clients'}} class="activ" {{/if}} title="{{$txt['69832::59244_015']}}">{{$txt['69832::59244_016']}}</a>
					</li>
				</ul>
			</li>
			<li>
				<span {{if $xml->getItem("page/@type") == (string) 'affiliate-generator'}} class="activ" {{/if}} title="{{$txt['69832::59244_007']}}">{{$txt['69832::59244_008']}}</span>
				<ul {{if ( $xml->getItem("page/@type") == (string) 'affiliate-generator')}} class="activ" {{/if}}>
					<li>
						<a href="affiliate-generator.php?generate=html" {{if $xml->getItem("page/generator[@type='html']")}} class="activ" {{/if}} title="{{$txt['69832::59244_0112']}}">{{$txt['69832::59244_0122']}}</a>
					</li>
					<li>
						<a href="affiliate-generator.php?generate=php" {{if $xml->getItem("page/generator[@type='php']")}} class="activ" {{/if}} title="{{$txt['69832::59244_01551']}}">{{$txt['69832::59244_0165']}}</a>
					</li>
					<li>
						<a href="affiliate-generator.php?generate=js" {{if $xml->getItem("page/generator[@type='js']")}} class="activ" {{/if}} title="{{$txt['69832::59244_0133']}}">{{$txt['69832::59244_0143']}}</a>
					</li>
				</ul>
			</li>
			<li>
				<a href="affiliate-calculations.php" {{if $xml->getItem("page/@type") == (string) 'affiliate-calculations'}} class="activ" {{/if}} title="{{$txt['69832::59244_005']}}">{{$txt['69832::59244_006']}}</a>
			</li>
			<li>
				<a href="affiliate-resources.php" {{if $xml->getItem("page/@type") == (string) 'affiliate-resources'}} class="activ" {{/if}} title="{{$txt['69832::59244_009']}}">{{$txt['69832::59244_010']}}</a>
			</li>
		</ul>
	</div>
</div>