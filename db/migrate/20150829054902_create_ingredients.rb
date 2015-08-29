class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
    	t.belongs_to     :meal, index: true
    	t.integer        :meal_id
    	t.string         :name
    	t.decimal        :quantity
    	t.string         :quantity_units
      t.timestamps      null: false
    end
  end
end
