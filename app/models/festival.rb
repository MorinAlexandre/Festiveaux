class Festival < ActiveRecord::Base
  has_many :concerts
  has_many :comments
end
