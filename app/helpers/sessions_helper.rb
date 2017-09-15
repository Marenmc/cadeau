def current_user
  @current_user ||= User.find(session[:user_id]) if session[:user_id]
end

def logged_in?
  !!current_user
end

def login
  session[:user_id] = @user.id
  p "You're logged in"
end



def logout
  session[:user_id] = nil
  redirect '/'
end
