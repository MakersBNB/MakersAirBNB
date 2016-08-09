describe User do

  it 'creates a user account within the table' do
    expect{ User.create(name: 'test', email: 'test@googlemail.com',
      password: 'Password123') }.to change{ User.count }.by(1)
  end

  describe '.authenication' do

    let(:user){ User.create(email: 'test1@gmail.com', password: 'test') }

    it 'should return the user object after authentication' do
      authenticated_user = User.authenticate(email: user.email, password: 'test')
      expect(authenticated_user).to eq(user)
    end

    it'should show nil if unsuccessful at sign in' do
      expect(User.authenticate(email: user.email, password: 'wrong')).to eq(nil)
    end

  end

end
