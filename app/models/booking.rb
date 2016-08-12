class Booking
  include DataMapper::Resource

  property :id, Serial
  property :booked_from, DateTime
  property :booked_to, DateTime

  belongs_to :user

end
