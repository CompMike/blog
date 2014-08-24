class CreatePics < ActiveRecord::Migration
  def change
    create_table :pics do |t|
      t.string :name
      t.string :description
      t.text :url

      t.timestamps
    end
  end
end
