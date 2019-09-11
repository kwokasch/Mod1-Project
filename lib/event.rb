class Event < ActiveRecord::Base
    has_many :mood_events
    has_many :moods, through: :mood_events

    # def moods
    #     moods.pluck(:name)
    # end -- only need for events
end