class MakersBnb < Sinatra::Base
  get '/' do
    erb :index

  end

  get '/session/new' do
    erb :"session/new"
  end

  post '/session/new' do
    user =  User.authenticate(email: params[:email], password: params[:password])
    if user
      session[:user_id] = user.id
      redirect('/')
    else
      redirect('/session/new')
    end

  end

  post '/session/create' do
    user = User.create(email: params[:email],
      password: params[:password])
    if user.save
      session[:user_id] = user.id
      flash.keep[:notice] = 'Sign-up Successful!'
      redirect to('/')
    else
       erb :index
    end
  end

end
