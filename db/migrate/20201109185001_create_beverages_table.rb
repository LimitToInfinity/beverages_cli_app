class CreateBeveragesTable < ActiveRecord::Migration[6.0]
  def change
    create_table :beverages do |table|
      table.string :name
      table.integer :strength
    end
  end
end
