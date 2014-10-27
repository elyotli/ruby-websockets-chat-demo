$(function(){
  var uri      = window.document.location.host + "/";

  var player = new Player("Vince");
  var ws       = new WebSocket(uri);

  var deal_button = $('#deal');
  var slap_button = $('#slap');

  deal_button.on('click', function(event){
    event.preventDefault();
    ws.send("deal");
  })

  slap_button.on('click', function(event){
    event.preventDefault();
    ws.send("click");
  })


  ws.onmessage = function(message) {
    //getting message back from server, could be
    //  a new card being dealt
    //  a player made a
  console.log('received something');
  console.log(message.data);

  };
});
