class AddCommentToFestival < ActiveRecord::Migration
  def change
    add_reference :comments, :festival, index: true, foreign_key: true
  end
end
