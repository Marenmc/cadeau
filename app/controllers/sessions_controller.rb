get '/users/login' do

  erb :'/users/login'
end

post '/login' do
  p params
  #This is saying "look in the username column (key) for the param's username"
  @user = User.find_by(username: params[:user][:username])
  p @user
  if @user && @user.authenticate(params[:user][:password])
    login
    redirect "users/#{@user.id}"
  else
    p "nooo!"
  end
end

delete '/logout' do
  logout
end
