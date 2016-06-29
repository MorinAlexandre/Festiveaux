class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :lastName
      t.string :firstName
      t.string :city
      t.boolean :status

      t.timestamps null: false
    end
  end
end
