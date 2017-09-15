get '/recommendations' do
 ## show all recommendations
end

get '/recommendations/new' do
  ##add a new recommendation
  p params
  giphy = GiphyAdapter.new
  @gif = giphy.search("gift").sample

  erb :'/recommendations/new'
end

post '/recommendations' do
  #take in the data from the recommendation form

  redirect "recommendations/#{@rec.id}"
end

get '/recommendations/:id' do

  erb :'/recommendations/show'
end


