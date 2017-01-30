class CreatePorts < ActiveRecord::Migration[5.0]
  def change
    create_table :ports do |t|
      t.string :title
      t.string :subtitle
      t.text :body
      t.text :main_image
      t.string :thumb_image_text

      t.timestamps
    end
  end
end
