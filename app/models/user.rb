class User < ActiveRecord::Base
  has_secure_password
<<<<<<< HEAD

  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
  validates :full_name, presence: true
=======
  validates :email, presence: true
  has_many :reservations
>>>>>>> 74039c72f6a19f7261bc706af67ea3f42a2ac45f
end
