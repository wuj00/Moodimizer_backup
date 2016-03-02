class AddMoodToEvents < ActiveRecord::Migration
  def change
    add_reference :events, :mood, index: true, foreign_key: true
  end
end
