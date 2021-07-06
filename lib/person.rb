class Person
  attr_accessor :bank_account
  attr_reader :name,:happiness,:hygiene
  NAMES = []

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
    NAMES << @name
  end

  def clean?
    if @hygiene > 7
      true
    else
      false
    end
  end

  def happy?
    if @happiness > 7
      true
    else
      false
    end
  end
  def happiness=(happiness)
    @happiness = happiness
    if @happiness > 10
      @happiness = 10
    elsif @happiness < 0
      @happiness = 0
    end
  end
  def hygiene=(hygiene)
    @hygiene = hygiene
    if @hygiene > 10
      @hygiene = 10
    elsif @hygiene < 0
      @hygiene = 0
    end
  end

  def get_paid(salary)
    @bank_account += salary
    p "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    p "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness += 2
    self.hygiene -= 3
    p "♪ another one bites the dust ♫"
  end

  def call_friend(callee)
    callee.happiness += 3
    self.happiness += 3
    p "Hi #{callee.name}! It's #{@name}. How are you?"
  end

  def start_conversation(callee, topic)
    if topic  == "politics"
      callee.happiness -= 2
      self.happiness -= 2
      p "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      callee.happiness += 1
      self.happiness += 1
      p "blah blah sun blah rain"
    else
      p "blah blah blah blah blah"
    end
  end
end
