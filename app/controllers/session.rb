class MakersBnb < Sinatra::Base

  get '/session/new' do
    erb :"session/new"
  end

  post '/session/new' do
    user =  User.authenticate(email: params[:email], password: params[:password])
    if user
      session[:user_id] = user.id
      redirect('/')
    else
      flash.keep[:warning] = "Incorrect Email or Password Provided!"
      redirect '/session/new'
    end

  end

  post '/session/create' do
    user = User.create(email: params[:email],
      password: params[:password], password_confirmation: params[:password_confirmation])

    if user.save
      session[:user_id] = user.id
      flash.keep[:notice] = 'Sign-up Successful!'
      redirect to('/')
    else
      flash.keep[:error] = user.errors.full_messages
       redirect '/'
    end
  end

end
