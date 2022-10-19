class AddColoursToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :colour, :string

  end
end
