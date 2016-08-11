describe Space do
  let!(:user) do User.create(name: 'test', email: 'test@googlemail.com',
                             password: 'Password123',
                             password_confirmation: 'Password123')
  end

  it 'adds a spaces in the table' do
    expect{ Space.create(name: 'Relaxing space',
                         description: 'Feel at home in this beautiful townhouse',
                         price: 25,
                         user_id: user.id) }.to change{ Space.count }.by(1)
  end
end
