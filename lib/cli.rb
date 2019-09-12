
require 'tty-prompt'

class Cli
    @@prompt = TTY::Prompt.new

    puts "Hello! Welcome to Mood Events!"

    def mood_menu
        puts "Let's find something to do based on your mood!"
        mood_choice = @@prompt.select("How are you feeling today?", ["PUMPED!", "Active", "Feeling Social", "Chill", "Introverted", "Stressed", "Not sure, surprise me!"])
   
        if mood_choice == "PUMPED!"
            system("clear")
            puts "Let's get pumped up!" 
            event_choice = @@prompt.select("Choose one:", ["Fizz Fight - A Hard Seltzer Festival", "David Bowie X Queen"])
            
            puts Mood.find_by(name: "PUMPED!").events.map(&:name)      
            # event_info = MoodEvent.find_by(mood: test).event.name
            # puts event_info
        else
            # system("clear")
            puts "Please choose another mood."            
            #mood_menu 
        end
    end

    # def self.pumped

    #     pumped.events
    # end
        
    
end