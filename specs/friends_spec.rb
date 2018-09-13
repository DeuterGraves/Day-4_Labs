require( 'minitest/autorun' )
require( 'minitest/rg')
require_relative( '../friends' )

class TestFriends < MiniTest::Test

  def setup

    @person1 = {
      name: "Shaggy",
      age: 12,
      monies: 1,
      friends: ["Velma","Fred","Daphne", "Scooby"],
      favourites: {
        tv_show: "Friends",
        snacks: ["charcuterie"]
      }
    }

    @person2 = {
      name: "Velma",
      age: 15,
      monies: 2,
      friends: ["Fred"],
      favourites: {
        tv_show: "Baywatch",
        snacks: ["soup", "twizzlers","bread"]
      }
    }

    @person3 = {
      name: "Scooby",
      age: 18,
      monies: 20,
      friends: ["Shaggy", "Velma"],
      favourites: {
        tv_show: "Pokemon",
        snacks: ["Scooby snacks"]
      }
    }

    @person4 = {
      name: "Fred",
      age: 18,
      monies: 20,
      friends: ["Shaggy", "Velma", "Daphne"],
      favourites: {
        tv_show: "X-Files",
        snacks: ["spaghetti", "ratatouille"]
      }
    }

    @person5 = {
      name: "Daphne",
      age: 20,
      monies: 100,
      friends: [],
      favourites: {
        tv_show: "X-Files",
        snacks: ["chocolate","spinach"]
      }
    }

    @people = [@person1, @person2, @person3, @person4, @person5]

  end

  # 1. For a given person, return their name
  def test_getting_name
    result = get_name(@person5)
    assert_equal("Daphne", result)
  end

  # 2. For a given person, return their favourite tv show
  # (e.g. the function favourite_tv_show(@person2) should return the string "Baywatch")
  def test_gets_favoutite_tv_show
    result = gets_favoutite_tv_show(@person2)
    assert_equal("Baywatch", result)
  end



  # 3. For a given person, check if they like a particular food
  # (e.g. the function likes_to_eat(@person2, "bread") should return true, likes_to_eat(@person3, "spinach") should return false)

def test_likes_to_eat_true
  result = likes_to_eat(@person2, "bread")
  assert_equal(true, result)
end

def test_likes_to_eat_false
  result = likes_to_eat(@person3, "spinach")
  assert_equal(false, result)
end


  # 4. For a given person, add a new name to their list of friends
  # (e.g. the function add_friend(@person2, "Scrappy-Doo") should add Scrappy-Doo to the friends.)
  # (hint: This function should not return anything. After the function call, check for the length of the friends array to test it!)
def test_add_friend
  result = add_friend(@person2, "Scrappy-Doo")
  friend_length = @person2[:friends].length
  assert_equal(2 , friend_length)
end




  # 5. For a given person, remove a specific name from their list of friends
  # (hint: Same as above, testing for the length of the array should be sufficient)
  def test_unfriend
    result = unfriend(@person1, "Fred")
    friend_length = @person1[:friends].length
    assert_equal(3, friend_length)
  end

# also runs a test checking the array length after deleting a friend that doesn't exist to make sure that it's not doing anything it shouldn't

  # 6. Find the total of everyone's money
  # (hint: use the @people array, remember how we checked the total number of eggs yesterday?)

  def test_total_money
    result = total_money(@people)
    assert_equal(143, result)
  end
  
  # assert_equal(143, total_money(@people))


  # 7. For two given people, allow the first person to loan a given value of money to the other
  # (hint: our function will probably need 3 arguments passed to it... the lender, the lendee, and the amount for this function)
  # (hint2: You should test if both the lender's and the lendee's money have changed, maybe two assertions?)

def test_financial_loan
  result = financial_loan(@person5, @person1, 42)
  lender_purse = @person5[:monies]
  lendee_purse = @person1[:monies]
  assert_equal(58 , lender_purse)
  assert_equal(43 , lendee_purse)
end
  
  # didn't need variables - assert_equal(58, @person5[:monies]

def test_financial_loan1
  result = financial_loan(@person5, @person1, 42)
  lender_purse = @person5[:monies]
  assert_equal(58 , lender_purse)
end

def test_financial_loan2
  result = financial_loan(@person5, @person1, 42)
  lendee_purse = @person1[:monies]
  assert_equal(43 , lendee_purse)

end

  # 8. Find the set of everyone's favourite food joined together
  # (hint: concatenate the favourites/snack arrays together)
# get an array of everyone's food.
  
  # creates a variable holding the array of all the food for the test

  # 9. Find people with no friends
  # (hint: return an array, there might be more people in the future with no friends!)
  
  # array needed in function, not necessarily in test. 

end
