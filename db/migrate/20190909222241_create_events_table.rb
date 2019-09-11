class CreateEventsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.string :description
      t.string :date
      t.string :time
      t.string :location
    end
  end
end
