get '/review/:id/new' do
  erb :'/reviews/new'
end

post '/review/:id/new' do

redirect '/restaurant/:id'
end

get '/review/:id/edit' do
  erb :'/reviews/update'
end
