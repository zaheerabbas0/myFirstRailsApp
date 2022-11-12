class AddPartNumberToPost < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :part_number, :string
    add_index :posts, :part_number
  end
end
