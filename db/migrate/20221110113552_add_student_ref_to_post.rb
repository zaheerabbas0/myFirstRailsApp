class AddStudentRefToPost < ActiveRecord::Migration[5.1]
  def change
    add_reference :posts, :student, foreign_key: true
  end
end
