class Comment < ActiveRecord::Base
  belongs_to :festival
  has_one :user
end
