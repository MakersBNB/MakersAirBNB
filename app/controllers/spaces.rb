class MakersBnb < Sinatra::Base
  get '/spaces' do
    haml :'spaces/index'
  end

  get '/spaces/:id' do
    haml :'spaces/booking'
  end
end
