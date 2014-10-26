function Player(name){
  var name = name;

}

function Deck(){
  var cards_in_suit = [
    new Card("A"),
    new Card("2"),
    new Card("3"),
    new Card("4"),
    new Card("5"),
    new Card("6"),
    new Card("7"),
    new Card("8"),
    new Card("9"),
    new Card("10"),
    new Card("J"),
    new Card("Q"),
    new Card("K")];
  var cards = cards_in_suit.clone().concat(cards_in_suit.clone()).concat(cards_in_suit.clone()).concat(cards_in_suit.clone());

  var cards_remaining = function(){
    cards.reduce
  }
}


function Card(input){
  this.num = input;
}
