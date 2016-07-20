class RedmartSinatraApp < Sinatra::Base

  get '/' do
    erb 'hello world'
  end

  get '/users' do
    @users = ['name1, name2, name3']
    erb :'users'
  end

end
