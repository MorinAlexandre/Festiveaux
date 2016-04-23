class CreateConcerts < ActiveRecord::Migration
  def change
    create_table :concerts do |t|
      t.date :day
      t.timestamp :hour

      t.timestamps null: false
    end
  end
end
