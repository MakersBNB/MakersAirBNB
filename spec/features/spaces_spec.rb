feature 'spaces' do
  before do
    sign_up(email: 'test@test.com', password: 'test')
    login(email: 'test@test.com', password: 'test')
  end

  scenario 'user can reach spaces' do
    expect(page.current_path).to eq('/spaces')
  end

  scenario 'user can reach spaces/new' do
    click_button('List a Space')
    expect(page.current_path).to eq('/spaces/new')
  end

  scenario 'user can list space with available to and from dates' do
    click_button('List a Space')
    fill_in :name,          with: 'Beautiful relaxing space'
    fill_in :description,   with: 'Feel at home in this beautiful townhouse'
    fill_in :price,         with:  25
    fill_in :date_from,     with:  "11/08/2016"
    fill_in :date_to,       with:  "16/08/2016"
    click_button('List my Space')
    expect(page).to have_content('Beautiful relaxing space Feel at home in this beautiful townhouse')
  end

end
