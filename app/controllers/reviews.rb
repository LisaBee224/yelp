get '/review/:id/new' do
  @restaurant = Restaurant.find_by(id: params[:id])
  erb :'/reviews/new'
end

post '/review/:id' do
  review = current_user.reviews.create(params[:review])
  @restaurant = Restaurant.find_by(id: params[:id])
  @restaurant.reviews << review
  @reviews = @restaurant.reviews
  erb :'/restaurants/show'
end

get '/review/:id/edit' do
  erb :'/reviews/update'
end
