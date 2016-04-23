class Concert < ActiveRecord::Base
  belongs_to :festival
  has_one :artist
end
