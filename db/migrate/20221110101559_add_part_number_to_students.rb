class AddPartNumberToStudents < ActiveRecord::Migration[5.1]
  def change
    add_column :students, :part_number, :string
  end
end
