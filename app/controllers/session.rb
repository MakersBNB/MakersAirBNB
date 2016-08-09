class MakersBnb < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/session/create' do
    user = User.create(email: params[:email],
      password: params[:password])
    if user.save
      session[:user_id] = user.id
      redirect to('/')
    else
       erb :index
    end
  end

end
