def sign_up(name: 'John Smith', email: 'test1@gmail.com',
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

def create_space
  next_three_days = Date.today + 10
  visit '/spaces'
  click_button('List a Space')
  fill_in :name,          with: 'Beautiful relaxing space'
  fill_in :description,   with: 'Feel at home in this beautiful townhouse'
  fill_in :price,         with:  25
  fill_in :date_from,     with:  Date.today.strftime("%d/%m/%Y")
  fill_in :date_to,       with:  next_three_days.strftime("%d/%m/%Y")
  click_button('List my Space')
end

def make_booking
  Capybara.current_driver = :selenium
  sign_up(email: 'test2@gmail.com')
  login(email: 'test2@gmail.com')
  create_space
  visit '/spaces'
  click_link 'space-link'
  click_link '18'
  click_button 'Request to book'
end

def select_driver(example)
  if example.metadata[:js]
   Capybara.current_driver = :selenium
 else
   Capybara.use_default_driver
 end
end
