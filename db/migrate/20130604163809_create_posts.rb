class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string  :secret_key
      t.string  :name
      t.decimal :price
      t.string  :email
      t.string  :location
      t.integer :category_id #foreign key to categories table
      t.timestamps
    end
  end
end
