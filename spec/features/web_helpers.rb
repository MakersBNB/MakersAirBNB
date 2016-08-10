def sign_up(name: 'John Smith', email: 'test1@email.com',
            password: 'test',
            password_confirmation: 'test')
  visit '/'
  fill_in 'name', with: name
  fill_in 'email', with: email
  fill_in 'password', with: password
  fill_in 'password_confirmation', with: password_confirmation
  click_button 'Sign up'
end

def login(email: 'test1@gmail.com', password: 'test')
  visit '/'
  click_link('Login')
  fill_in :email,   with: email
  fill_in :password,with: password
  click_button('Login')
end
