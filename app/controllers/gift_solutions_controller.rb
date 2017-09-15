get '/gifts' do
  #list all the gifts
 erb :'/gifts/index'
end

get '/gifts/new' do
  #show form to add a new gift to the database of all the gifts
  erb :'/gifts/new'
end

post '/gifts' do
  #take in data from form to add gift to the database
end

get '/gifts/:id' do
  #this is where users will eventually see the correct gift and all of its details
  @gift = GiftSolution.find(params[:id])
  if logged_in?
    erb :'/gifts/show'
  else
    redirect 'users/login'
  end
end
