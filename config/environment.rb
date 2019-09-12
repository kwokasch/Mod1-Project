require 'sinatra/activerecord'
require 'require_all'
require 'tty-prompt'
require 'pry'
require_relative '../lib/cli'

require_all 'lib'

ActiveRecord::Base.establish_connection(
    adapter:'sqlite3',
    database:'db/project.db'
)

ActiveRecord::Base.logger = nil

# mood_menu

# cli = Cli.new
# cli.mood_menu

binding.pry
