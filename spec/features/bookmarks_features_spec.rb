require 'pg'

feature 'bookmarks' do
  scenario 'shows a list of bookmarks' do
    # connection = PG.connect(dbname: 'bookmark_manager_test')
    # connection.exec("INSERT INTO bookmarks VALUES(1, 'http://www.makersacademy.com');")
    # connection.exec("INSERT INTO bookmarks VALUES(2, 'http://www.destroyallsoftware.com');")
    # connection.exec("INSERT INTO bookmarks VALUES(3, 'http://www.google.com');")

    Bookmarks.create(url: "http://www.makersacademy.com", title: "Makers Academy")
    Bookmarks.create(url: "http://www.destroyallsoftware.com", title: "Destroy all Software")
    Bookmarks.create(url: "http://www.google.com", title: "Google")

    visit '/bookmarks'
    expect(page).to have_content "Makers Academy: http://www.makersacademy.com"
    expect(page).to have_content "Destroy all Software: http://www.destroyallsoftware.com"
    expect(page).to have_content "Google: http://www.google.com"
  end

end
