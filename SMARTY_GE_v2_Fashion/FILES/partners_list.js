
var partners_map={geokoder:0,mapa:0,markersArray:[],contentsArray:[],markerInfo:0,active:0,timeout:100,loadNavBool:false,markerIcon:0,ii:0,n:0,oneCity:false,countryCheck:true,language:0,zoom:0,alignList:false,partnersLimit:false,partnersLimitCount:0,searching:false,clearSearch:false,google_api_key:'',loadGoogleMapsAPI:function(callback){if((parent.location.protocol+'//')=='https://')
$.getScript("https://www.google.com/jsapi",function()
{partners_map.language=partnersLanguage;google.load('maps','3',{callback:callback,other_params:'sensor=false&language='+partners_map.language+'&key='+partners_map.google_api_key});});else if((parent.location.protocol+'//')=='http://')
$.getScript("http://www.google.com/jsapi",function()
{partners_map.language=partnersLanguage;google.load('maps','3',{callback:callback,other_params:'sensor=false&language='+partners_map.language+'&key='+partners_map.google_api_key});});},checkCountry:function(){if(partners_map.countryCheck)
{$('span.city_country').hide();$('span.dymekCountryName').hide();}},mapInit:function(){$('div.partners_list_under.limit').show();if(!partners_map.alignList&&partners_map.partnersLimit)
{partners_map.alignSelectedCityListLimit();partners_map.alignList=true;}
partners_map.zoom=partnersZoom;partners_map.geokoder=new google.maps.Geocoder();var wspolrzedne=new google.maps.LatLng(parseInt(bCordPartners),parseInt(lCordPartners));if(markersAnimationPartners!='')
partners_map.markerAnimation=true;else
partners_map.markerAnimation=false;if(markerPartnersCustomIcon!='')
markerPartnersCustomIcon=true;else
markerPartnersCustomIcon=false;if(mapTypePartners=='ROADMAP')
var mapStyle=google.maps.MapTypeId.ROADMAP
else if(mapTypePartners=='SATELLITE')
var mapStyle=google.maps.MapTypeId.SATELLITE
else if(mapTypePartners=='HYBRID')
var mapStyle=google.maps.MapTypeId.HYBRID
else if(mapTypePartners=='TERRAIN')
var mapStyle=google.maps.MapTypeId.TERRAIN
else
var mapStyle=google.maps.MapTypeId.ROADMAP
if(navControlPartners!='')
navControlPartners=true;else
navControlPartners=false;if(mapTypeControlPartners!='')
mapTypeControlPartners=true;else
mapTypeControlPartners=false;if(scControlPartners!='')
scControlPartners=true;else
scControlPartners=false;if(controlTypePartners=='ZOOM_PAN')
var controlStyle=google.maps.NavigationControlStyle.ZOOM_PAN
else if(controlTypePartners=='SMALL')
var controlStyle=google.maps.NavigationControlStyle.SMALL
else if(controlTypePartners=='ANDROID')
var controlStyle=google.maps.NavigationControlStyle.ANDROID
else
var controlStyle=google.maps.NavigationControlStyle.ZOOM_PAN
if(mapTypeControlStylePartners=='DROPDOWN_MENU')
var TypeControlStyle=google.maps.MapTypeControlStyle.DROPDOWN_MENU
else if(mapTypeControlStylePartners=='HORIZONTAL_BAR')
var TypeControltyle=google.maps.MapTypeControlStyle.HORIZONTAL_BAR
else
var TypeControlStyle=google.maps.MapTypeControlStyle.DROPDOWN_MENU
if($('img.marker_face').attr('src')!=''&&markerPartnersCustomIcon)
{var markerIconSize=new google.maps.Size($('img.marker_face').width(),$('img.marker_face').height());var punkt_startowy=new google.maps.Point(0,0);var punkt_zaczepienia=new google.maps.Point(parseInt($('img.marker_face').width()/2),parseInt($('img.marker_face').height()/2));partners_map.markerIcon=new google.maps.MarkerImage($('img.marker_face').attr('src'),markerIconSize,punkt_startowy,punkt_zaczepienia);}
if(window['google_map_style_array']){var mapOptions={gestureHandling:'cooperative',zoom:partnersZoom,center:wspolrzedne,mapTypeId:mapStyle,navigationControl:navControlPartners,mapTypeControl:mapTypeControlPartners,scaleControl:scControlPartners,styles:google_map_style_array,navigationControlOptions:{style:controlStyle},mapTypeControlOptions:{style:TypeControlStyle}};}else{var mapOptions={gestureHandling:'cooperative',zoom:partnersZoom,center:wspolrzedne,mapTypeId:mapStyle,navigationControl:navControlPartners,mapTypeControl:mapTypeControlPartners,scaleControl:scControlPartners,navigationControlOptions:{style:controlStyle},mapTypeControlOptions:{style:TypeControlStyle}};}
partners_map.mapa=new google.maps.Map(document.getElementById("partners_map"),mapOptions);partners_map.markerInfo=new google.maps.InfoWindow();google.maps.event.addListener(partners_map.mapa,'idle',function(){$('span.loadingMap').text($('span.loadingNav').text());});google.maps.event.addListener(partners_map.mapa,'tilesloaded',function(){if(!partners_map.loadNavBool&&!partners_map.oneCity&&!partners_map.partnersLimit){$('div.loadingMap').fadeOut('normal',function(){});$('a.partners_show_city_button').animate({opacity:1},200,function(){});$('a.partners_show_city_button').css('cursor','pointer');partners_map.loadNavBool=true;}
else if(!partners_map.loadNavBool&&partners_map.oneCity)
{partners_map.showOneCity();$('a.partners_show_city_button').animate({opacity:1},200,function(){});$('a.partners_show_city_button').css('cursor','pointer');partners_map.loadNavBool=true;}
else if(!partners_map.loadNavBool&&partners_map.partnersLimit)
{partners_map.showLimitCity();$('a.partners_show_city_button').animate({opacity:1},200,function(){});$('a.partners_show_city_button').css('cursor','pointer');partners_map.loadNavBool=true;}});},showDesc:function(obj){$('body').dialog({'content':$(obj).children('div.city_desc').clone().show()});var leftTmp=parseInt($('#dialog_wrapper').css('margin-left'));var widthTmp=$('#dialog_wrapper').width();$('#dialog_wrapper_sub').css('overflow','hidden');$('#dialog_wrapper_sub').css('max-height','none');$('#dialog_wrapper_sub').css('padding','25px');$('#dialog_wrapper').css('width','auto');widthTmp=($('#dialog_wrapper').width()-widthTmp)/2;var marginLeftNew=leftTmp-widthTmp;$('#dialog_wrapper').css('margin-left',marginLeftNew+'px');},citySearch:function(obj){var txt=obj.value;var ob2=$('#city_list').children('div.city_list_element');for(var i=0;i<ob2.length;i++){if(txt){var txt2=ob2[i].firstChild.innerHTML;var patt1=new RegExp(txt,'i');if(txt2.toLowerCase().match(txt.toLowerCase())){ob2[i].style.display='block';}else{ob2[i].style.display='none';}}else{ob2[i].style.display='block';}}
if(!$('div.city_list_element').is(":visible"))
$('span.partners_list_noResult').show();else
$('span.partners_list_noResult').hide();},alignSelectedCityListLimit:function(){var heightTmp=0;var heightTmp2=0;$('div.partners_list_under_wrapper').each(function(index){if($(this).height()>heightTmp)
{heightTmp=$(this).height()
heightTmp2=$(this).children('div.partners_list_under_wrapper_sub').height();}});$('div.partners_list_under_wrapper').height(heightTmp);$('div.partners_list_under_wrapper').children('div.partners_list_under_wrapper_sub').height(heightTmp2);},alignSelectedCityList:function(obj){var heightTmp=0;var heightTmp2=0;$(obj).parent().children('div.partners_list_under_wrapper').each(function(index){if($(this).height()>heightTmp)
{heightTmp=$(this).height()
heightTmp2=$(this).children('div.partners_list_under_wrapper_sub').height();}});$(obj).parent().children('div.partners_list_under_wrapper').height(heightTmp);$(obj).parent().children('div.partners_list_under_wrapper').children('div.partners_list_under_wrapper_sub').height(heightTmp2);},showSelectedCityList:function(obj){partners_map.searching=true;$('a.partners_show_city_button').css('cursor','not-allowed');$('a.partners_show_city_button').animate({opacity:0.5},200,function(){});partners_map.timeout=100;$('#dialog_close').click();$('div.loadingMap').show();$('span.loadingMap').hide();$('span.loadingMarkers').css('display','block');var index=$(obj).attr('rel');var className='div.city_'+index;$('div.city_wrapper').hide();$(className).show();partners_map.deleteOverlays();partners_map.ii=1;partners_map.n=$(className).children('div.partners_list_under_wrapper').length;var pos=1;$(className).children('div.partners_list_under_wrapper').each(function(index){$(this).addClass('pos_'+pos);pos++;});partners_map.active=0;partners_map.showAllMarkers(className);},showLimitCity:function(){partners_map.timeout=100;$('div.loadingMap').show();$('span.loadingMap').hide();$('span.loadingMarkers').css('display','block');partners_map.ii=1;$('span.loadingMarkersComplete').text(partners_map.ii);partners_map.n=partners_map.partnersLimitCount;$('span.loadingMarkersCount').text(partners_map.n);$('div.partners_list_under').find('div.partners_list_under_wrapper').each(function(index){var index=$(this);var firmName=$.trim($(this).find('span.city_firm_name').text());var cityName=$.trim($(this).find('span.city_city').text());var zipCode=$.trim($(this).find('span.city_zipcode').text());var countryName=$.trim($(this).find('span.city_country').text());var addressName=$.trim($(this).find('span.city_address').text());var tel1=$.trim($(this).find('span.city_tel1').text());var tel2=$.trim($(this).find('span.city_tel2').text());var email=$.trim($(this).find('a.city_email').text());var www=$.trim($(this).find('a.city_www').text());var wwwAdress=$.trim($(this).find('a.city_www').attr('href'));var img=$.trim($(this).find('img.city_img').attr('src'));setTimeout(function(){partners_map.skoczDoAdresu(firmName,cityName,zipCode,countryName,addressName,tel1,tel2,email,www,wwwAdress,img,index);},partners_map.timeout);});$('span.loadingMarkersComplete').text(partners_map.ii);$('span.loadingMarkersCount').text(partners_map.n);},showOneCity:function(){partners_map.timeout=100;$('div.loadingMap').show();$('span.loadingMap').hide();$('span.loadingMarkers').css('display','block');var index=$('a.city_list_city').attr('rel');var className='div.partners_list_under';$('div.city_wrapper').hide();$(className).show();partners_map.deleteOverlays();partners_map.ii=1;partners_map.n=$(className).children('div.partners_list_under_wrapper').length;var pos=1;$(className).children('div.partners_list_under_wrapper').each(function(index){$(this).addClass('pos_'+pos);pos++;});partners_map.active=0;partners_map.showAllMarkers(className);},skoczDoAdresu:function(firmName,cityName,zipCode,countryName,addressName,tel1,tel2,email,www,wwwAdress,img,index){var adres=addressName+' , '+zipCode+' , '+cityName+' , '+countryName;partners_map.geokoder.geocode({address:adres},function(wyniki,status)
{if(status==google.maps.GeocoderStatus.OK)
{partners_map.timeout=100;partners_map.active++;partners_map.ii++;var content='<div class="dymekWrapper"><div class="dymekInfo"><span class="dymekFirmName">'+firmName+'</span><span class="dymekAddress">'+addressName+'</span><span class="dymekZipCode">'+zipCode+'</span><span class="dymekCityName">'+cityName+'</span><span class="dymekCountryName">'+countryName+'</span><span class="dymekTel1">'+tel1+'</span><span class="dymekTel2">'+tel2+'</span><a class="dymekEmail" href="mailto:'+email+'">'+email+'</a><a class="dymekWWW" target="_blank" href="http://'+wwwAdress+'">'+www;if(img!=''){content+='</a></div><img class="dymekImg" src="'+img+'"/></div>';}
else
{content+='</div>';}
partners_map.contentsArray.push(content);$(index).attr('rel',partners_map.active);$(index).addClass('find');$(index).find('a.show_on_map.').fadeTo('normal',1.0,function(){});partners_map.mapa.setCenter(wyniki[0].geometry.location);var opcjeMarkera={title:firmName};opcjeMarkera.position=wyniki[0].geometry.location;opcjeMarkera.map=partners_map.mapa;if(partners_map.markerAnimation)
opcjeMarkera.animation=google.maps.Animation.DROP;if($('img.marker_face').attr('src')!=''&&markerPartnersCustomIcon)
{opcjeMarkera.icon=partners_map.markerIcon;}
var marker=new google.maps.Marker(opcjeMarkera);partners_map.markersArray.push(marker);google.maps.event.addListener(marker,'click',function(zdarzenie)
{partners_map.markerInfo.setContent(content);partners_map.markerInfo.setPosition(marker.getPosition());partners_map.markerInfo.open(partners_map.mapa);$('div.dymekWrapper a').first().addClass('dymekFirstLink');});if(partners_map.ii<=partners_map.n)
$('span.loadingMarkersComplete').text(partners_map.ii);if(partners_map.ii>partners_map.n)
{setTimeout(function(){$('div.loadingMap').fadeOut('normal',function(){});},partners_map.timeout);$('a.partners_show_city_button').css('cursor','pointer');$('a.partners_show_city_button').animate({opacity:1},200,function(){});partners_map.searching=false;}}
else if(status==google.maps.GeocoderStatus.OVER_QUERY_LIMIT)
{$(index).addClass("noFind");partners_map.timeout+=50;setTimeout(function(){partners_map.skoczDoAdresu(firmName,cityName,zipCode,countryName,addressName,tel1,tel2,email,www,wwwAdress,img,index);},partners_map.timeout);}
else
{partners_map.ii++;if(partners_map.ii<=partners_map.n)
$('span.loadingMarkersComplete').text(partners_map.ii);if(partners_map.ii>partners_map.n)
{setTimeout(function(){$('div.loadingMap').fadeOut('normal',function(){});},partners_map.timeout);partners_map.alignSelectedCityList(index);$('a.partners_show_city_button').css('cursor','pointer');$('a.partners_show_city_button').animate({opacity:1},200,function(){});partners_map.searching=false;}}});},showAllMarkers:function(obj){$(obj).children('div.partners_list_under_wrapper').each(function(index){partners_map.alignSelectedCityList($(this));partners_map.alignList=true;var index=$(this);var firmName=$.trim($(this).find('span.city_firm_name').text());var name=$.trim($(this).find('span.city_name').text());var lastName=$.trim($(this).find('span.city_lastname').text());var cityName=$.trim($(this).find('span.city_city').text());var zipCode=$.trim($(this).find('span.city_zipcode').text());var countryName=$.trim($(this).find('span.city_country').text());var addressName=$.trim($(this).find('span.city_address').text());var tel1=$.trim($(this).find('span.city_tel1').text());var tel2=$.trim($(this).find('span.city_tel2').text());var email=$.trim($(this).find('a.city_email').text());var www=$.trim($(this).find('a.city_www').text());var wwwAdress=$.trim($(this).find('a.city_www').attr('href'));var img=$.trim($(this).find('img.city_img').attr('src'));setTimeout(function(){partners_map.skoczDoAdresu(firmName,cityName,zipCode,countryName,addressName,tel1,tel2,email,www,wwwAdress,img,index);},partners_map.timeout);});$('span.loadingMarkersComplete').text(partners_map.ii);$('span.loadingMarkersCount').text(partners_map.n);},deleteOverlays:function(){if(partners_map.markersArray){for(i in partners_map.markersArray){partners_map.markersArray[i].setMap(null);}
partners_map.markersArray.length=0;partners_map.contentsArray.length=0;}
$('div.partners_list_under_wrapper').removeAttr('rel');$('div.partners_list_under_wrapper').removeClass('noFind');},markerOnClick:function(obj){$('html, body').animate({scrollTop:0},'normal');if($(obj).parent().parent().attr('rel')!==undefined)
{var index=parseInt($(obj).parent().parent().attr('rel'));partners_map.markerInfo.setContent(partners_map.contentsArray[index-1]);partners_map.markerInfo.setPosition(partners_map.markersArray[index-1].getPosition());partners_map.markerInfo.open(partners_map.mapa);}
else if(!($(obj).parent().parent().attr('rel')!==undefined))
{partners_map.markerInfo.close(partners_map.mapa);}},showCityList:function(){if(!partners_map.searching)
{partners_map.clearSearch=false
$('body').dialog({'content':$('#partners_list_city_pop').clone().show()});var leftTmp=parseInt($('#dialog_wrapper').css('margin-left'));var widthTmp=$('#dialog_wrapper').width();$('#dialog_wrapper').css('width',($('div#partners_list_city_pop').width()+'px'));$('#dialog_wrapper_sub').css('padding','0');$('#dialog_wrapper_sub').css('max-height','100%');widthTmp=($('#dialog_wrapper').width()-widthTmp)/2;var marginLeftNew=leftTmp-widthTmp;$('#dialog_wrapper').css('margin-left',marginLeftNew+'px');$('#dialog_wrapper_sub div.partners_list_city_list_wrapper').attr('id','city_list');}},clearInput:function(obj){if(!partners_map.clearSearch)
{$(obj).attr("value","");partners_map.clearSearch=true;}}}
$(document).ready(function(){if(typeof mapSiteType!='undefined')
if(mapSiteType=='partners'&&google_api_key!='')
{var loadingMapWidth=$('div.loadingMap').width()/2;var loadingMapHeight=$('div.loadingMap').height()/2;var loadingBoxWidth=$('div.loadingBox').width()/2;var loadingBoxHeight=$('div.loadingBox').height()/2;var loadingBoxLeft=loadingMapWidth-loadingBoxWidth;var loadingBoxTop=loadingMapHeight-loadingBoxHeight;partners_map.google_api_key=google_api_key;$('div.loadingBox').css('left',loadingBoxLeft);$('div.loadingBox').css('top',loadingBoxTop);$('div.loadingBox').fadeTo('normal',1.0,function(){});partners_map.google_api_key=google_api_key;partners_map.loadGoogleMapsAPI(partners_map.mapInit);partners_map.checkCountry();}});