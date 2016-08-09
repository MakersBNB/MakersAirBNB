def sign_up(email: 'test1@email.com',
            password: 'Passw0rd123',
            password_confirmation: 'Passw0rd123')
  visit '/'
  fill_in 'email', with: email
  fill_in 'password', with: password
  fill_in 'password_confirmation', with: password_confirmation
  click_button 'Sign up'
end

def login(email: 'test@gmail.com', password: 'test')
  visit '/'
  click_link('Login')
  fill_in :email,   with: email
  fill_in :password,with: password
  click_button('Login')
end
