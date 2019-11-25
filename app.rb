require 'sinatra/base'
class BookmarkManager < Sinatra::Base

get '/' do
  "Hello world"
  erb :index
end

get '/bookmarks' do
  erb :bookmarks
end

  run! if app_file == $0
end
