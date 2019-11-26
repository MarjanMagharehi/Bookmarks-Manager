require 'bookmarks'

describe Bookmarks do
  it 'has a hardcoded list of bookmarks' do
    expect(Bookmarks.all).to include("http://www.google.com")
  end
end
