class Booking
  include DataMapper::Resource

  property :id, Serial
  property :booked_from, DateTime
  property :booked_to, DateTime
  property :confirmed, Boolean, :default => false

  belongs_to :user
  belongs_to :space
end
