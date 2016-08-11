feature 'logout' do
  scenario 'user can log out' do
    sign_up
    login
    click_button('Logout')
    expect(page).to have_content('Log out successful')
  end
end
