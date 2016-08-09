require 'bcrypt'
class User
  include DataMapper::Resource
  attr_reader :password
  attr_accessor :password_confirmation

  property :id,                 Serial
  property :name,               String
  property :email,              String, unique: true
  property :encrypted_password, String, length: 60

  validates_presence_of :encrypted_password

  validates_confirmation_of :password

  def password=(password)
    @password = password
    self.encrypted_password = BCrypt::Password.create(password)
  end

  def self.authenticate(email:, password:)
    user = first(email: email)

    if user && BCrypt::Password.new(user.encrypted_password) == password
      return user
    end
  end

end
