class AddPurchasedToIngredients < ActiveRecord::Migration
  def change
  	add_column :ingredients, :purchased, :boolean, default: false
  end
end
