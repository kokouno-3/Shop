class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.integer :genre_id
      t.string :name
      t.text :explanation
      t.integer :price
      t.string :image_id
      t.boolean :is_status
      t.datetime :created_at
      t.datetime :updated_at
      t.timestamps
    end
  end
end
