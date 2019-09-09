class MoodEvent < ActiveRecord::Base
    belongs_to :mood
    belongs_to :event
end