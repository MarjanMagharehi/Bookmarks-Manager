require 'bookmarks'

describe Bookmarks do
  it 'returns a list of bookmarks' do
    Bookmarks.create(url: 'http://www.makersacademy.com')
    Bookmarks.create(url: 'http://www.destroyallsoftware.com')
    Bookmarks.create(url: 'http://www.google.com')
    bookmarks = Bookmarks.all
    # connection = PG.connect(dbname: 'bookmark_manager_test')
    # connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');")
    # connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.destroyallsoftware.com');")
    # connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com');")
    # could be bookmarklist?
    # expect(Bookmarks.all).to include("http://google.com")
    expect(bookmarks).to include('http://www.makersacademy.com')
    expect(bookmarks).to include('http://www.destroyallsoftware.com')
    expect(bookmarks).to include('http://www.google.com')
  end
end

describe '.create' do
  it 'creates a new bookmark' do
    Bookmarks.create(url: 'http://www.superdrug.com')
    expect(Bookmarks.all).to include 'http://www.superdrug.com'
  end
end
