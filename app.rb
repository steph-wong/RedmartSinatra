class RedmartSinatraApp < Sinatra::Base

  get '/' do
   'homepage'
  end

  # get '/about' do
  #   erb 'about page'
  # end


  get '/users' do
    @users = User.all
    erb :'users/index'
  end

    get '/users/new' do
      erb :'users/new'
    end

  get '/users/:id' do
    @user = User.find(params[:id])
    erb :'users/show'
  end

  get '/users/:id/edit' do
    @user = User.find(params[:id])
    erb :'users/edit'
  end


end
