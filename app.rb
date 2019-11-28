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
  Bookmarks.create(url: params['url'], title: params['title'])
  # url = params['url']
  # connection = PG.connect(dbname: 'bookmark_manager_test')
  # connection.exec("INSERT INTO bookmarks (url) VALUES('#{url}')" )
  redirect '/bookmarks'
  # p params
end


  run! if app_file == $0
end
