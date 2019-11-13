
app_shop.run(function(){$('.product_question a[href="#showDescription"]').parent().on('click',function(){var $this=$(this).children('a');var icon=$this.find('i');$this.parent().next().toggle();var iconType=icon.attr('class').indexOf('caret')>-1?'caret':'angle';if(icon.attr('class')=='icon-'+iconType+'-down')
icon.attr('class','icon-'+iconType+'-up');else
icon.attr('class','icon-'+iconType+'-down');return false;});$('a#send_question_button').on('click',function(){$('.component_projector_askforproduct').dialog({wrappContent:true});return false;});},'all','#product_questions_list');