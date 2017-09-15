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
  @rec = Recommendation.new
  if logged_in?
    if @rec.save
      redirect "recommendations/#{@rec.id}"
    else
      @errors = @rec.errors.full_messages
      erb :'/_errors'
    end
  else
    redirect "/users/login"
  end
end

get '/recommendations/:id' do

  erb :'/recommendations/show'
end


