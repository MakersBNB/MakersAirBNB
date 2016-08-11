feature 'Bookings' do

  scenario 'User can book a space', :js=>true do
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
