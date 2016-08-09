describe User do
  subject(:user) { described_class }

  it 'creates a user account within the table' do
    expect{ User.create(name: 'test', email: 'test@googlemail.com',
                         password: 'Password123') }.to change{ user.count }.by(1)
  end
end
