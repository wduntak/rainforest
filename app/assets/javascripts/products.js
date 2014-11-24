# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.

$(document).on('ready page:load', function(){
	$('#search-form').submit(function(event) {
    event.preventDefault();
    var searchValue = $('#search').val();

    $.ajax({
      url: '/products?search=' + searchValue,
      type: 'GET',
      dataType: 'html'
    }).done(function(data){
      $('#products').html(data);
    });
  });
});