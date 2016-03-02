class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.text :address
      t.integer :date

      t.timestamps null: false
    end
  end
end
