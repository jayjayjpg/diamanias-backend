class CreatePanels < ActiveRecord::Migration[5.2]
  def change
    create_table :panels do |t|
      t.string :name
      t.string :kind
      t.integer :number
      t.string :description
      t.references :chapter, foreign_key: true

      t.timestamps
    end
  end
end
