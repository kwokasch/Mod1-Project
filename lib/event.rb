class Event < ActiveRecord::Base
    has_many :mood_events
    has_many :moods, through: :mood_events
end