
require 'tty-prompt'

class Cli
    @@prompt = TTY::Prompt.new

    puts "Hello! Welcome to Mood Events!"

    def mood_menu
        puts "Let's find something to do based on your mood!"
        mood_choice = @@prompt.select("How are you feeling today?", ["PUMPED!", "Active", "Feeling Social", "Chill", "Introverted", "Stressed", "Not sure, surprise me!"])
        mood_selection
    end

    def mood_selection
        if mood_choice == "Pumped!"
            system("clear")
            puts "Let's get pumped up!"            
            #pumped
        else
            system("clear")
            puts "Please choose another mood."            
            mood_menu 
        end
    end

    # def pumped
    #     MoodEvent[:mood] == pumped
    #     puts
        
    
end