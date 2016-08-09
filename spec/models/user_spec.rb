describe User do


  it 'creates a user account within the table' do
    expect{ User.create(name: 'test', email: 'test@googlemail.com',
      password: 'Password123') }.to change{ User.count }.by(1)
  end

  it 'should return the user object after authentication' do
    user = User.create(email: 'test1@gmail.com', password: 'test')
    expect(User.authenticate(email: user.email, password: 'test')).to be_kind_of(User)
  end

end
