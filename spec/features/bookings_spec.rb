feature 'Bookings' do

  scenario 'User can book a space', :js=>true do
    sign_up(email: 'k@test.com', password: 'test', password_confirmation: 'test')
    login(email: 'k@test.com', password: 'test')
    visit '/'
    click_link 'Spaces'
    click_link 'Relaxing space by the beach'
    within_table('calendar') do
      find(:xpath, "//tr/td", :text => '10').click
      find(:xpath, "//tr/td", :text => '12').click
    end
    click_button 'Request to book'
    expect(page).to have_content 'Your booking has been recieved'
  end
end
