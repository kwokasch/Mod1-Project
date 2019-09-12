
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
            
            if event_choice == "Fizz Fight - A Hard Seltzer Festival"
                system("clear")
                found_event = Mood.find_by(name: "PUMPED!").events[0]
                puts found_event.name
                puts found_event.description
                puts found_event.date
                puts found_event.time
                puts found_event.location
            elsif event_choice == "David Bowie X Queen"
                system("clear")
                found_event = Mood.find_by(name: "PUMPED!").events[1]
                puts found_event.name
                puts found_event.description
                puts found_event.date
                puts found_event.time
                puts found_event.location
            end
            # binding.pry
        else
            # system("clear")
            puts "Please choose another mood."            
            #mood_menu 
        end
    end
    
end