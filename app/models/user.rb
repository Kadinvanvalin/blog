class User < ActiveRecord::Base
  include BCrypt

  validates :email, presence: true


  has_secure_password

end
