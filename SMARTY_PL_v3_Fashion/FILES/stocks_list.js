
var stocks_sites={geokoder:0,mapa:0,loadNavBoolPickup:false,zoom:0,markerIcon:0,language:0,timeout:0,stocksCount:0,stocksIteration:0,pickupFind:0,markersArray:[],contentsArray:[],markerInfo:0,markerAnimation:false,google_api_key:'',loadGoogleMapsAPI:function(callback){if((parent.location.protocol+'//')=='https://')
$.getScript("https://www.google.com/jsapi",function()
{stocks_sites.language=stocksLanguage;google.load('maps','3',{callback:callback,other_params:'sensor=false&language='+stocks_sites.language+'&key='+stocks_sites.google_api_key});});else if((parent.location.protocol+'//')=='http://')
$.getScript("http://www.google.com/jsapi",function()
{stocks_sites.language=stocksLanguage;google.load('maps','3',{callback:callback,other_params:'sensor=false&language='+stocks_sites.language+'&key='+stocks_sites.google_api_key});});},mapInit:function(){stocks_sites.zoom=stocksZoom;stocks_sites.geokoder=new google.maps.Geocoder();var wspolrzedne=new google.maps.LatLng(parseInt(bCordStocks),parseInt(lCordStocks));if(markersAnimationStocks!='')
stocks_sites.markerAnimation=true;else
stocks_sites.markerAnimation=false;if(markerStocksCustomIcon!='')
markerStocksCustomIcon=true;else
markerStocksCustomIcon=false;if(mapTypeStocks=='ROADMAP')
var mapStyle=google.maps.MapTypeId.ROADMAP
else if(mapTypeStocks=='SATELLITE')
var mapStyle=google.maps.MapTypeId.SATELLITE
else if(mapTypeStocks=='HYBRID')
var mapStyle=google.maps.MapTypeId.HYBRID
else if(mapTypeStocks=='TERRAIN')
var mapStyle=google.maps.MapTypeId.TERRAIN
else
var mapStyle=google.maps.MapTypeId.ROADMAP
if(navControlStocks!='')
navControlStocks=true;else
navControlStocks=false;if(mapTypeControlStocks!='')
mapTypeControlStocks=true;else
mapTypeControlStocks=false;if(scControlStocks!='')
scControlStocks=true;else
scControlStocks=false;if(controlTypeStocks=='ZOOM_PAN')
var controlStyle=google.maps.NavigationControlStyle.ZOOM_PAN
else if(controlTypeStocks=='SMALL')
var controlStyle=google.maps.NavigationControlStyle.SMALL
else if(controlTypeStocks=='ANDROID')
var controlStyle=google.maps.NavigationControlStyle.ANDROID
else
var controlStyle=google.maps.NavigationControlStyle.ZOOM_PAN
if(mapTypeControlStyleStocks=='DROPDOWN_MENU')
var TypeControlStyle=google.maps.MapTypeControlStyle.DROPDOWN_MENU
else if(mapTypeControlStyleStocks=='HORIZONTAL_BAR')
var TypeControltyle=google.maps.MapTypeControlStyle.HORIZONTAL_BAR
else
var TypeControlStyle=google.maps.MapTypeControlStyle.DROPDOWN_MENU
if($('img.marker_face').attr('src')!=''&&markerStocksCustomIcon)
{var markerIconSize=new google.maps.Size($('img.marker_face').width(),$('img.marker_face').height());var punkt_startowy=new google.maps.Point(0,0);var punkt_zaczepienia=new google.maps.Point(parseInt($('img.marker_face').width()/2),parseInt($('img.marker_face').height()/2));stocks_sites.markerIcon=new google.maps.MarkerImage($('img.marker_face').attr('src'),markerIconSize,punkt_startowy,punkt_zaczepienia);}
if(window['google_map_style_array']){var mapOptions={gestureHandling:'cooperative',zoom:stocks_sites.zoom,center:wspolrzedne,mapTypeId:mapStyle,navigationControl:navControlStocks,mapTypeControl:mapTypeControlStocks,scaleControl:scControlStocks,styles:google_map_style_array,navigationControlOptions:{style:controlStyle},mapTypeControlOptions:{style:TypeControlStyle}};}else{var mapOptions={gestureHandling:'cooperative',zoom:stocks_sites.zoom,center:wspolrzedne,mapTypeId:mapStyle,navigationControl:navControlStocks,mapTypeControl:mapTypeControlStocks,scaleControl:scControlStocks,navigationControlOptions:{style:controlStyle},mapTypeControlOptions:{style:TypeControlStyle}};}
stocks_sites.mapa=new google.maps.Map(document.getElementById("stocks_map"),mapOptions);stocks_sites.markerInfo=new google.maps.InfoWindow();google.maps.event.addListener(stocks_sites.mapa,'idle',function(){$('span.loadingMap').text($('span.loadingNav').text());});google.maps.event.addListener(stocks_sites.mapa,'tilesloaded',function(){if(!stocks_sites.loadNavBoolPickup){stocks_sites.loadNavBoolPickup=true;stocks_sites.showStocks();}});},showStocks:function(){if($('div.stocks_list_wrapper').length)
{stocks_sites.stocksCount=$('div.stocks_list_wrapper').length;$('span.loadingMap').hide();$('span.loadingMarkers').css('display','block');$('span.loadingMarkersCount').text(stocks_sites.stocksCount);$('span.loadingMarkersComplete').text(stocks_sites.stocksIteration);$('div.stocks_list_sub div.stocks_list_wrapper').each(function(index){var obj=$(this);var headerText=$.trim($(this).find('a.stocks_list_name').text());var streetText=$.trim($(this).find('span.stocs_list_street').text());var cityText=$.trim($(this).find('span.stocs_list_city').text());var moreText=$.trim($(this).find('a.stocks_list_more').text());var moreLink=$.trim($(this).find('a.stocks_list_more').attr('href'));stocks_sites.findAdres(obj,headerText,streetText,cityText,moreText,moreLink);});}
else
$('div.loadingMap').fadeOut('normal',function(){});},findAdres:function(obj,headerText,streetText,cityText,moreText,moreLink){var adres=streetText+' , '+cityText;stocks_sites.geokoder.geocode({address:adres},function(wyniki,status)
{if(status==google.maps.GeocoderStatus.OK)
{stocks_sites.timeout=100;stocks_sites.pickupFind++;stocks_sites.stocksIteration++;var content='<div class="dymekWrapper"><span class="stocks_name">'+headerText+'</span><span class="stocks_street">'+streetText+'</span><span class="stocks_city">'+cityText+'</span><a class="stocks_link" title="Zobacz szczegółowe informacje" href="'+moreLink+'">'+moreText+'</a></div>';stocks_sites.contentsArray.push(content);var opcjeMarkera={title:headerText};opcjeMarkera.position=wyniki[0].geometry.location;opcjeMarkera.map=stocks_sites.mapa;if(stocks_sites.markerAnimation)
opcjeMarkera.animation=google.maps.Animation.DROP;if($('img.marker_face').attr('src')!=''&&markerStocksCustomIcon)
{opcjeMarkera.icon=stocks_sites.markerIcon;}
var marker=new google.maps.Marker(opcjeMarkera);stocks_sites.markersArray.push(marker);$(obj).attr('rel',stocks_sites.pickupFind);$(obj).find('a.show_stock_on_map').addClass('find');google.maps.event.addListener(marker,'click',function(zdarzenie)
{stocks_sites.markerInfo.setContent(content);stocks_sites.markerInfo.setPosition(marker.getPosition());stocks_sites.markerInfo.open(stocks_sites.mapa);});if(stocks_sites.stocksIteration<=stocks_sites.stocksCount)
$('span.loadingMarkersComplete').text(stocks_sites.stocksIteration);if(stocks_sites.stocksIteration>=stocks_sites.stocksCount)
{setTimeout(function(){$('div.loadingMap').fadeOut('normal',function(){});},stocks_sites.timeout);$('div.stocks_list_wrapper a.find').fadeTo('normal',1.0,function(){});}}
else if(status==google.maps.GeocoderStatus.OVER_QUERY_LIMIT)
{stocks_sites.timeout+=50;setTimeout(function(){stocks_sites.findAdres(obj,headerText,streetText,cityText,moreText,moreLink);},stocks_sites.timeout);}
else
{stocks_sites.timeout=100;stocks_sites.stocksIteration++;if(stocks_sites.stocksIteration<=stocks_sites.stocksCount)
$('span.loadingMarkersComplete').text(stocks_sites.stocksIteration);if(stocks_sites.stocksIteration>=stocks_sites.stocksCount)
{setTimeout(function(){$('div.loadingMap').fadeOut('normal',function(){});},stocks_sites.timeout);$('div.stocks_list_wrapper a.find').fadeTo('normal',1.0,function(){});}}});},markerOnClick:function(obj){$('html, body').animate({scrollTop:0},'normal');if($(obj).parent().parent().attr('rel')!==undefined)
{var index=parseInt($(obj).parent().parent().attr('rel'));stocks_sites.markerInfo.setContent(stocks_sites.contentsArray[index-1]);stocks_sites.markerInfo.setPosition(stocks_sites.markersArray[index-1].getPosition());stocks_sites.markerInfo.open(stocks_sites.mapa);}}}
app_shop.run(function(){if(!$('div.stocks_page').size()){return false;}
if(typeof mapSiteType!='undefined'&&google_api_key!='')
if(mapSiteType=='stocks_site')
{var loadingMapWidth=$('div.loadingMap').width()/2;var loadingMapHeight=$('div.loadingMap').height()/2;var loadingBoxWidth=$('div.loadingBox').width()/2;var loadingBoxHeight=$('div.loadingBox').height()/2;var loadingBoxLeft=loadingMapWidth-loadingBoxWidth;var loadingBoxTop=loadingMapHeight-loadingBoxHeight;stocks_sites.google_api_key=google_api_key;$('div.loadingBox').css('left',loadingBoxLeft);$('div.loadingBox').css('top',loadingBoxTop);$('div.loadingBox').fadeTo('normal',1.0,function(){});stocks_sites.loadGoogleMapsAPI(stocks_sites.mapInit);}},'all','.stocks_list_outline')