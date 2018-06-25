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

class CoffeeError < StandardError
  def message
    "Hey! That's not coffee! Try again!"
  end
end

class FruitError < StandardError
  def message
    "That's not a fruit I know. Try again, but give me coffee first."
  end
end

def reaction(maybe_fruit)
  if FRUITS.include? maybe_fruit
    puts "OMG, thanks so much for the #{maybe_fruit}!"
    return true
  end
  false
end


def feed_me_a_fruit
  puts "Hello, I am a friendly monster. :)"
  begin
    puts "Feed me a fruit! (Enter the name of a fruit:)"
    maybe_fruit = gets.chomp
    first_response = reaction(maybe_fruit)
    raise FruitError.new unless first_response
    rescue FruitError => e
      puts e.message
      begin
        print "Coffee, pretty please: "
        maybe_coffee = gets.chomp
        raise CoffeeError.new unless maybe_coffee == "coffee"
        rescue CoffeeError => e
          puts e.message
          retry
        end
      retry
    end
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
