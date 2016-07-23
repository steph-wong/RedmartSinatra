class RedmartSinatraApp < Sinatra::Base

  get '/' do
    erb "<h2>Welcome to redmart</h2>"
  end

  # get '/about' do
  #   erb 'about page'
  # end

# products
  get '/users' do
    @users = User.all
    erb :'users/index'
  end

  get '/users/:id' do
    if params[:id] == 'new'
      erb :'users/new'
    else
      @user = user.find(params[:id])
      erb :'users/show'
    end
  end

  get '/users/:id/edit' do
    @user = user.find(params[:id])
    erb :'users/edit'
  end

  post '/users' do
    puts params[:user]
    @new_user = user.new(params[:user])
    if @new_user.save
      redirect("/users")
    else
      erb :'users/new'
    end
  end

  put '/users/:id' do
    @updated_user = product.find(params[:id])
    if @updated_user.update_attributes( params[:user] )
      redirect("/users")
    end
  end

  delete '/users/:id' do
    @deleted_user = user.find(params[:id])
    if @deleted_user.destroy
      redirect("/users")
    else
      erb :'users/#{ @deleted_user.id }'
    end
  end


# PRODUCTS
get '/products' do
  @products = Product.all
  erb :'products/index'
end

get '/products/:id' do
  if params[:id] == 'new'
    erb :'products/new'
  else
    @product = product.find(params[:id])
    erb :'products/show'
  end
end

get '/products/:id/edit' do
  @product = product.find(params[:id])
  erb :'products/edit'
end

post '/products' do
  puts params[:product]
  @new_product = product.new(params[:product])
  if @new_product.save
    redirect("/products")
  else
    erb :'products/new'
  end
end

put '/products/:id' do
  @updated_product = product.find(params[:id])
  if @updated_product.update_attributes( params[:product] )
    redirect("/products")
  end
end

delete '/products/:id' do
  @deleted_product = product.find(params[:id])
  if @deleted_product.destroy
    redirect("/products")
  else
    erb :"products/#{ @deleted_product.id }"
  end
end



end
