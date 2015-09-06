class CreateDays < ActiveRecord::Migration
  def change
    create_table :days do |t|
    	t.integer :number
    	t.string :name
    	t.text :meals, array: true, default: []
      t.timestamps null: false
    end
  end
end
