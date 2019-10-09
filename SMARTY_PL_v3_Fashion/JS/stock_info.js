
app_shop.run(function(){orderdetails_payments.ajaxLoadSite(0);if(typeof mapHide!='undefined')
{if(typeof mapSiteType!='undefined'&&mapHide=='')
if(mapSiteType=='stock')
{stock_map.loadGoogleMapsAPI(stock_map.mapInit);}}},'all','#stock_info_58110');var stock_map={geokoder:0,mapa:0,zoom:0,markerInfo:0,language:0,markerInfo:0,timeout:0,markerIcon:0,loadMapBool:false,loadNavBool:false,google_api_key:'',loadGoogleMapsAPI:function(callback){if((parent.location.protocol+'//')=='https://')
$.getScript("https://www.google.com/jsapi",function()
{stock_map.language=stockLanguage;google.load('maps','3',{callback:callback,other_params:'sensor=false&language='+stock_map.language+'&key='+stock_map.google_api_key});});else if((parent.location.protocol+'//')=='http://')
$.getScript("http://www.google.com/jsapi",function()
{stock_map.language=stockLanguage;google.load('maps','3',{callback:callback,other_params:'sensor=false&language='+stock_map.language+'&key='+stock_map.google_api_key});});},mapInit:function(){stock_map.zoom=stockZoom;stock_map.geokoder=new google.maps.Geocoder();var wspolrzedne=new google.maps.LatLng(parseInt(bCordStock),parseInt(lCordStock));if(markersAnimationStock!='')
markersAnimationStock=true;else
markersAnimationStock=false;if(markerStockCustomIcon!='')
markerStockCustomIcon=true;else
markerStockCustomIcon=false;if(mapTypeStock=='ROADMAP')
var mapStyle=google.maps.MapTypeId.ROADMAP
else if(mapTypeStock=='SATELLITE')
var mapStyle=google.maps.MapTypeId.SATELLITE
else if(mapTypeStock=='HYBIRD')
var mapStyle=google.maps.MapTypeId.HYBRID
else if(mapTypeStock=='TERRAIN')
var mapStyle=google.maps.MapTypeId.TERRAIN
else
var mapStyle=google.maps.MapTypeId.ROADMAP
if(navControlStock!='')
navControlStock=true;else
navControlStock=false;if(mapTypeControlStock!='')
mapTypeControlStock=true;else
mapTypeControlStock=false;if(scControlStock!='')
scControlStock=true;else
scControlStock=false;if(controlTypeStock=='ZOOM_PAN')
var controlStyle=google.maps.NavigationControlStyle.ZOOM_PAN
else if(controlTypeStock=='SMALL')
var controlStyle=google.maps.NavigationControlStyle.SMALL
else if(controlTypeStock=='ANDROID')
var controlStyle=google.maps.NavigationControlStyle.ANDROID
else
var controlStyle=google.maps.NavigationControlStyle.ZOOM_PAN
if(mapTypeControlStyleStock=='DROPDOWN_MENU')
var TypeControlStyle=google.maps.MapTypeControlStyle.DROPDOWN_MENU
else if(mapTypeControlStyleStock=='HORIZONTAL_BAR')
var TypeControltyle=google.maps.MapTypeControlStyle.HORIZONTAL_BAR
else
var TypeControlStyle=google.maps.MapTypeControlStyle.DROPDOWN_MENU
if($('img.marker_face').attr('src')!=''&&markerStockCustomIcon)
{var markerIconSize=new google.maps.Size($('img.marker_face').width(),$('img.marker_face').height());var punkt_startowy=new google.maps.Point(0,0);var punkt_zaczepienia=new google.maps.Point(parseInt($('img.marker_face').width()/2),parseInt($('img.marker_face').height()/2));stock_map.markerIcon=new google.maps.MarkerImage($('img.marker_face').attr('src'),markerIconSize,punkt_startowy,punkt_zaczepienia);}
if(window['google_map_style_array']){var mapOptions={gestureHandling:'cooperative',zoom:15,center:wspolrzedne,mapTypeId:mapStyle,navigationControl:navControlStock,mapTypeControl:mapTypeControlStock,scaleControl:scControlStock,styles:google_map_style_array,navigationControlOptions:{style:controlStyle},mapTypeControlOptions:{style:TypeControlStyle}};}else{var mapOptions={gestureHandling:'cooperative',zoom:15,center:wspolrzedne,mapTypeId:mapStyle,navigationControl:navControlStock,mapTypeControl:mapTypeControlStock,scaleControl:scControlStock,navigationControlOptions:{style:controlStyle},mapTypeControlOptions:{style:TypeControlStyle}};}
stock_map.mapa=new google.maps.Map(document.getElementById("stock_map"),mapOptions);markerInfo=new google.maps.InfoWindow();google.maps.event.addListener(stock_map.mapa,'idle',function(){if(!stock_map.loadMapBool){$('span.loadingMap').text($('span.loadingNav').text());stock_map.loadMapBool=true;}});google.maps.event.addListener(stock_map.mapa,'tilesloaded',function(){if(!stock_map.loadNavBool){$('div.loadingMap').fadeOut('normal',function(){});var firmName=$.trim($('h1.stock_info_name').text());var name=$.trim($('h1.stock_info_name').text());var street=$.trim($('#stock_info_details_street span.stock_info_value').text());var city=$.trim($('#stock_info_details_city span.stock_info_value').text()+' '+$('#stock_info_details_zipcode span.stock_info_value').text());var country=$.trim($('#stock_info_details_country span.stock_info_value').text());stock_map.findAddress(firmName,name,street,city,country);stock_map.loadNavBool=true;}});},findAddress:function(firmName,name,street,city,country){$('span.loadingMap').text($('span.loadingAddress').text());var adres=street+' , '+city+' , '+country;stock_map.geokoder.geocode({address:adres},function(wyniki,status)
{if(status==google.maps.GeocoderStatus.OK)
{stock_map.timeout=0;var content='<div class="dymekWrapper"><div dymek class="dymekInfo"><span class="dymekFirmName">'+firmName+'</span><span class="dymekAddress">'+street+'</span><span class="dymekCityName">'+city+'</span><span class="dymekCountryName">'+country+'</div>';stock_map.mapa.setCenter(wyniki[0].geometry.location);var opcjeMarkera={title:firmName};opcjeMarkera.position=wyniki[0].geometry.location;opcjeMarkera.map=stock_map.mapa;if(markersAnimationStock)
opcjeMarkera.animation=google.maps.Animation.DROP;if($('img.marker_face').attr('src')!=''&&markerStockCustomIcon)
{opcjeMarkera.icon=stock_map.markerIcon;}
var marker=new google.maps.Marker(opcjeMarkera);markerInfo.setContent(content);markerInfo.setPosition(marker.getPosition());markerInfo.open(stock_map.mapa);google.maps.event.addListener(marker,'click',function(zdarzenie)
{markerInfo.open(stock_map.mapa);});setTimeout(function(){$('div.loadingMap').fadeOut('normal',function(){});},stock_map.timeout);}
else if(status==google.maps.GeocoderStatus.OVER_QUERY_LIMIT)
{stock_map.timeout+=50;setTimeout(function(){skoczDoAdresuStock(firmName,name,street,city,country);},stock_map.timeout);}
else
setTimeout(function(){$('div.loadingMap').fadeOut('normal',function(){});},stock_map.timeout);});},showMap:function(){if(typeof mapSiteType!='undefined')
if(mapSiteType=='stock')
{$('#stock_info_58110 a.show_on_map').hide();$('div.stock_map_all').slideToggle('fast',function(){var loadingMapWidth=$('div.loadingMap').width()/2;var loadingMapHeight=$('div.loadingMap').height()/2;var loadingBoxWidth=$('div.loadingBox').width()/2;var loadingBoxHeight=$('div.loadingBox').height()/2;var loadingBoxLeft=loadingMapWidth-loadingBoxWidth;var loadingBoxTop=loadingMapHeight-loadingBoxHeight;stock_map.google_api_key=google_api_key;$('div.loadingBox').css('left',loadingBoxLeft);$('div.loadingBox').css('top',loadingBoxTop);$('div.loadingBox').fadeTo('normal',1.0,function(){});$('div.stock_map_all').fadeTo('normal',1.0,function(){stock_map.loadGoogleMapsAPI(stock_map.mapInit);});}).removeClass('hide');}}}