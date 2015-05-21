class Speaker < ActiveRecord::Base
  has_many :talks
  belongs_to :user

  mount_uploader :image, ImageUploader

end
