def get_name(person)
  return person[:name]
end

def favourite_tv_show(person)
  return person[:favourites][:tv_show]
end

def likes_to_eat(person, food)
  result = person[:favourites][:snacks].include?(food)
  return result
end

def add_friend(person, friend)
  person[:friends].push(friend)
end

def remove_friend(person, friend)
  person[:friends].delete(friend)
end

def total_money(people)
  total = 0
  for person in people
    total += person[:monies]
  end
  return total
end

def loan(lender, lendee, amount)
  lender[:monies] -= amount
  lendee[:monies] += amount
end

def join_snacks(people)
  all_snacks = []
  for person in people
    all_snacks.concat person[:favourites][:snacks]
  end
  return all_snacks
end

def no_mates(people)
  lonely_people = []
  for person in people
    if person[:friends].empty?
      lonely_people << person[:name]
    end
  end
  return lonely_people
end
