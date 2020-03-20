require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../card_game.rb')
require_relative('../card.rb')

class TestCardGame < Minitest::Test

  def setup()

    @card1 = Card.new("Spade", 2)
    @card2 = Card.new("Spade", 3)
    @card3 = Card.new("Spade", 4)
    @card4 = Card.new("Hearts", 2)
    @card5 = Card.new("Hearts", 1)

  end

  def test_checkforAce
    checkforAce(@card1)
    assert(false)

  end

end
