feature 'Approve Request' do
  scenario 'Host can approve request that has been made' do
    make_booking
    visit '/'
    click_link 'Requests'
    click_button 'Approve Request'
    expect(page).to have_content 'Booking confirmed'
  end
end
