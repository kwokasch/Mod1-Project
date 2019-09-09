class Mood < ActiveRecord::Base
    has_many :mood_events
    has_many :events, through: :mood_events
end