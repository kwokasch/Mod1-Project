require 'sinatra/activerecord'
require 'require_all'
require 'tty-prompt'
require 'pry'
require 'paint'
require 'colorize'
require_relative '../lib/cli'
require_relative '../lib/animations'

require_all 'lib'

ActiveRecord::Base.establish_connection(
    adapter:'sqlite3',
    database:'db/project.db'
)

ActiveRecord::Base.logger = nil



system("clear")
cli = Cli.new
title
sunset_1
cli.main_menu
cli.moody


# binding.pry
