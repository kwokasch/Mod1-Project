
    def mood_menu
        puts "Let's find something to do based on your mood!"
        mood_choice = @@prompt.select("How are you feeling today?", 
            ["Feeling PUMPED!".red, "Feeling Active".light_red, 
            "Feeling Social".yellow, "Feeling Chill".light_cyan, 
            "Feeling Introverted".cyan, "Feeling Stressed".blue, "Not sure, surprise me!".light_magenta])
        
        pumped = "Feeling PUMPED!".red
        active = "Feeling Active".light_red
        social = "Feeling Social".yellow
        chill = "Feeling Chill".light_cyan
        introverted = "Feeling Introverted".cyan
        stressed = "Feeling Introverted".cyan
        surprise = "Not sure, surprise me!".light_magenta

        if mood_choice == pumped
            system("clear")
            puts "Let's get pumped up!".red 
            event_choice = @@prompt.select("Choose one:", ["Fizz Fight - A Hard Seltzer Festival", "David Bowie X Queen", "EVENT 3", "Pick a different mood"])
            system("clear")

            if event_choice == "Fizz Fight - A Hard Seltzer Festival"
                puts "Here's your event info!:"
                puts " "

                found_event("PUMPED!", 0)
                event_info
                

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
        elsif mood_choice == active
            system("clear")
            puts "Let's get moving!".light_red 
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
        elsif mood_choice == social
            system("clear")
            puts "Let's get social!".yellow 
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
        elsif mood_choice == chill
            system("clear")
            puts "Let's be chill.".light_cyan 
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
        elsif mood_choice == introverted
            system("clear")
            puts "Let's fly solo.".cyan 
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
        elsif mood_choice == stressed
            system("clear")
            puts "Let's blow off some steam.".blue 
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
        elsif mood_choice == surprise
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