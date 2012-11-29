class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :id
      t.string :name
      t.string :description
      t.string :price
	  t.integer :priority
	  t.string :units
	  
      t.timestamps
    end
  end
end
