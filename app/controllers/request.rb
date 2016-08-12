class MakersBnb < Sinatra::Base

  post '/request/new/:id' do |i|
    booking = Booking.create(user_id: session[:user_id],
                              booked_from: params[:selectedFrom],
                              booked_to: params[:selectedTo],
                              space_id: params[:id])
    if booking.save
      flash.keep[:notice] = "Your booking request has been sent"
      redirect '/spaces'
    else
      flash.keep[:error] = booking.errors.full_messages
      redirect '/spaces/' + params[:id]
    end
  end

end
