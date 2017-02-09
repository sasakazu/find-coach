class User < ActiveRecord::Base


  mount_uploader :icon, ImageUploader
  has_secure_password

  validates :name, presence: true
  validates :email, presence: true
  validates :password_digest, presence: true







end
