class MakersBnb < Sinatra::Base
  enable :sessions
  set :session_secret, 'super secret'
  use Rack::MethodOverride

  register Sinatra::Flash

  get '/' do
    haml :index
  end

  helpers do
    def current_user
      @current_user ||= User.get(session[:user_id])
    end

    def active_page?(path = '/')
      request.path_info == path
    end
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
