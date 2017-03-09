// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

// window.updateMessagesViaJSON = function() {
//   console.log("inside updateMessagesViaJSON");
//   $.getJSON("http://localhost:3000/rooms/1/messages.json", function(messages) {
    
//     // you can use $(".messages").append("blah") 
//     // to add blah to the <div class="messages">...</div> element
//   })
// }

window.updateMessagesViaJSON = function() {

  $.getJSON( "http://localhost:3000/rooms/1/messages.json", function( data ) {
    var items = [];
    $.each( data, function( key, val ) {
      console.log(key, val)
    });
  });

  location.reload(true);
}

window.updateMessagesViaJS = function() {
  $.getScript("/app/views/messages/create.js.erb", function (data) {
    
  });
  
}