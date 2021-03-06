require 'bcrypt'

class User < ActiveRecord::Base
  include BCrypt

  has_many :recommendations

  validates :email, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true


  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def authenticate(actual_password)
    self.password == actual_password
  end

end
