# your code goes here
# learn --fail-fast

class Person
    attr_reader :name, :bank_account, :happiness, :hygiene, :friend
  
    def initialize(name)
      @name = name
      @bank_account = 25
      @happiness = 8
      @hygiene = 8
      @friend = friend
    end
  
    def bank_account=(amount)
      @bank_account = amount
    end
  
    def happiness=(level)
      @happiness = level.clamp(0, 10)
    end
    
    def hygiene=(level)
        @hygiene = level.clamp(0, 10)
      end

      def happy?
        happiness > 7
      end

      def clean?
        hygiene > 7
      end

      def get_paid(amount)
        @bank_account += amount
        "all about the benjamins"
      end

      def take_bath
        self.hygiene += 4
        @hygiene = 10 if hygiene > 10
        "♪ Rub-a-dub just relaxing in the tub ♫"
      end

      def work_out
        self.hygiene -= 3
        @hygiene = 0 if hygiene < 0
        self.happiness += 2
        @happiness = 10 if happiness > 10
        "♪ another one bites the dust ♫"
      end

      def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        @happiness =10 if happiness > 10
        "Hi #{friend.name}! It's #{self.name}. How are you?"
      end 

      def start_conversation(person, topic)
        if topic == "politics" 
             person.happiness -= 2
             person.happiness = 0 if happiness < 0
             self.happiness -= 2
             @happiness = 0 if happiness < 0
             'blah blah partisan blah lobbyist' 

        elsif topic == "weather"
            person.happiness += 1
            person.happiness =10 if happiness > 10
            self.happiness += 1
            @happiness =10 if happiness > 10
            'blah blah sun blah rain'   
        else
            'blah blah blah blah blah'
        end

      

    
end 
end 