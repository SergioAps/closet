class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :image_url
      t.date :adquisition_date

      t.timestamps
    end
  end
end
