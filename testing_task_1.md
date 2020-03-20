### Testing task 1:

# Carry out static testing on the code below.
# Comment on any errors that you see below.
```ruby
#This would need to require the file that the cards are generated.
class CardGame


  def checkforAce(card) #Name of method should be called check_for_ace (method would still run as is but doesn't follow normal style)
    if card.value = 1 #This should be if card.value == 1
      return true
    else
      return false
    end
  end

  dif highest_card(card1 card2) #Method should start with def, also the arguments need to be separated with a comma.
  if card1.value > card2.value #There is no check made to see if cards are equal which could confuse an end user if a 2 of spades is shown as lower than a 2 of another suit.
    return card # This should return card1
  else
    return card2
  end #This WHOLE If statement should be indented (Method would work if other errors fixed but doesn't follow normal style)
end #This end is not in line with start of this method (method would run if errors above were fixed but doesn't follow normal style)
end #This is an extra end and is not needed

def self.cards_total(cards) #As unsure what cards is when it's an argument this may not need to be a Class method.
  total #total is not given a value.
  for card in cards
    total += card.value
    return "You have a total of" + total # This return line should be outside the loop and it should return "You have a total of #{total}"
  end
end #An extra end is needed for the Class.
```
