class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.text :description
      t.string :image
      t.string :remote_image_url


      t.timestamps null: false
    end
  end
end
