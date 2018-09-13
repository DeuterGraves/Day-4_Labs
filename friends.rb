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
