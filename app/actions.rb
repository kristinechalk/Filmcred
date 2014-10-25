# Homepage (Root path)
get '/' do
  erb :index
end

get '/workerprofile' do
  erb :'workers/index'
end