class CreateChapters < ActiveRecord::Migration[5.2]
  def change
    create_table :chapters do |t|
      t.string :name
      t.string :subtitle
      t.integer :number

      t.timestamps
    end
  end
end
