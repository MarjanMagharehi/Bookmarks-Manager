feature 'Adding bookmarks' do
  scenario 'Add Bookmark to the Bookmark Manager' do
    visit ('bookmarks/new')
    fill_in('url', with: 'http://www.superdrug.com')
    click_button('Add')
    expect(page).to have_content 'http://www.superdrug.com'
  end
end