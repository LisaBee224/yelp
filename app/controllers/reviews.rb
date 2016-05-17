get '/review/:id/new' do
  @restaurant = Restaurant.find_by(id: params[:id])
  @reviews = Review.where(restaurant_id: params[:id])
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
  @review = Review.find_by(id: params[:id])
  if logged_in? && current_user.id == @review.user_id
  erb :'/reviews/edit'
end
end

put '/review/:id' do
  @review = Review.find_by(id: params[:id])
  @review.update_attributes(params[:review])
  @restaurant = @review.restaurant
  redirect '/restaurants'
end
