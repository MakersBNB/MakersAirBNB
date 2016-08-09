feature 'Sign up' do
  scenario 'allows a new user to sign up successfully' do
    sign_up
    expect(page).to have_content 'Sign-up Successful!'
  end

  scenario 'cannot signup with the incorrect passwords' do
    sign_up(password_confirmation: 'wrong!')
    expect(page).to have_content 'Password does not match the confirmation'
  end
end
