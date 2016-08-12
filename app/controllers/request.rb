class MakersBnb < Sinatra::Base

  post '/request/new' do
    booking = Booking.create(booked_from: params[:selectedFrom],
                              booked_to: params[:selectedTo])
    if booking.save
      flash.keep[:notice] = "Your booking request has been sent"
      redirect '/spaces'
    else
      flash.keep[:error] = "Try again, your request couldn't be sent."
      redi
    end
  end

end
