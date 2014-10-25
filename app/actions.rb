# Homepage (Root path)
helpers do

  def check_login
    return true unless @user.password != params[:password]
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

  # def is_worker?
  #   return true if User.type == "Worker"
  # end

  # def is_company?
  #   return true if User.type == "Company"
  # end


end

get '/login' do
  @user = User.new
  erb :'users/index'
end


post '/login' do
  @user = User.where(email: params[:email]).first
  if check_login
    session[:user_id] = @user.id
    redirect "/users/#{@user.id}"
  else
    @login_errors = true
    erb :'users/index'
  end
end


get '/logout' do
  session.clear
  redirect '/login'
end


get '/users/:id' do
  user = User.find(params[:id])
  if user.type == "Company"
    @company = user
    erb :'companies/index'
  elsif user.type == "Worker"
    @worker = user
    erb :'workers/index'

  end
end


get '/search' do
  @user = User.find(name: params[:name])
  erb :'/search/index'
end



















