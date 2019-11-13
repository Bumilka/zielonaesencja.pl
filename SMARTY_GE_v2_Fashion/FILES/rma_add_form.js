
var rma_add_alert="Füllen Sie alle Felder des Formulars aus."
var rma_add_msg1="Geben Sie den Produktnamen ein"
var rma_add_msg2="Geben Sie die Seriennummer des Produkts ein"
var rma_add_msg3="Geben Sie das Kaufdatum ein"
var rma_add_msg4="Beschreiben Sie den Mangel"
var rma_add_msg5="Beschreiben Sie den Kaufort"
var rma_add_msg6="Geben Sie die Adresse an, an die Sie Rückerstattung erhalten möchten"
var rma_add_msg7="Geben Sie Ihre IBAN ein."
var rma_add_msg8="Geben Sie die Scheckdaten ein"
var rma_add_paymentTrigger=1;var rma_add={placeTrigger:0,setPlace:function(idek){$(".rma_add_form_boxsub_hidden").css("display","none");$("#"+idek).css("display","block");if(idek=='rma_add_form_buyplace_other')
{rma_add.placeTrigger=1;}
else
{rma_add.placeTrigger=0;}},setPayment:function(idek){$(".rma_add_form_boxsub2_hidden").css("display","none");$("#"+idek).css("display","block");switch(idek)
{case'rma_add_form_payp':rma_add_paymentTrigger=1;break;case'rma_add_form_payb':rma_add_paymentTrigger=2;break;case'rma_add_form_payc':rma_add_paymentTrigger=3;break;case'rma_add_form_payt':rma_add_paymentTrigger=4;break;}
rma_add.checkInps();},hideInfoText:function(id,i){if(i<1){document.getElementById(id+"_help").style.display='none';}else{setTimeout("rma_add.hideInfoText('"+id+"', "+(i-1)+")",1000);}},showInfo:function(id,error,text){if(error){document.getElementById(id+"_off").style.display='';document.getElementById(id+"_on").style.display='none';if(text){document.getElementById(id+"_help").style.display='block';document.getElementById(id+"_help").firstChild.innerHTML=text;rma_add.hideInfoText(id,5);}else{document.getElementById(id+"_help").style.display='none';}}else{document.getElementById(id+"_off").style.display='none';document.getElementById(id+"_on").style.display='';document.getElementById(id+"_help").style.display='none';}},checkInps:function(option){var inp_flag=1;if($("#rma_add_form_product").val()=='')
{inp_flag=0;if(option=='product'){rma_add.showInfo("rma_add_product",true,rma_add_msg1);}}else{if(option=='product'){rma_add.showInfo("rma_add_product",false);}}
if($("#serial_number_active").val()==1){if($("#rma_add_form_serial_number").val()=='')
{inp_flag=0;if(option=='serial_number'){rma_add.showInfo("rma_add_serial_number",true,rma_add_msg2);}}else{if(option=='serial_number'){rma_add.showInfo("rma_add_serial_number",false);}}}
if($("#rma_add_form_begin_ymd").val()=='')
{inp_flag=0;if(option=='begin_ymd'){rma_add.showInfo("rma_add_ymd",true,rma_add_msg3);}}else{if(option=='begin_ymd'){rma_add.showInfo("rma_add_ymd",false);}}
var usterka=$("#rma_add_form_desc").val();if(usterka.length<10)
{inp_flag=0;if(option=='usterka'){rma_add.showInfo("rma_add_desc",true,rma_add_msg4);}}else{if(option=='usterka'){rma_add.showInfo("rma_add_desc",false);}}
if(rma_add.placeTrigger)
{if($("#buy_place_desc").val()=='')
{inp_flag=0;if(option=='buy_place_desc'){rma_add.showInfo("buy_place_desc",true,rma_add_msg5);}}else{if(option=='buy_place_desc'){rma_add.showInfo("buy_place_desc",false);}}}
if($("#payments_active").val()==1){switch(rma_add_paymentTrigger)
{case 1:if($("#rma_add_form_przekaz").val()=='')
{inp_flag=0;if(option=='payment_addres2'){rma_add.showInfo("rma_add_przekaz",true,rma_add_msg6);}}else{if(option=='payment_addres2'){rma_add.showInfo("rma_add_przekaz",false);}}
break;case 2:var bankaccount=$("#rma_add_form_bankaccount").val();if(bankaccount.length<20)
{inp_flag=0;if(option=='payment_addres1'){rma_add.showInfo("rma_add_bankaccount",true,rma_add_msg7);}}else{if(option=='payment_addres1'){rma_add.showInfo("rma_add_bankaccount",false);}}
break;case 3:if($("#rma_add_form_czek").val()=='')
{inp_flag=0;if(option=='payment_addres3'){rma_add.showInfo("rma_add_czek",true,rma_add_msg8);}}else{if(option=='payment_addres3'){rma_add.showInfo("rma_add_czek",false);}}
break;}}
if(inp_flag)
{$("#rma_add_form_submit").removeClass("rma_add_idleb").unbind("click").bind("click",function(){$('#rma_add_form').submit();});}
else
{$("#rma_add_form_submit").addClass("rma_add_idleb").unbind("click").bind("click",function(){Alertek.show_alert(rma_add_alert);return false;});}},setTime:function(dateText,inst)
{var czas=$("#rma_add_form_begin_ymd").datepicker('getDate');$("#rma_add_form_beginy").val(czas.getFullYear());$("#rma_add_form_beginm").val(czas.getMonth()+1);$("#rma_add_form_begind").val(czas.getDate());rma_add.checkInps('begin_ymd');},chooseSite:function(idek){var wart=idek.slice(5);$(".rma_add_form_stock").removeClass("rmaf_selected");$("#"+idek).addClass("rmaf_selected");$("#rma_stock").val(wart);}}