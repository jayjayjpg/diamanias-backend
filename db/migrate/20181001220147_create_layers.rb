class CreateLayers < ActiveRecord::Migration[5.2]
  def change
    create_table :layers do |t|
      t.string :bg_img
      t.string :fg_img
      t.string :style_class
      t.string :layer_kind
      t.integer :num_of_frames
      t.references :panel, foreign_key: true

      t.timestamps
    end
  end
end
