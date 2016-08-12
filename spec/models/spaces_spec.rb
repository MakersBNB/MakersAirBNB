describe Space do
  let!(:user) do User.create(name: 'test', email: 'test@googlemail.com',
                             password: 'Password123',
                             password_confirmation: 'Password123')
  end

  it 'adds a spaces in the table' do
    expect{ Space.create(name: 'Relaxing space',
                         description: 'Feel at home in this beautiful townhouse',
                         price: 25,
                         date_from: "2016/08/11",
                         date_to: "2016/08/15",
                         user_id: user.id)}.to change{ Space.count }.by(1)
  end
end
