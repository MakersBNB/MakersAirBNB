describe Booking do
  let!(:user) do User.create(name: 'test', email: 'test@googlemail.com',
                             password: 'Password123',
                             password_confirmation: 'Password123')
  end

  let!(:space) do Space.create(name: 'Relaxing space',
                       description: 'Feel at home in this beautiful townhouse',
                       price: 25,
                       date_from: "2016/08/12",
                       date_to: "2016/08/15",
                       user_id: user.id)
  end

  it 'can make a booking' do
    expect{ Booking.create(booked_from: "2016/08/13", booked_to: "2016/08/14",
      user_id: user.id, space_id: space.id) }.to change{ Booking.count }.by(1)
  end
end
