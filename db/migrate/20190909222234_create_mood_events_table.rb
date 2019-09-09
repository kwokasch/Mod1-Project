class CreateMoodEventsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :mood_events do |t|
      t.references :mood, foreign_key: true
      t.references :event, foreign_key: true
    end
  end
end
