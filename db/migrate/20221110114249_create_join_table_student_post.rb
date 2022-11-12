class CreateJoinTableStudentPost < ActiveRecord::Migration[5.1]
  def change
    create_join_table :students, :posts do |t|
      # t.index [:student_id, :post_id]
      # t.index [:post_id, :student_id]
    end
  end
end
