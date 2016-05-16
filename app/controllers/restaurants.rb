get '/restaurant/new' do
  erb :'/restaurants/new'
end

post '/restaurant/:id' do
  restaurant = current_user.restaurants.create(params[:restaurant])
  # restaurant = current_user.restaurants.build(params[:restaurant])
  # if restaurant.save && restaurant.valid?
  #   redirect "/restaurants/#{restaurant.id}"
  # else
    redirect '/restaurants'
  # end
end

get "/restaurant/:id" do
  @restaurant = Restaurant.find_by(id: params[:id])
  @reviews = Review.find_by(restaurant_id: params[:id])
  erb :'/restaurants/show'
end

get "/restaurant/:id/edit" do
  if logged_in? && current_user.id == @restaurant.user_id
    @restaurant = Restaurant.find_by(id: params[:id])
    erb :'/restaurants/edit'
  else
    redirect '/'
  end
end
put "/restaurant/:id" do
  @restaurant = Restaurant.find_by(id: params[:id])
  @restaurant.update_attributes(params[:restaurant])
  redirect '/restaurants'
end
get '/restaurants' do
  @restaurants = Restaurant.all
  erb :'/restaurants/index'
end
