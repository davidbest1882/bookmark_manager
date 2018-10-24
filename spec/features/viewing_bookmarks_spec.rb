feature 'Feature - Viewing bookmarks' do
  scenario 'visiting the index page' do
    visit('/')
    expect(page).to have_content "Bookmark Manager"
  end

  scenario 'A user can see bookmarks' do

    # Added the test data
    Bookmark.create(url: "http://www.makersacademy.com", title: 'Makers')
    Bookmark.create(url: "http://www.destroyallsoftware.com", title: 'Destroy all software')
    Bookmark.create(url: "http://www.google.com", title: 'Google')


    visit('/bookmarks')

    expect(page).to have_link( 'Makers', href: "http://www.makersacademy.com")
    expect(page).to have_link( 'Google', href: "http://www.google.com")
    expect(page).to have_link('Destroy all software', href: "http://www.destroyallsoftware.com")
  end
end
