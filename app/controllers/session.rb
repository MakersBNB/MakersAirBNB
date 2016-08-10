class MakersBnb < Sinatra::Base

  get '/session/new' do
    haml :"session/new"
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
    user = User.create(name: params[:name], email: params[:email],
      password: params[:password], password_confirmation: params[:password_confirmation])

    if user.save
      flash.keep[:notice] = 'Sign-up Successful!'
      redirect '/'
    else
      flash.keep[:error] = user.errors.full_messages
       redirect '/'
    end
  end

  delete '/session/end' do
    session[:user_id] = nil
    flash.keep[:notice] = 'Log out successful'
    redirect '/'
  end

end
