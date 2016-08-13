feature 'Bookings' do
  scenario 'User can book a space', :js=>true do
    sign_up(email: 'k@test.com', password: 'test', password_confirmation: 'test')
    login(email: 'k@test.com', password: 'test')
    create_space
    visit '/spaces'
    first('#space-link').click
    click_link '18'
    click_button 'Request to book'
    expect(page).to have_content 'Your booking request has been sent'
  end
end
