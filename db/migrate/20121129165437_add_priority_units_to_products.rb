class AddPriorityUnitsToProducts < ActiveRecord::Migration
  def change
	add_column :products, :priority, :integer
	add_column :products, :units, :string
  end
end
