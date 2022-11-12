class CreateZaheers < ActiveRecord::Migration[5.1]
  def change
    create_table :zaheers do |t|

      t.timestamps
    end
  end
end
