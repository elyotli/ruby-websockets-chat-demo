require_relative '../app/game_model'
require 'rspec'

describe 'Card' do
  let(:my_card){Card.new("hearts", "A")}
  it 'knows what number it is' do
    expect(my_card.suit).to eq("hearts")
  end

  it 'knows what suit it is' do
    expect(my_card.number).to eq("A")
  end
end

describe 'Stack' do
  let(:my_stack){Stack.new(Stack.new_deck)}
  #huh...doesn't seem dry there
  let(:test_card){Card.new("hearts", "A")}
  it 'should know what cards it has' do
    expect(my_stack).to eq(Stack.new_deck)
    expect(my_stack.length).to eq(52)
  end

  it 'should be able to add a new card' do
    my_stack.add_card(test_card)
    expect(my_stack.length).to eq(53)
  end

  it 'should know if there are repeat cards (by number)' do
    expect(my_stack.check_dup).to eq(false)
    my_stack.add_card(test_card)
    expect(my_stack.check_dup).to eq(true)
  end
end

describe 'Player' do
  let(:my_stack){Stack.new(Stack.new_deck)}
  let(:test_card){Card.new("hearts", "A")}
  let(:my_player){Player.new("Vince", my_stack)}

  it 'should know its name' do
    expect(my_player.name).to eq("Vince")
  end

  it 'should know its cards' do
    expect(my_player.stack).to eq(Stack.new_deck)
  end

  it 'can pull out a random card in its possession' do

  end

  it 'can add a card to its possession' do

  end

  it 'can add a stack of card to its possession' do

  end
end

describe 'Game' do
  it 'should have an array of players' do

  end

  it 'knows how many cards is in play' do

  end

  it 'should be able to generate a hash of the current scoreboard' do

  end

  describe 'Adding player' do
    it 'can find the player with least number of cards' do

    end

    it 'should be able to add a player with a set number of cards' do

    end
  end

  describe 'Removing player' do
    xit 'should be able to remove a player' do

    end

    xit 'should be able to redistribute cards to the remaining players' do

    end
  end
end

describe 'Message' do


end
