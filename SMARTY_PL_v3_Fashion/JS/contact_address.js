
var contact_txt1="Odwiedź nasz sklep";var contact_txt2="Odwiedź jeden z naszych sklepów";var contact_txt3="więcej informacji";var contact_txt4="pon";var contact_txt5="wto";var contact_txt6="śro";var contact_txt7="czw";var contact_txt8="pią";var contact_txt9="sob";var contact_txt10="nie";var contact_txt13="pon - pią";var contact_txt11="Godziny otwarcia: ";var contact_txt12="Zamknięte";var contact_txt14="Telefon: ";var s_count=0;function build_stock(name,street,city,postcode,link,open,tel){var label_text=contact_txt1;if(s_count>1)label_text=contact_txt2;var stock_wrapper='<div class="stocks_list_wrapper table_cell"><p class="stocks_list_stock">';stock_wrapper+='<span class="stocks_list_name"><a class="stocks_list_name" href="'+link+'" style="height: 32px;">'+name+'</a></span>';stock_wrapper+='<span class="stocks_list_adress"><span class="stocs_list_street">'+street+'</span><br><span class="stocs_list_city">'+postcode+' '+city+'</span></span>';stock_wrapper+='<a class="stocks_list_more" href="'+link+'">'+contact_txt3+'</a>';var daysNames=[contact_txt4,contact_txt5,contact_txt6,contact_txt7,contact_txt8,contact_txt9,contact_txt10];if(open){stock_wrapper+='<span class="stocks_list_label"><span>'+contact_txt11+'</span></span>';if(open[1]==open[2]&&open[2]==open[3]&&open[3]==open[4]&&open[4]==open[5]){if(open[1]=='nD')
open[1]=contact_txt12;stock_wrapper+='<span class="stocks_list_hours"><span>'+contact_txt13+': '+open[1]+'</span></span>';if(open[6]=='nD')
open[6]=contact_txt12;if(open[7]=='nD')
open[7]=contact_txt12;stock_wrapper+='<span class="stocks_list_hours"><span>'+daysNames[5]+': '+open[6]+'</span></span>';stock_wrapper+='<span class="stocks_list_hours"><span>'+daysNames[6]+': '+open[7]+'</span></span>';}else{$.each(open,function(key,value){if(value=='nD')
value=contact_txt12;stock_wrapper+='<span class="stocks_list_hours"><span>'+daysNames[key-1]+': '+value+'</span></span>';});}}
if(tel){stock_wrapper+='<span class="stocks_list_label"><span>'+contact_txt14+'</span></span>';stock_wrapper+='<a class="stocks_list_tel" href="tel:'+tel+'">'+tel+'</a>';}
var gridClass=s_count==1?'col-md-4 col-xs-12':'col-md-12 col-xs-12';stock_wrapper+='</p></div>';if(!$('#stocks_contact').size())$('.contact_map_all').before('<div id="stocks_contact" class="'+gridClass+'"><h2 class="big_label">'+label_text+'</h2><div class="stocks_list_sub table_wrapper"></div></div>');$('.stocks_list_sub').append(stock_wrapper);}
function get_stocks(){$.ajax({type:'GET',dataType:'json',timeout:6000,url:'/ajax/getPickups.php',success:function(json){var s=json.pickupPoints;s_count=s.length
if(s_count==1){s=s[0];build_stock(s.name,s.address.street,s.address.city,s.address.postcode,s.link,s.hours,s.phone);contact_map.showMap();}else if(s_count<5){for(var i=0;i<s.length;i++){console.log('stocks: '+s[i]);build_stock(s[i].name,s[i].address.street,s[i].address.city,s[i].address.postcode,s[i].link,s[i].hours,s[i].phone)}}else{$('#stocks_contact4').css('display','block');}},error:function(xhr){if(xhr.status==404||xhr.status==0)
console.error('404');}});}
$(document).ready(function(){if(typeof mapHideContact!='undefined')
{if(typeof mapSiteType!='undefined'&&mapHideContact=='')
if(mapSiteType=='contact')
{get_stocks();contact_map.loadGoogleMapsAPI(contact_map.mapInit);}}});var contact_map={geokoder:0,mapa:0,zoom:0,markerInfo:0,language:0,markerInfo:0,timeout:0,markerIcon:0,loadNavBool:false,loadMapBool:false,google_api_key:'',loadGoogleMapsAPI:function(callback){if((parent.location.protocol+'//')=='https://')
$.getScript("https://www.google.com/jsapi",function()
{contact_map.language=contactLanguage;google.load('maps','3',{callback:callback,other_params:'sensor=false&language='+contact_map.language+'&key='+contact_map.google_api_key});});else if((parent.location.protocol+'//')=='http://')
$.getScript("http://www.google.com/jsapi",function()
{contact_map.language=contactLanguage;google.load('maps','3',{callback:callback,other_params:'sensor=false&language='+contact_map.language+'&key='+contact_map.google_api_key});});},mapInit:function(){contact_map.zoom=contactZoom;contact_map.geokoder=new google.maps.Geocoder();var wspolrzedne=new google.maps.LatLng(parseInt(bCordContact),parseInt(lCordContact));if(markersAnimationContact!='')
markersAnimationContact=true;else
markersAnimationContact=false;if(markerContactCustomIcon!='')
markerContactCustomIcon=true;else
markerContactCustomIcon=false;if(mapTypeContact=='ROADMAP')
var mapStyle=google.maps.MapTypeId.ROADMAP
else if(mapTypeContact=='SATELLITE')
var mapStyle=google.maps.MapTypeId.SATELLITE
else if(mapTypeContact=='HYBIRD')
var mapStyle=google.maps.MapTypeId.HYBRID
else if(mapTypeContact=='TERRAIN')
var mapStyle=google.maps.MapTypeId.TERRAIN
else
var mapStyle=google.maps.MapTypeId.ROADMAP
if(navControlContact!='')
navControlContact=true;else
navControlContact=false;if(mapTypeControlContact!='')
mapTypeControlContact=true;else
mapTypeControlContact=false;if(scControlContact!='')
scControlContact=true;else
scControlContact=false;if(controlTypeContact=='ZOOM_PAN')
var controlStyle=google.maps.NavigationControlStyle.ZOOM_PAN
else if(controlTypeContact=='SMALL')
var controlStyle=google.maps.NavigationControlStyle.SMALL
else if(controlTypeContact=='ANDROID')
var controlStyle=google.maps.NavigationControlStyle.ANDROID
else
var controlStyle=google.maps.NavigationControlStyle.ZOOM_PAN
if(mapTypeControlStyleContact=='DROPDOWN_MENU')
var TypeControlStyle=google.maps.MapTypeControlStyle.DROPDOWN_MENU
else if(mapTypeControlStyleContact=='HORIZONTAL_BAR')
var TypeControltyle=google.maps.MapTypeControlStyle.HORIZONTAL_BAR
else
var TypeControlStyle=google.maps.MapTypeControlStyle.DROPDOWN_MENU
if($('img.marker_face').attr('src')!=''&&markerContactCustomIcon)
{var markerIconSize=new google.maps.Size($('img.marker_face').width(),$('img.marker_face').height());var punkt_startowy=new google.maps.Point(0,0);var punkt_zaczepienia=new google.maps.Point(parseInt($('img.marker_face').width()/2),parseInt($('img.marker_face').height()/2));contact_map.markerIcon=new google.maps.MarkerImage($('img.marker_face').attr('src'),markerIconSize,punkt_startowy,punkt_zaczepienia);}
if(window['google_map_style_array']){var mapOptions={gestureHandling:'cooperative',zoom:contact_map.zoom,center:wspolrzedne,mapTypeId:mapStyle,navigationControl:navControlContact,mapTypeControl:mapTypeControlContact,scaleControl:scControlContact,styles:google_map_style_array,navigationControlOptions:{style:controlStyle},mapTypeControlOptions:{style:TypeControlStyle}};}else{var mapOptions={gestureHandling:'cooperative',zoom:contact_map.zoom,center:wspolrzedne,mapTypeId:mapStyle,navigationControl:navControlContact,mapTypeControl:mapTypeControlContact,scaleControl:scControlContact,navigationControlOptions:{style:controlStyle},mapTypeControlOptions:{style:TypeControlStyle}};}
console.log(mapOptions);contact_map.mapa=new google.maps.Map(document.getElementById("contact_map"),mapOptions);markerInfo=new google.maps.InfoWindow();google.maps.event.addListener(contact_map.mapa,'idle',function(){if(!contact_map.loadMapBool){$('span.loadingMap').text($('span.loadingNav').text());contact_map.loadMapBool=true;}});google.maps.event.addListener(contact_map.mapa,'tilesloaded',function(){if(!contact_map.loadNavBool){var firmName=$('.stocks_list_name').first().text();var name='';var street=$('.stocs_list_street').first().text();var city=$('.stocs_list_city').first().text();var country='';if(doSetL!=''&&doSetB!='')
contact_map.setAddress(firmName,name,street,city,country,doSetL,doSetB);else
contact_map.findAddress(firmName,name,street,city,country);contact_map.loadNavBool=true;}});},setAddress:function(firmName,name,street,city,country,A,B){$('span.loadingMap').text($('span.loadingAdres').text());var adres=street+' , '+city+' , '+country;var content='<div class="dymekWrapper"><div dymek class="dymekInfo"><span class="dymekFirmName">'+firmName+'</span><span class="dymekAddress">'+street+'</span><span class="dymekCityName">'+city+'</span><span class="dymekCountryName">'+country+'</div>';contact_map.staticPoint=new google.maps.LatLng(A,B);contact_map.mapa.setCenter(contact_map.staticPoint);var opcjeMarkera={title:firmName};opcjeMarkera.position=contact_map.staticPoint;opcjeMarkera.map=contact_map.mapa;if(markersAnimationContact)
opcjeMarkera.animation=google.maps.Animation.DROP;if($('img.marker_face').attr('src')!=''&&markerContactCustomIcon)
{opcjeMarkera.icon=contact_map.markerIcon;}
var marker=new google.maps.Marker(opcjeMarkera);markerInfo.setContent(content);markerInfo.setPosition(marker.getPosition());markerInfo.open(contact_map.mapa);google.maps.event.addListener(marker,'click',function(zdarzenie)
{markerInfo.open(contact_map.mapa);});setTimeout(function(){$('div.loadingMap').fadeOut('normal',function(){});},contact_map.timeout);},findAddress:function(firmName,name,street,city,country){$('span.loadingMap').text($('span.loadingAdres').text());var adres=street+' , '+city+' , '+country;contact_map.geokoder.geocode({address:adres},function(wyniki,status)
{if(status==google.maps.GeocoderStatus.OK)
{var content='<div class="dymekWrapper"><div dymek class="dymekInfo"><span class="dymekFirmName">'+firmName+'</span><span class="dymekAddress">'+street+'</span><span class="dymekCityName">'+city+'</span><span class="dymekCountryName">'+country+'</div>';contact_map.mapa.setCenter(wyniki[0].geometry.location);var opcjeMarkera={title:firmName};opcjeMarkera.position=wyniki[0].geometry.location;opcjeMarkera.map=contact_map.mapa;if(markersAnimationContact)
opcjeMarkera.animation=google.maps.Animation.DROP;if($('img.marker_face').attr('src')!=''&&markerContactCustomIcon)
{opcjeMarkera.icon=contact_map.markerIcon;}
var marker=new google.maps.Marker(opcjeMarkera);markerInfo.setContent(content);markerInfo.setPosition(marker.getPosition());markerInfo.open(contact_map.mapa);google.maps.event.addListener(marker,'click',function(zdarzenie)
{markerInfo.open(contact_map.mapa);});setTimeout(function(){$('div.loadingMap').fadeOut('normal',function(){});},contact_map.timeout);}
else if(status==google.maps.GeocoderStatus.OVER_QUERY_LIMIT)
{contact_map.timeout+=50;setTimeout(function(){skoczDoAdresuContact(firmName,name,street,city,country);},contact_map.timeout);}
else
{setTimeout(function(){$('div.loadingMap').fadeOut('normal',function(){});},contact_map.timeout);}});},showMap:function(){if(typeof mapSiteType!='undefined')
if(mapSiteType=='contact')
{$('#contact_contact a.show_on_map').hide();$('div.contact_map_all').slideToggle('fast',function(){$('.contact_map_all').removeClass('hide');var loadingMapWidth=$('div.loadingMap').width()/2;var loadingMapHeight=$('div.loadingMap').height()/2;var loadingBoxWidth=$('div.loadingBox').width()/2;var loadingBoxHeight=$('div.loadingBox').height()/2;var loadingBoxLeft=loadingMapWidth-loadingBoxWidth;var loadingBoxTop=loadingMapHeight-loadingBoxHeight;contact_map.google_api_key=google_api_key;$('div.loadingBox').css('left',loadingBoxLeft);$('div.loadingBox').css('top',loadingBoxTop);$('div.loadingBox').fadeTo('normal',1.0,function(){});$('div.contact_map_all').fadeTo('normal',1.0,function(){contact_map.loadGoogleMapsAPI(contact_map.mapInit);});});}}}