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

  def request_status(worker_id)
    if something
      return "pending"
    elsif something
      return "none"
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


post '/upload' do
  doc = Document.new
  doc.filename = params[:filename]
  doc.worker_id = current_user.id
  doc.save
  redirect '/documents'
end


get '/documents' do
  @documents = current_user.documents
  erb :'documents/index'
end


post '/search' do
  
  if User.exists?(name: params[:search])
    @user = User.where(name: params[:search])[0]
    redirect "/users/#{@user.id}"
  else
    @search_errors = true
    redirect "/users/#{current_user.id}"
  end
end


get '/workers/:id/request' do
    req = current_user.request.new
    req.worker_id = params[:id]
    req.save
  end
end












