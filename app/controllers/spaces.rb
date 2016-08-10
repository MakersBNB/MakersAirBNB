class MakersBnb < Sinatra::Base
  get '/spaces' do
    @space = Space.all
    haml :'/spaces/index'
  end

  post '/spaces' do
    space = Space.create(name: params[:name],
                         description: params[:description],
                         price: params[:price],
                         user_id: session[:user_id])
    redirect '/spaces'
  end

  get '/spaces/new' do
    haml :'/spaces/new'
  end
end
