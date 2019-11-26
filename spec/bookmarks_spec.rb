require 'bookmarks'

describe Bookmarks do
  it 'has a hardcoded list of bookmarks' do
    expect(Bookmarks.all).to include("https://sqlzoo.net/wiki/SELECT_basics")
  end
end
