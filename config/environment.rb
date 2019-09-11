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

cli = Cli.new

cli.mood_menu

# binding.pry
