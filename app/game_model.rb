class Game
  attr_accessor :center_stack
  def initialize(players=[])
    # @players = players
    # @center_stack = Stack.new_deck
  end

  def score
    # scoreboard = Hash.new
    # @players.each do |player|
    #   scoreboard[player.name] = player.card_count
    # end
    # scoreboard["current_card"] = @center_stack.last.number || ""
    # return scoreboard
  end

  def total_num_cards
    # @players.reduce(0){|sum, player| sum + player.card_count}
  end

  def add_player(name)
    # card_count_goal = new_player_card_count
    # new_player = Player.new(name)
    # if @player.length == 0
    #   new_player.add_stack(@center_stack)
    #   @center_stack = []
    # else
    #   @players.push(distribute_cards(new_player, card_count_goal))
    # end
  end

  private
  def new_player_card_count
    # case @player.length
    # when 0
    #   52
    # when 1
    #   26
    # else
    #   [@players.min_by{|player| player.card_count }.card_count, 1].max
    #   # get the card count of the current loser
    # end
  end

  def distribute_cards(player, goal)
    # until true
    #   @players.each do |current_player|
    #     if player.card_count < goal
    #       player.add_card(current_player.remove_card)
    #     else
    #       return player
    #     end
    #   end
    # end
    #really not sure if this is the best way to write this
  end

end

class Player
  attr_reader :name, :stack
  def initialize(name, stack)
    # @name = name
    # @stack = stack
  end

  def card_count
    # @stack.count
  end

  def add_card(card)
    # @stack.add_card(card)
  end

  def add_stack(stack)
    # @stack.add_stack(stack)
  end

  def remove_card
    # @stack.sample
  end
end

class Stack
  attr_reader :cards
  def initialize(cards=[])
    # @cards = cards
  end

  def add_card(card)
    # @cards.push(card)
  end

  def check_dup
    # count = Hash.new
    # @cards.each do |card|
    #   count[card.number]+=1
    # end
    # count.values.max != 1
    # if 1, then false, if there is dup, then true
  end

  def count
    # @cards.length
  end

  def add_stack(stack)
    # @cards = @cards.concat(stack.cards)
  end

  def sample
    # @cards.sample
  end

  def self.new_deck
    # this is an array of all possible cards, used mostly for initialization and testing purposes
    # should this be its own class or standalone object?
    # and how will that fit into testing?
    # deck = []
    # ["hearts", "spades", "clubs", "diamonds"].each do |suit|
    #   ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"].each do |num|
    #     deck.push(Card.new(suit, number))
    #   end
    # end
    # return deck
  end
end

class Card
  attr_reader :suit, :number
  def initialize(suit, number)
    # @suit = suit
    # @number = number
  end
end

class Message
# 5 scenarios to consider
# 1. when a player joins
# 2. when a player deals
# 3. when a player slaps correctly
# 4. when a player slaps incorrectly
# 5. when a player leaves

end
