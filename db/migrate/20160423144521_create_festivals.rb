class CreateFestivals < ActiveRecord::Migration
  def change
    create_table :festivals do |t|
      t.string :name
      t.string :place
      t.date :startDate
      t.date :endDate
      t.text :description
      t.string :picture
      t.string :link

      t.timestamps null: false
    end
  end
end
