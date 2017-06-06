require 'sinatra'
set :bind, "0.0.0.0"
enable :sessions

get'/'do
    erb:welcome
end

post'/start'do
    session[:name]=params[:name]
    session[:cape]=0
    session[:stone]=0
    erb:start
end

get'/start'do
    session[:cape]=0
    session[:stone]=0
   erb:start
end

get'/'do
    erb:welcome
end

get'/toad'do
    erb:toad
end

get'/stay'do
    erb:stay
end

get'/help_toad'do
    session[:stone]=1
    erb:help_toad
end

get'/mother_squirrel'do
    erb:mother_squirrel
end

get'/help_squirrel'do
    session[:cape]=1
    erb:help_squirrel
end

get'/nettles'do
    erb:nettles
end

get'/fly'do
    if session[:cape]>=1
        erb:bone_flowers
    else
        erb:torn_wings
    end
end

get'/escape'do
    if session[:stone]>=1
        erb:nettles_death
    else
        erb:spider_death
    end
end

get'/flower_escape'do
    if session[:stone]>=1
        erb:nector
    else
        erb:spider_death
    end
end

get'/bone_flowers'do
    erb:bone_flowers
end

get'/torn_wings'do
    erb:torn_wings
end

get'spider_death'do
    erb:spider_death
end

get'nettles_death'do
    erb:nettles_death
end

get'/nector'do
    erb:nector
end
        
