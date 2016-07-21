class RedmartSinatraApp < Sinatra::Base

  get '/' do
    erb 'homepage'
  end

  get '/about' do
    erb 'about page'
  end

  get '/users' do
    @users = User.all
    erb :'users'
  end

    get '/users/:id' do
      erb :'each_user'
    end

end
