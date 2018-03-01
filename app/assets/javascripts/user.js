mySlider = $('.agt_prof_slider').slider()
mySlider.each ->
init_val = parseInt($(this).closest("td").find('.agt_prof_slider_val').text())
$(this).slider('setValue', init_val)
$('.agt_prof_slider').on 'slide', (slideEvt) ->
$(this).closest("td").find('.agt_prof_slider_val').text slideEvt.value

$('#int_skill_container').on 'cocoon:after-insert', (e, insertedItem) ->
insertedItem.find('.agt_prof_slider').first().slider()
insertedItem.find('.agt_prof_slider').first().on 'slide', (slideEvt) ->
$(this).closest("td").find('.agt_prof_slider_val').text slideEvt.value

$('#dp5').slider()
  .on('slide', function(ev){
    ....
  });
