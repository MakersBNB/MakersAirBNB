describe Space do
  it 'adds a spaces in the table' do
    expect{ Space.create(name: 'Relaxing space',
                        description: 'Feel at home in this beautiful townhouse',
                        price: 25) }.to change{ Space.count }.by(1)
  end
end
