class Coach < ActiveRecord::Base

  belongs_to :user


  mount_uploader :face, ImageUploader


  validates :name, presence: true
  validates :sex, presence: true
  validates :age, presence: true
  validates :jangle, presence: true
  validates :area, presence: true


  default_scope -> { order(created_at: :desc) }







end
