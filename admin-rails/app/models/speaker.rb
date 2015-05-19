class Speaker < ActiveRecord::Base
  has_many :talks
  belongs_to :user
end
