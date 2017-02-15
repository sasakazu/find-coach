class User < ActiveRecord::Base

  has_many :coaches


  mount_uploader :icon, ImageUploader
  has_secure_password

  validates :name, presence: true
  validates :email, presence: true
  validates :password_digest, presence: true, length: { minimum: 6 }





  # 渡された文字列のハッシュ値を返す
  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end





end
