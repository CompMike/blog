class AddCategoryToPics < ActiveRecord::Migration
  def change
    add_column :pics, :category, :string
  end
end
