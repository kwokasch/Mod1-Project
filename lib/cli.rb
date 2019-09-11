class Cli
    @@prompt = TTY::Prompt.new

    def main_menu
        puts "Hello! How are you feeling today?" 
        answer = gets.chomp
        if answer == "good"
            response = RestClient.get("https://www.eventbriteapi.com/v3/", headers: {
                'Authorization': 'Bearer 3B6HIAD7AZQSETSJC764SBLQJSBYFXOSY3VUCYENQSHD5Q2R5B'
            })
        else
            "Too bad you suck"
            main_menu
        end
    end
 end