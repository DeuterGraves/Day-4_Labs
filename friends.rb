def get_name(person)
  return person[:name]
end


def gets_favoutite_tv_show(person)
  return person[:favourites][:tv_show]
end

def likes_to_eat(person, food)
  for snack in person[:favourites][:snacks]
    if food.downcase == snack.downcase
      return true
    end
  end
  return false
end

def add_friend(person, new_friend)
  person[:friends].push(new_friend)
end




def unfriend(person, frennemy)
  person[:friends].delete(frennemy)
end

def total_money(people)
  total_money = 0
  for person in people
    total_money += person[:monies]
  end
  return total_money
end

def financial_loan(lender, lendee, amount)
  lender[:monies] -= amount
  lendee[:monies] += amount

end
