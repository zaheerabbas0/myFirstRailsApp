class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :name
      t.text :rollNumer
      # self.primary_key = 'std_id'
      t.timestamps
    end
  end
end
