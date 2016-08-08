class User
  include DataMapper::Resource
  # include

  property :id,       Serial
  property :name,     String
  property :email,    String, unique: true
  property :password, String
end
