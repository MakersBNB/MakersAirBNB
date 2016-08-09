class MakersBnb < Sinatra::Base
  enable :sessions
  set :session_secret, 'super secret'
  use Rack::MethodOverride
  
  register Sinatra::Flash

  get '/' do
    erb :index
  end

  helpers do
    def current_user
      @current_user ||= User.get(session[:user_id])
    end
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
