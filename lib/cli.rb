
require 'tty-prompt'
require 'colorize'

class Cli
    @@prompt = TTY::Prompt.new

    def main_menu
        puts "Hello! Welcome to Mood Events!"
        puts "Please select your mood."

        mood_choice = @@prompt.select("How are you feeling today?", Mood.all.map(&:name)) 
            # Mood.all.map do |mood| 
            #     case mood.name 
            #     when "PUMPED!" 
            #         mood.name.red
            #     when "PUMPED!" 
            #         mood.name.light_red
            #     when "PUMPED!" 
            #         mood.name.yellow
            #     when "PUMPED!" 
            #         mood.name.light_cyan
            #     when "PUMPED!" 
            #         mood.name.cyan
            #     when "PUMPED!" 
            #         mood.name.blue
            #     when "PUMPED!" 
            #         mood.name.light_magenta
            #     end
            # end)
        system("clear")
        @mood = Mood.find_by(name: mood_choice)
        # binding.pry
        found_events
        puts "Here are the events for your mood! Please select one:"
        puts " "
        event_choice = @@prompt.select("Events:", found_events.pluck(:name))
        @event = Event.find_by(name: event_choice)
        event_info
        # binding.pry
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
end
