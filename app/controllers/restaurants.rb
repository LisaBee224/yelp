get '/restaurant/new' do
erb :'/restaurants/new'
end

post '/restaurant/new' do

end

get '/restaurant/:id' do
  erb :'/restaurants/show'
end

get '/restaurants' do
  erb :'/restaurants/index'
end
