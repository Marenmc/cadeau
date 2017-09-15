get '/users' do
  erb :'/users/index'
end

get '/users/new' do

  erb :'/users/new'
end

#creating a new user
post '/users' do
  p params
  @user = User.new(params[:user])
  if @user.save
    session[:user_id] = @user.id
    redirect "/users/#{@user.id}"
  else
    p "FAILED"
    p @errors = @user.errors.full_messages
    erb :'/users/new'
  end
end

get '/users/:id' do
  @user = User.find(params[:id])
  if logged_in?
    erb :'/users/show'
  else
    redirect 'users/login'
  end
end
