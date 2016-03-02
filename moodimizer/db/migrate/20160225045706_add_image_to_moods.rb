class AddImageToMoods < ActiveRecord::Migration
  def change
    add_column :moods, :image, :string
  end
end
