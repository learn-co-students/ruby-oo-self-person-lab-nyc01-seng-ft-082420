require 'pry'
class Person
  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account

  def initialize(name="Vlad",bank_account=25, happiness=8, hygiene=8)
    @name = name
    @bank_account = bank_account
    @happiness = happiness
    @hygiene = hygiene
  end
def hygiene= (num)
  @hygiene = num
  if @hygiene > 10
    @hygiene = 10
  elsif @hygiene < 0
    @hygiene = 0
  end
end
def happiness= (num)
  @happiness = num
  if @happiness > 10
    @happiness = 10
  elsif @happiness < 0
    @happiness = 0
  end
end
# def limit(arg)
#   #  arg = @happiness
#   arg.clamp(0,10)
# end

def clean?
    if hygiene > 7
        return true
    else
        return false 
    end
end

def happy?
    if happiness > 7
        return true
    else
        return false 
    end
end

def get_paid(arg)
    salary_amount = arg.to_i
    self.bank_account = salary_amount + bank_account
    return "all about the benjamins"
end

def take_bath
  self.hygiene = self.hygiene + 4
  # @hygiene = limit(@hygiene)
  return "♪ Rub-a-dub just relaxing in the tub ♫"
end

def work_out
  self.hygiene -= 3
  self.happiness += 2
  return "♪ another one bites the dust ♫"
end
def call_friend(friend)
  self.happiness+=3
  friend.happiness+=3
  return "Hi #{friend.name}! It's #{self.name}. How are you?"
end
def start_conversation(person, topic)
  if topic == 'politics'
      self.happiness -= 2
      person.happiness -=2
      return "blah blah partisan blah lobbyist"
  elsif topic == 'weather'
      self.happiness +=1
      person.happiness +=1
      return 'blah blah sun blah rain'
  else
      return 'blah blah blah blah blah'
  end

end
#binding.pry
end
