# your code goes here
class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account
    def initialize(name)
        @name = name
        @happiness = 8
        @hygiene = 8
        @bank_account = 25
    end

    def clean?
        if @hygiene > 7
            return true
        else
            return false
        end
    end

    def happy?
        if @happiness > 7
            return true
        else
            return false
        end
    end

    def happiness=(happiness)
        @happiness = happiness
        if self.happiness > 10
            @happiness = 10
        elsif self.happiness < 0
            @happiness = 0
        end
    end

    def hygiene=(hygiene)
        @hygiene = hygiene
        if self.hygiene > 10
            @hygiene = 10
        elsif self.hygiene < 0
            @hygiene = 0
        end
    end

    def get_paid(salary)
        self.bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(callee)
        callee.happiness += 3
        self.happiness +=3
        "Hi #{callee.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(callee,topic)
        if topic == "politics"
            self.happiness -= 2
            callee.happiness -=2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness+=1
            callee.happiness+=1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end
end