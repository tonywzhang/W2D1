# PHASE 2
def convert_to_int(str)
  begin
    Integer(str)
  rescue ArgumentError
    puts "This is not an integer."
    return nil
  end
end

# PHASE 3
FRUITS = ["apple", "banana", "orange"]

def reaction(maybe_fruit)
  if FRUITS.include? maybe_fruit
    puts "OMG, thanks so much for the #{maybe_fruit}!"
  else
    puts "That's not a fruit I know. Try again, but give me coffee first."
    print "Coffee, pretty please: "
    maybe_coffee = gets.chomp
    feed_me_a_fruit if maybe_coffee == "coffee"
  end
end


def feed_me_a_fruit

    puts "Hello, I am a friendly monster. :)"

    puts "Feed me a fruit! (Enter the name of a fruit:)"
    maybe_fruit = gets.chomp
    reaction(maybe_fruit)
#   rescue StandardError
#     puts "That's not a fruit I know. Try again, but give me coffee first."
#   retry
# end
end

class AgeError < ArgumentError

end

# PHASE 4
class BestFriend
  def initialize(name, yrs_known, fav_pastime)
    raise "Please enter a valid name." if name.length == 0
    @name = name
    raise "Years must be at least five." if yrs_known < 5
    @yrs_known = yrs_known
    raise "Please enter a valid pastime." if fav_pastime.length == 0
      @fav_pastime = fav_pastime
  end

  def talk_about_friendship
    puts "Wowza, we've been friends for #{@yrs_known}. Let's be friends for another #{1000 * @yrs_known}."
  end

  def do_friendstuff
    puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
  end

  def give_friendship_bracelet
    puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me."
  end
end
