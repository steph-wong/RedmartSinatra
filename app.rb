class RedmartSinatraApp < Sinatra::Base

  get '/' do
    erb 'homepage'
  end

  get '/about' do
    erb 'about page'
  end



  get '/users' do
    @users = User.all
    erb :'user/index'
  end

    get '/users/new' do
      erb :'user/new'
    end

  get '/users/:id' do
    @user = User.find(params[:id])
    erb :'user/show'
  end

  get '/users/:id/edit' do
    @user = User.find(params[:id])
    erb :'user/edit'
  end


end
