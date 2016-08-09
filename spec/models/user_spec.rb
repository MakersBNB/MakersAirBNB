describe User do

  it 'creates a user account within the table' do
    expect{ User.create(name: 'test', email: 'test@googlemail.com',
      password: 'Password123', password_confirmation: 'Password123') }.to change{ User.count }.by(1)
  end

  it 'does not create a user account in the table' do
    expect{ User.create(name: 'test', email: 'test@googlemail.com',
      password: 'Password123', password_confirmation: 'wrong')}.not_to change{ User.count}
  end

  describe '.authenication' do

    let(:user){ User.create(email: 'test1@gmail.com', password: 'test',
      password_confirmation: 'test') }

    it 'should return the user object after authentication' do
      authenticated_user = User.authenticate(email: user.email, password: 'test')
      expect(authenticated_user).to eq(user)
    end

    it'should show nil if unsuccessful at sign in' do
      expect(User.authenticate(email: user.email, password: 'wrong')).to eq(nil)
    end

  end

end
