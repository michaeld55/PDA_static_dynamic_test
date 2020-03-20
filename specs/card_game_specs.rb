require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../card_game.rb')
require_relative('../card.rb')

class TestCardGame < Minitest::Test

  def setup()
    @card_game = CardGame.new()
    @card1 = Card.new("Spade", 2)
    @card2 = Card.new("Spade", 3)
    @card3 = Card.new("Spade", 4)
    @card4 = Card.new("Hearts", 2)
    @card5 = Card.new("Hearts", 1)
    @cards = [@card1, @card2, @card3, @card4, @card5]
  end

  def test_checkforAce

    @card_game.checkforAce(@card5)
    assert(true)
    assert_equal(false, @card_game.checkforAce(@card1) )

  end

  def test_highest_card
    @card_game.highest_card( @card1, @card5 )
    assert_equal( @card1, @card1 )
  end

  def test_cards_total
    CardGame.cards_total(@cards)
    @cards = @cards.reduce(0){|total, card| total += card.value}
    assert_equal( 12, @cards )

  end

end
