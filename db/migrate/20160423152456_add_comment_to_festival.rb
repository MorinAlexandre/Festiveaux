class AddCommentToFestival < ActiveRecord::Migration
  def change
    add_reference :festivals, :comment, index: true, foreign_key: true
  end
end
