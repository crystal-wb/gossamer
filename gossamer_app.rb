require 'sinatra'
set :bind, "0.0.0.0"
enable :sessions

get'/'do
    erb:welcome
end