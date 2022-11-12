class CreateAbbas < ActiveRecord::Migration[5.1]
  def change
    create_table :abbas do |t|

      t.timestamps
    end
  end
end
