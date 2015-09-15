class AddListIdToIngredients < ActiveRecord::Migration
  def change
  	add_column :ingredients, :list_id, :string
  end
end
