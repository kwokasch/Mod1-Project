
require 'tty-prompt'
require 'colorize'

class Cli
    @@prompt = TTY::Prompt.new

    def main_menu
        puts "Let's live in the moment, and find something to do!"
        puts "Please select your mood."

        mood_choice = @@prompt.select("How are you feeling today?", Mood.all.map(&:name)) 

        system("clear")
        @mood = Mood.find_by(name: mood_choice)
        found_events
        puts "Here are the events for your mood! Please select one:"
        puts " "
        event_choice = @@prompt.select("Events:", found_events.pluck(:name))
        @event = Event.find_by(name: event_choice)
        event_info

        puts "Choose another event."
        
        main_menu
    end

    def found_events
        @mood.events
    end

    def event_info
        puts " "
        puts "DESCRIPTION:".cyan
        puts "#{@event.description}"
        puts " "
        puts "DATE:".light_cyan
        puts "#{@event.date}"
        puts " "
        puts "TIME:".light_blue
        puts "#{@event.time}"
        puts " "
        puts "LOCATION:".light_magenta
        puts "#{@event.location}"
        puts " "
    end

    def back_to_events
        
    end

    def return_to_menu
        main_menu
    end

end
