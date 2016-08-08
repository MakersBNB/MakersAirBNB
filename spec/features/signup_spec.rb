

feature 'sign up' do
  scenario 'allows a new user to sign up successfully' do
    visit '/'
    fill_in 'email', with: 'test1@email.com'
    fill_in 'password', with: 'Passw0rd123'
    fill_in 'password_confirmation', with: 'Passw0rd123'
    click_button 'Sign up'
  end
end
