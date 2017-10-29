class CreateSubElements < ActiveRecord::Migration[5.1]
  def change
    create_table :sub_elements do |t|
      t.text :info
      t.references :element, foreign_key: true

      t.timestamps
    end
  end
end
