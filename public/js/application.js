$(document).ready(function(e){

  $('#create').submit(function(e){
    e.preventDefault();
    // alert("NICE!")

    var data =  {
       name : $('#name').val(),
       location : $('#location').val(),
       starts_at : $('#starts_at').val(),
       ends_at : $('#ends_at').val()
       }

    $.post('/create_event', data, function(response){
    	$('#event_list li:first-child').prepend(response)
    	console.log('hi')
    })
  })
});