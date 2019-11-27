require 'sinatra/base'
require './lib/bookmarks'
class BookmarkManager < Sinatra::Base

get '/' do
  "Hello world"
  erb :index
end

get '/bookmarks' do
@bookmarklist = Bookmarks.all
  erb :'bookmarks/index'
end

get '/bookmarks/new' do
  erb :'bookmarks/new'
end

post '/bookmarks' do
  p "Form data submitted to the /bookmarks route!"
  # p params
end


  run! if app_file == $0
end
