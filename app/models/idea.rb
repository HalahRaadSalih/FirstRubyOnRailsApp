class Idea < ActiveRecord::Base
  has_many :comments
  has_many :likes
  mount_uploader :picture, PictureUploader
end
