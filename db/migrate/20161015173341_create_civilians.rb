class CreateCivilians < ActiveRecord::Migration
  def change
    create_table :civilians do |t|
      t.string :phone
      t.string :address

      t.timestamps null: false
    end
  end
end
