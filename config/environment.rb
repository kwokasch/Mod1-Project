require 'sinatra/activerecord'
require 'require_all'
require 'tty-prompt'
require 'pry'
require 'rest-client'
require 'json'

require_all 'lib'

ActiveRecord::Base.establish_connection(
    adapter:'sqlite3',
    database:'db/project.db'
)

response = RestClient.get("https://www.eventbriteapi.com/v3/events/search?location.address=denver/", 'Authorization': 'Bearer 64UHHUOJPWQ5KDOPPXBD')

parse = JSON.parse(response)
# cli = Cli.new
# cli.main_menu

def select_by_category(id)
    parse["events"].select do |event|
        event["category_id"] == id
    end
end



binding.pry
