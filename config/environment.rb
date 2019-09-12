require 'sinatra/activerecord'
require 'require_all'
require 'tty-prompt'
require 'pry'


require_all 'lib'

ActiveRecord::Base.establish_connection(
    adapter:'sqlite3',
    database:'db/project.db'
)

ActiveRecord::Base.logger = nil

cli = Cli.new
cli.mood_menu



# binding.pry
