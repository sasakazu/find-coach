class Coach < ActiveRecord::Base

  belongs_to :user


  mount_uploader :face, ImageUploader


  validates :name, presence: true
  validates :jangle, presence: true



  default_scope -> { order(created_at: :desc) }







end
