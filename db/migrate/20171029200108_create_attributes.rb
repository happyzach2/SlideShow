class CreateAttributes < ActiveRecord::Migration[5.1]
  def change
    create_table :attributes do |t|
      t.string :name
      t.string :type
      t.integer :order

      t.timestamps
    end
  end
end
