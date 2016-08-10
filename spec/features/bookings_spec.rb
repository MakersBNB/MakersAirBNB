feature 'Bookings' do

  scenario 'User can book a space' do
    visit '/'
    click_link 'Spaces'
    click_link 'Relaxing space by the beach'
    within("//ul[@id='calendar']") do
      find('li', :text => '10').click
      find('li', :text => '12').click
    end
    click_button 'Request to book'
    expect(page).to have_content 'Your booking has been recieved'
  end
end
