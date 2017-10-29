class CreateElements < ActiveRecord::Migration[5.1]
  def change
    create_table :elements do |t|
      t.text :info
      t.references :slide, foreign_key: true

      t.timestamps
    end
  end
end
