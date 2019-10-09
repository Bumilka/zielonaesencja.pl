
app_shop.run(function(){$('.pb_icon img.rwd-src').each(function(){$this=$(this);$this.attr('src',app_shop.fn.getRwdSrc($this))})},[1,2,3,4],'#products_bought')
var products_bought_next=''
function ajaxProductsBought(urlAjax,obj){$.ajax({url:urlAjax,timeout:8000,complete:function(request,settings){if(request.status!=200){window.location=products_bought_next;}},error:function(){window.location=products_bought_next;},success:function(data,textStatus,jqXHR){if(jqXHR.status==200){trOBJ=$(data).find("#pb_list div.pb_product").parent();trOBJ.addClass('new_load_items');nextLink=$(data).find("#pb_paging_bottom a.next").prop('href');if(nextLink){$("#pb_paging_bottom a.next").prop('href',nextLink)
$("#pb_paging_bottom").removeClass('loadingInProgress');}else{$("#pb_paging_bottom").hide();}
$('#pb_list .products_wrapper').append(trOBJ);$('.new_load_items .pb_icon img.rwd-src').each(function(){$this=$(this);$this.attr('src',app_shop.fn.getRwdSrc($this))})
$('.new_load_items').removeClass('new_load_items');}}});}
app_shop.run(function(){$(window).scroll(function(){if(app_shop.vars.view<3){if($('#pb_paging_bottom a.next').size()){if($('#pb_paging_bottom').inView()){if(!$('#pb_paging_bottom').is('.loadingInProgress')){}}}}});},[1,2],'#pb_paging_bottom a.next');