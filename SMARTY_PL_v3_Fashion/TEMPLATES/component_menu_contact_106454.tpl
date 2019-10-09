
<!--Dane kontaktowe w menu (menu_contact, 106454.1)-->
<div id="menu_contact" class="container d-md-flex align-items-md-center justify-content-md-between">
	<ul >
		<li class="contact_type_header">
			<a {{assign "hrefAttributeTmp1" ""}}{{capture name="hrefAttributeTmp1" assign="hrefAttributeTmp1"}}contact.php{{/capture}}{{if $xml->getItem("/shop/action/contact/@url")}}{{capture name="hrefAttributeTmp1" assign="hrefAttributeTmp1"}}{{$xml->getItemEscape("/shop/action/contact/@url")}}{{/capture}}{{/if}} title="{{$txt['106454::35001_00']}}"  href="{{$hrefAttributeTmp1}}">{{$txt['106454::30042_094']}}</a>
		</li>
		{{foreach from=$xml->getList("/shop/contact/contact_nodes/node[@type='phone'][1]") item=loop14}}
			<li class="contact_type_phone">
				{{if  $loop14->getItem("@link")}}
					<a href="{{$loop14->getItemEscape("@link")}}">{{$loop14->getItemEscape("@value")}}</a>
				{{else}}
					<span>{{$loop14->getItemEscape("@value")}}</span>
				{{/if}}
			</li>
		{{/foreach}}
		{{foreach from=$xml->getList("/shop/contact/contact_nodes/node[@type='text'][1]") item=loop29}}
			<li class="contact_type_text">
				<span>{{$loop29->getItemEscape("@value")}}</span>
			</li>
		{{/foreach}}
		{{foreach from=$xml->getList("/shop/contact/contact_nodes/node[@type='mail'][1]") item=loop36}}
			<li class="contact_type_mail">
				{{if  $loop36->getItem("@link")}}
					<a href="{{$loop36->getItemEscape("@link")}}">{{$loop36->getItemEscape("@value")}}</a>
				{{else}}
					<span>{{$loop36->getItemEscape("@value")}}</span>
				{{/if}}
			</li>
		{{/foreach}}
		{{if !($hideAdress)}}
			<li class="contact_type_adress">
				<span class="shopshortname">{{$xml->getItemEscape("contact/owner/@shopshortname")}}
					<span>{{$txt['106454::przecinek']}}</span></span>
				<span class="adress_street">{{$txt['106454::35001_01ul']}}{{$xml->getItemEscape("contact/adress/@street")}}
					<span>{{$txt['106454::przecinek']}}</span></span>
				<span class="adress_zipcode">{{$xml->getItemEscape("contact/adress/@zipcode")}}
					<span class="n55931_city">{{literal}}{{/literal}}{{$xml->getItemEscape("contact/adress/@city")}}</span></span>
			</li>
		{{/if}}
	</ul>
	<div class="logo_iai">
		{{if  $xml->getItem("/shop/iai/@button_src")}}
			{{if  $xml->getItem("/shop/iai/@is_mobile_application")  == (string) 'yes'}}
				<span class="n53399_iailogo">
					<img class="n53399_iailogo" src="{{$xml->getItemEscape("/shop/iai/@button_src")}}" alt="{{$xml->getItemEscape("/shop/iai/@button_text")}}"></img></span>
			{{else}}
				<a {{assign "targetAttributeTmp2" ""}}  class="n53399_iailogo"{{capture name="targetAttributeTmp2" assign="targetAttributeTmp2"}}_blank{{/capture}}{{if $xml->getItem("/shop/iai/@button_target")}}{{capture name="targetAttributeTmp2" assign="targetAttributeTmp2"}}{{$xml->getItemEscape("/shop/iai/@button_target")}}{{/capture}}{{/if}} href="{{$xml->getItemEscape("/shop/iai/@button_link")}}" title="{{$xml->getItemEscape("/shop/iai/@button_text")}}"  target="{{$targetAttributeTmp2}}">
					<img class="n53399_iailogo" src="{{$xml->getItemEscape("/shop/iai/@button_src")}}" alt="{{$xml->getItemEscape("/shop/iai/@button_text")}}"></img></a>
			{{/if}}
		{{/if}}
	</div>
</div>
{{if  $xml->getItem("/shop/iai/@mobile_link")}}
	<div class="rwdswicher">
		<a class="rs-link" href="{{$xml->getItemEscape("/shop/iai/@mobile_link")}}">{{$txt['106454::00001']}}</a>
	</div>
{{/if}}
