require 'byebug'

# PHASE 2
def convert_to_int(str)
  Integer(str)

rescue ArgumentError => e
  return nil
end

# PHASE 3
FRUITS = ["apple", "banana", "orange"]

def reaction(maybe_fruit)
  if FRUITS.include? maybe_fruit
    puts "OMG, thanks so much for the #{maybe_fruit}!"
  else
    raise ArgumentError.new("OMG, I hate that #{maybe_fruit}!")
  end
end

def feed_me_a_fruit
  puts "Hello, I am a friendly monster. :)"
  begin
  puts "Feed me a fruit! (Enter the name of a fruit:)"
  maybe_fruit = gets.chomp
  reaction(maybe_fruit)

  rescue ArgumentError => e
    retry if maybe_fruit == "coffee"
    puts "Error was: #{e.message}"
  end
end

# PHASE 4
class BestFriend
  def initialize(name, yrs_known, fav_pastime)
    if name.length < 1 || fav_pastime.length < 1
      raise "Please enter name/past time"
    end
    @name = name
    @yrs_known = yrs_known
    if yrs_known < 5
      raise "Known less than 5 years"
    end
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
