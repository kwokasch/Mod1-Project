
require 'tty-prompt'
require 'colorize'

class Cli
    @@prompt = TTY::Prompt.new

    def main_menu
        puts "                                      Want to do something?"
        puts " "
        puts "                               ...But don't know what to do? 🤔"
        puts " "
        puts "                                              🤷‍"
        puts " "
        puts "                                        Let's try this..."
        puts " "
    end

    def moody
        mood_choice = @@prompt.select("                         W H A T  A R E  T H E  F E E L S  T O D A Y ?".light_red, Mood.all.map(&:name))

        system("clear")
        if @mood = Mood.find_by(name: mood_choice)
            found_events
            puts " "
            puts "      Any of these 💥  spark 💥  your interest ⁉️".yellow
            puts " "
            event_choice = @@prompt.select("Choose one ☑️    Get the deets 📝     Accept 👍   or Reject 👎
                ".light_magenta, found_events.pluck(:name))
            @event = Event.find_by(name: event_choice)
            event_info
            ynchoice
        else    
            #puts "Choose another event."
            moody
        end
    end

    def found_events
        @mood.events
    end





    def ynchoice
        yn = @@prompt.select("Are you in?", ["YAY", "Naw..NEXT!"])
            if yn == "YAY"
                puts "Great"
                exit
            else
                puts "We got more!"
                moody
            end
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
