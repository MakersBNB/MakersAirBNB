class Space
  include DataMapper::Resource

  property :id,          Serial
  property :name,        String
  property :description, String
  property :price,       Integer
  property :date_from,   Date
  property :date_to,     Date

  belongs_to :user
end
