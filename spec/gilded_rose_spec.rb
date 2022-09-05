describe GildedRose do

  it 'initially returns empty array of items' do
    fake_item = double :fake_item, name: "Banana", sell_in: 5, quality: 10 
    gilded_rose = GildedRose.new
    expect(gilded_rose.items).to eq []
  end

end
