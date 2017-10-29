class CreateSlides < ActiveRecord::Migration[5.1]
  def change
    create_table :slides do |t|
      t.string :title
      t.references :presentation, foreign_key: true

      t.timestamps
    end
  end
end
