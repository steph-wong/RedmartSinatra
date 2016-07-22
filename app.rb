class RedmartSinatraApp < Sinatra::Base

  get '/' do
    erb "<h2>Welcome to redmart</h2>"
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

  post '/users' do
    puts params[:user]

    @new_user = User.new(params[:user])

    if @new_user.save
      redirect("/users")
    else
      erb :'users/new'

    end
  end

  put '/users/:id' do
  end

  delete '/users/:id' do
  end



end
