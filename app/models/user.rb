class User < ActiveRecord::Base


  mount_uploader :icon, ImageUploader
  has_secure_password







end
