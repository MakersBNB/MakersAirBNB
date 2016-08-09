feature 'login' do

  before do
    User.create(name: 'test', email: 'test@gmail.com', password: 'test',
     password_confirmation: 'test')
  end

  scenario 'user can log in' do
    login
    expect(page).to have_content('Welcome to Makersbnb test')
  end

  scenario 'user cannot login with incorrect password' do
    login(password: 'wrong!')
    expect(page).to have_content('Incorrect Email or Password Provided!')
  end

end
