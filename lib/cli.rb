require 'tty-prompt'

class Cli
    @@prompt = TTY::Prompt.new
    
    puts "Hello! Welcome to Mood Events!" 
    
    def mood_menu
        puts "Let's find something to do based on your mood!"
        mood_choice = @@prompt.select("How are you feeling today?", ["Pumped!", "Active", "Feeling Social", "Chill", "Introverted", "Stressed", "Not sure, surprise me!"])
        
        case mood_selection
        when "Pumped"
            if mood_choice == "Pumped!"
                puts "Let's get pumped up!"
                system("clear")
            else
                puts "Please choose another mood."
                system("clear")
                mood_menu 
            end
        end
    end

    def pumped
        
    end

    def active
        
    end

    def social
        
    end

    def chill

    end

    def introverted
        
    end

    def stressed
        
    end
 end