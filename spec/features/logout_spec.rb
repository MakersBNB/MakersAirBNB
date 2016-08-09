feature 'logout' do
  scenario 'user can log out' do
    login
    click_button('Logout')
    expect(page).to have_content('Log out successful')
  end
end
