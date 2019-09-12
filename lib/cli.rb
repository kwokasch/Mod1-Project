
require 'tty-prompt'

class Cli
    @@prompt = TTY::Prompt.new

    puts "Hello! Welcome to Mood Events!"

    def mood_menu
        puts "Let's find something to do based on your mood!"
        mood_choice = @@prompt.select("How are you feeling today?", ["PUMPED!", "Active", "Social", "Chill", "Introverted", "Stressed", "Not sure, surprise me!"])
   
        if mood_choice == "PUMPED!"
            system("clear")
            puts "Let's get pumped up!" 
            event_choice = @@prompt.select("Choose one:", ["Fizz Fight - A Hard Seltzer Festival", "David Bowie X Queen", "EVENT 3", "Pick a different mood"])
            system("clear")

            if event_choice == "Fizz Fight - A Hard Seltzer Festival"
                puts "Here's your event info!:"
                puts " "

                found_event = Mood.find_by(name: "PUMPED!").events[0]
                puts found_event.name
                puts found_event.description
                puts found_event.date
                puts found_event.time
                puts found_event.location
                puts " "
            elsif event_choice == "David Bowie X Queen"
                puts "Here's your event info!:"
                puts " "
                
                found_event = Mood.find_by(name: "PUMPED!").events[1]
                puts found_event.name
                puts found_event.description
                puts found_event.date
                puts found_event.time
                puts found_event.location
                puts " "
            elsif event_choice == "EVENT 3"
                puts "Here's your event info!:"
                puts " "
                
                found_event = Mood.find_by(name: "PUMPED!").events[2]
                puts found_event.name
                puts found_event.description
                puts found_event.date
                puts found_event.time
                puts found_event.location
                puts " "
            elsif event_choice == "Pick a different mood"
                mood_menu
            end
        elsif mood_choice == "Active"
            system("clear")
            puts "Let's get moving!" 
            event_choice = @@prompt.select("Choose one:", ["EVENT 1", "EVENT 2", "EVENT 3", "Pick a different mood"])
        
            if event_choice == "EVENT 1"
                puts "Here's your event info!:"
                puts " "
                
                found_event = Mood.find_by(name: "Active").events[0]
                puts found_event.name
                puts found_event.description
                puts found_event.date
                puts found_event.time
                puts found_event.location
                puts " "
            elsif event_choice == "EVENT 2"
                puts "Here's your event info!:"
                puts " "
                
                found_event = Mood.find_by(name: "Active").events[1]
                puts found_event.name
                puts found_event.description
                puts found_event.date
                puts found_event.time
                puts found_event.location
                puts " "
            elsif event_choice == "EVENT 3"
                puts "Here's your event info!:"
                puts " "
                
                found_event = Mood.find_by(name: "Active").events[2]
                puts found_event.name
                puts found_event.description
                puts found_event.date
                puts found_event.time
                puts found_event.location
                puts " "
            elsif event_choice == "Pick a different mood"
                mood_menu
            end
        elsif mood_choice == "Social"
            system("clear")
            puts "Let's get social!" 
            event_choice = @@prompt.select("Choose one:", ["EVENT 1", "EVENT 2", "EVENT 3", "Pick a different mood"])
        
            if event_choice == "EVENT 1"
                puts "Here's your event info!:"
                puts " "
                
                found_event = Mood.find_by(name: "Feeling social").events[0]
                puts found_event.name
                puts found_event.description
                puts found_event.date
                puts found_event.time
                puts found_event.location
                puts " "
            elsif event_choice == "EVENT 2"
                puts "Here's your event info!:"
                puts " "

                found_event = Mood.find_by(name: "Feeling social").events[1]
                puts found_event.name
                puts found_event.description
                puts found_event.date
                puts found_event.time
                puts found_event.location
                puts " "
            elsif event_choice == "EVENT 3"
                puts "Here's your event info!:"
                puts " "

                found_event = Mood.find_by(name: "Feeling social").events[2]
                puts found_event.name
                puts found_event.description
                puts found_event.date
                puts found_event.time
                puts found_event.location
                puts " "
            elsif event_choice == "Pick a different mood"
                mood_menu
            end
        elsif mood_choice == "Chill"
            system("clear")
            puts "Let's be chill." 
            event_choice = @@prompt.select("Choose one:", ["EVENT 1", "EVENT 2", "EVENT 3", "Pick a different mood"])
        
            if event_choice == "EVENT 1"
                puts "Here's your event info!:"
                puts " "

                found_event = Mood.find_by(name: "Chill").events[0]
                puts found_event.name
                puts found_event.description
                puts found_event.date
                puts found_event.time
                puts found_event.location
                puts " "
            elsif event_choice == "EVENT 2"
                puts "Here's your event info!:"
                puts " "

                found_event = Mood.find_by(name: "Chill").events[1]
                puts found_event.name
                puts found_event.description
                puts found_event.date
                puts found_event.time
                puts found_event.location
                puts " "
            elsif event_choice == "EVENT 3"
                puts "Here's your event info!:"
                puts " "

                found_event = Mood.find_by(name: "Chill").events[2]
                puts found_event.name
                puts found_event.description
                puts found_event.date
                puts found_event.time
                puts found_event.location
                puts " "
            elsif event_choice == "Pick a different mood"
                mood_menu
            end
        elsif mood_choice == "Introverted"
            system("clear")
            puts "Let's have some alone time." 
            event_choice = @@prompt.select("Choose one:", ["EVENT 1", "EVENT 2", "EVENT 3", "Pick a different mood"])
        
            if event_choice == "EVENT 1"
                puts "Here's your event info!:"
                puts " "

                found_event = Mood.find_by(name: "Introverted").events[0]
                puts found_event.name
                puts found_event.description
                puts found_event.date
                puts found_event.time
                puts found_event.location
                puts " "
            elsif event_choice == "EVENT 2"
                puts "Here's your event info!:"
                puts " "

                found_event = Mood.find_by(name: "Introverted").events[1]
                puts found_event.name
                puts found_event.description
                puts found_event.date
                puts found_event.time
                puts found_event.location
                puts " "
            elsif event_choice == "EVENT 3"
                puts "Here's your event info!:"
                puts " "

                found_event = Mood.find_by(name: "Introverted").events[2]
                puts found_event.name
                puts found_event.description
                puts found_event.date
                puts found_event.time
                puts found_event.location
                puts " "
            elsif event_choice == "Pick a different mood"
                mood_menu
            end
        elsif mood_choice == "Stressed"
            system("clear")
            puts "Let's blow off some steam." 
            event_choice = @@prompt.select("Choose one:", ["EVENT 1", "EVENT 2", "EVENT 3", "Pick a different mood"])
        
            if event_choice == "EVENT 1"
                puts "Here's your event info!:"
                puts " "

                found_event = Mood.find_by(name: "Stressed").events[0]
                puts found_event.name
                puts found_event.description
                puts found_event.date
                puts found_event.time
                puts found_event.location
                puts " "
            elsif event_choice == "EVENT 2"
                puts "Here's your event info!:"
                puts " "

                found_event = Mood.find_by(name: "Stressed").events[1]
                puts found_event.name
                puts found_event.description
                puts found_event.date
                puts found_event.time
                puts found_event.location
                puts " "
            elsif event_choice == "EVENT 3"
                puts "Here's your event info!:"
                puts " "

                found_event = Mood.find_by(name: "Stressed").events[2]
                puts found_event.name
                puts found_event.description
                puts found_event.date
                puts found_event.time
                puts found_event.location
                puts " "
            elsif event_choice == "Pick a different mood"
                mood_menu
            end
        elsif mood_choice == "Not sure, surprise me!"
            system("clear")
            puts "Here's your event info!:"
            puts " "

            random_event = Event.all.sample
            puts random_event.name
            puts random_event.description
            puts random_event.date
            puts random_event.time
            puts random_event.location
            puts " "
        end
    end
end