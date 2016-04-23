class AddConcertToFestival < ActiveRecord::Migration
  def change
    add_reference :festivals, :concert, index: true, foreign_key: true
  end
end
