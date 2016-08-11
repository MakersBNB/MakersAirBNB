class MakersBnb < Sinatra::Base
  get '/spaces' do
    @space = Space.all
    haml :'spaces/index'
  end

  get '/spaces/new' do
    haml :'spaces/new'
  end

  get '/spaces/:id' do |i|
    @space = Space.get(params[:id])
    haml :'spaces/booking'
  end

  post '/spaces' do
    space = Space.create(name: params[:name],
                         description: params[:description],
                         price: params[:price],
                         date_from: params[:date_from],
                         date_to: params[:date_to],
                         user_id: session[:user_id])
    redirect '/spaces'
  end

end
