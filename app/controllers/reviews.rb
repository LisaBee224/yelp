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
  @review = Review.find_by(user_id: params[:user_id])
      #WHY IS @REVIEW NILCLASS??? params not being captured
  if logged_in? && current_user.id == @review.user_id
    @restaurant = Restaurant.find_by(id: params[:restaurant_id])
  erb :'/reviews/edit'
end
end
