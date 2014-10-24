# Homepage (Root path)
helpers do

  # def encrypt(input)
  #   Digest::SHA1.hexdigest(input) unless input.blank?
  # end

  #Going to have to check after factory girl and faker if password is already encrypted before using.
  #Since we do not know at this time we should decide whether of not to use it.

  def check_login
    return true unless @user.password != encrypt(params[:password])
  end

  def signed_in?
    User.exists?(id: session[:user_id])
  end

  def current_user
    if session[:user_id]
      User.find(session[:user_id])
    else
      nil
    end
  end


end

get '/login' do
  @user = User.new
  erb :'users/index'
end


post '/login' do
  @user = User.where(email: params[:email]).first
  if check_login
    session[:user_id] = @user.id
    redirect "/user/#{user.id}"
  else
    @login_errors = true
    erb :'users/index'
  end
end

# get '/users/logout' do
#   session.clear if current_user
#   redirect '/login'
# end



















