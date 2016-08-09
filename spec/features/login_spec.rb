feature 'login' do

  before do
    User.create(name: 'test', email: 'test@gmail.com', password: 'test')
  end

  scenario 'user can log in' do
    visit '/'
    click_link('Login')
    expect(page.status_code).to eq(200)
    fill_in :email,   with: 'test@gmail.com'
    fill_in :password,with: 'test'
    click_button('Login')
    expect(page).to have_content('Welcome to Makersbnb test')
  end

end
