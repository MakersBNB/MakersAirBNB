describe User do
  let(:user) { User.create(name:'test',email: 'test@gmail.com', password: 'test') }

  it 'should return the user object after authentication' do
    expect(User.authenticate(email: user.email, password: 'test')).to be_kind_of(User)
  end
end
